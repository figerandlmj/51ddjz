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
<td width="100" valign="top">警告信息：</td>
<td>
<textarea name="warnmess" cols="70" rows="5"></textarea>
</td>
</tr>
<tr>
<td></td>
<td><button type="submit">添加警告</button></td>
</tr>
</table>
</form>

<?php if(isset($list) && !empty($list)){?>
<table width="98%" border="0" cellspacing="1" class="l" style="margin-top:20px;">
<thead>
   <tr><th>警告记录</th></tr>
</thead>
<tbody  align="center">
<?php
if(!empty($list)) foreach($list as $v): ?>
<tr>
<td align="left"><?php  echo date("Y-m-d H:i",$v['addtime']).'：'. $v['warnmess'];?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
<?php }?>


</div>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>

<?php include(inc_('foot')); ?>
