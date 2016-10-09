<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>编辑区域</span><a href="<?php echo u_('area') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定修改？')">
<table width="100%" border="0" cellspacing="12">
<input type="hidden" name="id" value="<?php echo $info['id'];?>">
<tr><td width="100" align="right">区域名称：</td>
<td><input type="text" name="title" value="<?php echo $info['title'];?>" placeholder="区域名称"><span>* (2~14个汉字以内)</span></td>
</tr>
<!--<tr><td width="100" align="right">负责人：</td>
<td>
<select name="ad_id">
<?php //foreach($admins as $v):?>
   <option value="<?php //echo $v['id'].'"'; if($v['id'] == $info['ad_id']) echo 'selected';?>><?php //echo $v['realname'];?></option>
<?php //endforeach;?>
</select>
</td>
</tr>-->
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>