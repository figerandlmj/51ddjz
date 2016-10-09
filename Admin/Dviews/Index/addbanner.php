<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>首页焦点图</span><?php // if(n_('Admins|addadmins',$Spow)){ ?><a href="<?php echo u_('Index/addbanner'); ?>" style="display:inline-block;background:#08DEC2;">添加图片</a><?php // } ?>
  </div>
<form action="" method="post" enctype="multipart/form-data">
<table width="98%" border="0" cellspacing="1" class="l">
<tbody>
<tr>
<td>图片：</td><td><input type="file" name="imgfile"><span>必须为 png,jpg,gif  格式的图片，宽度最大为1020像素，大小在2MB内</span></td>
</tr>
<tr>
<td>跳转地址：</td><td><input type="text" name="banto" value="http://"> <span>必须以http://  开头的网址</span> </td>
</tr>
<tr>
<td>描述：</td><td><input type="text" name="bantitle"> <span>可不填</span></td>
</tr>
<tr>
<td>类型：</td>
<td>
	<select name="type">
		<option value="0" >请选择</option>
		<option value="1">首页banner图</option>
		<option value="2">首页兼职风采图</option>
	</select> 
	<span>必须选择类型</span>
</td>
</tr>
<tr>
<td></td><td><button type="submit">提交</button></td>
</tr>
</tbody>
</table>
</form>

</div>
<?php include(inc_('foot')); ?>