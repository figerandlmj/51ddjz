<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加校区</span><a href="javascript:window.history.back();" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">
<input type="hidden" name="scho_id" value="<?php echo $scho_id; ?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">校区名称：</td>
<td><input type="text" name="name" placeholder="校区名称"><span>* (2~14个汉字以内)</span></td>
</tr>
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>