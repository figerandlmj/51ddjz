<?php include(inc_('head')); ?>
<link rel="stylesheet" href="<?php echo TS.'/ext/kindeditor/themes/default/default.css';?>" />
<div class="right" id="right">
  <div class="title"><span>新增一条兼职信息</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="id" value="<?php echo $i['id'];?>">
<table width="100%" border="0" cellspacing="12">
<input type="hidden" name="reput" value="0" />
<tr>
<td width="100" align="right">
信息编号：
</td>
<td>
<?php echo $i['jobnub'];?>
</td>
</tr>

<tr>
<td width="100" align="right">
信息类型：
</td>
<td>
<select name="jobtype">
<option value="普通"  <?php if($i['jobtype']=='普通') echo 'selected';?>>普通</option>
<option value="双休"  <?php if($i['jobtype']=='双休') echo 'selected';?>>双休</option>
<option value="节假日" <?php if($i['jobtype']=='节假日') echo 'selected';?>>节假日</option>
<option value="寒暑假" <?php if($i['jobtype']=='寒暑假') echo 'selected';?>>寒暑假</option>
<option value="实习生" <?php if($i['jobtype']=='实习生') echo 'selected';?>>实习生</option>
</select>
</td>
</tr>



<!--<tr><td width="100" align="right">标题：</td>
<td><input type="text" name="title"  value="<?php //echo $i['title'];?>"><span> *</span></td>
</tr>-->
<tr><td width="100" align="right">招聘单位：</td>
<td><input type="text" name="cname"  value="<?php echo $i['cname'];?>"><button type="button" id="chsbox">选</button></td>
</tr>
<tr><td width="100" align="right">招聘职位：</td>
<td><input type="text" name="job"  value="<?php echo $i['job'];?>"><span> *</span></td>
</tr>
<tr><td width="100" align="right">招聘人数：</td>
<td><input type="text" name="mnums" value="<?php echo $i['mnums'];?>"></td>
</tr>
<tr><td width="100" align="right">性别要求：</td>
<td>
男：
<label id="coops0" style="float:none;"><input type="radio" name="sex11" value="1" <?php echo $sss = $i['sex11']==1 ? 'checked="checked"' : '';?> >不限</label>&nbsp;&nbsp; 
<label id="coops1" style="float:none;"><input type="radio" name="sex11" value="0" <?php echo $sss = $i['sex11']==0 ? 'checked="checked"' : '';?> >限制：</label>
<input type="text" id="sex1" name="sex1" style="width:60px; <?php echo $sss = $i['sex11']==1 ? 'display:none;' : '';?> padding:2px"  <?php echo $sss = $i['sex1']==99999 ? 'disabled="disabled"' : '';?> value="<?php echo $i['sex1'];?>" />
<br />
女：
<label id="coops2" style="float:none;"><input type="radio" name="sex22" value="1"  <?php echo $sss = $i['sex22']==1 ? 'checked="checked"' : '';?>>不限</label>&nbsp;&nbsp; 
<label id="coops3" style="float:none;"><input type="radio" name="sex22" value="0" <?php echo $sss = $i['sex22']==0 ? 'checked="checked"' : '';?>>限制：</label>
<input type="text" id="sex2" name="sex2" style="width:60px; <?php echo $sss = $i['sex22']==1 ? 'display:none;' : '';?> padding:2px; margin-top:2px;"  <?php echo $sss = $i['sex2']==99999 ? 'disabled="disabled"' : '';?> value="<?php echo $i['sex2'];?>"/>
<span> 不招聘请填写：0</span>
<script type="text/javascript">
$(function(){
	$('#coops1').click(function(){
		  $('#sex1').show();
		  $('#sex1').attr('disabled',false);
		});
	$('#coops0').click(function(){
		  $('#sex1').attr('disabled','disabled');
		   $('#sex1').hide();
		});
		
	$('#coops3').click(function(){
		  $('#sex2').show();
		  $('#sex2').attr('disabled',false);
		});
	$('#coops2').click(function(){
		  $('#sex2').attr('disabled','disabled');
		   $('#sex2').hide();
		});
		
	});
</script>
</td>
</tr>
<tr><td width="100" align="right">身高要求：</td>
<td>
男：<input type="text" name="stature1" style="width:60px" value="<?php echo $i['stature1'];?>" />
女：<input type="text" name="stature2" style="width:60px"  value="<?php echo $i['stature2'];?>" />
<span>  填0为：不限制</span>
</td>
</tr>
<tr><td width="100" align="right">面试时间：</td>
<td><input type="text" name="admitime" class="Wdate" value="<?php echo date("Y-m-d H:i",$i['admitime']);?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"><span> *</span></td>
</tr>

