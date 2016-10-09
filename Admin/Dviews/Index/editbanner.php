<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>焦点图编辑</span><a href="<?php echo u_('banner') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="<?php echo $info['id'] ?>">
<table width="98%" border="0" cellspacing="1" class="l">
<tbody>
<tr>
<td>图片：</td><td><input type="file" name="imgfile" value="<?php echo $info['banimg'] ?>"><span>必须为 png,jpg,gif  格式的图片，宽度最大为1020像素，大小在2MB内</span></td>
</tr>
<tr>
<td>跳转地址：</td><td><input type="text" name="banto" value="<?php echo $info['banto'] ?>"> <span>必须以http://  开头的网址</span> </td>
</tr>
<tr>
<td>描述：</td><td><input type="text" name="bantitle" value="<?php echo $info['bantitle'] ?>"> <span>可不填</span></td>
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