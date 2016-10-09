<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>行业列表</span><?php if(n_('School|addcampus',$Spow)){ ?>
  	<a href="<?php echo u_('index') ?>" style="margin-left:4px;display:inline-block;background:#08DEC2;">返回</a> 
  	<a href="<?php echo u_('School/addcampus',array('scho_id'=>$scho_id)); ?>" style="display:inline-block;background:#F199CD;">添加校区</a><?php } ?>
  </div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">校区名称</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)): ?>
<?php foreach($list as $v): ?>
<tr>
<td><?php echo $v['name']?></td>
<td>
<?php if(n_('School|editcampus',$Spow)){ ?><a href="<?php echo u_('editcampus',array('id'=>$v['id'],'scho_id'=>$scho_id));?>" style="display:inline-block;background:#FFD600;">编辑</a><?php } ?> 
<?php if(n_('School|delcampus',$Spow)){ ?><a href="<?php echo u_('delcampus',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach; endif;?>

</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>