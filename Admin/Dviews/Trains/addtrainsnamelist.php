<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title">
  <span>增添名额</span><a href="javascript:window.history.back();" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
  <form action="" method="post">
<p>请输入要增添的会员姓名或手机号码：<input name="realname" type="text">
<button type="submit">查询</button></p>
  </form>
<?php if(isset($list) && !empty($list)){?>
<table width="98%" border="0" cellspacing="1" class="l" style="margin-top:20px;">
<thead>
   <tr><th width="180">姓名</th><th>性别</th><th>年龄</th><th>学校</th><th>电话</th><th>操作</th></tr>
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
<td>
<a href="<?php echo u_('addtrainsnamelist2',array('id'=>$v['id'],'tid'=>$trainsid));?>" onClick="return confirm('确定添加？')">添加</a></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
<?php }?>
</div>
<?php include(inc_('foot')); ?>