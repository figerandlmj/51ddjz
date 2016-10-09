<?php require(inc_('head')); ?>

<div class="warp page-title">
网站公告
</div>
<div class="page-box">
<div class="page-head">
<h3><?php echo $con['title']?></h3>
<p><span>发布时间：<?php echo date("Y年m月d日",$con['addtime'])?></span><span>浏览：<?php echo $con['hits']?>次</span></p>
</div>
<div class="page-body">
<?php echo $con['contents']?>
</div>
</div>

<script src="<?php echo TS;?>m1/js/web.js.js"></script>
<?php include(inc_('foot')); ?>