<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" href="<?php echo TS;?>m1/images/favicon.ico" />
<title><?php echo $info['sitename'];?></title>
<meta name="keywords" content="<?php echo $info['keywords'];?>">
<meta name="description" content="<?php echo $info['description'];?>">
<link rel="stylesheet" type="text/css" href="<?php echo TS;?>m1/images/v.css">
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
</head>

<body>
<div class="main_part" style="min-height:100%;height:auto;">  
<div class="top-line">
    <div class="warp">
       <div class="left">
        <p>
          <?php if(session('islogin')){?>
           <a href="<?php echo u_('User/index',array('id'=>session('memberid')))?>" target="_blank" style="border-top:none;">用户中心</a>
           <a href="<?php echo u_('User/loginout')?>" style="border-top:none;" onClick="return confirm('确定退出？')">安全退出</a>
           <?php } else{?>
           <a href="<?php echo u_('User/login')?>" target="_blank" style="border-top:none;color:#f5431a;">登录</a>
           <span style="margin:15px;">|</span>
            <a href="<?php echo u_('User/reg')?>" style="color:#666666;">注册</a>
            <?php }?>
        </p>
       </div>
       <div class="right">
           
          <a href="/">首页</a>
         <?php foreach($info['pages'] as $p){?>
          <a href="<?php echo u_('Page/index',array('id'=>$p['id']))?>" target="_blank"><?php echo $p['title'];?></a>
         <?php }?>
       </div>
    </div>
</div>



<div class="head">
   <div class="warp" style="padding-top:14px;">
       <div class="logo">
        <a href="/" title="<?php echo $info['sitename'];?>">
          <img src="<?php echo TS;?>m1/images/logo.png" width="163" height="61" border=0 alt="多多兼职网">
        </a>
       </div>
       <div class="warp search">
          <form action="/search.php" method="get">
                     <input type="text" name="keytxt" placeholder="请输入搜索的内容">
                     <button><img src="<?php echo TS;?>m1/images/search_btn.png" border=0 alt="搜索"></button>
          </form>
          <!-- <a href="javascript:void" id="showmore">更多筛选</a> -->
       </div>
       <div class="tel">服务热线<span style="display:block;color:#f2800e;font-size:26px;">0553-2205001</span></div>
   </div>
</div>

