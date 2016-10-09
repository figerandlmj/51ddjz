<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加会员等级</span><a href="<?php echo u_('membergrade') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">等级：</td>
<td><input type="text" name="gname" placeholder="等级"><span>*</span></td>
</tr>
<tr><td width="100" align="right">服务月数：</td>
<td><input type="text" name="sertime" value="12">个月<span> 默认为12个月，请规范填写！</span></td>
</tr>
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>