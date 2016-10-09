<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span><?php echo $info['cname']; ?>属性操作</span><a href="javascript:window.history.back();" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="uid" value="<?php echo $info['uid'];?>">
<input type="hidden" name="aore" value="<?php echo $info['aore'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">合作状态：</td>
<td>
<?php
$coop = $info['coop'];
$important = $info['important'];
$ct=false;
if(!empty($info['cooptime']) && is_numeric($info['cooptime'])){
	$cooptime = date('Y-m-d',$info['cooptime']);
	$ct = true;
	}

?>
<label id="coops0"><input type="radio" name="coop" value="0" <?php if($coop == 0) echo 'checked' ;?>>未合作</label>&nbsp;&nbsp; 
<label id="coops1"><input type="radio" name="coop" value="1" <?php if($coop == 1) echo 'checked' ;?> >已合作</label>
<input type="text" name="cooptime" id="icooptime" readonly="readonly" <?php if(!$ct){?> style="display:none"  disabled="disabled"<?php }else{ echo 'value="'.$cooptime.'"';}?>  onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" /><span> 设置合作时，请确保该企业已经发布了信息</span>
<script type="text/javascript">
$(function(){
	$('#coops1').click(function(){
		  $('#icooptime').show();
		  $('#icooptime').attr('disabled',false);
		});
	$('#coops0').click(function(){
		  $('#icooptime').attr('disabled','disabled');
		   $('#icooptime').hide();
		});
	});
</script>
</td>
</tr>
<tr><td width="100" align="right">重点企业：</td>
<td>
<label><input type="radio" name="important" value="0" <?php if($important == 0) echo 'checked' ;?>>普通</label> 
&nbsp;&nbsp;
<label><input type="radio" name="important" value="1" <?php if($important == 1) echo 'checked' ;?> >重点</label> 

</td>
</tr>
<!--<tr><td width="100" align="right">黑名单：</td>
<td>
<label><input type="radio" name="locktime" value="0" <?php if($locktime == 0) echo 'checked';?>>否</label> &nbsp;&nbsp;
<label><input type="radio" name="locktime" value="1" <?php if($locktime == 1) echo 'checked';?>>是</label>
</td>
</tr>-->
<tr><td></td><td>
<button type="submit">提交</button>  
</td></tr>
</form>
<tr><td></td><td>
<?php if($info['blist']==0):?>
<a href="<?php echo u_('addblist',array('cid'=>$info['uid'],'cname'=>$info['cname']))?>">拉入黑名单</a>
<?php endif;?>
<?php if($info['blist']==1):?>
<a href="<?php echo u_('delblist',array('cid'=>$info['uid']))?>">解除黑名单</a>
<?php endif;?>
</td></tr>
</table>

</div>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>
<?php include(inc_('foot')); ?>
