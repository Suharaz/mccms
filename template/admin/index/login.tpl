<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><?=Web_Name?> </title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="<?=Web_Base_Path?>layui/css/layui.css" media="all">
<link rel="stylesheet" href="<?=Web_Base_Path?>admin/css/login.css" media="all">
</head>
<body class="login-bg">
<div class="login layui-anim layui-anim-up">
    <div class="message"><?=Web_Name?>-Admin login</div>
    <div id="darkbannerwrap"></div>
    <form method="post" class="layui-form" >
        <input name="name" placeholder="username" autocomplete="off" type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input name="pass" lay-verify="required" autocomplete="off" placeholder="password"  type="password" class="layui-input">
        <hr class="hr15">
        <input name="code" lay-verify="required" autocomplete="off" placeholder="Authentication Code"  type="password" class="layui-input">
        <hr class="hr15">
        <input value="Log in" lay-submit lay-filter="login" style="width:100%;" type="submit">
    </form>
    <div class="text"><p><a href="http://www.mccms.cn/" target="_blank">Research and development by Guilin Chongsheng Network Technology Co., Ltd.</a></p></div>
</div>
<script src="<?=Web_Base_Path?>jquery/jquery.min.js"></script>
<!--[if IE 8]>
<script src="<?=Web_Base_Path?>jquery/jquery-1.9.1.min.js"></script>
<![endif]-->
<script src="<?=Web_Base_Path?>layui/layui.js"></script>
<script>
    $(function () {
        layui.use('form', function(){
            var form = layui.form;
            //监听提交
            form.on('submit(login)', function(data){
                var index = layer.load();
                $.post('<?=links('login','save')?>', data.field, function(res) {
                    layer.close(index);
                    if(res.code == 1){
                        layer.msg('login successful，please wait...',{icon: 1});
                        setTimeout(function() {
                            window.location.href = '<?=links('index')?>';
                        }, 1000);
                    }else{
                        layer.msg(res.msg,{icon: 2});
                    }
                });
                return false;
            });
        });
    })
</script>
</body>
</html>