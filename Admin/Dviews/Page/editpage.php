<?php include(inc_('head')); ?>
<link rel="stylesheet" href="<?php echo TS.'/ext/kindeditor/themes/default/default.css';?>" />
<div class="right" id="right">
  <div class="title"><span>编辑：<?php echo $i['title'];?></span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="id" value="<?php echo $i['id'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">标题：</td>
<td><input type="text" name="title" value="<?php echo $i['title'];?>"><span> *</span></td>
</tr>
<tr><td width="100" align="right">关键词：</td>
<td><textarea name="keywords" style="width:500px; height:40px;"><?php echo $i['keywords'];?></textarea><span>* </span></td>
</tr>
<tr><td width="100" align="right">描述：</td>
<td><textarea name="description" style="width:500px; height:60px;"><?php echo $i['description'];?></textarea><span>* </span></td>
</tr>

<tr><td width="100" align="right" valign="top">内容：</td>
<td><textarea name="contents" style="width:700px; height:240px;" placeholder="输入页面内容"><?php echo $i['contents'];?></textarea></td>
</tr>
<tr><td width="100" align="right">是否显示：</td>
<td>
<label><input type="radio" name="locks" value="0" <?php if ($i['locks']==0) echo 'checked';?>>显示</label> 
<label><input type="radio" name="locks" value="1" <?php if ($i['locks']==1) echo 'checked';?>>暂不发布</label></td>
</tr>
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>
<?php include(inc_('foot')); ?>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>

		<script charset="utf-8" src="<?php echo TS.'/ext/kindeditor/kindeditor-min.js';?>"></script>
		<script charset="utf-8" src="<?php echo TS.'/ext/kindeditor/lang/zh_CN.js';?>"></script>
		<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="contents"]', {
					allowFileManager : true
					});
			});
		</script>
