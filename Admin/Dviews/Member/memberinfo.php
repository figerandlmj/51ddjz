<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>资料操作：<?php if($e)echo $info['realname']; ?></span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<!--  <button type="button" id="dist">点击编辑</button>  -->
<form action="" method="post" onSubmit="return confirm('确定提交？')">

<?php if($e) {echo '<input type="hidden" name="id" value="'.$info['id'].'">';}?>
<input type="hidden" name="uid" value="<?php echo $info['uid'];?>">
<table width="100%" border="0" cellspacing="12">

<tr>
<td width="100" align="right">学历：</td>
<td>
<select name="education">
<option value="0">--请选择--</option>
<option value="初中"<?php if($e && $info['education']=='初中')echo ' selected';?>>初中</option>
<option value="高中"<?php if($e && $info['education']=='高中')echo ' selected';?>>高中</option>
<option value="中专"<?php if($e && $info['education']=='中专')echo ' selected';?>>中专</option>
<option value="专科"<?php if($e && $info['education']=='专科')echo ' selected';?>>专科</option>
<option value="本科"<?php if($e && $info['education']=='本科')echo ' selected';?>>本科</option>
<option value="硕士"<?php if($e && $info['education']=='硕士')echo ' selected';?>>硕士</option>
<option value="博士"<?php if($e && $info['education']=='博士')echo ' selected';?>>博士</option>
</select>
</td>
</tr>
<tr><td width="100" align="right">院校：</td>
<td><select name="school_id" class="school">

<option value="0">--请选择--</option>
<?php foreach($school as $k=>$v):?>
<option value="<?php echo $v['id'];?>" <?php if($e && $info['school_id']==$v['id'])echo 'selected';?>><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>
校区：
<select name="campus_id" id="campus">
<option value="0">--请选择--</option>
</select>
</td>
</tr>
<tr><td width="100" align="right">入学年份：</td>
<td>
<select name="toyear">
<option value="0">--请选择--</option>
<?php for($i=2007;$i<=(int)date("Y",time());$i++):?>
<option value="<?php echo $i;?>"<?php if($e && $info['toyear']==$i)echo ' selected';?>><?php echo $i;?>届</option>
<?php endfor;?>
</select>
</td>
</tr>
<tr><td width="100" align="right">专业：</td>
<td>
<select name="major_id">
<option value="0">--请选择--</option>
<?php foreach($major as $k=>$v):?>
<option value="<?php echo $v['id'];?>" <?php if($e && $info['major_id']==$v['id'])echo 'selected';?>><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>
</td>
</tr>
<tr><td width="100" align="right">课余时间：</td>
<td>
<p>
<label><input type="checkbox" name="freetime[]" value="1am" <?php if($e && in_array('1am',$info['freetime'])) echo 'checked';?>>周一上午</label>
<label><input type="checkbox" name="freetime[]" value="2am" <?php if($e && in_array('2am',$info['freetime'])) echo 'checked';?>>周二上午</label>
<label><input type="checkbox" name="freetime[]" value="3am" <?php if($e && in_array('3am',$info['freetime'])) echo 'checked';?>>周三上午</label>
<label><input type="checkbox" name="freetime[]" value="4am" <?php if($e && in_array('4am',$info['freetime'])) echo 'checked';?>>周四上午</label>
<label><input type="checkbox" name="freetime[]" value="5am" <?php if($e && in_array('5am',$info['freetime'])) echo 'checked';?>>周五上午</label>
<label><input type="checkbox" name="freetime[]" value="6am" <?php if($e && in_array('6am',$info['freetime'])) echo 'checked';?>>周六上午</label>
<label><input type="checkbox" name="freetime[]" value="7am" <?php if($e && in_array('7am',$info['freetime'])) echo 'checked';?>>周日上午</label>
</p>
<p style="clear:both;">
<label><input type="checkbox" name="freetime[]" value="1pm" <?php if($e && in_array('1pm',$info['freetime'])) echo 'checked';?>>周一下午</label>
<label><input type="checkbox" name="freetime[]" value="2pm" <?php if($e && in_array('2pm',$info['freetime'])) echo 'checked';?>>周二下午</label>
<label><input type="checkbox" name="freetime[]" value="3pm" <?php if($e && in_array('3pm',$info['freetime'])) echo 'checked';?>>周三下午</label>
<label><input type="checkbox" name="freetime[]" value="4pm" <?php if($e && in_array('4pm',$info['freetime'])) echo 'checked';?>>周四下午</label>
<label><input type="checkbox" name="freetime[]" value="5pm" <?php if($e && in_array('5pm',$info['freetime'])) echo 'checked';?>>周五下午</label>
<label><input type="checkbox" name="freetime[]" value="6pm" <?php if($e && in_array('6pm',$info['freetime'])) echo 'checked';?>>周六下午</label>
<label><input type="checkbox" name="freetime[]" value="7pm" <?php if($e && in_array('7pm',$info['freetime'])) echo 'checked';?>>周日下午</label></p>
</td>
</tr>
<tr><td width="100" align="right">年龄：</td>
<td><input type="text" name="age" value="<?php if($e)echo $info['age'];?>" placeholder="年龄"><span> * </span></td>
</tr>
<tr><td width="100" align="right">身高：</td>
<td><input type="text" name="stature" value="<?php if($e)echo $info['stature'];?>" ></td>
</tr>
<tr><td width="100" align="right">体重：</td>
<td><input type="text" name="weight" value="<?php if($e)echo $info['weight'];?>" ></td>
</tr>
<tr><td width="100" align="right">健康证：</td>
<td>
<label><input type="radio" name="hel" value="0" <?php if($e && $info['hel']==0) echo ' checked="checked"';else echo 'checked="checked"'?>>无</label>
&nbsp;&nbsp;&nbsp;&nbsp;
<label><input type="radio" name="hel" value="1" <?php if($e && $info['hel']==1) echo ' checked="checked"'?>>有</label>

