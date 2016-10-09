<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加新会员</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  <a href="javascript:void();" id="secid" style="margin-right:4px;display:inline-block;background:#F199CD;">展开/关闭搜索栏</a>
  </div>
  <style type="text/css">
  td{padding:4px;}
  td label{ margin:2px 4px;}
  </style>
<div id="seid" style="width:100%; height:500px; overflow:hidden;">
  <table width="100%">
 <form action="index.php?" method="get">
 <input type="hidden" name="m" value="admin" />
 <input type="hidden" name="c" value="Member" />
 <input type="hidden" name="a" value="search" />
 <input type="hidden" name="search" value="1" />
<tr><td width="80">
  性别：
  </td><td><label><input type="radio" name="sex" value="3" checked="checked" />不限</label>
  <label><input type="radio" name="sex" value="0" />男</label>
  <label><input type="radio" name="sex" value="1" />女</label>
</td></tr>
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

<tr><td>
专业：
  </td><td><select name="major_id">
<option value="0">--请选择--</option>
<?php foreach($major as $k=>$v):?>
<option value="<?php echo $v['id'];?>"><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>

学届：
  <select name="toyear">
<option value="0">--请选择--</option>
<?php for($i=2007;$i<=(int)date("Y",time());$i++):?>
<option value="<?php echo $i;?>"><?php echo $i;?>届</option>
<?php endfor;?>
</select>
学历：
<select name="education">
            <option value="0">--请选择--</option>
            <option value="初中">初中</option>
            <option value="高中">高中</option>
            <option value="中专">中专</option>
            <option value="专科">专科</option>
            <option value="本科">本科</option>
            <option value="硕士">硕士</option>
            <option value="博士">博士</option>
            </select>
</td></tr>
<tr><td>
兼职时间：
  </td><td>
  <p>
  <label><input type="checkbox" name="freetime[]" value="1am">周一上午</label>
<label><input type="checkbox" name="freetime[]" value="2am">周二上午</label>
<label><input type="checkbox" name="freetime[]" value="3am">周三上午</label>
<label><input type="checkbox" name="freetime[]" value="4am">周四上午</label>
<label><input type="checkbox" name="freetime[]" value="5am">周五上午</label>
<label><input type="checkbox" name="freetime[]" value="6am">周六上午</label>
<label><input type="checkbox" name="freetime[]" value="7am">周日上午</label></p>
<p style="clear:both;">
<label><input type="checkbox" name="freetime[]" value="1pm">周一下午</label>
<label><input type="checkbox" name="freetime[]" value="2pm">周二下午</label>
<label><input type="checkbox" name="freetime[]" value="3pm">周三下午</label>
<label><input type="checkbox" name="freetime[]" value="4pm">周四下午</label>
<label><input type="checkbox" name="freetime[]" value="5pm">周五下午</label>
<label><input type="checkbox" name="freetime[]" value="6pm">周六下午</label>
<label><input type="checkbox" name="freetime[]" value="7pm">周日下午</label>
</p>
</td></tr>
<tr><td>
会员等级：
  </td><td><?php foreach($grade as $v):?>
<label><input type="checkbox" name="grade[]" value="<?php echo $v['id']?>"><?php echo $v['gname'];?></label>
<?php endforeach;?>
</td>
</tr>

<tr>
<td>会员卡号：</td>
<td><input type="text" name="mcard" /></td>
</tr>
<tr>
<td>会员姓名：</td>
<td><input type="text" name="realname" />
手机：<input type="text" name="tel" />

qq：
<input type="text" name="QQ" />

</td>
</tr>



<tr>
<td>身高范围：</td>
<td><input type="text" name="stature1" style="width:75px" /> 至 <input type="text" name="stature2" style="width:75px"  /></td>
</tr>
<tr>
<td width="120">无工作历史：</td>
<td><input type="checkbox" name="works" value="1" /></td>
</tr>
<tr>
<td>是否到期：</td>
<td>
<label><input type="radio" name="ends" value="0" checked="checked" /> 不限</label>
<label><input type="radio" name="ends" value="1" />未到期</label>
<label><input type="radio" name="ends" value="2"/>已到期</label>
</td>
</tr>

<tr>
<td>输出项目：</td>
<style type="text/css">
.sputs label{
	width:auto;
	}
</style>
<td class="sputs">
<label><input type="checkbox" name="puts[]" value="sex" checked="checked" /> 性别</label>
<label><input type="checkbox" name="puts[]" value="school_id" checked="checked" /> 学校</label>
<label><input type="checkbox" name="puts[]" value="major_id" /> 专业</label>
<label><input type="checkbox" name="puts[]" value="toyear" /> 学届</label>
<label><input type="checkbox" name="puts[]" value="education" /> 学历</label>
<label><input type="checkbox" name="puts[]" value="freetime" /> 兼职时间</label>
<label><input type="checkbox" name="puts[]" value="grade" checked="checked" /> 等级</label>
<label><input type="checkbox" name="puts[]" value="mcard" checked="checked" /> 卡号</label>
<label><input type="checkbox" name="puts[]" value="realname" checked="checked" /> 姓名</label>
<label><input type="checkbox" name="puts[]" value="tel" checked="checked" /> 手机</label>
<label><input type="checkbox" name="puts[]" value="QQ" /> QQ</label>
<label><input type="checkbox" name="puts[]" value="stature" /> 身高</label>
<label><input type="checkbox" name="puts[]" value="ends"  checked="checked" /> 是否到期</label>
</td>
</tr>


