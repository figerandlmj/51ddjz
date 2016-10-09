<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>管理员</span><?php if(n_('Admins|addadmins',$Spow)){ ?><a href="<?php echo u_('Admins/addadmins'); ?>" style="display:inline-block;background:#08DEC2;">添加管理员</a><?php } ?>
  </div>
 <style type="text/css">
 .hover{
 	background:#ccc;
 }
 </style> 
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">姓名</th><th>账号</th><th>负责区域</th><th>使用状态</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php
 if(!empty($list)) foreach($list as $v): ?>
<?php $locks = $v['locks']==0 ? '<font color="#FF0000">锁定</font>':'正常';?>
<tr>
<td <?php if($v['locks']==0){ echo 'style="background:#E8E5E5;"';}?>><?php echo $v['realname'];?></td>
<td <?php if($v['locks']==0){ echo 'style="background:#E8E5E5;"';}?>><?php echo $v['username']?></td>
<td <?php if($v['locks']==0){ echo 'style="background:#E8E5E5;"';}?>><?php echo $v['name']?></td>
<td <?php if($v['locks']==0){ echo 'style="background:#E8E5E5;"';}?>><?php echo $locks;?></td>
<td <?php if($v['locks']==0){ echo 'style="background:#E8E5E5;"';}?>>
<?php if(n_('Admins|editadmins',$Spow)){ ?><a href="<?php echo u_('editadmins',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">账号编辑</a><?php } ?>
<?php if(n_('Admins|powers',$Spow)){ ?><a href="<?php echo u_('powers',array('id'=>$v['id']));?>" style="display:inline-block;background:#FFD600;">权限设置</a><?php } ?> 
<?php if(n_('Admins|deladmins',$Spow)){ ?><a href="<?php echo u_('deladmins',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>