<tr><td width="100" align="right">集合时间：</td>
<td><input type="text" name="gathtime" id="gathtime" value="<?php echo $i['gathtime'];?>" 
> <img onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm',el:'gathtime'})" src="<?php echo TS.'/ext/My97DatePicker/skin/datePicker.gif'?>" width="16" height="22" align="absmiddle"></td>
</tr>
<tr><td width="100" align="right">集合地址：</td>
<td><input type="text" name="addr" value="<?php echo $i['addr'];?>"></td>
</tr>
<tr><td width="100" align="right">工作日期：</td>
<td>
<input type="text" name="jobtimestart" class="Wdate" id="jobtimestart" value="<?php echo $i['jobtimestart'];?>">
<img onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:'jobtimestart'})" src="<?php echo TS.'/ext/My97DatePicker/skin/datePicker.gif'?>" width="16" height="22" align="absmiddle">
 至
 <input type="text" name="jobtimeend" class="Wdate" id="jobtimeend" value="<?php echo $i['jobtimeend'];?>">
 <img onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:'jobtimeend'})" src="<?php echo TS.'/ext/My97DatePicker/skin/datePicker.gif'?>" width="16" height="22" align="absmiddle"> (本后栏可选填)
</tr>
<tr><td width="100" align="right">工作时间：</td>
<td>
<input type="text" name="jobtimestartt" class="Wdate" style="width:76px"  value="<?php echo $i['jobtimestartt'];?>" readonly
onClick="WdatePicker({dateFmt:'HH:mm'})">
 至
 <input type="text" name="jobtimeendt" class="Wdate" style="width:76px"  value="<?php echo $i['jobtimeendt'];?>" readonly
onClick="WdatePicker({dateFmt:'HH:mm'})"></td>
</tr>

<tr><td width="100" align="right">工作地点：</td>
<td>
<input type="text" name="jobaddr" value="<?php echo $i['jobaddr'];?>"/>
</td>
</tr>

<tr><td width="100" align="right">咨询电话：</td>
<td>
<input type="text" name="otel" value="<?php echo $i['otel'];?>"/>
</td>
</tr>
<tr><td width="100" align="right">工资待遇：</td>
<td><input type="text" name="wage"  value="<?php echo $i['wage'];?>" style="width:76px;"> 元 
<select name="unit" style="width:84px;">
<option value="天" <?php if($i['unit']=='天') echo 'selected'?>>天</option>
<option value="小时" <?php if($i['unit']=='小时') echo 'selected'?>>小时</option>
<option value="半天" <?php if($i['unit']=='半天') echo 'selected'?>>半天</option>
<option value="次" <?php if($i['unit']=='次') echo 'selected'?>>次</option>
<option value="周" <?php if($i['unit']=='周') echo 'selected'?>>周</option>
<option value="月" <?php if($i['unit']=='月') echo 'selected'?>>月</option>

</select>
<span>留空则为：面议</span>
</td>
</tr>
<tr><td width="100" align="right">结算方式：</td>
<td>
<input type="text" name="settlement" value="<?php echo $i['settlement'];?>"/>
</td>
</tr>
<!--<tr><td width="100" align="right">招聘人数：</td>
<td><input type="text" name="number"  value="<?php //echo $i['number'];?>"><span> 留空为：不限制人数 </span></td>
</tr>-->
<tr><td width="100" align="right">报名限制：</td>
<td>
<?php $a = 0; foreach($g as $v):?>
<label><input type="checkbox" name="grade[]" value="<?php echo $v['id']?>" <?php if(in_array($v['id'],$i['grade'])) echo 'checked="checked"';?>> <?php echo $v['gname'];?></label>&nbsp;&nbsp;
<?php $a++; endforeach;?>
</td>
</tr>

<tr><td width="100" align="right">其他要求：</td>
<td>
<label><input type="checkbox" name="otherx[]" value="jkz" <?php if(in_array('jkz',$i['otherx'])) echo 'checked="checked"';?>> 健康证</label>&nbsp;&nbsp;
<label><input type="checkbox" name="otherx[]" value="yhk" <?php if(in_array('yhk',$i['otherx'])) echo 'checked="checked"';?>> 银行卡</label>&nbsp;&nbsp;
<label><input type="checkbox" name="otherx[]" value="sfz" <?php if(in_array('sfz',$i['otherx'])) echo 'checked="checked"';?>> 身份复印件</label>&nbsp;&nbsp;
<label><input type="checkbox" name="otherx[]" value="xsz" <?php if(in_array('xsz',$i['otherx'])) echo 'checked="checked"';?>> 学生证</label>
</td>
</tr>

<tr><td width="100" align="right">来源：</td>
<td>
<select name="ways">
<option value="来电" <?php if($i['ways']=='来电') echo 'selected';?>>来电</option>
<option value="去电" <?php if($i['ways']=='去电') echo 'selected';?>>去电</option>
</select>
</td>
</tr>
<?php if(session('userid')==1){?>
<tr><td width="100" align="right">审核状态：</td>
<td>
<label><input type="radio" name="auditing" value="0" <?php if($i['auditing']==0) echo 'checked';?> >未审核</label>
<label><input type="radio" name="auditing" value="1" <?php if($i['auditing']==1) echo 'checked';?>>审核通过</label>
</td>
</tr>
<?php }?>
<tr><td width="100" align="right">有效时间：</td>
<td><input type="text" name="endtime" class="Wdate" value="<?php echo date("Y-m-d H:i",$i['endtime']);?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"><span> 说明：有效时间一到，系统自动停止发布该信息，并终止报名</span></td>
</tr>
<tr><td width="100" align="right" valign="top">招聘说明：</td>
<td><textarea name="desc" style="width:500px; height:240px;" placeholder="输入公告信息"><?php echo $i['desc'];?></textarea><span>* </span></td>
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
				editor = K.create('textarea[name="desc"]', {
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
