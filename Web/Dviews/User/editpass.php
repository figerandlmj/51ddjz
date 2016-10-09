<?php require(inc_('head')); ?>

<div class="warp page-title">
我的个人中心
</div>
<div class="page-box">
<div class="ads">
  <span>欢迎您：<?php echo $minfo['realname'];?></span>
</div>

<div class="member-box">
   <div class="left-tab">
     <ul>
        <li class="on"><a href="<?php echo u_('User/index',array('id'=>session('memberid'))); ?>">个人资料</a></li>
        <li><a href="<?php echo u_('User/mynearadd',array('id'=>session('memberid'))); ?>">近期申请</a></li>
        <li><a href="<?php echo u_('User/historyadd',array('id'=>session('memberid'))); ?>">历史兼职</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left">修改密码</span>
       <span style="float:right"><a href="<?php echo u_('User/Index',array('id'=>session('memberid')))?>">返回</a></span>
       </div>
       <div>
<form action="" method="post">

旧密码：<input type="password" name="opassword" />
<br />
新密码：<input type="password" name="password" />
<br />
确认密码：<input type="password" name="repassword" />
<br />

<input type="submit" style="background:#F60; border:0; color:#fff; padding:4px 20px; cursor:pointer;"  value="修改">


         </form>
       </div>
       
   </div>
</div>

</div>


<?php include(inc_('foot')); ?>