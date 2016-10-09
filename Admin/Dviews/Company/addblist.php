<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>将<?php echo $cname;?>加入黑名单</span> <a href="<?php echo u_('blist') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">
<input type="hidden" name="com_id" value="<?php echo $cid;?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">原因：</td>
<td><textarea name="reason" style="width:300px; height:100px;" placeholder="输入原因"></textarea><span>* </span></td>
</tr>
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>