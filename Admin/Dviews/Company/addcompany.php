<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加新企业</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">

<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">行业：</td>
<td>
<select name="industry_id">
<option value="">==请选择==</option>
<?php foreach($inds as $v):?>
<option value="<?php echo $v['id'];?>"><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>
</td>
</tr>
<tr><td width="100" align="right">区域：</td>
<td>
<select name="area_id">
<option value="">==请选择==</option>
<?php foreach($areas as $v):?>
<option value="<?php echo $v['id'];?>"><?php echo $v['title'];?></option>
<?php endforeach;?>
</select>
</td>
</tr>
<tr><td width="100" align="right">企业名称：</td>
<td><input type="text" name="cname" placeholder="企业名称"><span> * 2~14个汉字</span></td>
</tr>
<!--<tr><td width="100" align="right">联系人：</td>
<td><input type="text" name="linkman" placeholder="联系人"><span> * 2~4个汉字</span></td>
</tr>-->
<tr><td width="100" align="right">联系人：</td>
<td><textarea name="mlinkman" style="width:270px; height:80px; vertical-align:top">
</textarea><span> 注意：格式必须如："张三,人事经理,13900001111"(不含引号，<font color="#FF0000">每增一位则必须换行输入,格式中的","为英文逗号</font>，以第一位为默认联系人)</span></td>
</tr>
<!--<tr><td width="100" align="right">联系电话：</td>
<td><input type="text" name="tel" placeholder="联系电话"><span> * 必须为座机或手机号格式</span></td>
</tr>-->
<tr><td width="100" align="right">邮箱：</td>
<td><input type="text" name="email" placeholder="邮箱"><span> </span></td>
</tr>
<!--
<tr><td width="100" align="right">登陆密码：</td>
<td><input type="password" name="password" placeholder="登陆密码"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">确认密码：</td>
<td><input type="password" name="repassword" placeholder="确认密码"><span> * 数字字母下划线格式</span></td>
</tr>-->
<tr><td width="100" align="right">类型：</td>
<td>
<?php $i=1; foreach($types as $v):?>
<label><input type="radio" name="types" value="<?php echo $v['id'].'"'; if($i==1) echo 'checked'; $i++;?>><?php echo $v['types'];?></label>
<?php endforeach;?>
</td>
</tr>
<tr><td width="100" align="right">状态：</td>
<td>
<label><input type="radio" name="locks" value="1" checked>激活</label>
<label><input type="radio" name="locks" value="0">锁定</label>
</td>
</tr>

<tr><td></td><td>
<button name="sub" value="1" type="submit">提交</button>  
<button name="sub" value="2" type="submit">提交并继续完善</button>
</td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>
