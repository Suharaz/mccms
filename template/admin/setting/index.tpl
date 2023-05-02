<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>website configuration</title>
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
<div class="breadcrumb-nav">
    <span class="layui-breadcrumb">
        <a>System Configuration</a>
        <a><cite>website configuration</cite></a>
    </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-card">
        <form class="layui-form" action="<?=links('setting','save')?>">
            <div class="layui-card-body">
                <div class="layui-tab layui-tab-brief" lay-filter="setting">
                    <ul class="layui-tab-title">
                       <li lay-id="t1" class="layui-this">basic configuration</li>
                         <li lay-id="t2">Security Configuration</li>
                         <li lay-id="t3">Leave a comment</li>
                         <li lay-id="t4">URL configuration</li>
                         <li lay-id="t5">SEO configuration</li>
                         <li lay-id="t6">Official account configuration</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <div class="layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">Site name:</label>
                                     <div class="layui-input-block">
                                         <input type="text" name="Web_Name" placeholder="Website Name" value="<?=Web_Name?>" class="layui-input" lay-verify="required" required/>
                                     </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">website domain name:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Url" placeholder="website domain name" value="<?=Web_Url?>" class="layui-input pdl60" lay-verify="required" required/>
                                        <div class="select-ssl">
                                            <select name="Web_Ssl_Mode">
                                                <option value="0">http://</option>
                                                <option value="1">https://</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">installation manual:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Path" placeholder="Website installation directory" value="<?=Web_Path?>" class="layui-input" lay-verify="required" required/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Novel domain name:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Book_Url" placeholder="The domain name of the novel section is an independent domain name, leaving blank is the same domain name as the comic" value="<?=Web_Book_Url?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">website switch:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input lay-filter="none" xs="no" type="radio" name="Web_Mode" value="0" title="turn on"<?php if(Web_Mode == 0) echo ' checked';?>>
                                        <input lay-filter="none" xs="yes" type="radio" name="Web_Mode" value="1" title="Close"<?php if(Web_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120" id="Web_Mode"<?php if(Web_Mode == 0) echo ' style="display: none;"';?>>
                                    <label class="layui-form-label">close prompt:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Web_Close_Txt" placeholder="Website closing prompt, support HTML" class="layui-textarea"><?=Web_Close_Txt?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Website record number:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Icp" placeholder="网站备案号" value="<?=Web_Icp?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Statistical code:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Web_Stat" placeholder="网站统计代码" class="layui-textarea"><?=Web_Stat?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Novel hashtags:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Web_Book_Tags" placeholder="小说主题标签，多个用“|”隔开" class="layui-textarea"><?=Web_Book_Tags?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            Update configuration information
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item">
                            <div class="layui-form layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">authentication code:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Admin_Code" placeholder="后台登陆认证码" value="<?=Admin_Code?>" class="layui-input" lay-verify="required" required/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">Log retention days:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Admin_Log_Day" placeholder="Admin login log storage days" value="<?=Admin_Log_Day?>" class="layui-input" lay-verify="number"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">IP  whitelist login:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Admin_Ip" placeholder="Background IP whitelist, multiple separated by "|", leave blank for unlimited" class="layui-textarea"><?=Admin_Ip?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">External station storage password:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Rkpass" placeholder="External station storage password" value="<?=Web_Rkpass?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">QQ:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_QQ" placeholder="" value="<?=Web_QQ?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Phone:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Tel" placeholder="your number phone" value="<?=Web_Tel?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Mail:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Mail" placeholder="your email" value="<?=Web_Mail?>" class="layui-input"/>
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
                            <div class="layui-form layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Mode:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input type="radio" name="Pl_Mode" value="0" title="On"<?php if(Pl_Mode == 0) echo ' checked';?>>
                                        <input type="radio" name="Pl_Mode" value="1" title="Off"<?php if(Pl_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Seconds between comments:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pl_Time" placeholder="Avoid comment spam" value="<?=Pl_Time?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Max comment per day:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Pl_Add_Num" placeholder="Avoid comment spam" value="<?=Pl_Add_Num?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">filter keywords:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Pl_Str" placeholder="When commenting, filter multiple keywords separated by "|"" class="layui-textarea" style="min-height: 100px;"><?=Pl_Str?></textarea>
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
                            <div class="layui-text" style="max-width: 900px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Mode:</label>
                                    <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                        <input lay-filter="none" nid="1" type="radio" name="Url_Mode" value="0" title="dynamic"<?php if(Url_Mode == 0) echo ' checked';?>>
                                        <input lay-filter="none" nid="2" type="radio" name="Url_Mode" value="1" title="static"<?php if(Url_Mode == 1) echo ' checked';?>>
                                    </div>
                                </div>
                                <div id="Url_Mode1"<?php if(Url_Mode == 1) echo ' style="display: none;"';?>>
                                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                        <legend style="font-size:15px;">Comic</legend>
                                    </fieldset>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">Url Genre:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Web_List" lay-filter="url">
                                                <option value="">Default</option>
                                                <option value="<?=Web_Path?>lists/[id]/[page]">1.lists/id/page</option>
                                                <option value="<?=Web_Path?>lists/[en]/[page]">2.lists/en/page</option>
                                                <option value="<?=Web_Path?>lists_[id]_[page].html">3.lists_id_page.html</option>
                                                <option value="<?=Web_Path?>lists_[en]_[page].html">4.lists_en_page.html</option>
                                                <option value="<?=Web_Path?>lists-[id]-[page].html">5.lists-id-page.html</option>
                                                <option value="<?=Web_Path?>lists-[en]-[page].html">6.lists-en-page.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Web_List" placeholder="Category routing URL, available tags：[id]、[en]、[page]" value="<?=Url_Web_List?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">Url comic:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Web_Show" lay-filter="url">
                                                <option value="">Default</option>
                                                <option value="<?=Web_Path?>comic/[id]">1.comic/id</option>
                                                <option value="<?=Web_Path?>comic/[en]">2.comic/en</option>
                                                <option value="<?=Web_Path?>comic_[id].html">3.comic_id.html</option>
                                                <option value="<?=Web_Path?>comic_[en].html">4.comic_en.html</option>
                                                <option value="<?=Web_Path?>comic-[id].html">5.comic-id.html</option>
                                                <option value="<?=Web_Path?>comic-[en].html">6.comic-en.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Web_Show" placeholder="" value="<?=Url_Web_Show?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">Url chapter:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Web_Pic" lay-filter="url">
                                                <option value="">Default</option>
                                                <option value="<?=Web_Path?>chapter/[mid]/[id]">1.chapter/mid/id</option>
                                                <option value="<?=Web_Path?>chapter_[mid]_[id].html">2.chapter_mid_id.html</option>
                                                <option value="<?=Web_Path?>chapter-[mid]-[id].html">3.chapter-mid-id.html</option>
                                                <option value="<?=Web_Path?>chapter/[id]">4.chapter/id</option>
                                                <option value="<?=Web_Path?>chapter_[id].html">5.chapter_id.html</option>
                                                <option value="<?=Web_Path?>chapter-[id].html">6.chapter-id.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Web_Pic" placeholder="阅读路由URL，可用标签：[mid]，[id]" value="<?=Url_Web_Pic?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                        <legend style="font-size:15px;">小说路由</legend>
                                    </fieldset>
                                    
                                    
                                        
                                   
                                    
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">remove index.php:</label>
                                        <div class="layui-input-inline" style="display: block;width: auto;float: none;">
                                            <input lay-filter="index-mode" type="radio" name="Url_Index_Mode" value="0" title="保留"<?php if(Url_Index_Mode == 0) echo ' checked';?>>
                                            <input lay-filter="index-mode" type="radio" name="Url_Index_Mode" value="1" title="去除"<?php if(Url_Index_Mode == 1) echo ' checked';?>>
                                        </div>
                                    </div>
                                   <blockquote class="layui-elem-quote layui-quote-nm l40"<?php if(Url_Index_Mode == 0) echo 'style="display: none;"';?>>
                                         Prompt information:<br>
                                         If you enable the removal of index.php, you need to use pseudo-static rules. <br>
                                         The pseudo-static rules of each WEB environment are different<br>
                                         The system itself has written the rules for each environment, and the files are in the <font color=red>./rewrite/</font> directory<br>
                                         1..htaccess format--->apache or IIS6.0+Rewrite3 format, generally put the rules in the website directory<br>
                                         2..conf format--->In general, it is the pseudo-static format of nginx, copy the content of the file to the configuration file<br>
                                         3. httpd.ini format ---> Generally, it is a pseudo-static format of IIS6.0+Rewrite2, which is generally placed in the root directory of the website<br>
                                         4.web.config format ---> generally supported by IIS7 or above, please use .htaccess format and then import
                                     </blockquote>
                                </div>
                                <div id="Url_Mode2"<?php if(Url_Mode == 0) echo ' style="display: none;"';?>>
                                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                        <legend style="font-size:15px;">漫画手机版静态配置</legend>
                                    </fieldset>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">手机版目录:</label>
                                        <div class="layui-input-block w400">
                                            <input type="text" name="Wap_Html_Dir" placeholder="漫画静态手机版目录" value="<?=Wap_Html_Dir?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">手机版域名:</label>
                                        <div class="layui-input-block">
                                            <input type="text" name="Wap_Html_Url" placeholder="漫画静态手机端域名：如：m.mccms.com，域名绑定到<?=FCPATH.Wap_Html_Dir?>目录，留空为主域名" value="<?=Wap_Html_Url?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                        <legend style="font-size:15px;">漫画静态规则</legend>
                                    </fieldset>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">主页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Html_Index" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>index.html">1.index.html</option>
                                                <option value="<?=Web_Path?>index.shtml">2.index.shtml</option>
                                                <option value="<?=Web_Path?>index.htm">3.index.htm</option>
                                                <option value="<?=Web_Path?>index.shtm">4.index.shtm</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Html_Index" placeholder="静态首页文件" value="<?=Url_Html_Index?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">分类页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Html_List" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>list/[id]/[page]/">1.list/id/page/</option>
                                                <option value="<?=Web_Path?>list/[en]/[page]/">2.list/en/page/</option>
                                                <option value="<?=Web_Path?>list_[id]_[page].html">3.list_id_page.html</option>
                                                <option value="<?=Web_Path?>list_[en]_[page].html">4.list_en_page.html</option>
                                                <option value="<?=Web_Path?>list-[id]-[page].html">5.list-id-page.html</option>
                                                <option value="<?=Web_Path?>list-[en]-[page].html">6.list-en-page.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Html_List" placeholder="静态分类页URL，可用标签：[id]、[en]、[page]" value="<?=Url_Html_List?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">内容页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Html_Show" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>comic/[id]/">1.comic/id/</option>
                                                <option value="<?=Web_Path?>comic/[en]/">2.comic/en/</option>
                                                <option value="<?=Web_Path?>comic_[id].html">3.comic_id.html</option>
                                                <option value="<?=Web_Path?>comic_[en].html">4.comic_en.html</option>
                                                <option value="<?=Web_Path?>comic-[id].html">5.comic-id.html</option>
                                                <option value="<?=Web_Path?>comic-[en].html">6.comic-en.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Html_Show" placeholder="静态内容页URL，可用标签：[id]、[en]" value="<?=Url_Html_Show?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">阅读页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Html_Pic" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>chapter/[mid]/[id]/">1.chapter/mid/id/</option>
                                                <option value="<?=Web_Path?>chapter_[mid]_[id].html">2.chapter_mid_id.html</option>
                                                <option value="<?=Web_Path?>chapter-[mid]-[id].html">3.chapter-mid-id.html</option>
                                                <option value="<?=Web_Path?>chapter/[id]/">4.chapter/id/</option>
                                                <option value="<?=Web_Path?>chapter_[id].html">5.chapter_id.html</option>
                                                <option value="<?=Web_Path?>chapter-[id].html">6.chapter-id.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Html_Pic" placeholder="静态阅读页URL，可用标签：[mid]，[id]" value="<?=Url_Html_Pic?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                        <legend style="font-size:15px;">小说手机版静态配置</legend>
                                    </fieldset>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">手机版目录:</label>
                                        <div class="layui-input-block w400">
                                            <input type="text" name="Wap_Book_Html_Dir" placeholder="漫画静态手机版目录" value="<?=Wap_Book_Html_Dir?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">手机版域名:</label>
                                        <div class="layui-input-block">
                                            <input type="text" name="Wap_Book_Html_Url" placeholder="漫画静态手机端域名：如：m.mccms.com，域名绑定到<?=FCPATH.Wap_Book_Html_Dir?>目录，留空为小说主域名" value="<?=Wap_Book_Html_Url?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                                        <legend style="font-size:15px;">小说静态规则</legend>
                                    </fieldset>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">主页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Book_Html_Index" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>book/">1.book/</option>
                                                <option value="<?=Web_Path?>book/index.shtml">2.book/index.shtml</option>
                                                <option value="<?=Web_Path?>book/index.htm">3.book/index.htm</option>
                                                <option value="<?=Web_Path?>book/index.shtm">4.book/index.shtm</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Book_Html_Index" placeholder="静态首页文件" value="<?=Url_Book_Html_Index?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">分类页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Book_Html_List" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>book/list/[id]/[page]/">1.book/list/id/page/</option>
                                                <option value="<?=Web_Path?>book/list/[en]/[page]/">2.book/list/en/page/</option>
                                                <option value="<?=Web_Path?>book/list/[id]_[page].html">3.book/list/id_page.html</option>
                                                <option value="<?=Web_Path?>book/list/[en]_[page].html">4.book/list/en_page.html</option>
                                                <option value="<?=Web_Path?>book/list/[id]-[page].html">5.book/list/id-page.html</option>
                                                <option value="<?=Web_Path?>book/list/[en]-[page].html">6.book/list/en-page.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Book_Html_List" placeholder="静态分类页URL，可用标签：[id]、[en]、[page]" value="<?=Url_Book_Html_List?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">内容页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Book_Html_Info" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>book/info/[id]/">1.book/info/id/</option>
                                                <option value="<?=Web_Path?>book/info/[en]/">2.book/info/en/</option>
                                                <option value="<?=Web_Path?>book/info_[id].html">3.book/info_id.html</option>
                                                <option value="<?=Web_Path?>book/info_[en].html">4.book/info_en.html</option>
                                                <option value="<?=Web_Path?>book/info-[id].html">5.book/info-id.html</option>
                                                <option value="<?=Web_Path?>book/info-[en].html">6.book/info-en.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Book_Html_Info" placeholder="静态内容页URL，可用标签：[id]、[en]" value="<?=Url_Book_Html_Info?>" class="layui-input"/>
                                        </div>
                                    </div>
                                    <div class="layui-form-item w120">
                                        <label class="layui-form-label">阅读页URL:</label>
                                        <div class="layui-inline select120">
                                            <select name="" data-id="Url_Book_Html_Read" lay-filter="url">
                                                <option value="">常用结构</option>
                                                <option value="<?=Web_Path?>book/read/[bid]/[id]/">1.book/read/bid/id/</option>
                                                <option value="<?=Web_Path?>book/read/[bid]_[id].html">2.book/read/bid_id.html</option>
                                                <option value="<?=Web_Path?>book/read/[bid]-[id].html">3.book/read/bid-id.html</option>
                                            </select>
                                        </div>
                                        <div class="layui-inline w400">
                                            <input type="text" name="Url_Book_Html_Read" placeholder="静态阅读页URL，可用标签：[bid]，[id]" value="<?=Url_Book_Html_Read?>" class="layui-input"/>
                                        </div>
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
                            <div class="layui-form layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label layui-form-required">attachment path:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Web_Base_Path" placeholder="The default is the pccks directory under the root directory of the website, such as: http://cdn.abc.com/" value="<?=Web_Base_Path?>" class="layui-input" lay-verify="required" required/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">website title:</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Seo_Title" placeholder="" value="<?=Seo_Title?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">keywords:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Seo_Keywords" placeholder="Website keywords" class="layui-textarea"><?=Seo_Keywords?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">website description:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Seo_Description" placeholder="" class="layui-textarea"><?=Seo_Description?></textarea>
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
                            <div class="layui-form layui-text" style="max-width: 700px;padding-top: 25px;">
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">token(Token):</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Wx_Token" placeholder="The token (Token) for communication between the official account and the website, view it on the official platform" value="<?=Wx_Token?>" class="layui-input"/>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Pay attention to the reply content:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Wx_Gz_Msg" placeholder="Reply content after users follow" class="layui-textarea" style="min-height: 100px;"><?=Wx_Gz_Msg?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item w120">
                                    <label class="layui-form-label">Keyword reply content:</label>
                                    <div class="layui-input-block">
                                        <textarea name="Wx_Key_Msg" placeholder="Format: keyword|reply content, one line per line" class="layui-textarea" style="min-height: 100px;"><?=Wx_Key_Msg?></textarea>
                                    </div>
                                </div>
                                <blockquote class="layui-elem-quote layui-quote-nm">
                                     Prompt information:<br>
                                     1. Log in to WeChat Official Account - Development - Basic Configuration - Modify Server Configuration<br>
                                     2. Server address (URL): <?=(is_ssl()?'https://':'http://').Web_Url.Web_Path.(Url_Index_Mode==0?'index.php/':'' )?>api/wxapp<br>
                                     3. The token (Token) should be filled in with the background, and then enabled
                                 </blockquote>
                                <div class="layui-form-item w120">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-filter="*" lay-submit>
                                            Save
                                        </button>
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
    //监听伪静态
    form.on('radio(index-mode)', function (r) {
        if(r.value == '1'){
            $('blockquote').show();
        }else{
            $('blockquote').hide();
        }
    });
    form.on('select(url)', function (r) {
        var _id = $(r.elem).attr('data-id');
        console.log(_id);
        $("input[name='"+_id+"']").val(r.value);
    });
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