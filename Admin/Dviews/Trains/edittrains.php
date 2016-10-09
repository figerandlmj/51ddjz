<?php include(inc_('head')); ?>
<link rel="stylesheet" href="<?php echo TS.'/ext/kindeditor/themes/default/default.css';?>" />
<div class="right" id="right">
  <div class="title"><span>新增一条培训信息</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="id" value="<?php echo $i['id'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">这是一条：</td><td>
<label><input type="radio" name="itype" value="0"  <?php if($i['itype']==0) echo 'checked="checked"';?>  /> 培训信息</label> 
<label><input type="radio" name="itype" value="1"  <?php if($i['itype']==1) echo 'checked="checked"';?>/> 活动信息</label> 
</td>
</tr>
<tr><td width="100" align="right">标题：</td>
<td><input type="text" name="title"  value="<?php echo $i['title'];?>"><span> *</span></td>
</tr>
<tr><td width="100" align="right">单位：</td>
<td><input type="text" name="cname" value="<?php echo $i['cname'];?>"><button type="button" id="chsbox">选</button></td>
</tr>
<tr><td width="100" align="right">地址：</td>
<td><input type="text" name="addr" value="<?php echo $i['addr'];?>"><span> *</span></td>
</tr>
<tr><td width="100" align="right">报名电话：</td>
<td><input type="text" name="tel" value="<?php echo $i['tel'];?>"><span> *</span></td>
</tr>
<tr><td width="100" align="right">电子邮箱：</td>
<td><input type="text" name="email"  value="<?php echo $i['email'];?>"><span> 可不填</span></td>
</tr>
<tr><td width="120" align="right">报名开始时间：</td>
<td><input type="text" name="bstarttime" class="Wdate" value="<?php echo date("Y-m-d H:i",$i['bstarttime']);?>" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"><span> * </span></td>
</tr>
<tr><td width="100" align="right">报名截止时间：</td>
<td><input type="text" name="bendtime" class="Wdate" value="<?php echo date("Y-m-d H:i",$i['bendtime']);?>" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"><span> * 至少预留10个小时的报名时间</span></td>
</tr>
<tr><td width="100" align="right">开始时间：</td>
<td><input type="text" name="starttime" class="Wdate" value="<?php echo date("Y-m-d H:i",$i['starttime']);?>" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"><span> * </span></td>
</tr>
<tr><td width="100" align="right">截止时间：</td>
<td><input type="text" name="endtime" class="Wdate" value="<?php echo date("Y-m-d H:i",$i['endtime']);?>" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"><span> * </span></td>
</tr>
<tr><td width="100" align="right">人数上限：</td>
<td><input type="text" name="ps" value="<?php echo $i['ps'];?>"><span> * </span></td>
</tr>
<?php if(session('userid')==1){?>
<tr><td width="100" align="right">发布状态：</td>
<td><label><input type="radio" name="put" value="1" <?php if($i['put']==1) echo 'checked';?>>即刻发布</label> <label><input type="radio" name="put" value="0" <?php if($i['put']==0) echo 'checked';?>>暂不发布</label></td>
</tr>
<?php }?>
<tr><td width="100" align="right">报名限制：</td>
<td>

<?php //var_dump($i['grade']); exit;
$a = 0; foreach($g as $v):?>
<label><input type="checkbox" name="grade[]" value="<?php echo $v['id']?>" <?php if(in_array($v['id'],$i['grade'])) echo 'checked="checked"';?>><?php echo $v['gname'];?></label>
<?php $a++; endforeach;?>
</td>
</tr>
<tr><td width="100" align="right">培训说明：</td>
<td><textarea name="contents" style="width:500px; height:240px;" placeholder="输入公告信息"> <?php echo $i['contents'];?></textarea><span>* </span></td>
</tr>

<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>
<div class="shadow-bg"></div>
<div class="chs-box">
   <div class="chs-title">
      <span>选择企业</span>
      <div class="chs-close">关闭</div>
   </div>
   <div class="chs-list">
   <table width="100%" id="cnames">
   <?php foreach($incs as $k=>$v){?>
      <tr>
         <td valign="top" width="100" style="border-right:#ddd dashed 1px; padding:0 10px;"><?php echo $v['name']?></td>
         <td style="border-bottom:#ddd dashed 1px; padding:0 10px;">
            <ul>
            <?php foreach($v['list'] as $vl){?>
              <li><?php echo $vl['cname']?></li>
            <?php }?>
            </ul>
         </td>
      </tr>
   <?php }?>
   </table>
   </div>
</div>


<script type="text/javascript">
$(function(){
	$("#chsbox").click(function(){
		$('.shadow-bg').show();
		$('.chs-box').show();
		});
	$(".chs-close").click(function(){
		$('.shadow-bg').hide();
		$('.chs-box').hide();
		});
	$('#cnames li').click(function(){
		$('input[name="cname"]').val($(this).text());
		$('.shadow-bg').hide();
		$('.chs-box').hide();
		});
	});
</script>
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
