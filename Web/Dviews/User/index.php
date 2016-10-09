<?php require(inc_('head')); ?>

<div class="warp page-title">
我的个人中心
</div>
<div class="page-box">
<div class="ads">
  <span>欢迎您：<?php echo $minfo['realname'];?></span>
</div>

<div class="member-box" style="overflow-y:auto; height:auto;">
   <div class="left-tab">
     <ul>
        <li class="on"><a href="<?php echo u_('User/index',array('id'=>session('memberid'))); ?>">个人资料</a></li>
        <li><a href="<?php echo u_('User/mynearadd',array('id'=>session('memberid'))); ?>">近期申请</a></li>
        <li><a href="<?php echo u_('User/historyadd',array('id'=>session('memberid'))); ?>">历史兼职</a></li>
     </ul>
   </div>
   
   <div class="right-box">
   <?php if(empty($minfo['mid']) || empty($minfo['tel']) || empty($minfo['school'])) {?>
   <div style="width:auto; background: #FCC; border:#C00 solid 1px; color:#c00; padding:2px 10px; margin-bottom:10px;">
您目前的身份资料尚不完整，可能会无法申请报名，请您尽快补充完整！
</div>
<?php }?>
   <?php if(!empty($warn)) foreach($warn as $wv) {?>
   <div style="width:auto; background: #FCC; border:#C00 solid 1px; color:#c00; padding:2px 10px; margin-bottom:10px;">
<?php echo $wv['warnmess'];?>  (本消息48内显示)
</div>
<?php }?>
<?php if($minfo['endstime'] < time()) {?>
   <div style="width:auto; background: #FCC; border:#C00 solid 1px; color:#c00; padding:2px 10px; margin-bottom:10px;">
    您的账号于 <?php echo date("Y-m-d H:i",$minfo['endstime'])?> 已过服服务期！
</div>
<?php }?>
       <div class="catname">
       <span style="float:left">我的个人资料</span>
       <span style="float:right"><a href="<?php echo u_('User/editmember',array('id'=>$minfo['id']))?>">编辑</a></span>
       <span style="float:right"><a href="<?php echo u_('User/editpass',array('id'=>$minfo['id']))?>">修改登录密码</a></span>
       </div>
       <div>
          <p><font color="#999999">卡号</font>：<?php echo $minfo['mcard'];?></p>
          <p><font color="#999999">姓名</font>：<?php echo $minfo['realname'];?></p>
          <p><font color="#999999">性别</font>：<?php echo $minfo['sex'];?></p>
          <p><font color="#999999">身份证号</font>：<?php echo $age = empty($minfo['mid'])!=false ?  '<i>未填写</i>' : $minfo['mid'];?></p>
          <p><font color="#999999">年龄</font>：<?php echo $age = empty($minfo['age'])!=false ?  '<i>未填写</i>' : $minfo['age'].' 岁';?></p>
          <p><font color="#999999">身高</font>：<?php echo $stature = empty($minfo['stature'])!=false ?  '<i>未填写</i>' : $minfo['stature'].' CM';?></p>
          <p><font color="#999999">体重</font>：<?php echo $wieght = empty($minfo['weight'])!=false ?  '<i>未填写</i>' : $minfo['weight'].' KG';?></p>
          <p><font color="#999999">手机</font>：<?php echo $minfo['tel'];?></p>
          <p><font color="#999999">学历</font>：<?php echo $education = empty($minfo['education'])!=false ?  '<i>未填写</i>' : $minfo['education'];?></p>
          <p><font color="#999999">学校</font>：<?php echo $minfo['school'];?></p>
          <p><font color="#999999">专业</font>：<?php echo $minfo['major'];?></p>
          <p><font color="#999999">学届</font>：<?php echo $toyear = empty($minfo['toyear'])!=false ?  '<i>未填写</i>' : $minfo['toyear'].' 届';?></p>
          <p><font color="#999999">级别</font>：<?php echo $minfo['grade'];?></p>
          <p><font color="#999999">Q Q</font>：<?php echo $QQ = empty($minfo['QQ'])!=false ?  '<i>未填写</i>' : $minfo['QQ'];?></p>
          <p><font color="#999999">健康证</font>：<?php echo $minfo['hel'];?></p>
       </div>
       
        <div class="catname" style="margin-top:40px;">
       <span style="float:left">自我介绍/技能特长</span>
 
       </div>
       <div style="font-size:12px; width:100%; position:relative; float:left;">
       <?php echo $specialty = empty($minfo['specialty'])!=false ?  '<i>未填写</i>' : $minfo['specialty'];?>
       </div>
       
       <div class="catname" style="margin-top:40px;">
       <span style="float:left">我的兼职时间</span>
       <span style="float:right"><a href="<?php echo u_('User/editfreetime',array('id'=>$minfo['id']))?>">编辑</a></span>
       </div>
       <div>
         <?php foreach($minfo['freetime'] as $v){?>
         <span class="free"><?php echo $v;?></span>
         <?php }?>
       </div>
       
       
   </div>
</div>

</div>
<?php require(inc_('foot')); ?>