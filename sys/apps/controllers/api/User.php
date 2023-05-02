<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Mccms_Controller {

	public function __construct(){
		parent::__construct();
	}

	//获取会员信息，同时判断是否登陆
    public function info() {
        $user=array('log'=>0,'id'=>0,'nichen'=>'guest','pic'=>Web_Base_Path.'mccms/user.png','vip'=>0,'cion'=>0,'ticket'=>0,'viptime'=>0);
        $log = $this->users->login(1);
        if($log){
            $uid = (int)$this->cookie->get('user_id');
            $row = $this->mcdb->get_row_arr('user','id,pic,nichen,vip,viptime,cion,ticket',array('id'=>$uid));
            if($row){
                $user = $row;
                $user['log'] = 1;
                $user['pic'] = getpic($user['pic'],'user');
                if($user['vip'] > 0){
					if($user['viptime'] < time()){
						$user['vip'] = 0;
						$user['viptime'] = 'has expired';
						$this->mcdb->get_update('user',$uid,array('vip'=>0));
					}else{
						$user['viptime'] = date('Y-m-d',$user['viptime']);
					}
                }else{
					$user['viptime'] = 'has expired';
                }
                setcookie('vip',$user['vip'],time()+3600,'/');
            }
        }
        //输出
        $d['code'] = 1;
        $d['data'] = $user;
        get_json($d);
	}

    //登陆
    public function login() {
        $name = safe_replace($this->input->get_post('name',true));
        $pass = $this->input->get_post('pass',true);
        $pcode = $this->input->get_post('pcode',true);
        $islog = (int)$this->input->get_post('islog');
        if(empty($name) || empty($pass)) get_json('Account password cannot be empty');
        if(!ctype_alnum($name)) get_json('Account format is incorrect');
        //判断账号是否存在
        $row = $this->mcdb->get_row_arr('user','*',array('name'=>$name));
        if(!$row) $row = $this->mcdb->get_row_arr('user','*',array('tel'=>$name));
        if(!$row) get_json('Account does not exist, please register~');
        if($row['pass_err'] > 2){
            $this->load->library('verify');
            if(empty($pcode)) get_json(array('msg'=>'Graphic verification code cannot be empty','pcode'=>1));
            if(!$this->verify->check($pcode)) get_json(array('msg'=>'Graphic verification code error','pcode'=>1));
        }
        if(md5($pass) != $row['pass']){
            if($row['pass_err'] > 2){
                get_json(array('msg'=>'The password is incorrect, you can reset the password below~','pcode'=>1));
            }else{
                $this->mcdb->get_update('user',$row['id'],array('pass_err'=>($row['pass_err']+1)));
                get_json('Incorrect password~');
            }
        }
        if($row['sid'] == 1) get_json('account is locked~');

        //记住COOKIE
        $time = $islog == 1 ? 86400*7+time() : 86400+time();
        $log = md5($row['id'].$row['sid'].$row['pass'].Mc_Encryption_Key);
        $this->cookie->set('user_id',$row['id'],$time);
        $this->cookie->set('user_login',$log,$time);

        $row['log'] = 1;
        $row['pic'] = getpic($row['pic']);
        if($row['vip'] > 0){
			if($row['viptime'] < time()){
				$row['vip'] = 0;
				$row['viptime'] = 'has expired';
				$edit['vip'] = 0;
			}else{
				$row['viptime'] = date('Y-m-d H:i:s',$row['viptime']);
			}
        }else{
			$row['viptime'] = 'has expired';
		}
        $edit['pass_err'] = 0;
        $this->mcdb->get_update('user',$row['id'],$edit);

        //输出
        $url = $this->cookie->get('referer_url');
        if(empty($url)) $url = links('user');
        $d['code'] = 1;
        $d['msg'] = 'Landed successfully~';
        $d['user'] = $row;
        $d['url'] = $url;
        $this->cookie->set('referer_url');
        get_json($d);
    }
    
    //注册
    public function reg() {
        if(User_Reg == 1) get_json('Site is closed for registration');
        $tel = safe_replace($this->input->get_post('tel',true));
        $pass = $this->input->get_post('pass',true);
        $code = $this->input->get_post('code',true);
        $pcode = $this->input->get_post('pcode',true);
        if(!is_tel($tel)) get_json('Wrong format of phone number');
        if(empty($pass)) get_json('password can not be blank');
        if(User_Reg_Tel == 0){
            if(empty($code)) get_json('Mobile phone verification code cannot be empty');
            //判断手机验证码是否正确
            $row = $this->mcdb->get_row_arr('telcode','*',array('tel'=>$tel));
            if(!$row || $row['code'] != $code) get_json('Mobile phone verification code error');
        }else{
            if(empty($pcode)) get_json('Graphic verification code cannot be empty');
            $this->load->library('verify');
            if(!$this->verify->check($pcode)) get_json('Graphic verification code error');
        }
        //判断账号是否存在
        $row = $this->mcdb->get_row_arr('user','id',array('tel'=>$tel));
        if($row) get_json('Mobile number is registered~');

        $add['addtime'] = time();
        $add['name'] = 'T-'.substr(md5($add['addtime']),8,-8);
        $add['sid'] = 0;
        $add['tel'] = $tel;
        $add['pass'] = md5($pass);
        $add['cion'] = User_Reg_Cion;
        $add['vip'] = User_Reg_Vip;
        $add['viptime'] = 0;
        if(User_Reg_Vip_Day > 0) $add['viptime'] = time()+86400*User_Reg_Vip_Day;
        //注册
        $res = $this->mcdb->get_insert('user',$add);

        //记住COOKIE
        $time = 86400+time();
        $log = md5($res.$add['sid'].$add['pass'].Mc_Encryption_Key);
        $this->cookie->set('user_id',$res,$time);
        $this->cookie->set('user_login',$log,$time);

        //删除验证码
        $this->mcdb->get_del('telcode',$tel,'tel');

        $user['log'] = 1;
        $user['cion'] = $add['cion'];
        $user['name'] = $add['name'];
        $user['nichen'] = $add['name'];
        $user['pic'] = getpic('');
        $user['vip'] = $add['vip'];
        $user['viptime'] = $add['viptime'];

        //输出
        $url = $this->cookie->get('referer_url');
        if(empty($url)) $url = links('user');
        $d['code'] = 1;
        $d['msg'] = 'Register successfully~~';
        $d['user'] = $user;
        $d['url'] = $url;
        $this->cookie->set('referer_url');
        get_json($d);
    }

    //找回密码
    public function pass() {
        $tel = safe_replace($this->input->get_post('tel',true));
        $pass = $this->input->get_post('pass',true);
        $code = $this->input->get_post('code',true);
        if(!is_tel($tel)) get_json('Wrong format of phone number');
        if(empty($code)) get_json('Mobile phone verification code cannot be empty');
        if(empty($pass)) get_json('password can not be blank');
        //判断验证码是否正确
        $row = $this->mcdb->get_row_arr('telcode','*',array('tel'=>$tel));
        if(!$row || $row['code'] != $code) get_json('Mobile phone verification code error');
        //判断账号是否存在
        $row = $this->mcdb->get_row_arr('user','id',array('tel'=>$tel));
        if(!$row) get_json('Mobile number is not registered~');

        //修改密码
        $this->mcdb->get_update('user',$row['id'],array('pass'=>md5($pass)));

        //删除验证码
        $this->mcdb->get_del('telcode',$tel,'tel');

        //输出
        $d['code'] = 1;
        $d['msg'] = 'The password has been changed successfully, please log in~';
        $d['url'] = links('user','login');
        get_json($d);
    }

    //退出登陆
    public function logout() {
        //记住来路地址
        $this->cookie->set('referer_url',$_SERVER["HTTP_REFERER"]);
        $this->cookie->set('user_id');
        $this->cookie->set('user_login');
        $user=array('log'=>0,'id'=>0,'nichen'=>'guest','pic'=>Web_Base_Path.'mccms/user.png','vip'=>0,'cion'=>0,'ticket'=>0,'viptime'=>0);
        //输出
        $d['code'] = 1;
        $d['data'] = $user;
        get_json($d);
    }
}