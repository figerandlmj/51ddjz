<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加学校</span><?php if(n_('School|addschool',$Spow)){ ?><a href="<?php echo u_('School/addschool'); ?>" style="display:inline-block;background:#08DEC2;">添加大学</a><?php } ?></div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="50%">学校名称</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['name']?></td>
<td>
<?php if(n_('School|campus',$Spow)){ ?><a href="<?php echo u_('campus',array('scho_id'=>$v['id']));?>" style="display:inline-block;background:#FFD600;">校区管理</a><?php } ?> 
<?php if(n_('School|editschool',$Spow)){ ?><a href="<?php echo u_('editschool',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">更名</a> <?php } ?>
<?php if(n_('School|delschool',$Spow)){ ?><a href="<?php echo u_('delschool',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>