<tr>
<td></td>
<td><button type="submit">搜索</button></td>
</tr>
</table>

</form>
</div>


<?php 
$s = $puts;
if(isset($list) && !empty($list)){?>


<table width="98%" border="0" cellspacing="1" class="l" style="margin-top:20px;">
<thead>
   <tr>
   <?php if(in_array('realname',$s)){?><th width="180">姓名</th><?php }?>
   <?php if(in_array('sex',$s)){?><th>性别</th><?php }?>
   <?php if(in_array('age',$s)){?><th>年龄</th><?php }?>
   <?php if(in_array('tel',$s)){?><th>电话</th><?php }?>
   <?php if(in_array('grade',$s)){?><th>等级</th><?php }?>
   <?php if(in_array('school_id',$s)){?><th>学校</th><?php }?>
   <?php if(in_array('major_id',$s)){?><th>专业</th><?php }?>
   <?php if(in_array('education',$s)){?><th>学历</th><?php }?>
   <?php if(in_array('toyear',$s)){?><th>学届</th><?php }?>
   <?php if(in_array('freetime',$s)){?><th>兼职时间</th><?php }?>
   <?php if(in_array('mcard',$s)){?><th>卡号</th><?php }?>
   <?php if(in_array('stature',$s)){?><th>身高</th><?php }?>
   <?php if(in_array('QQ',$s)){?><th>QQ</th><?php }?>
   <?php if(in_array('ends',$s)){?><th>是否到期</th><?php }?>
   <th>操作</th>
   </tr>
</thead>
<tbody  align="center">
<?php
 if(!empty($list)) foreach($list as $v): ?>
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
$q9 = empty($v['freetime'])==false ? $v['freetime'] : $t ;
$q10 = empty($v['education'])==false ? $v['education'] : $t ;
$q11 = empty($v['mcard'])==false ? $v['mcard'] : $t ;
$q12 = empty($v['stature'])==false ? $v['stature'] : $t ;
$q13 = empty($v['QQ'])==false ? $v['QQ'] : $t ;
$q14 = $v['endstime'] < time() ? '<font color="#FF0000">已到期</font>' : '未到期' ;
?>

<?php if(in_array('realname',$s)){?><td><?php echo $q1;?></td><?php }?>
<?php if(in_array('sex',$s)){?><td><?php echo $sex=$v['sex']==0?'男':'女'?></td><?php }?>
<?php if(in_array('age',$s)){?><td><?php echo $q2;?>岁</td><?php }?>
<?php if(in_array('tel',$s)){?><td><?php echo $q3;?></td><?php }?>
<?php if(in_array('grade',$s)){?><td><?php echo $q4;?></td><?php }?>
<?php if(in_array('school_id',$s)){?><td><?php echo $q5.'('.$q6.')';?></td><?php }?>
<?php if(in_array('major_id',$s)){?><td><?php echo $q7;?></td><?php }?>
<?php if(in_array('education',$s)){?><td><?php echo $q10;?></td><?php }?>
<?php if(in_array('toyear',$s)){?><td><?php echo $q8;?></td><?php }?>
<?php if(in_array('freetime',$s)){?><td><?php echo $q9;?></td><?php }?>
<?php if(in_array('mcard',$s)){?><td><?php echo $q11;?></td><?php }?>
<?php if(in_array('stature',$s)){?><td><?php echo $q12;?></td><?php }?>
<?php if(in_array('QQ',$s)){?><td><?php echo $q13;?></td><?php }?>
<?php if(in_array('ends',$s)){?><td><?php echo $q14;?></td><?php }?>

<td>
<?php if(n_('Member|editmember_u',$Spow)){ ?><a href="<?php echo u_('editmember_u',array('id'=>$v['id']));?>" target="_blank">账号</a><?php } ?>
<?php if(n_('Member|memberinfo',$Spow)){ ?><a href="<?php echo u_('memberinfo',array('uid'=>$v['id']));?>" target="_blank">资料</a><?php } ?>
<?php if(n_('Member|warning',$Spow)){ ?><a href="<?php echo u_('warning',array('uid'=>$v['id']));?>" target="_blank">警</a><?php } ?>
<?php if(n_('Member|frozen',$Spow)){ ?><a href="<?php echo u_('frozen',array('uid'=>$v['id']));?>" target="_blank">冻</a><?php } ?>
<?php if(n_('Member|limit',$Spow)){ ?><a href="<?php echo u_('limit',array('uid'=>$v['id']));?>" target="_blank">限</a><?php } ?>
<a href="<?php echo u_('hislist',array('mid'=>$v['id']));?>" target="_blank">记录</a>
<?php if(n_('Member|delmember',$Spow)){ ?><a href="<?php echo u_('delmember',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')">删除</a><?php } ?></td>

</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
<?php }?>


</div>

<script type="text/javascript">
$(function(){
$('#secid').click(function(){
	var hh = $('#seid').height();
	if(hh ==450){
	  $('#seid').height(1);
	}
	else{
	  $('#seid').height(450);
	}
	});
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
