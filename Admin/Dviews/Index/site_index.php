<?php require(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>网站信息编辑</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  <?php if($info['yes']==1): ?>
  <div class="success">信息更新成功！</div>
  <?php endif ?>
  </div>
<form action="" method="post" onSubmit="return confirm('确定更新？')">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">网站名称：</td>
<td><input type="text" name="sitename" value="<?php echo $info['sitename']; ?>">
<span>*</span>
</td></tr>
<tr><td align="right">网站网址：</td>
<td><input type="text" name="siteurl" value="<?php echo $info['siteurl'];?>">
<span>*</span>
</td></tr>
<tr><td valign="top" align="right">关键词：</td>
<td><textarea name="keywords" rows="3" cols="50"><?php echo $info['keywords'];?></textarea></td></tr>
<tr><td valign="top" align="right">网站描述：</td>
<td><textarea name="description" rows="3" cols="50"><?php echo $info['description'];?></textarea></td></tr>
<tr><td valign="top" align="right">版权信息：</td>
<td><textarea name="copyright" rows="3" cols="50"><?php echo $info['copyright'];?></textarea></td></tr>
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>

</div>
<?php require(inc_('foot')); ?>