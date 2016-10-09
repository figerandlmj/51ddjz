<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>会员列表</span>
  
  <?php if(n_('Member|addmember',$Spow)){ ?><a href="<?php echo u_('Member/addmember'); ?>" style="display:inline-block;background:#08DEC2;">添加会员</a><?php } ?>
  <a href="<?php echo u_('Member/index',array('addtype'=>1)); ?>" style="margin-right:4px;display:inline-block;background:#F199CD;" >只看网站注册</a>
  <a href="<?php echo u_('Member/index',array('addtype'=>0)); ?>" style="margin-right:4px;display:inline-block;background:#A5B90A;" >只看后台添加</a>
  </div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">姓名</th><th>性别</th><th>联系电话</th><th>注册时间</th><th>到期时间</th><th>级别</th><th>来源</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['realname'];?></td>
<td><?php  echo $v['sex']= $v['sex']==0 ? '男':'女';?></td>
<td><?php echo $v['tel']?></td>
<td><?php echo date("Y-m-d",$v['regtime'])?></td>
<td><?php echo date("Y-m-d",$v['endstime'])?></td>
<td><?php echo $v['gname']?></td>
<td><?php echo $addtype = $v['addtype']==1 ? '网站注册': '后台添加'?></td>
<td>
<?php if(n_('Member|editmember_u',$Spow)){ ?><a href="<?php echo u_('editmember_u',array('id'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#41940F;">账号</a><?php } ?>
<?php if(n_('Member|memberinfo',$Spow)){ ?><a href="<?php echo u_('memberinfo',array('uid'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#FFD600;">资料</a><?php } ?>
<?php if(n_('Member|warning',$Spow)){ ?><a href="<?php echo u_('warning',array('uid'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#8A83EC;">警</a><?php } ?>
<?php if(n_('Member|frozen',$Spow)){ ?><a href="<?php echo u_('frozen',array('uid'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#8A83EC;">冻</a><?php } ?>
<?php if(n_('Member|limit',$Spow)){ ?><a href="<?php echo u_('limit',array('uid'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#8A83EC;">限</a><?php } ?>
<a href="<?php echo u_('hislist',array('mid'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#ff8400;">记录</a>
<?php if(n_('Member|delmember',$Spow)){ ?><a href="<?php echo u_('delmember',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<?php include(inc_('foot')); ?>