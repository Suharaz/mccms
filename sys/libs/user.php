<?php
define('User_Reg',0);
define('User_Reg_Tel',1);
define('User_Reg_Vip',0);
define('User_Reg_Cion',1);
define('User_Reg_Vip_Day',0);
define('User_Tg_Cion',2);
define('User_Pl_Cion',0);
define('User_Pl_Num',10);
define('User_Gg','Mancheng Official Announcement: At present, 1 gold coin is given for registration, and 2 points are given for successfully inviting users to register');

define('Author_Mode',0);
define('Author_Rz',0);
define('Author_Tx_Rmb',10);
define('Author_Add_Cion',0);
define('Author_Comic_Cion',0);
define('Author_Book_Cion',0);
define('Author_Fc_Ds',90);
define('Author_Fc_Yp',0);
define('Author_Fc_Comic',0);
define('Author_Fc_Book',0);

define('Mail_Type','smtp');
define('Mail_Host','smtp.126.com');
define('Mail_Port',25);
define('Mail_Name','Mancheng CMS Official');
define('Mail_Email','aaaa@126.com');
define('Mail_User','aaa@126.com');
define('Mail_Pass','aaa');
define('Mail_Crypto','ssl');
define('Mail_Demo','');
define('Mail_Code_Title','The verification code you are operating on &#123;site_name&#125;');
define('Mail_Code_Msg','&lt;p&gt;The verification code is: &#123;code&#125;, you are performing &#123;type&#125; operation&lt;/p&gt;&lt;p&gt;The verification code will expire in 5 minutes. Please use it in time.&lt; /p&gt;&lt;/p&gt;&lt;p&gt;If you do not operate by yourself, please ignore it, and contact us if you have any questions.&lt;/p&gt;&lt;p&gt;&#123;web_url&#125;&lt;/p&gt;');
define('Mail_Drawing','0');
define('Mail_Drawing_Title','&#123;web_name&#125; reminds you &lt;&lt;withdraw successfully');
define('Mail_Drawing_Msg','&lt;p&gt; Dear member: &#123;user_nichen&#125; You have completed a withdrawal, the information is as follows: &lt;/p&gt;&lt;p&gt; Withdrawal number: &#123;drawing_dd&#125;&lt;/p&gt;&lt; ;p&gt;Withdrawal status: &#123;drawing_zt&#125; &lt;p&gt;&lt;/p&gt;&lt;p&gt;Withdrawal amount: &#123;drawing_rmb&#125; &lt;/p&gt;&lt;p&gt;Withdrawal time: &#123;drawing_addtime&#125;&lt;/p&gt;');
define('Mail_Remind',1);
define('Mail_Remind_Title','&#123;web_name&#125; reminds you that &lt;&lt;&#123;comic_name&#125;&gt;&gt; has been updated to &#123;comic_chapter_name&#125;');
define('Mail_Remind_Msg','&lt;div style=&quot;margin:0 auto;&quot;&gt; &lt;div style=&quot;text-align:center;&quot;&gt; &lt;h2&gt; &quot;&#123;comic_name&#125;&quot; update La! &lt;/h2&gt; Dear member: &#123;user_nichen&#125;【&#123;web_name&#125;】reminds you that &quot;&#123;comic_name&#125;&quot; has been updated &#123;comic_chapter_name&#125;&lt;/div&gt; &lt;div style=&quot;border:1px solid #ccc; &quot;&gt; &lt;div&gt; &lt;img src=&quot;&#123;comic_pic&#125;&quot; alt=&quot;&#123;comic_name&#125;&#123;comic_chapter_name&#125;&quot; width=&quot;230&quot; height=&quot;300&quot;&gt; &lt;/div&gt; &lt;div style=&quot;margin:10px;&quot;&gt; &lt;div&gt; &lt;li&gt; Name: &lt;span style=&quot;line-height:1.5;&quot;&gt;&lt;a href=&quot; &#123;comic_url&#125;&quot;&gt;《&#123;comic_name&#125;》&lt;/a&gt;&lt;/span&gt; &lt;/li&gt; &lt;li&gt; Status: &lt;span style=&quot;line-height:1.5;&quot;&gt; &#123;comic_serialize&#125;&lt;/span&gt; &lt;/li&gt; &lt;li&gt; Updated: &lt;span style=&quot;line-height:1.5;&quot;&gt;&#123;comic_addtime&#125;&lt;/span&gt; &lt;/li&gt; &lt;li&gt; Profile: &lt;span style=&quot;line-height:1.5;&quot;&gt;&#123;comic_text&#125; &lt;/span&gt;&lt;/li&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;Comic Address&lt;span&gt;&lt;a href=&quot;&#123;comic_url&#125;&quot;&gt;&#123;comic_url&#125;&lt;/a&gt; &lt;/span&gt; &lt;br&gt;&lt;br&gt;&#123;web_name&#125; operation team, this email is automatically sent by the system, please do not reply. To unsubscribe, please click: &lt;a href=&quot;&#123;comic_remind_url&#125; &quot;&gt;&lt;span style=&quot;color:#ff0000;&quot;&gt;Click to unsubscribe&lt;/span&gt;&lt;/a&gt; &lt; /div&gt;&lt;/div&gt;');

define('Sms_Mode',0);
define('Sms_Appid','');
define('Sms_Appkey','');
define('Sms_Name','Mccms official');
define('Sms_Tpl_Log','SMS_10000001');
define('Sms_Tpl_Bind','SMS_10000002');
define('Sms_Tpl_Pass','SMS_10000003');

define('Land_QQ_Appid','');
define('Land_QQ_Appkey','');
define('Land_QQ_Url','https://mangalab.org/index.php/user/open/callback/qq');
define('Land_Wx_Appid','');
define('Land_Wx_Appkey','');
define('Land_Wx_Url','https://mangalab.org/index.php/user/open/callback/weixin');
define('Land_Wb_Appid','');
define('Land_Wb_Appkey','');
define('Land_Wb_Url','https://mangalab.org/index.php/user/open/callback/weibo');