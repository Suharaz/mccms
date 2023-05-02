<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会员修改</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="<?=Web_Base_Path?>admin/css/style.css">
<script src="<?=Web_Base_Path?>jquery/jquery.min.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
<script src="<?=Web_Base_Path?>jquery/jquery-1.9.1.min.js"></script>
<script src="<?=Web_Base_Path?>admin/js/html5.min.js"></script>
<script src="<?=Web_Base_Path?>admin/js/respond.min.js"></script>
<![endif]-->
<script src="<?=Web_Base_Path?>layui/layui.js"></script>
<script src="<?=Web_Base_Path?>admin/js/common.js"></script>
<style type="text/css">
.layui-form-item .layui-input-inline{
    width: auto;
    margin-left: 5px;
}
.type-input{
    height:70px;
    overflow-y: auto;
}
.type-input::-webkit-scrollbar {
    /*滚动条整体样式*/
    width : 10px;  /*高宽分别对应横竖滚动条的尺寸*/
    height: 1px;
}
.type-input::-webkit-scrollbar-thumb {
    /*滚动条里面小方块*/
    border-radius: 10px;
    box-shadow   : inset 0 0 5px rgba(0, 0, 0, 0.2);
    background   : #666;
}
.type-input::-webkit-scrollbar-track {
    /*滚动条里面轨道*/
    box-shadow   : inset 0 0 5px rgba(0, 0, 0, 0.2);
    border-radius: 10px;
    background   : #ededed;
}
.layui-form-radio{
    margin: 0; 
    padding-right: 0;
}
.layui-form-pane .layui-form-checkbox {
    margin: 4px 0 4px 1px;
}
.layui-form-checkbox[lay-skin=primary] span {
    padding-right: 4px;
}
.layui-form-checkbox[lay-skin=primary] i {
    left: 6px;
}
.layui-form-item .layui-col-xs12{
    margin-top: 10px;
}
@media screen and (max-width: 990px){
    .layui-form-item .layui-col-xs12:first-child{
        margin-top: 0px;
    }
    .layui-form-item{
        margin-bottom: 10px; 
    }
}
</style>
</head>
<body class="bsbg">
<div class="layui-fluid">
    <form class="layui-form layui-form-pane" action="<?=links('user','save')?>">
        <div class="layui-tab layui-tab-brief">
            <ul class="layui-tab-title">
                <li class="layui-this">基本信息</li>
                <li>认证信息</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form-item">
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label">Login account</label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" required lay-verify="required" class="layui-input" value="<?=$name?>" placeholder="Please enter login account">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label">login password</label>
                            <div class="layui-input-block">
                                <input type="password" name="pass" autocomplete="off" class="layui-input" value="" placeholder="Please enter the login password<?php if($id > 0) echo '，Do not modify please leave blank';?>">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label">user gender</label>
                            <div class="layui-input-block">
                                <select name="sex">
                                    <option value="男">male</option>
                                    <option value="女"<?php if($sex=='女') echo 'selected';?>>female</option>
                                    <option value="保密"<?php if($sex=='保密') echo 'selected';?>>keep secret</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-col-xs12 layui-col-md6">
                            <label class="layui-form-label">nickname/pseudonym</label>
                            <div class="layui-input-block">
                                <input type="text" name="nichen" autocomplete="off" required lay-verify="required" class="layui-input" value="<?=$nichen?>" placeholder="Please enter user nickname">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md6">
                            <label class="layui-form-label">profile picture</label>
                            <div class="layui-input-block">
                                <input type="text" id="pic" name="pic" class="layui-input" placeholder="Please upload user avatar or enter image URL" value="<?=$pic?>">
                                <div class="layui-btn layui-btn-normal uppic" style="position: absolute;top: 0px;right: 0;">Avatar upload</div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label">contact phone</label>
                            <div class="layui-input-block">
                                <input type="number" name="tel" required lay-verify="required" class="layui-input" value="<?=$tel?>" placeholder="请输入联系手机">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label">contact email</label>
                            <div class="layui-input-block">
                                <input type="text" name="email" class="layui-input" value="<?=$email?>" placeholder="请输入联系邮箱">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label">urban area</label>
                            <div class="layui-input-block">
                                <input type="text" name="city" class="layui-input" value="<?=$city?>" placeholder="Please fill in the city area">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label">QQ</label>
                            <div class="layui-input-block">
                                <input type="number" name="qq" class="layui-input" value="<?=$qq?>" placeholder="请输入联系QQ">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label">Whether to lock</label>
                            <div class="layui-input-block">
                                <select name="sid">
                                    <option value="0">unlocked</option>
                                    <option value="1"<?php if($sid == 1) echo 'selected';?>>locked</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label"> VIP member</label>
                            <div class="layui-input-block">
                                <select name="vip" lay-filter="vip">
                                    <option value="0">No</option>
                                    <option value="1"<?php if($vip == 1) echo 'selected';?>>Yes</option>
                                </select>
                            </div>
                        </div>
                        <div id="viptime" class="layui-col-xs12 layui-col-md3"<?php if($vip == 0) echo ' style="display: none;
                        "';?>>
                            <label class="layui-form-label">VIP expiration time</label>
                            <div class="layui-input-block">
                                <input id="time" type="text" name="viptime" class="layui-input" value="<?=$viptime > 0 ? date('Y-m-d H:i:s',$viptime):'';?>" placeholder="Please select a VIP expiration time">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label">Tác giả</label>
                            <div class="layui-input-block">
                                <select name="signing">
                                    <option value="0">Ko</option>
                                    <option value="1"<?php if($signing == 1) echo 'selected';?>>Có</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label">balance</label>
                            <div class="layui-input-block">
                                <input type="number" name="rmb" class="layui-input" value="<?=$rmb?>" placeholder="剩余金额">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label"><?=Pay_Cion_Name?></label>
                            <div class="layui-input-block">
                                <input type="number" name="cion" class="layui-input" value="<?=$cion?>" placeholder="remaining <?=Pay_Cion_Name?>">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label">Number of monthly passes</label>
                            <div class="layui-input-block">
                                <input type="number" name="ticket" class="layui-input" value="<?=$ticket?>" placeholder="Number of monthly passes">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">user profile</label>
                        <div class="layui-input-block">
                            <textarea name="text" placeholder="用户简介" class="layui-textarea"><?=$text?></textarea>
                        </div>
                    </div>
                    <div class="layui-form-item" style="text-align: center;">
                        <input type="hidden" name="id" value="<?=$id?>">
                        <button class="layui-btn" lay-filter="*" lay-submit>Save</button>
                        <button type="reset" class="layui-btn layui-btn-primary">reset</button>
                    </div>
                </div>
                <div class="layui-tab-item">
                    <div class="layui-form-item">
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label">certification status</label>
                            <div class="layui-input-block">
                                <select name="cid" lay-filter="rz">
                                    <option value="0">未认证</option>
                                    <option value="1"<?php if($cid == 1) echo 'selected';?>>to be certified</option>
                                    <option value="2"<?php if($cid == 2) echo 'selected';?>>Authentication failed</option>
                                    <option value="3"<?php if($cid == 3) echo 'selected';?>>personal certification</option>
                                    <option value="4"<?php if($cid == 4) echo 'selected';?>>Enterprise Certification</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label"><?=$rz_type == 1 ? 'actual name':'Company Name';?></label>
                            <div class="layui-input-block">
                                <input type="text" name="realname" class="layui-input" value="<?=$realname?>" placeholder="Please fill out<?=$rz_type == 1 ? '真实姓名':'Company Name';?>">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md5">
                            <label class="layui-form-label">ID number</label>
                            <div class="layui-input-block">
                                <input type="text" name="idcard" class="layui-input" value="<?=$idcard?>" placeholder="证件号码">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item" id="rz"<?php if($cid != 2) echo ' style="display: none;"';?>>
                        <div class="layui-col-xs12 layui-col-md12">
                            <label class="layui-form-label">失败原因</label>
                            <div class="layui-input-block">
                                <input type="text" name="rz_msg" class="layui-input" value="<?=$rz_msg?>" placeholder="请填写失败原因">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-col-xs12 layui-col-md3">
                            <label class="layui-form-label">Bank name</label>
                            <div class="layui-input-block">
                                <select name="bank" lay-verify="" lay-search>
                                    <?php if(!empty($bank)) echo '<option value="'.$bank.'">'.$bank.'</option>';?>
                                   
                                    <option value='贵州银行'>Paypal</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md4">
                            <label class="layui-form-label">Bank Account</label>
                            <div class="layui-input-block">
                                <input type="text" name="card" class="layui-input" value="<?=$card?>" placeholder="Bank Account">
                            </div>
                        </div>
                        <div class="layui-col-xs12 layui-col-md5">
                            <label class="layui-form-label">Bank address</label>
                            <div class="layui-input-block">
                                <input type="text" name="bankcity" class="layui-input" value="<?=$bankcity?>" placeholder="银行账号开户行地址">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item" style="text-align: center;">
                        <button class="layui-btn" lay-filter="*" lay-submit>Save</button>
                        <button type="reset" class="layui-btn layui-btn-primary">reset</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script>
layui.use(['form','upload','laydate'], function(){
    var form = layui.form,
        upload = layui.upload,
        laydate = layui.laydate;
    //VIP
    form.on('select(vip)', function(r){
        if(r.value == 1){
            $('#viptime').show();
        }else{
            $('#viptime').hide();
        }
    });
    //认证
    form.on('select(rz)', function(r){
        if(r.value == 2){
            $('#rz').show();
        }else{
            $('#rz').hide();
        }
    });
    laydate.render({
        elem: '#time',
        type: 'datetime'
    });
    upload.render({
        elem: '.uppic',
        url: '<?=links('ajax','upload')?>?dir=<?=sys_auth('user')?>&sy=no',
        accept: 'file',
        acceptMime: 'image/*',
        exts: '<?=Annex_Ext?>',
        done: function(res){
            if(res.code == 0){
                layer.msg(res.msg,{icon: 1});
                $('#pic').val(res.url);
            }else{
                layer.msg(res.msg,{icon: 2});
            }
        }
    });
})
</script>
</body>
</html>