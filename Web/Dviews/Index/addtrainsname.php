<?php require(inc_('head')); ?>

<div class="warp page-title">
提示信息
</div>
<div class="page-box">
<div class="ads">
  <span>提示信息</span>
</div>
<?php if($igo){?>
<p>恭喜您！申请成功！</p>
<p><a href="<?php echo u_('User/index',array('id'=>session('memberid')))?>">返回我的个人中心</a></p>
<?php }else{?>
<p>很遗憾！申请失败,请您稍后重试！</p>
<?php }?>
</div>

<script src="<?php echo TS;?>m1/js/web.js.js"></script>

<?php include(inc_('foot')); ?>
