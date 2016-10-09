<?php require(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>个人信息管理</span><a href="<?php echo u_('index') ?>">返回</a>
  <?php if($info['yes']==1): ?>
  <div class="success">信息更新成功！</div>
  <?php endif ?>
  </div>
<?php //$areas = $info['areas'];?>
<form action="" method="post" onSubmit="return confirm('确定更新？')">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">真实姓名：</td>
<td><input type="text" name="realname" value="<?php echo $info['realname']; ?>">
<span>*</span>
</td></tr>
<tr><td align="right">登陆账号：</td>
<td><input type="text" name="username" value="<?php echo $info['username'];?>" disabled>
<span>*</span>
</td></tr>
<tr><td valign="top" align="right">登陆密码：</td>
<td><input type="password" name="password" value="<?php echo $info['password'];?>"></td></tr>
<tr><td valign="top" align="right">确认密码：</td>
<td><input type="password" name="repassword" value="<?php echo $info['password'];?>"></td></tr>
<!--<tr><td valign="top" align="right">所属区域：</td>
<td><input type="text" name="area_id" value="<?php// echo $areas[$info['area_id']];?>" disabled></td></tr>-->
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>

</div>
<?php require(inc_('foot')); ?>