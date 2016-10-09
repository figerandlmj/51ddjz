<?php include(inc_('head')); ?>
<link rel="stylesheet" href="<?php echo TS.'/ext/kindeditor/themes/default/default.css';?>" />
<div class="right" id="right">
  <div class="title"><span>编辑公告</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="id" value="<?php echo $info['id'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">标题：</td>
<td><input type="text" name="title" value="<?php echo $info['title'] ?>" placeholder="输入标题"><span> *</span></td>
</tr>
<tr><td width="120" align="right">是否立即发布：</td>
<td><label><input type="radio" name="put" value="1" <?php if($info['put'] == 1) echo 'checked';?>>即刻发布</label> 
<label><input type="radio" name="put" value="0" <?php if($info['put'] == 0) echo 'checked';?>>暂不发布</label></td>
</tr>
<tr><td width="100" align="right">停止公告时间：</td>
<td><input type="text" name="endtime" class="Wdate" value="<?php echo date("Y-m-d",$info['endtime']);?>" readonly onClick="WdatePicker()"><span> * 必须填写，默认公告100天</span></td>
</tr>
<tr><td width="100" align="right">内容：</td>
<td><textarea name="contents" style="width:500px; height:240px;" placeholder="输入公告信息">
<?php echo $info['contents'] ?>
</textarea><span>* </span></td>
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
					resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload : true,
					
					items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image', 'link']
				});
			});
		</script>
