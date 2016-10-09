<?php if(!session('loginOr')) exit();?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="<?php echo TS; ?>m2/images/v.css">
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="<?php echo TS.'/ext/My97DatePicker/skin/WdatePicker.css';?>" />

</head>
<?php //P_($Spow);
$_COOKIE['menus'] = 'aindex';
 ?>
<body>
<div class="header">
   <div class="warp">
      <div class="logo">后台管理</div>
      <ul>
         <li><a href="<?php echo u_('Login/loginout'); ?>" onClick="return confirm('确定退出?')">退出管理</a></li>
         <li><a href="/" target="_blank">网站首页</a></li>
         <li><a href="<?php echo u_('Index/index'); ?>">系统首页</a></li>
         <li><a href="<?php echo u_('Index/person_info'); ?>">个人资料</a></li>
         <li style="background:none;"><span>欢迎您：<?php echo session('realname');?></span></li>
      </ul>
   </div>
</div>
<div class="left">
     <div class="mtop"></div>
   <ul>
   <?php foreach($Spowers[0] as $k=>$v):?>
      <li id="l<?php echo $k;?>" onClick="locations('<?php echo $k;?>')"><a href="javascript:void(0);" >≡ <?php echo $v;?></a></li>
   <?php endforeach;?>
   </ul>
</div>
<div class="menu" id="menu" style="">
   <div class="mtop"></div>
    
    <?php $Sp=0; foreach($Spowers[1] as $k=>$v):?>
   
   <ul id="<?php echo $k;?>" <?php if($Sp==0) {echo 'style="display:block"';} $Sp++;?>>
     <?php if($k == 'Index'){ ?>
     <li class="mindex"><a href="<?php echo u_('Index/index'); ?>"><span class="F">&gt; </span>系统首页</a></li>
     <li class="mbanner maddbanner meditbanner"><a href="<?php echo u_('Index/banner'); ?>"><span class="F">&gt; </span>Banner</a></li>
     <?php }?>
      <?php foreach($v as $m=>$n):?>
      <?php
	    $tttp = explode('/',$m);
		$rtyu = array('addjobs','addtrains','addnotice','visit','memor','search','counts');
	  ?>
      <li class="m<?php echo $tttp[1].' madd'.$tttp[1].' medit'.$tttp[1];?>"><a href="<?php echo u_($m); ?>" <?php if(in_array($tttp[1],$rtyu)){?>  <?php }?>><span class="F">&gt; </span><?php echo $n;?></a></li>
       <?php endforeach;?>
   </ul>
   <?php endforeach;?>
</div>

<script type="text/javascript">
//左侧菜单显示
locations("<?php echo CLASS_NAME;?>");
function locations(id){
	var menu = document.getElementById('menu');
	var menu = document.getElementById('menu');
	var uls  = menu.getElementsByTagName('ul');
	for(var i=0;i<uls.length;i++){
		uls[i].style.display='none';
		}
	document.getElementById(id).style.display="block";
	document.getElementById('l'+id).className="on";
	}

</script>
<script type="text/javascript" language="php">
$(function(){
	$('.left li').click(function(){
		$('.left li').each(function(){
			$(this).removeClass();
			});
		$(this).addClass('on');
		});
	$('<?php echo '.m'.ACTION_NAME;?>').addClass('on');
	var fff = false;
	$('#<?php echo CLASS_NAME;?> li').each(function(){
			if($(this).hasClass('on')){
				fff = true;
				}
		});
	if(fff == false){
		$('.mindex').addClass('on');
		}
	});
</script>
