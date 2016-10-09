<?php require(inc_('head')); ?>

<div class="warp page-title">
搜索结果
</div>
<div class="page-box">
<ul class="clist">
<?php if(empty($list)){?>
<i>未查询到任何结果...</i>
<?php }else{ foreach($list as $k=>$v){ ?>
<li>[<?php 
if(isset($v['addtime'])){echo date("Y-m-d",$v['addtime']);}
else{
	echo ' <i>企业</i> ';
	}
?>] <a href="<?php echo u_($v['url'],array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a></li>
<?php }}?>
</ul>
<div>
<?php echo $page;?>
</div>
</div>
<script src="<?php echo TS;?>m1/js/web.js.js"></script>
<?php include(inc_('foot')); ?>


