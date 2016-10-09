<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>内容列表</span><?php if(n_('Page|addpage',$Spow)){ ?><a href="<?php echo u_('Page/addpage'); ?>" style="display:inline-block;background:#08DEC2;">新增内容页面</a><?php } ?>
  </div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="150">添加日期</th><th>标题</th></th><th>状态</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo date("Y-m-d H:i",$v['addtime']);?></td>
<td><?php echo $v['title']?></td>
<td><?php  if($v['locks']==0) echo '显示'; else echo '锁定';?></td>
<td>
<?php
$put = $v['locks']== 0 ? 1 : 0;
?>
<?php if(n_('Page|editpage',$Spow)){ ?><a href="<?php echo u_('editpage',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a><?php } ?>
<a href="<?php echo u_('lockpage',array('id'=>$v['id'],'locks'=>$put));?>" style="display:inline-block;background:#FFD600;"><?php if($v['locks'] == 0) echo '取消显示'; else echo '显示';?></a>
<a href="<?php echo u_('Web/Page/index',array('id'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#ff8400;">查</a>
<?php if(n_('Page|delpage',$Spow)){ ?><a href="<?php echo u_('delpage',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>