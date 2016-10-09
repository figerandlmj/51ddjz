<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加管理员</span><a href="<?php echo u_('index') ?>">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">

<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">负责区域：</td>
<td>
<?php foreach($inds as $v):?>
<label><input type="checkbox" name="area_id[]" value="<?php echo $v['id'];?>" checked="checked" /><?php echo $v['title'];?></label>
<?php endforeach;?>
</td>
<tr><td width="100" align="right">真实姓名：</td>
<td><input type="text" name="realname" placeholder="联系人"><span> * 2~4个汉字</span></td>
</tr>
<tr><td width="100" align="right">登陆账号：</td>
<td><input type="text" name="username" placeholder="登陆账号"><span> * </span></td>
</tr>
<tr><td width="100" align="right">登陆密码：</td>
<td><input type="password" name="password" placeholder="登陆密码"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">确认密码：</td>
<td><input type="password" name="repassword" placeholder="确认密码"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">允许免审：</td>
<td>
<label><input type="radio" name="free" value="1">允许</label>
<label><input type="radio" name="free" value="0" checked="checked">不允许</label>
</td>
</tr>
<tr><td width="100" align="right">状态：</td>
<td>
<label><input type="radio" name="locks" value="1" checked>使用</label>
<label><input type="radio" name="locks" value="0">锁定</label>
</td>
</tr>

<tr><td></td><td>
<button type="submit">提交</button> 
</td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>
