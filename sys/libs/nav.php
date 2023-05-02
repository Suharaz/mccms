<?php if (!defined('FCPATH')) exit('No direct script access allowed');
return array (
   array (
     'name' => 'system configuration',
     'icon' => '&#xe653;',
     'file' => 'setting/',
     'list' =>
     array (
       array (
         'name' => 'Website Configuration',
         'url' => 'setting/index',
         'init' => 1,
       ),
       array (
         'name' => 'Website configuration modification',
         'url' => 'setting/save',
         'init' => 0,
       ),
       array (
         'name' => 'template configuration',
         'url' => 'setting/skins',
         'init' => 1,
       ),
       array (
         'name' => 'Template configuration modification',
         'url' => 'setting/skins_save,skins/down',
         'init' => 0,
       ),
       array (
         'name' => 'template cloud platform',
         'url' => 'skins/index',
         'init' => 0,
       ),
   array (
        'name' => 'User setting',
        'url' => 'setting/user',
        'init' => 1,
      ),
       array (
         'name' => 'user configuration modification',
         'url' => 'setting/user_save',
         'init' => 0,
       ),
       array (
         'name' => 'cache configuration',
         'url' => 'setting/cache',
         'init' => 1,
       ),
       array (
         'name' => 'cache configuration modification',
         'url' => 'setting/cache_save',
         'init' => 0,
       ),
       array (
         'name' => 'storage configuration',
         'url' => 'setting/annex',
         'init' => 1,
       ),
       array (
         'name' => 'Storage configuration modification',
         'url' => 'setting/annex_save',
         'init' => 0,
       ),
       array (
         'name' => 'financial configuration',
         'url' => 'setting/pay',
         'init' => 1,
       ),
       array (
         'name' => 'financial configuration modification',
         'url' => 'setting/pay_save',
         'init' => 0,
       ),
       array (
         'name' => 'URL push',
         'url' => 'setting/push',
         'init' => 1,
       ),
       array (
         'name' => 'URL push modification',
         'url' => 'setting/push_save',
         'init' => 0,
       ),
       array (
         'name' => 'Resource station configuration',
         'url' => 'setting/zyz',
         'init' => 1,
       ),
       array (
         'name' => 'resource station modification',
         'url' => 'setting/zyz_save',
         'init' => 0,
       ),
     ),
   ),
   array (
     'name' => 'manga management',
     'icon' => '&#xe663;',
     'file' => 'comic/',
     'list' =>
     array (
       array (
         'name' => 'comic list',
         'url' => 'comic/index,comic/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Comic modification',
         'url' => 'comic/edit,comic/save,comic/init,comic/del',
         'init' => 0,
       ),
       array (
         'name' => 'Manga Delete',
         'url' => 'comic/del',
         'init' => 0,
       ),
       array (
         'name' => 'Chapter Browse',
         'url' => 'comic/chapter,comic/chapter_ajax',
         'init' => 0,
       ),
       array (
         'name' => 'Chapter Operation',
         'url' => 'comic/chapter_edit,comic/chapter_init/vip,comic/chapter_init/cion,comic/chapter_init/px,comic/chapter_save,comic/chapter_del,comic/pic_del,comic/tbpic,comic/tbpic_save,comic/ pic_api,comic/pic_save',
         'init' => 0,
       ),
       array (
         'name' => 'category list',
         'url' => 'comic/lists',
         'init' => 1,
       ),
       array (
         'name' => 'category modification',
         'url' => 'comic/lists_edit,comic/lists_save,comic/lists_edit_save',
         'init' => 0,
       ),
       array (
         'name' => 'category delete',
         'url' => 'comic/lists_del',
         'init' => 0,
       ),
       array (
         'name' => 'type list',
         'url' => 'comic/type',
         'init' => 1,
       ),
       array (
         'name' => 'type modification',
         'url' => 'comic/type_add,comic/type_save,comic/type_add_save',
         'init' => 0,
       ),
       array (
         'name' => 'type delete',
         'url' => 'comic/type_del',
         'init' => 0,
       ),
     ),
   ),
   array (
     'name' => 'Novel Management',
     'icon' => '&#xe705;',
     'file' => 'book/',
     'list' =>
     array (
       array (
         'name' => 'Novel list',
         'url' => 'book/index',
         'init' => 1,
       ),
       array (
         'name' => 'Novel modification',
         'url' => 'book/edit,book/save,book/init,book/del',
         'init' => 0,
       ),
       array (
         'name' => 'Novel Delete',
         'url' => 'book/del',
         'init' => 0,
       ),
       array (
         'name' => 'Chapter Browse',
         'url' => 'book/chapter,book/chapter_ajax',
         'init' => 0,
       ),
       array (
         'name' => 'Chapter Operation',
         'url' => 'book/chapter_edit,book/chapter_init/vip,book/chapter_init/cion,book/chapter_init/px,book/chapter_save,book/chapter_del,book/chapter_txt',
         'init' => 0,
       ),
       array (
         'name' => 'category list',
         'url' => 'book/lists',
         'init' => 1,
       ),
       array (
         'name' => 'category modification',
         'url' => 'book/lists_edit,book/lists_save,book/lists_edit_save',
         'init' => 0,
       ),
       array (
         'name' => 'category delete',
         'url' => 'book/lists_del',
         'init' => 0,
       ),
     ),
   ),
 array (
     'name' => 'collection management',
     'icon' => '&#xe609;',
     'file' => 'caiji/',
     'list' =>
     array (
       array (
         'name' => 'Comic Collection',
         'url' => 'caiji/index/comic,caiji/json/comic',
         'init' => 1,
       ),
       array (
         'name' => 'novel collection',
         'url' => 'caiji/index/book,caiji/json/book',
         'init' => 1,
       ),
       array (
         'name' => 'collection and storage',
         'url' => 'caiji/ruku',
         'init' =>0,
       ),
       array (
         'name' => 'collection configuration',
         'url' => 'caiji/setting,caiji/save,caiji/book_save',
         'init' =>0,
       ),
       array (
         'name' => 'Repository Browse',
         'url' => 'caiji/show',
         'init' =>0,
       ),
       array (
         'name' => 'repository operation',
         'url' => 'caiji/init,caiji/del,caiji/daochu,caiji/uptxt,caiji/edit,caiji/zysave,caiji/bind',
         'init' =>0,
       ),
       array (
         'name' => 'timed task',
         'url' => 'caiji/timming,caiji/timming_edit,caiji/timming_save,caiji/timming_init,caiji/timming_del,caiji/timming_url',
         'init' =>0,
       ),
     ),
   ),
   array (
     'name' => 'statically generated',
     'icon' => '&#xe656;',
     'file' => 'generate/',
     'list' =>
     array (
       array (
         'name' => 'Comic Generation',
         'url' => 'generate/comic',
         'init' => 1,
       ),
       array (
         'name' => 'novel generation',
         'url' => 'generate/book',
         'init' => 1,
       ),
      array (
         'name' => 'custom template generation',
         'url' => 'generate/custom',
         'init' => 1,
       ),
       array (
         'name' => 'Generation operation',
         'url' => 'generate/mark,generate/custom_save,generate/save,generate/lists_save,generate/comic_save,generate/chapter_save,generate/book_index,generate/blist_save,generate/info_save,generate/read_save',
         'init' => 0,
       ),
     ),
   ),
   array (
     'name' => 'member management',
     'icon' => '&#xe770;',
     'file' => 'user/,comment/',
     'list' =>
     array (
       array (
         'name' => 'user list',
         'url' => 'user/index,user/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'user details',
         'url' => 'user/show',
         'init' => 0,
       ),
       array (
         'name' => 'User Edit',
         'url' => 'user/edit,user/init,user/save',
         'init' => 0,
       ),
       array (
         'name' => 'User Delete',
         'url' => 'user/del',
         'init' => 0,
       ),
       array (
         'name' => 'signed author',
         'url' => 'user/signing,user/signing_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Sign to delete',
         'url' => 'user/signing_del',
         'init' => 0,
       ),
       array (
         'name' => 'waiting for authentication',
         'url' => 'user/index/2',
         'init' => 1,
       ),
       array (
         'name' => 'comment management',
         'url' => 'comment/index,comment/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'comment operation',
         'url' => 'comment/show,comment/reply_del,comment/del',
         'init' => 0,
       ),
     ),
   ),
 array (
     'name' => 'gift reward',
     'icon' => '&#xe735;',
     'file' => 'gift/',
     'list' =>
     array (
       array (
         'name' => 'gift list',
         'url' => 'gift/index,gift/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'gift operation',
         'url' => 'gift/edit,gift/save',
         'init' => 0,
       ),
       array (
         'name' => 'Delete gift',
         'url' => 'gift/del',
         'init' => 0,
       ),
       array (
         'name' => 'reward record',
         'url' => 'gift/reward, gift/reward_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Delete reward record',
         'url' => 'gift/reward_del',
         'init' => 0,
       ),
       array (
         'name' => 'monthly ticket record',
         'url' => 'gift/ticket,gift/ticket_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'delete monthly ticket record',
         'url' => 'gift/ticket_del',
         'init' => 0,
       ),
     ),
   ),
   array (
     'name' => 'Financial Management',
     'icon' => '&#xe65e;',
     'file' => 'pay/,card/',
     'list' =>
     array (
       array (
         'name' => 'recharge order',
         'url' => 'pay/index,pay/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Delete order record',
         'url' => 'pay/del,pay/pldel',
         'init' => 0,
       ),
       array (
         'name' => 'consumption record',
         'url' => 'pay/buy,pay/buy_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'delete consumption record',
         'url' => 'pay/buy_del',
         'init' => 0,
       ),
       array (
         'name' => 'withdrawal record',
         'url' => 'pay/drawing,pay/drawing_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'withdrawal operation',
         'url' => 'pay/drawing_show,pay/drawing_save',
         'init' => 0,
       ),
       array (
         'name' => 'delete withdrawal record',
         'url' => 'pay/drawing_del',
         'init' => 0,
       ),
       array (
         'name' => 'Revenue Share',
         'url' => 'pay/income,pay/income_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Delete revenue share',
         'url' => 'pay/income_del',
         'init' => 0,
       ),
       array (
         'name' => 'card management',
         'url' => 'card/index,card/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'card encryption operation',
         'url' => 'card/add,card/edit,card/save,card/pladd,card/daochu',
         'init' => 0,
       ),
       array (
         'name' => 'Delete Card Encryption',
         'url' => 'card/del',
         'init' => 0,
       ),
     ),
   ),
   array (
     'name' => 'Operation Management',
     'icon' => '&#xe7ae;',
     'file' => 'links/,ads/',
     'list' =>
     array (
       array (
         'name' => 'Friendly Link',
         'url' => 'links/index,links/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Friendship link editor',
         'url' => 'links/edit,links/save',
         'init' => 0,
       ),
       array (
         'name' => 'delete friendship link',
         'url' => 'links/del',
         'init' => 0,
       ),
       array (
         'name' => 'advertising management',
         'url' => 'ads/index,ads/ajax',
         'init' => 1,
       ),
       array (
         'name' => 'advertising editor',
         'url' => 'ads/edit,ads/save',
         'init' => 0,
       ),
       array (
         'name' => 'advertisement removal',
         'url' => 'ads/del',
         'init' => 0,
       ),
     ),
   ),
   array (
     'name' => 'APP management',
     'icon' => '&#xe67f;',
     'file' => 'app/',
     'list' =>
     array (
       array (
         'name' => 'APP Configuration',
         'url' => 'app/index',
         'init' => 1,
       ),
       array (
         'name' => 'APP configuration save',
         'url' => 'app/setting',
         'init' => 0,
       ),
       array (
         'name' => 'task list',
         'url' => 'app/task,app/task_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Task Edit',
         'url' => 'app/edit,app/save',
         'init' => 0,
       ),
       array (
         'name' => 'task record',
         'url' => 'app/task_list,task/task_list_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Task record deletion',
         'url' => 'app/task_list_del',
         'init' => 0,
       ),
       array (
         'name' => 'Invitation record',
         'url' => 'app/invite,app/invite_ajax',
         'init' => 1,
       ),
       array (
         'name' => 'Delete invitation record',
         'url' => 'app/invite_del',
         'init' => 0,
       ),
       array (
         'name' => 'statistics',
         'url' => 'app/user,app/user_ajax',
         'init' => 1,
       ),
     ),
   ),
   array (
     'name' => 'Administrator Management',
     'icon' => '&#xe66f;',
     'file' => 'sys/,backups/',
     'list' =>
     array (
       array (
         'name' => 'admin list',
         'url' => 'sys/index,sys/ajax',
         'init' => 1,
       ),
      array (
         'name' => 'administrator modification',
         'url' => 'sys/edit,sys/init,sys/save',
         'init' => 0,
       ),
       array (
         'name' => 'administrator delete',
         'url' => 'sys/del',
         'init' => 0,
       ),
       array (
         'name' => 'login log',
         'url' => 'sys/log,sys/logajax',
         'init' => 1,
       ),
       array (
         'name' => 'Login log delete',
         'url' => 'sys/log_del',
         'init' => 0,
       ),
       array (
         'name' => 'backup restore',
         'url' => 'backups/index',
         'init' => 1,
       ),
       array (
         'name' => 'Backup restore operation',
         'url' => 'backups/restore, backups/optimize, backups/repair, backups/truncate, backups/fileds, backups/beifen, backups/zip, backups/restore_del, backups/restore_save',
         'init' => 0,
       ),
       array (
         'name' => 'system update',
         'url' => 'update/index',
         'init' => 0,
       ),
     ),
   ),
);