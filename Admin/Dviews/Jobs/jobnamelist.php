<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>[<b><?php echo $info['title']?></b>] 报名名单</span>
  <a href="<?php echo u_('index') ?>" style="margin-left:10px;">返回</a>
  <?php if(n_('Jobs|addjobnamelist',$Spow)){ ?><a href="<?php echo u_('Jobs/addjobnamelist',array('id'=>$info['id'])); ?>">新增名额</a><?php } ?>
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
<?php $admi=$v['admi']==0 ? 1:0; ?>
<?php if(n_('Jobs|editjobnamelist',$Spow)){ ?><a href="<?php echo u_('editjobnamelist',array('id'=>$v['id'],'admi'=>$admi,'jobid'=>$v['jobs_id']));?>" <?php if($v['admi']==0){?>  style="background:#999" <?php }?>>
<?php echo $admi = $v['admi']==0 ? '录取':'取消录取';?>
</a><?php } ?>

<?php $dc=$v['daochang']==0 ? 1:0; ?>
<?php if(n_('Jobs|editjobnamelist',$Spow)){ ?><a href="<?php echo u_('editjobnamelist',array('id'=>$v['id'],'dc'=>$dc,'jobid'=>$v['jobs_id']));?>" <?php if($v['daochang']==0){?>  style="background:#999" <?php }?>>
<?php echo $dc = $v['daochang']==0 ? '设为到场':'取消到场';?>
</a><?php } ?>

<?php if(n_('Jobs|deljobnamelist',$Spow)){ ?><a href="<?php echo u_('deljobnamelist',array('id'=>$v['id'],'jobid'=>$v['jobs_id']));?>" onClick="return confirm('确定删除？')">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>