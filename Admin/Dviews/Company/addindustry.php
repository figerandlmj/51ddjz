<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加行业</span><a href="<?php echo u_('industry') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">行业名称：</td>
<td><input type="text" name="name" placeholder="行业名称"><span>* (2~14个汉字以内)</span></td>
</tr>
<tr><td width="100" align="right">行业简介：</td>
<td><textarea name="info" style="width:300px; height:100px;" placeholder="输入简介信息"></textarea><span>* </span></td>
</tr>
<!--<tr><td width="100" align="right">所属区域：</td>
<td>
<select name="area_id">
<?php //foreach($areas as $v):?>
   <option value="<?php //echo $v['id'];?>"><?php //echo $v['title'];?></option>
<?php //endforeach;?>
</select>
</td>
</tr>-->
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>