<?php include(inc_('head')); ?>
<link rel="stylesheet" href="<?php echo TS.'/ext/kindeditor/themes/default/default.css';?>" />
<div class="right" id="right">
  <div class="title"><span><?php echo $info['cname']; ?>资料操作</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="uid" value="<?php echo $info['uid'];?>">
<input type="hidden" name="aore" value="<?php echo $info['aore'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">企业地址：</td>
<td><input type="text" name="addr" value="<?php echo $info['addr'];?>" placeholder="企业地址"><span> * </span></td>
</tr>
<tr><td width="100" align="right">到达路线：</td>
<td><input type="text" name="route" value="<?php echo $info['route'];?>" placeholder="到达路线"></td>
</tr>
<tr><td width="100" align="right">企业网址：</td>
<td><input type="text" name="chttp" value="<?php echo $info['chttp'];?>" placeholder="http://"></td>
</tr>
<!--<tr><td width="100" align="right">企业邮箱：</td>
<td><input type="text" name="email" value="<?php// echo $info['email'];?>" placeholder="企业邮箱"><span> 安全起见，尽量不与登录邮箱一致</span></td>
</tr>-->
<tr><td width="100" align="right">企业简介：</td>
<td><textarea name="cinfo" style="width:500px; height:240px;" placeholder="企业简介">
<?php echo $info['cinfo'];?>
</textarea><span>* </span></td>
</tr>
<tr><td width="100" align="right">备注信息：</td>
<td><textarea name="remarks" style="width:500px; height:70px;" placeholder="备注信息">
<?php echo $info['remarks'];?>
</textarea></td>
</tr>
<tr><td></td><td>
<button type="submit">提交</button>  
</td></tr>
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
				editor = K.create('textarea[name="cinfo"]', {
					resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload : true,
					items : [
						'fontname', 'fontsize', '|', 'plainpaste','forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image', 'link']
				});
			});
</script>