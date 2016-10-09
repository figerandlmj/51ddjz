<?php require(inc_('head')); ?>

<div class="warp page-title">
找回密码
</div>
<div class="page-box">
<div class="ads">
  <span>找回密码</span>
</div>
<form action="" method="post" id="lform">
<table width="100%" cellspacing="0">
<tr>
<td width="100" align="right">邮箱账号：</td><td><input type="text" name="email" id="email" maxlength="20" placeholder='输入登陆邮箱'> <font color="#999999" class="tip">标准的邮箱格式</font></td>
</tr>
<tr>
<tr>
<td align="right">验证码：</td><td><input type="text" name="code" id="code" style="width:70px; height:26px; float:left;" maxlength="4" placeholder='验证码'>
<img src="<?php echo u_('code').'&tm='.mt_rand(1, 100); ?>" onclick="javascript:this.src='<?php echo u_('code'); ?>&tm='+Math.random();" width="100" height="36" />
 </td>
</tr>
<tr>
<td align="right"></td><td><input type="button" id="subLogin" value="发送" disabled>
</td>
</tr>
<tr>
<td align="right"></td><td style="padding-top:20px;"><a href="<?php echo u_('User/login')?>">返回重试登陆！</a></td>
</tr>
</table>
</form>
</div>

<script src="<?php echo TS;?>m1/js/web.js.js"></script>
<script type="text/javascript">
$(function(){
$('#subLogin').attr('disabled','disabled');

$("#email").blur(function(){
	if(testemail($(this).val())==true){
		 $(this).removeClass('err').addClass('yes');
		  $('#subLogin').attr('disabled',false);
		  }
	else{
		  $(this).removeClass('yes').addClass('err');
		   return false;
		}
	});
	
$('#subLogin').click(function(){
			var c = $('#code').val();
			$.post("<?php echo u_('User/chcode')?>",{code:c},function(d){
				if(d=='err'){
					$('#code').removeClass('yes').addClass('err');
					}
				if(d=='on'){
					$('#lform').submit();
					}
				});
	  });
	  
});
</script>
<?php include(inc_('foot')); ?>
