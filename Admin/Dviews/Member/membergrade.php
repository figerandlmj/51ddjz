<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>会员等级列表</span><?php if(n_('Member|addmembergrade',$Spow)){ ?><a href="<?php echo u_('Member/addmembergrade');?>" style="display:inline-block;background:#08DEC2;">添加等级</a></div><?php } ?>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">级别</th><th>服务时间</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['gname']?></td>
<td><?php echo $v['sertime']?> 个月</td>
<td>
<?php if(n_('Member|editmembergrade',$Spow)){ ?><a href="<?php echo u_('editmembergrade',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a><?php } ?> 
<?php if(n_('Member|delmembergrade',$Spow)){ ?><a href="<?php echo u_('delmembergrade',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>