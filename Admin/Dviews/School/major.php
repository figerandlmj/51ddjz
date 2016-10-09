<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加专业</span><?php if(n_('School|addmajor',$Spow)){ ?><a href="<?php echo u_('School/addmajor'); ?>" style="display:inline-block;background:#08DEC2;">添加专业</a><?php } ?></div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="50%">专业名称</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['name']?></td>
<td>
<a href="<?php echo u_('editmajor',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">更名</a> 
<a href="<?php echo u_('delmajor',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>