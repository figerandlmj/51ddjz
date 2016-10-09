<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>类型列表</span><a href="<?php echo u_('Company/addctype');?>" style="display:inline-block;background:#08DEC2;">添加类型</a></div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">类型名称</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php foreach($list as $v): ?>
<tr>
<td><?php echo $v['types']?></td>

<td>
<?php if(n_('Company|editctype',$Spow)){ ?><a href="<?php echo u_('editctype',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a> <?php } ?>
<?php if(n_('Company|delctype',$Spow)){ ?><a href="<?php echo u_('delctype',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a></td><?php } ?>
</tr>
<?php endforeach;?>
</tbody>
</table>

</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>