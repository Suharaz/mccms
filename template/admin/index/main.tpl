<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员列表</title>
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
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-xs12 layui-col-md8" id="mccms_left">
		    <div class="layui-row layui-col-space15">
		        <div class="layui-col-xs6 layui-col-sm6 layui-col-md2 lay-hits">
		            <div class="layui-card">
		                <div class="layui-card-header">
		                    APP users<span class="layui-badge layui-badge-pink pull-right">total</span>
		                </div>
		                <div class="layui-card-body">
		                    <p class="lay-big-font"><?=format_wan($app1)?> <span style="font-size:24px;line-height: 1;">Mem</span></p>
		                    <p style="font-size:12px;">active today<span class="pull-right"><?=format_wan($app2)?> 人</span></p>
		                </div>
		            </div>
		        </div>
		        <div class="layui-col-xs6 layui-col-sm6 layui-col-md2 lay-hits">
		            <div class="layui-card">
		                <div class="layui-card-header">
		                    manga browsing<span class="layui-badge layui-badge-green pull-right">today</span>
		                </div>
		                <div class="layui-card-body">
		                    <p class="lay-big-font"><?=format_wan($rhits)?></p>
		                    <p style="font-size:12px;">total views<span class="pull-right"><?=format_wan($hits)?></span></p>
		                </div>
		            </div>
		        </div>
		        <div class="layui-col-xs6 layui-col-sm6 layui-col-md2 lay-hits">
		            <div class="layui-card">
		                <div class="layui-card-header">
		                    Fiction browsing<span class="layui-badge layui-badge-red pull-right">today</span>
		                </div>
		                <div class="layui-card-body">
		                    <p class="lay-big-font"><?=format_wan($brhits)?></p>
		                    <p style="font-size:12px;">total views<span class="pull-right"><?=format_wan($bhits)?></span></p>
		                </div>
		            </div>
		        </div>
		        <div class="layui-col-xs6 layui-col-sm6 layui-col-md2 lay-hits">
		            <div class="layui-card">
		                <div class="layui-card-header">
		                    Deposit amount<span class="layui-badge layui-badge-blue pull-right">today</span>
		                </div>
		                <div class="layui-card-body">
		                    <p class="lay-big-font"><span style="font-size:25px;line-height: 1;">¥</span><?=format_wan($rmb)?></p>
		                    <p style="font-size:12px;">Balance<span class="pull-right"><?=format_wan($rmb2)?></span></p>
		                </div>
		            </div>
		        </div>
		        
		        
		    </div>
		    <div class="layui-col-md12" style="margin-top: 15px;">
		        <div class="layui-card">
		            <div class="layui-card-header">System Info</div>
		            <div class="layui-card-body ">
		                <table class="layui-table">
		                	<colgroup>
							    <col width="100">
							    <col>
							</colgroup>
		                    <tbody>
		                        <tr>
		                            <th>system name</th>
		                            <td>Mccms comic system</td>
		                        </tr>
		                        <tr>
		                            <th>run domain name</th>
		                            <td><?=$_SERVER["HTTP_HOST"]?><span id="cscms_sq"></span></td>
		                        </tr>
		                        <tr>
		                            <th>Server IP</th>
		                            <td><?=GetHostByName($_SERVER['SERVER_NAME'])?></td>
		                        </tr>
		                        <tr>
		                            <th>operating system</th>
		                            <td><?php $os = explode(" ", php_uname()); echo $os[0];?></td>
		                        </tr>
		                        <tr>
		                            <th>operating environment</th>
		                            <td><?php if('/'==DIRECTORY_SEPARATOR){echo $os[2];}else{echo $os[1];} ?> /   <?php echo $_SERVER['SERVER_SOFTWARE'];?></td>
		                        </tr>
		                        <tr>
		                            <th>PHP</th>
		                            <td><?=PHP_VERSION?></td>
		                        </tr>
		                        <tr>
		                            <th>Msql</th>
		                            <td><?=$this->db->version()?></td>
		                        </tr>
		                        <tr>
		                            <th>system time</th>
		                            <td><?=date('Y-m-d H:i:s')?></td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
		        </div>
		    </div>
		    
    
		    
	    </div>
    </div>
</div>
<script type="text/javascript">
var config = <?=$config;?>;
$(function(){
	Admin.get_main();
});
</script>
</body>
</html>