<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加新会员</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
 <!--<button type="button" id="dist">点击编辑</button> -->
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="id" value="<?php echo $i['id'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">会员卡号：</td>
<td><input type="text" name="mcard" value="<?php echo $i['mcard'];?>"></td>
</tr>
<tr><td width="100" align="right">真实姓名：</td>
<td><input type="text" name="realname" value="<?php echo $i['realname'];?>"><span> *</span></td>
</tr>
<tr><td width="100" align="right">性别：</td>
<td>
<label><input type="radio" name="sex" value="0" <?php if($i['sex']==0) echo 'checked';?>>男</label>
&nbsp;&nbsp;&nbsp;&nbsp;
<label><input type="radio" name="sex" value="1" <?php if($i['sex']==1) echo 'checked';?>>女</label>
</td>
</tr>
<tr><td width="100" align="right">联系电话：</td>
<td><input type="text" name="tel" value="<?php echo $i['tel'];?>"><span> * 必须为手机号格式</span></td>
</tr>
<tr><td width="100" align="right">身份证号：</td>
<td><input type="text" name="mid" value="<?php echo $i['mid'];?>"></td>
</tr>
<tr><td width="100" align="right">登陆邮箱：</td>
<td><input type="text" name="email" value="<?php echo $i['email'];?>"><span> * 务必牢记，用于登录与找回密码</span></td>
</tr>
<tr><td width="100" align="right">登陆密码：</td>
<td><input type="password" name="password"  value="<?php echo $i['password'];?>"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">确认密码：</td>
<td><input type="password" name="repassword" value="<?php echo $i['password'];?>"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">级别：</td>
<td>
<?php foreach($grade as $v):?>
<label><input type="radio" name="grade" value="<?php echo $v['id'];?>" <?php if($i['grade']==$v['id']) echo 'checked'; $i++;?>><?php echo $v['gname'];?></label>
<?php endforeach;?>
</td>
</tr>
<tr><td width="100" align="right">状态：</td>
<td>
<label><input type="radio" name="locks" value="1" <?php if($i['locks']==1) echo 'checked';?>>激活</label>
<label><input type="radio" name="locks" value="0" <?php if($i['locks']==0) echo 'checked';?>>锁定</label>
</td>
</tr>
<tr><td width="100" align="right">VIP办理时间：</td>
<td><input type="text" name="viptime" class="Wdate"  value="<?php echo $viptime = empty($i['viptime']) ? '' :  date("Y-m-d",$i['viptime']);?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"><span> 如不填写该字段，到期时间将以注册时间为准！</span></td>
</tr>
<tr><td width="100" align="right">服务到期时间：</td>
<td><input type="text" name="endstime" class="Wdate"  value="<?php echo date("Y-m-d",$i['endstime']);?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"><span> 注：若级别有变动，则到期时间以对应级别的服务时间为准！</span></td>
</tr>
<tr><td></td><td>
<button type="submit">提交</button>  
</td></tr>
</table>
</form>
</div>

<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>

<script type="text/javascript">
//$(function(){
//
//$('input').attr('disabled','disabled');
//$('select').attr('disabled','disabled');
//$('button[type=submit]').attr('disabled','disabled');
//$('textarea').attr('disabled','disabled');
//$('input').css({background:'none',border:'none'});
//$('select').css({background:'none',border:'none'});
//$('textarea').css({background:'none',border:'none'});
//$('button[type=submit]').hide();
//
//$('#dist').click(function(){
//var bc = '#fff url(inputBG.png) repeat-x left -7px';
//var bd = '#c1c1c1 solid 1px';
//$('input').attr('disabled',false);
//$('select').attr('disabled',false);
//$('button[type=submit]').attr('disabled',false);
//$('textarea').attr('disabled',false);
//$('input').css({background:bc,border:bd});
//$('select').css({background:bc,border:bd});
//$('textarea').css({background:bc,border:bd});
//$('button[type=submit]').show();
//	});
//});
 </script>
<?php include(inc_('foot')); ?>
