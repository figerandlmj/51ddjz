<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>行业列表</span><a href="<?php echo u_('Company/addindustry'); ?>" style="display:inline-block;background:#08DEC2;">添加行业</a>
  </div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">行业名称</th><th>简介</th><!--<th>所属区域</th>--><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['name']?></td>
<td><?php echo $v['info']?></td>
<!--<td><?php // echo $v['title']?></td>-->
<td>
<?php if(n_('Company|editindustry',$Spow)){ ?><a href="<?php echo u_('editindustry',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a> <?php } ?>
<?php if(n_('Company|delindustry',$Spow)){ ?><a href="<?php echo u_('delindustry',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>