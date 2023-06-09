<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>推送配置</title>
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
    <script src="<?=Web_Base_Path?>admin/js/md5.js"></script>
    <script src="<?=Web_Base_Path?>admin/js/common.js"></script>
</head>
<body>
<div class="breadcrumb-nav">
    <span class="layui-breadcrumb">
        <a>系统配置</a>
        <a><cite>URL push</cite></a>
    </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-card">
        <form class="layui-form" action="<?=links('setting','push_save')?>">
            <div class="layui-card-body">
                <div class="layui-tab layui-tab-brief" lay-filter="setting">
                    <ul class="layui-tab-title">
                        <li class="layui-this">push configuration</li>
                        <li>URL push</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="layui-text laytps" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Baidu Push Token:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Push_Bd_Token" placeholder="The token value assigned by Baidu push connection" value="<?=Push_Bd_Token?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Bear Palm Appid:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Push_Xz_Appid" placeholder="The appid value assigned by BearPaw" value="<?=Push_Xz_Appid?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Bear Paw Token:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Push_Xz_Token" placeholder="Token value assigned by BearPaw" value="<?=Push_Xz_Token?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Shenma login account:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Push_Sm_User" placeholder="神马站长平台登陆账号，一般为邮箱" value="<?=Push_Sm_User?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Shenma Push Token:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Push_Sm_Token" placeholder="神马推送分配的Token" value="<?=Push_Sm_Token?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">push domain name:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Push_Host" placeholder="Leave it blank to push the domain name of the current website, the domain name must add a protocol such as http:// or https://" value="<?=Push_Host?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">push method:</label>
                                    <div class="layui-input-block">
                                        <?php $parr = explode('|',Push_Type);?>
                                        <input type="checkbox" name="Push_Type[bd]" lay-skin="primary" title="baidu"<?php if(in_array('bd',$parr)) echo ' checked';?>>
                                        <input type="checkbox" name="Push_Type[xz]" lay-skin="primary" title="bear paw"<?php if(in_array('xz',$parr)) echo ' checked';?>>
                                        <input lay-filter="type" type="checkbox" name="Push_Type[sm]" lay-skin="primary" title="Shén mǎ"<?php if(in_array('sm',$parr)) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Add update data push:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Push_Add_Mode" value="0" title="turn on"<?php if(Push_Add_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Push_Add_Mode" value="1" title="off"<?php if(Push_Add_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Collection update data push:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Push_Cj_Mode" value="0" title="on"<?php if(Push_Cj_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Push_Cj_Mode" value="1" title="off"<?php if(Push_Cj_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            Save
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Custom connection push:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="url" placeholder="Please enter the full link to push" value="" class="layui-input"/>
                                        <button style="position: absolute;top: 0px;right: 0;" class="layui-btn" lay-filter="push_zdy" lay-submit>to push</button>
                                    </div>
                                </div>
                                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                    <legend style="font-size:15px;">Comic link push</legend>
                                </fieldset>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">push classification connection:</label>
                                    <div class="layui-input-inline">
                                        <select name="cid">
                                            <option value="0">All Categories</option>
                                            <?php
                                            $array = $this->mcdb->get_select('class','id,name',array('fid'=>0),'xid ASC',50);
                                            foreach($array as $row){
                                                echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                                                $array2 = $this->mcdb->get_select('class','id,name',array('fid'=>$row['id']),'xid ASC',50);
                                                foreach($array2 as $row2){
                                                echo '<option value="'.$row2['id'].'">&nbsp;&nbsp;&nbsp;&nbsp;├─&nbsp;'.$row2['name'].'</option>';
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="layui-inline">
                                        <button class="layui-btn" lay-filter="push_list" lay-submit>to push</button>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Push comic link:</label>
                                    <div class="layui-input-inline">
                                        <select name="cid2">
                                            <option value="0">All Categories</option>
                                            <?php
                                            $array = $this->mcdb->get_select('class','id,name',array('fid'=>0),'xid ASC',50);
                                            foreach($array as $row){
                                                echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                                                $array2 = $this->mcdb->get_select('class','id,name',array('fid'=>$row['id']),'xid ASC',50);
                                                foreach($array2 as $row2){
                                                echo '<option value="'.$row2['id'].'">&nbsp;&nbsp;&nbsp;&nbsp;├─&nbsp;'.$row2['name'].'</option>';
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="layui-input-inline select120">
                                        <select name="day">
                                           <option value="1">1 hour update</option>
                                             <option value="2">5 hours update</option>
                                             <option value="3">Update today</option>
                                             <option value="4">Updated yesterday</option>
                                             <option value="5">Update this week</option>
                                             <option value="6">Update this month</option>
                                             <option value="7">Update this year</option>
                                             <option value="0">All data</option>
                                        </select>
                                    </div>
                                    <div class="layui-inline">
                                        <button class="layui-btn" lay-filter="push_show" lay-submit>推送</button>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Push chapter link:</label>
                                    <div class="layui-input-inline">
                                        <input type="number" name="mid" placeholder="Please enter the manga ID to which the chapter belongs" value="" class="layui-input"/>
                                    </div>
                                    <div class="layui-input-inline select120">
                                       <select name="day2">
                                             <option value="3">Update today</option>
                                             <option value="1">1 hour update</option>
                                             <option value="2">5 hours update</option>
                                             <option value="4">Updated yesterday</option>
                                             <option value="5">Update this week</option>
                                             <option value="6">Update this month</option>
                                             <option value="7">Update this year</option>
                                             <option value="0">All data</option>
                                         </select>
                                    </div>
                                    <div class="layui-inline">
                                        <button class="layui-btn" lay-filter="push_chapter" lay-submit>to push</button>
                                    </div>
                                </div>
                                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                    <legend style="font-size:15px;">Novel connection push</legend>
                                </fieldset>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">推送分类连接:</label>
                                    <div class="layui-input-inline">
                                        <select name="cid">
                                            <option value="0">全部分类</option>
                                            <?php
                                            $array = $this->mcdb->get_select('book_class','id,name',array('fid'=>0),'xid ASC',50);
                                            foreach($array as $row){
                                                echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                                                $array2 = $this->mcdb->get_select('book_class','id,name',array('fid'=>$row['id']),'xid ASC',50);
                                                foreach($array2 as $row2){
                                                echo '<option value="'.$row2['id'].'">&nbsp;&nbsp;&nbsp;&nbsp;├─&nbsp;'.$row2['name'].'</option>';
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="layui-inline">
                                        <button class="layui-btn" lay-filter="push_blist" lay-submit>推送</button>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">推送小说连接:</label>
                                    <div class="layui-input-inline">
                                        <select name="cid2">
                                            <option value="0">全部分类</option>
                                            <?php
                                            $array = $this->mcdb->get_select('book_class','id,name',array('fid'=>0),'xid ASC',50);
                                            foreach($array as $row){
                                                echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                                                $array2 = $this->mcdb->get_select('book_class','id,name',array('fid'=>$row['id']),'xid ASC',50);
                                                foreach($array2 as $row2){
                                                echo '<option value="'.$row2['id'].'">&nbsp;&nbsp;&nbsp;&nbsp;├─&nbsp;'.$row2['name'].'</option>';
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="layui-input-inline select120">
                                        <select name="day">
                                            <option value="1">1小时更新</option>
                                            <option value="2">5小时更新</option>
                                            <option value="3">今日更新</option>
                                            <option value="4">昨日更新</option>
                                            <option value="5">本周更新</option>
                                            <option value="6">本月更新</option>
                                            <option value="7">今年更新</option>
                                            <option value="0">全部数据</option>
                                        </select>
                                    </div>
                                    <div class="layui-inline">
                                        <button class="layui-btn" lay-filter="push_info" lay-submit>推送</button>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">推送章节连接:</label>
                                    <div class="layui-input-inline">
                                        <input type="number" name="bid" placeholder="请输入章节所属的小说ID" value="" class="layui-input"/>
                                    </div>
                                    <div class="layui-input-inline select120">
                                        <select name="day2">
                                            <option value="3">今日更新</option>
                                            <option value="1">1小时更新</option>
                                            <option value="2">5小时更新</option>
                                            <option value="4">昨日更新</option>
                                            <option value="5">本周更新</option>
                                            <option value="6">本月更新</option>
                                            <option value="7">今年更新</option>
                                            <option value="0">全部数据</option>
                                        </select>
                                    </div>
                                    <div class="layui-inline">
                                        <button class="layui-btn" lay-filter="push_read" lay-submit>推送</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
layui.use(['layer', 'form'], function () {
    var form = layui.form,
        layer = layui.layer;
    //选择
    form.on('checkbox(type)', function (r) {
        if(r.elem.checked){
            layer.tips('神马推送较慢请谨慎开启', $(r.elem).parents('div'),{tips:3});
        }
    });
    var tps = '';
    $('.laytps .layui-input').click(function(){
        if($(this).attr('placeholder') != tps){
            tps = $(this).attr('placeholder');
            layer.tips(tps, $(this),{tips:1});    
        }
    });
    //推送分类
    form.on('submit(push_list)', function (data) {
        var field = {ac:'lists',cid:data.field.cid};
        get_push(field);return false;
    });
    //推送漫画
    form.on('submit(push_show)', function (data) {
        var field = {ac:'show',cid:data.field.cid2,day:data.field.day};
        get_push(field);return false;
    });
    //推送章节
    form.on('submit(push_chapter)', function (data) {
        if(data.field.mid == '' || data.field.mid == '0'){
            layer.msg('请输入正确的漫画ID',{icon: 2});
        }else{
            var field = {ac:'pic',mid:data.field.mid,day:data.field.day2};
            get_push(field);
        }
        return false;
    });
    //自定义链接推送
    form.on('submit(push_zdy)', function (data) {
        if(data.field.url == ''){
            layer.msg('请输入正确的完整链接地址',{icon: 2});
        }else{
            var field = {ac:'zdy',url:data.field.url};
            get_push(field);
        }
        return false;
    });
    //推送分类
    form.on('submit(push_blist)', function (data) {
        var field = {ac:'lists',cid:data.field.cid};
        get_push(field);return false;
    });
    //推送漫画
    form.on('submit(push_info)', function (data) {
        var field = {ac:'show',cid:data.field.cid2,day:data.field.day};
        get_push(field);return false;
    });
    //推送章节
    form.on('submit(push_read)', function (data) {
        if(data.field.bid == '' || data.field.bid == '0'){
            layer.msg('请输入正确的小说ID',{icon: 2});
        }else{
            var field = {ac:'pic',bid:data.field.bid,day:data.field.day2};
            get_push(field);
        }
        return false;
    });
});
function get_push(field){
    var index = layer.load();
    $.post('<?=links('ajax','push')?>', field, function(res) {
        layer.close(index);
        if(res.code == 1){
            layer.msg(res.msg,{icon: 1});
        }else{
            layer.msg(res.msg,{icon: 2});
        }
    },'json');
    return false;
}
</script>
</body>
</html>