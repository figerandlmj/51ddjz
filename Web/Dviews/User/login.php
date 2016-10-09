<?php require(inc_('head')); ?>

<div class="warp page-title">
用户登陆
</div>
<div class="page-box">
<div class="ads">
  <span>用户登陆</span>
</div>
<form action="" method="post" id="lform">
<table width="100%" cellspacing="0">
<tr>
<td width="100" align="right">手机号：</td><td><input type="text" name="tel" id="tel" maxlength="20" placeholder='输入您的手机号码'> <font color="#999999" class="tip">标准的11位手机号码格式</font></td>
</tr>
<tr>
<td align="right">密&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" name="password" id="pass" maxlength="20" placeholder='密码'> <font color="#999999" class="tip">建议数字大小写字母结合</font></td>
</tr>
<tr>
<td align="right">验证码：</td><td><input type="text" name="code" id="code" style="width:70px; height:26px; float:left;" maxlength="4" placeholder='验证码'>
<img src="<?php echo u_('code').'&tm='.mt_rand(1, 100); ?>" onclick="javascript:this.src='<?php echo u_('code'); ?>&tm='+Math.random();" width="100" height="36" />
 </td>
</tr>
<tr>
<td align="right"></td><td><a href="<?php echo u_('User/repass')?>">忘记密码？</a></td>
</tr>
<tr>
<td align="right"></td><td><input type="button" id="subLogin" value="登录" disabled>
</td>
</tr>
<tr>
<td align="right"></td><td style="padding-top:20px;"><a href="<?php echo u_('User/reg')?>">没有账号？立即注册</a></td>
</tr>
</table>
</form>
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
	  var tologin = true; 
	  $("input[type!=button]").each(function(){
		  if($(this).attr('class')=='err'){
			  tologin = false;
			  return false;
			  }
		  });
		if(tologin){
			var e = $('#tel').val();
			var p = $('#pass').val().toString();
			var c = $('#code').val();
			$.post("<?php echo u_('User/chlogin')?>",{tel:e,password:p,code:c},function(d){
				//alert(d);
			    d = d.split('|');
				if(d[0]=='code'){
					$('#code').removeClass('yes').addClass('err');
					$('#subLogin').attr('disabled','disabled');
					}
				if(d[0]=='err'){
					$('#email').removeClass('yes').addClass('err');
					$('#pass').removeClass('yes').addClass('err');
					$('#subLogin').attr('disabled','disabled');
					}
				if(d[0]=='on'){
					window.location.href="<?php echo u_('User/index');?>&id="+d[1];
					}
				});
			}
	  });
	  
});
</script>
<?php include(inc_('foot')); ?>
