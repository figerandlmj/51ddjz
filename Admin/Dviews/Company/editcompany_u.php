<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>编辑企业：<?php echo $info['cname'];?></span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="id" value="<?php echo $info['id'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">行业：</td>
<td>
<select name="industry_id">
<option value="">==请选择==</option>
<?php foreach($inds as $v):?>
<option value="<?php echo $v['id'];?>" <?php if($v['id']==$info['industry_id']) echo 'selected';?> ><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>
</td>
</tr>
<tr><td width="100" align="right">区域：</td>
<td>
<select name="area_id">
<option value="">==请选择==</option>
<?php foreach($areas as $v):?>
<option value="<?php echo $v['id'];?>" <?php if($v['id']==$info['area_id']) echo 'selected';?>><?php echo $v['title'];?></option>
<?php endforeach;?>
</select>
</td>
</tr>
<tr><td width="100" align="right">企业名称：</td>
<td><input type="text" name="cname" value="<?php echo $info['cname'];?>"><span> * 2~14个汉字</span></td>
</tr>
<!--<tr><td width="100" align="right">联系人：</td>
<td><input type="text" name="linkman" value="<?php // echo $info['linkman'];?>"><span> * 2~4个汉字</span></td>
</tr>-->
<tr><td width="100" align="right">联系人：</td>
<td><textarea name="mlinkman" style="width:270px; height:80px; vertical-align:top">
<?php echo $info['mlinkman'];?>
</textarea><span> 注意：格式必须如："张三,人事经理,13900001111"(不含引号，<font color="#FF0000">每增一位则必须换行输入,格式中的","为英文逗号</font>，以第一位为默认联系人)</span></td>
</tr>
<!--<tr><td width="100" align="right">联系电话：</td>
<td><input type="text" name="tel" value="<?php // echo $info['tel'];?>"><span> * 必须为座机或手机号格式</span></td>
</tr>-->
<tr><td width="100" align="right">邮箱：</td>
<td><input type="text" name="email" value="<?php echo $info['email'];?>"><span></span></td>
</tr>
<!--<tr><td width="100" align="right">登陆密码：</td>
<td><input type="password" name="password" value="<?php echo $info['password'];?>"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">确认密码：</td>
<td><input type="password" name="repassword" value="<?php echo $info['password'];?>" placeholder="确认密码"><span> * 数字字母下划线格式</span></td>
</tr>-->
<tr><td width="100" align="right">类型：</td>
<td>
<?php foreach($types as $v):?>
<label><input type="radio" name="types" value="<?php echo $v['id'].'"'; if($v['id']==$info['types']) echo 'checked';?>><?php echo $v['types'];?></label>
<?php endforeach;?>
</td>
</tr>
<tr><td width="100" align="right">状态：</td>
<td>
<label><input type="radio" name="locks" value="1" <?php if($info['locks'] == 1) echo 'checked';?>>激活</label>
<label><input type="radio" name="locks" value="0" <?php if($info['locks'] == 0) echo 'checked';?>>锁定</label>
</td>
</tr>

<tr><td></td><td>
<button type="submit">提交</button>  
</td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>
