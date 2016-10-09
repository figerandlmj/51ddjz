<?php require(inc_('head')); ?>

<div class="warp page-title">
重置密码
</div>
<div class="page-box">
<div class="ads">
  <span>重置密码</span>
</div>
<?php if($able){?>
<form action="" method="post" id="lform">
<table width="100%" cellspacing="0">
<tr>
<td width="100" align="right">新密码：</td><td><input type="password" name="password" id="password" maxlength="20" placeholder='输入新密码'> <font color="#999999" class="tip">大小写字母数字</font></td>
</tr>
<tr>
<td width="100" align="right">确认新密码：</td><td><input type="password" name="repassword" id="repassword" maxlength="20" placeholder='输入确认新密码'> <font color="#999999" class="tip">大小写字母数字</font></td>
</tr>

<tr>
<tr>
<td align="right">验证码：</td><td><input type="text" name="code" id="code" style="width:70px; height:26px; float:left;" maxlength="4" placeholder='验证码'>
<img src="<?php echo u_('code').'&tm='.mt_rand(1, 100); ?>" onclick="javascript:this.src='<?php echo u_('code'); ?>&tm='+Math.random();" width="100" height="36" />
 </td>
</tr>
<tr>
<td align="right"></td><td><input type="button" id="subLogin" value="修改" disabled>
</td>
</tr>
<tr>
<td align="right"></td><td style="padding-top:20px;"><a href="<?php echo u_('User/login')?>">返回重试登陆！</a></td>
</tr>
</table>
</form>
<p class="mess"></p>
</div>

<script src="<?php echo TS;?>m1/js/web.js.js"></script>
<script type="text/javascript">
$(function(){
$('#subLogin').attr('disabled','disabled');

$("input[type!=button]").blur(function(){
	  if(trim($(this).val())==''){
		  $(this).addClass('err');
		  return false;
		  }
	else{
		  $(this).removeClass('err').addClass('yes');
		  $('#subLogin').attr('disabled',false);
		}
	});
	
$('#subLogin').click(function(){
	var c = $('#code').val();
			$.post("<?php echo u_('User/chcode')?>",{code:c},function(d){
				if(d=='err'){
					$('#code').removeClass('yes').addClass('err');
					return false;
					}
				if(d=='on'){
					var v1 = $('#password').val();
					var v2 = $('#repassword').val();
					var v3 = '<?php echo $email ;?>';
					var v4 = '<?php echo $token ;?>';
					$.post("<?php echo u_('User/editrepass')?>",{password:v1,repassword:v2,u1:v3,t1:v4},function(d){
						switch(d){
							case 'p_err':
							$('.mess').html('密码过短或两次密码不一致');
							break;
							case 'e_err':
							case 'u_err':
							$('.mess').html('错误的邮箱账号');
							break;
							case 'o_err':
							$('.mess').html('验证码已经过期！');
							break;
							case 'success':
							$('.mess').html('密码重置成功！');
							break;
							}
						});
					}
				});
				
			
	  });
	  
});
</script>
<?php }else{?>
<p>Sorry！验证码已过期！</p>
<?php }?>
<?php include(inc_('foot')); ?>
