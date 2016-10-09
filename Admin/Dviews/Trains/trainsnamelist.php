<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>[<b><?php echo $info['title']?></b>] 报名名单</span><?php if(n_('Trains|addtrainsnamelist',$Spow)){ ?><a href="<?php echo u_('Trains/addtrainsnamelist',array('id'=>$info['id'])); ?>" style="display:inline-block;background:#08DEC2;">新增名额</a><?php } ?>
  </div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">姓名</th><th>性别</th><th>年龄</th><th>学校</th><th>电话</th><th>报名时间</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php
 if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['realname'];?></td>
<td><?php echo $sex=$v['sex']==0?'男':'女'?></td>
<td><?php echo $v['age']?>岁</td>
<td><?php echo $v['name']?></td>
<td><?php echo $v['tel']?></td>
<td><?php echo date("Y-m-d H:i",$v['regtime']);?></td>
<td>
<?php $admi=$v['arrive']==0 ? 1:0; ?>
<?php if(n_('Trains|edittrainsnamelist',$Spow)){ ?><a href="<?php echo u_('edittrainsnamelist',array('id'=>$v['id'],'arrive'=>$admi,'trainsid'=>$v['trai_id']));?>" <?php if($v['arrive']==0){?>  style="background:#999" <?php }?>>
<?php echo $admi = $v['arrive']==0 ? '到场':'未到场';?>
</a><?php } ?>
<?php if(n_('Trains|deltrainsnamelist',$Spow)){ ?><a href="<?php echo u_('deltrainsnamelist',array('id'=>$v['id'],'trainsid'=>$v['trai_id']));?>" onClick="return confirm('确定删除？')">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>