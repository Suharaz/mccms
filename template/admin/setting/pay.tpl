<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>支付配置</title>
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
        <a><cite>支付配置</cite></a>
    </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-card">
        <form class="layui-form" action="<?=links('setting','pay_save')?>">
            <div class="layui-card-body">
                <div class="layui-tab layui-tab-brief" lay-filter="setting">
                    <ul class="layui-tab-title">
                     <li class="layui-this">basic configuration</li>
                         <li>Card encryption configuration</li>
                         <li>Alipay Configuration</li>
                         <li>QQ wallet configuration</li>
                         <li>WeChat Configuration</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">virtual currency name:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Cion_Name" placeholder="The abbreviation of virtual currency is as：???" value="<?=Pay_Cion_Name?>" class="layui-input" lay-verify="required" required/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required"><?=Pay_Cion_Name?>conversion ratio:</label>
                                    <div class="layui-input-block">
                                        <input type="number" name="Pay_Rmb_Cion" placeholder="1$ is equal to how much <?=Pay_Cion_Name?>" value="<?=Pay_Rmb_Cion?>" class="layui-input" lay-verify="required" required/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">Minimum recharge amount:</label>
                                    <div class="layui-input-block">
                                        <input type="number" name="Pay_Rmb_Min" placeholder="Minimum recharge amount, unit $" value="<?=Pay_Rmb_Min?>" class="layui-input" lay-verify="required" required/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-col-xs12 layui-col-md6">
                                        <label class="layui-form-label">VIP monthly price:</label>
                                        <div class="layui-input-block">
                                            <input type="number" name="Pay_Vip_Rmb1" placeholder="Monthly subscription price for VIP members, unit $, how much is a month" value="<?=Pay_Vip_Rmb1?>" class="layui-input" lay-verify="required" required/>
                                        </div>
                                    </div>
                                    <div class="layui-col-xs12 layui-col-md6">
                                        <label class="layui-form-label">VIP Quarterly Price:</label>
                                        <div class="layui-input-block">
                                            <input type="number" name="Pay_Vip_Rmb2" placeholder="" value="<?=Pay_Vip_Rmb2?>" class="layui-input" lay-verify="required" required/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-col-xs12 layui-col-md6">
                                        <label class="layui-form-label">VIP half-year price:</label>
                                        <div class="layui-input-block">
                                            <input type="number" name="Pay_Vip_Rmb3" placeholder="" value="<?=Pay_Vip_Rmb3?>" class="layui-input" lay-verify="required" required/>
                                        </div>
                                    </div>
                                    <div class="layui-col-xs12 layui-col-md6">
                                        <label class="layui-form-label">VIP annual price:</label>
                                        <div class="layui-input-block">
                                            <input type="number" name="Pay_Vip_Rmb4" placeholder="" value="<?=Pay_Vip_Rmb4?>" class="layui-input" lay-verify="required" required/>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Minimum gift months:</label>
                                    <div class="layui-input-block">
                                        <input type="number" name="Pay_Vip_Month" placeholder="Minimum purchase months to start gifting" value="<?=Pay_Vip_Month?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Monthly Gift Ratio:</label>
                                    <div class="layui-input-block">
                                        <input type="number" name="Pay_Vip_Day" placeholder="Unit: day, the number of free days for each additional month, 0 does not give away" value="<?=Pay_Vip_Day?>" class="layui-input"/>
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
                                    <label class="layui-form-label">Cammy consignment address:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Card_Url" placeholder="Kami sales platform address" value="<?=Pay_Card_Url?>" class="layui-input"/>
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
                        <?php
                            $Pay_Ali_Pubkey = defined('Pay_Ali_Pubkey') ? Pay_Ali_Pubkey : '';
                            $Pay_Ali_Prikey = defined('Pay_Ali_Prikey') ? Pay_Ali_Prikey : '';
                        ?>
                        <div class="layui-tab-item">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">支付宝应用ID:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Ali_ID" placeholder="支付宝应用ID，APPID" value="<?=Pay_Ali_ID?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">支付宝公钥:</label>
                                    <div class="layui-input-block">
                                        <textarea style="min-height:150px;" name="Pay_Ali_Pubkey" placeholder="支付宝公钥" class="layui-textarea"><?=$Pay_Ali_Pubkey?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">商户应用私钥:</label>
                                    <div class="layui-input-block">
                                        <textarea style="min-height:150px;" name="Pay_Ali_Prikey" placeholder="商户应用私钥" class="layui-textarea"><?=$Pay_Ali_Prikey?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">是否启用:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Pay_Ali_Mode" value="0" title="开启"<?php if(Pay_Ali_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Pay_Ali_Mode" value="1" title="关闭"<?php if(Pay_Ali_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            更新配置信息
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">应用APPID:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_QQ_ID" placeholder="腾讯开放平台或QQ互联平台审核通过的应用AppID，可以留空" value="<?=Pay_QQ_ID?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">商户号HCHID:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_QQ_User" placeholder="QQ钱包分配的商户号" value="<?=Pay_QQ_User?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">商户密钥KEY:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_QQ_Key" placeholder="API密钥,QQ钱包商户平台(https://qpay.qq.com/)-->账户管理-->API安全" value="<?=Pay_QQ_Key?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">是否启用:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Pay_QQ_Mode" value="0" title="开启"<?php if(Pay_QQ_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Pay_QQ_Mode" value="1" title="关闭"<?php if(Pay_QQ_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            更新配置信息
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">应用APPID:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Wx_ID" placeholder="微信支付分配的公众账号ID（企业号corpid即为此appId）" value="<?=Pay_Wx_ID?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">密钥KEY:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Wx_Key" placeholder="微信商户平台(pay.weixin.qq.com)-->账户设置-->API安全-->密钥设置" value="<?=Pay_Wx_Key?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">商户号ID:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Wx_User" placeholder="微信支付分配的商户号" value="<?=Pay_Wx_User?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">是否启用:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Pay_Wx_Mode" value="0" title="开启"<?php if(Pay_Wx_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Pay_Wx_Mode" value="1" title="关闭"<?php if(Pay_Wx_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            更新配置信息
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">密钥KEY:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Stripe_Key" placeholder="API密钥" value="<?=!defined('Pay_Stripe_Key')?'':Pay_Stripe_Key;?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">是否启用:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Pay_Stripe_Mode" value="0" title="开启"<?php if(Pay_Stripe_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Pay_Stripe_Mode" value="1" title="关闭"<?php if(Pay_Stripe_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            更新配置信息
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">clientId:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Paypal_ID" placeholder="clientId" value="<?=!defined('Pay_Paypal_ID')?'':Pay_Paypal_ID;?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">clientSecret:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pay_Paypal_Key" placeholder="clientSecret" value="<?=!defined('Pay_Paypal_Key')?'':Pay_Paypal_Key;?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">是否启用:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Pay_Paypal_Mode" value="0" title="开启"<?php if(Pay_Paypal_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Pay_Paypal_Mode" value="1" title="关闭"<?php if(Pay_Paypal_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            更新配置信息
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function(){
    var tps = '';
    $('.layui-input,.layui-textarea').click(function(){
        if($(this).attr('placeholder') != tps){
            tps = $(this).attr('placeholder');
            layer.tips(tps, $(this),{tips:1});    
        }
    });
});
</script>
</body>
</html>