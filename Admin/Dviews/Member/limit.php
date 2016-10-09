<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span><?php echo $info['realname']?> 会员冻结</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
  <style type="text/css">
  td{padding:4px;}
  td label{ margin:2px 4px;}
  </style>
  <table width="100%">
<form action="" method="post">
<input type="hidden" name="uid" value="<?php echo $info['id']?>" />
<tr>
<td></td>
<td>须参照当前会员服务到期时间：<?php echo date("Y-m-d",$info['endstime']);?> （限制时间必须在服务期内）</td>
</tr>
<tr>
<td width="100">冻结时间：</td>
<td>
<?php
if(!empty($curlimit)){
	$times = $curlimit['limittimes'];
	$timee = $curlimit['limittimee'];
	}
else{
	$times = time();
	$timee = $info['endstime'];
	}
?> 

<input type="text" name="limittimes" value="<?php echo date("Y-m-d",$times);?>" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"> 至 
<input type="text" name="limittimee" value="<?php echo date("Y-m-d",$timee);?>" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})">
<label style="float:none;"><input type="checkbox" name="static" value="0" /> 不（停止）当前限制</label>
</td>
</tr>
<tr>
<td></td>
<td><button type="submit">确定限制</button></td>
</tr>
</table>
</form>

<?php if(isset($list) && !empty($list)){?>
<table width="98%" border="0" cellspacing="1" class="l" style="margin-top:20px;">
<thead>
   <tr><th>限制时间</th></tr>
</thead>
<tbody  align="center">
<?php
if(!empty($list)) foreach($list as $v): ?>
<tr>
<?php  
if($v['static']==0){
	$ce =  '<font color="#663300"> [取消的限制] </font>';
	}
elseif($v['limittimee']>time()) {
$ce = '<font color="#FF0000"> [当前限制] </font>';
}
else{ $ce = '[历史限制]';}
?>
<td align="left"><?php echo $ce;  echo date("Y-m-d",$v['limittimes']);?> 至 <?php echo  date("Y-m-d",$v['limittimee']);?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
<?php }?>


</div>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>

<?php include(inc_('foot')); ?>