</td>
</tr>
<tr><td width="100" align="right">QQ：</td>
<td><input type="text" name="QQ" value="<?php if($e)echo $info['QQ'];?>" ></td>
</tr>
<tr><td width="100" align="right" valign="top">特长：</td>
<td><textarea name="specialty" style="width:500px; height:90px;" ><?php if($e)echo $info['specialty'];?></textarea></td>
</tr>

<tr><td></td><td>
<button type="submit">提交</button>  
</td></tr>
</table>
</form>
</div>
<script type="text/javascript">

</script>
<script type="text/javascript">
$(function(){

//$('input').attr('disabled','disabled');
//$('select').attr('disabled','disabled');
//$('button[type=submit]').attr('disabled','disabled');
//$('textarea').attr('disabled','disabled');
//$('input').css({background:'none',border:'none'});
//$('select').css({background:'none',border:'none'});
//$('textarea').css({background:'none',border:'none'});
//$('button[type=submit]').hide();
//
//$('#dist').click(function(){
//var bc = '#fff url(inputBG.png) repeat-x left -7px';
//var bd = '#c1c1c1 solid 1px';
//$('input').attr('disabled',false);
//$('select').attr('disabled',false);
//$('button[type=submit]').attr('disabled',false);
//$('textarea').attr('disabled',false);
//$('input').css({background:bc,border:bd});
//$('select').css({background:bc,border:bd});
//$('textarea').css({background:bc,border:bd});
//$('button[type=submit]').show();
//	});
function opps(){
	 var sid =$('.school option:selected').val(); 
	 	 var opsa = new Array();
		 opsa[0]='<option value="0">--请选择--</option>';
		<?php foreach($campus as $k=>$v){
			  $str = 'opsa['.$k.']='."'"; 
			  foreach ($v as $n=>$m){
				    if($e && $info['campus_id']==$m['id']) {$t= " selected";}
					else $t='';
					$str.="<option value=".'"'.$m['id'].'"'.$t.">".$m['name']."</option>";
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





















