<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>公告列表</span><?php if(n_('Notice|addnotice',$Spow)){ ?><a href="<?php echo u_('Notice/addnotice'); ?>" style="display:inline-block;background:#08DEC2;">新增公告</a><?php } ?>
  </div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="150">添加日期</th><th>标题</th><th width="150">结束时间</th><th>状态</th><th>添加人</th><th>点击数</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo date("Y-m-d H:i",$v['addtime']);?></td>
<td><?php echo $v['title']?></td>
<td><?php echo date("Y-m-d H:i",$v['endtime']);?></td>
<td><?php if($v['endtime'] < time()) echo '过期'; else echo '未过期'; ?></td>
<td><?php echo $v['realname']?></td>
<td><?php echo $v['hits']?></td>
<td>
<?php
$put = $v['put']== 0 ? 1 : 0;
$top = $v['top']== 0 ? 1 : 0;
?>
<?php if(n_('Notice|editnotice',$Spow)){ ?><a href="<?php echo u_('editnotice',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a><?php } ?>
<a href="<?php echo u_('putnotice',array('id'=>$v['id'],'put'=>$put));?>" style="display:inline-block;background:#FFD600;"><?php if($v['put'] == 1) echo '取消显示'; else echo '显示';?></a>
<a href="<?php echo u_('topnotice',array('id'=>$v['id'],'top'=>$top));?>" style="display:inline-block;background:#ff8400;"><?php if($v['top'] == 1) echo '取消置顶'; else echo '置顶';?></a>
<a href="<?php echo u_('Web/Notice/content',array('id'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#8A83EC;">查</a>
<?php if(n_('Notice|delnotice',$Spow)){ ?><a href="<?php echo u_('delnotice',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>