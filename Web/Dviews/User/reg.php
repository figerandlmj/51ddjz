<?php require(inc_('head')); ?>

<div class="warp page-title">
用户注册
</div>
<div class="page-box">
<div class="ads">
  <span>新用户注册</span>
</div>
<form action="" method="post" id="lform">
<table width="100%" cellspacing="0">
<tr><td width="100" align="right">真实姓名：</td>
<td><input type="text" name="realname" id="realname" placeholder="姓名"><span> *</span></td>
</tr>
<tr><td width="100" align="right">性别：</td>
<td>
<label><input type="radio" name="sex" value="0" checked>男</label>
&nbsp;&nbsp;&nbsp;&nbsp;
<label><input type="radio" name="sex" value="1">女</label>
</td>
</tr>
<tr><td width="100" align="right">联系电话：</td>
<td><input type="text" name="tel" id="tel" placeholder="联系电话"><span id="telspan"> * 必须为手机号格式</span></td>
</tr>
<tr><td width="100" align="right">登陆密码：</td>
<td><input type="password" name="password" id="password" placeholder="登陆密码"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">确认密码：</td>
<td><input type="password" name="repassword" id="repassword" placeholder="确认密码"><span> * 数字字母下划线格式</span></td>
</tr>
<tr><td width="100" align="right">电子邮箱：</td>
<td><input type="text" name="email" id="email" placeholder="登陆邮箱"><span id="mailspan"> * 务必牢记，用于与找回密码</span></td>
</tr>
<tr><td width="100" align="right">身份证号：</td>
<td><input type="text" name="mid" id="mid" placeholder="身份证号"><span id="midspan"> * 必须为真实有效的18位身份证号</span></td>
</tr>
<tr>
<td align="right">验证码：</td><td><input type="text" name="code" id="code" style="width:70px; height:26px; float:left;" maxlength="4" placeholder='验证码'>
<img src="<?php echo u_('code').'&tm='.mt_rand(1, 100); ?>" onclick="javascript:this.src='<?php echo u_('code'); ?>&tm='+Math.random();" width="100" height="36" />
 </td>
</tr>
<tr>
<td align="right"></td><td><input type="button" id="subLogin" value="立即注册">
</td>
</tr>
<tr>
<td align="right"></td><td style="padding-top:20px;"><a href="<?php echo u_('User/login')?>">拥有账号！立即登陆</a></td>
</tr>
</table>
</form>
</div>


<script type="text/javascript">

$(function(){
$('#subLogin').click(function(){
					
		   var semail = $('#email').val();
		   var srealname = $('#realname').val();
		   var stel = $('#tel').val();
		   var ssex = $('input[name="sex"]:checked').val();
		   var spassword = $('#password').val();
		   var srepassword = $('#repassword').val();
		   var smid = $('#mid').val();
		   var scode = $('#code').val();
		   // alert(ssex);
		   $.post("<?php echo u_('User/chreg')?>",{
			   email:semail,
			   realname:srealname,
			   tel:stel,
			   sex:ssex,
			   password:spassword,
			   repassword:srepassword,
			   mid:smid,
			   code:scode
			   },
			   function(d){
				     $("input[type!=button]").each(function(){
						
							$(this).removeClass('err').addClass('yes');
						
							});
						
					   if(d!=''){
						 s = new Array();
						 var s = d.split(',');
						// if(s[0]=='s'){
							 
							// }
						 for(var i=0;i<s.length;i++){
							if(d=='maild'){
							window.location.href='<?php echo u_('User/regtip')?>';
							}
							 $('#'+s[i]).removeClass('yes').addClass('err');	
							 if(s[i]=='reemail'){
									$('#mailspan').html(' 该邮箱已被使用或格式错误');
									$('#mailspan').css('color','red');
									$('#email').removeClass('yes').addClass('err');
								}
								if(s[i]=='retel'){
									$('#telspan').html(' 该手机号码已被使用或格式错误');
									$('#telspan').css('color','red');
									$('#tel').removeClass('yes').addClass('err');
								}
							   if(s[i]=='remid'){
									$('#midspan').html('该身份号码已被使用或格式错误');
									$('#midspan').css('color','red');
									$('#mid').removeClass('yes').addClass('err');
								}					
							 }
					     }
					 
				     	
				});
		       
	  });
	  
});
</script>
<script src="<?php echo TS;?>m1/js/web.js.js"></script>
<?php include(inc_('foot')); ?>