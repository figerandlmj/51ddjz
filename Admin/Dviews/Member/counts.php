<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加新会员</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
  <style type="text/css">
  td{padding:4px;}
  td label{ margin:2px 4px;}
  </style>
  <table width="100%">
<form action="" method="get">
 <input type="hidden" name="m" value="admin" />
 <input type="hidden" name="c" value="Member" />
 <input type="hidden" name="a" value="counts" />
 <input type="hidden" name="search" value="1" />
<tr><td>
  学校：
  </td><td><select name="school_id" class="school">
<option value="0">--请选择--</option>
<?php foreach($school as $k=>$v):?>
<option value="<?php echo $v['id'];?>"><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>
校区：
<select name="campus_id" id="campus">
<option value="0">--请选择--</option>
</select>
</td></tr>
<tr>
<td>注册时间：</td>
<td><input type="text" name="ts" class="Wdate" value="<?php echo date("Y-m-d",time()-(3600*24));?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"> 至 <input type="text" name="te" class="Wdate" value="<?php echo date("Y-m-d",time());?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"></td>
</tr>
<tr>
<td></td>
<td><button type="submit">搜索</button></td>
</tr>
</table>

</form>

<?php if(isset($list) && !empty($list)){?>
<table width="98%" border="0" cellspacing="1" class="l" style="margin-top:20px;">
<thead>
   <tr><th width="180">姓名</th><th>性别</th><th>年龄</th><th>电话</th><th>等级</th><th>学校</th><th>专业</th><th>学历</th><th>学届</th><th>注册时间</th></tr>
</thead>
<tbody  align="center">
<?php
 foreach($list as $v): ?>
<tr>
<?php 
$t = '<i>空</i>';
$q1 = empty($v['realname'])==false ? $v['realname'] : $t ;
$q2 = empty($v['age'])==false ? $v['age'] : $t ;
$q3 = empty($v['tel'])==false ? $v['tel'] : $t ;
$q4 = empty($v['grade'])==false ? $grade[$v['grade']]['gname'] : $t ;
$q5 = empty($v['school_id'])==false ?  $school[$v['school_id']]['name'] : $t ;
$q6 = empty($v['campus_id'])==false ? $icampus[$v['campus_id']]['name'] : $t ;
$q7 = empty($v['major_id'])==false ? $major[$v['major_id']]['name'] : $t ;
$q8 = empty($v['toyear'])==false ? $v['toyear'] : $t ;
$q9 = empty($v['regtime'])==false ? date("Y-m-d H:i",$v['regtime']) : $t ;
$q10 = empty($v['education'])==false ? $v['education'] : $t ;
?>

<td><?php echo $q1;?></td>
<td><?php echo $sex=$v['sex']==0?'男':'女'?></td>
<td><?php echo $q2;?>岁</td>
<td><?php echo $q3;?></td>
<td><?php echo $q4;?></td>
<td><?php echo $q5.'('.$q6.')';?></td>
<td><?php echo $q7;?></td>
<td><?php echo $q10;?></td>
<td><?php echo $q8;?></td>
<td><?php echo $q9;?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
<?php }?>


</div>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>
<script type="text/javascript">
$(function(){
function opps(){
	 var sid =$('.school option:selected').val(); 
	 	 var opsa = new Array();
		 opsa[0]='<option value="0">--请选择--</option>';
		<?php foreach($campus as $k=>$v){
			  $str = 'opsa['.$k.']='."'"; 
			  foreach ($v as $n=>$m){
					$str.="<option value=".'"'.$m['id'].'"'.">".$m['name']."</option>";
					}
			    echo $str."';\n";
			  }
		?>
	 if(opsa[sid]==undefined)
	 {$('#campus').html(opsa[0]);}
	 $('#campus').html(opsa[sid]);
	}
opps();
$('.school').change(function(){
	opps();
	 });
});
</script>

<?php include(inc_('foot')); ?>
