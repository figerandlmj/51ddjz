<?php require(inc_('head')); ?>

<div class="warp page-title">
网站公告
</div>
<div class="page-box">
<ul class="clist">
<?php if(!empty($notices)) foreach($notices as $k=>$v){ ?>
<li>[<?php echo date("Y-m-d",$v['addtime'])?>] <a href="<?php echo u_('Notice/content',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a></li>
<?php }?>
</ul>
<div>
<?php echo $page;?>
</div>
</div>

<script src="<?php echo TS;?>m1/js/web.js.js"></script>

<?php include(inc_('foot')); ?>