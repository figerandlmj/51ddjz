<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理登录</title>
<link rel="stylesheet" type="text/css" href="<?php echo TS; ?>m2/images/v.css">
</head>

<body class="login-body-bg">
<div class="title">多多兼职网管理系统登陆</div>
<div class="box">
<form action="" method="post">
	<input type="text" name="username" placeholder="用户名" maxlength="20">
	<input type="password" name="password" placeholder="密码" maxlength="20">
    <input type="text" name="code" placeholder="验证码" maxlength="4" style="width:48%; float:left;">
    <label class="code" style="width:130px;"><img src="<?php echo u_('code').'&tm='.mt_rand(1, 100); ?>" onClick="javascript:this.src='<?php echo u_('code'); ?>&tm='+Math.random();" width="130" height="36" /></label>
	<button type="submit">登录</button>
</form>
</div>
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>