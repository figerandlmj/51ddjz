<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>黑名单列表</span> 
</div>

<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">企业名称</th><th>黑名单原因</th><th>添加人</th><th>添加时间</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['cname'];?></td>
<td><?php echo $v['reason']?></td>
<td><?php echo $v['adname']?></td>
<td><?php echo date("Y-m-d H:i",$v['addtime']);?></td>
<td>
<?php if(n_('Company|blist',$Spow)){ ?><a href="<?php echo u_('delblist',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">解除</a><?php } ?>
</td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>