<?php require(inc_('head')); ?>

<div class="warp page-title">
我的个人中心
</div>
<div class="page-box">
<div class="ads">
  <span>欢迎您：<?php echo $minfo['realname'];?></span>
</div>

<div class="member-box">
   <div class="left-tab">
     <ul>
        <li class="on"><a href="<?php echo u_('User/index',array('id'=>session('memberid'))); ?>">个人资料</a></li>
        <li><a href="<?php echo u_('User/mynearadd',array('id'=>session('memberid'))); ?>">近期申请</a></li>
        <li><a href="<?php echo u_('User/historyadd',array('id'=>session('memberid'))); ?>">历史兼职</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left">编辑兼职时间</span>
       <span style="float:right"><a href="<?php echo u_('User/Index',array('id'=>session('memberid')))?>">返回</a></span>
       </div>
       <div>
<form action="" method="post">
<label><input type="checkbox" name="freetime[]" value="1am" <?php if(in_array('1am',$minfo['freetime'])) echo 'checked';?>>周一上午</label>
<label><input type="checkbox" name="freetime[]" value="2am" <?php if(in_array('2am',$minfo['freetime'])) echo 'checked';?>>周二上午</label>
<label><input type="checkbox" name="freetime[]" value="3am" <?php if(in_array('3am',$minfo['freetime'])) echo 'checked';?>>周三上午</label>
<label><input type="checkbox" name="freetime[]" value="4am" <?php if(in_array('4am',$minfo['freetime'])) echo 'checked';?>>周四上午</label>
<label><input type="checkbox" name="freetime[]" value="5am" <?php if(in_array('5am',$minfo['freetime'])) echo 'checked';?>>周五上午</label>
<label><input type="checkbox" name="freetime[]" value="6am" <?php if(in_array('6am',$minfo['freetime'])) echo 'checked';?>>周六上午</label>
<label><input type="checkbox" name="freetime[]" value="7am" <?php if(in_array('7am',$minfo['freetime'])) echo 'checked';?>>周日上午</label><br>
<label><input type="checkbox" name="freetime[]" value="1pm" <?php if(in_array('1pm',$minfo['freetime'])) echo 'checked';?>>周一下午</label>
<label><input type="checkbox" name="freetime[]" value="2pm" <?php if(in_array('2pm',$minfo['freetime'])) echo 'checked';?>>周二下午</label>
<label><input type="checkbox" name="freetime[]" value="3pm" <?php if(in_array('3pm',$minfo['freetime'])) echo 'checked';?>>周三下午</label>
<label><input type="checkbox" name="freetime[]" value="4pm" <?php if(in_array('4pm',$minfo['freetime'])) echo 'checked';?>>周四下午</label>
<label><input type="checkbox" name="freetime[]" value="5pm" <?php if(in_array('5pm',$minfo['freetime'])) echo 'checked';?>>周五下午</label>
<label><input type="checkbox" name="freetime[]" value="6pm" <?php if(in_array('6pm',$minfo['freetime'])) echo 'checked';?>>周六下午</label>
<label><input type="checkbox" name="freetime[]" value="7pm" <?php if(in_array('7pm',$minfo['freetime'])) echo 'checked';?>>周日下午</label>
<p>
<input type="submit" style="background:#F60; border:0; color:#fff; padding:4px 20px; cursor:pointer;"  value="修改">
</p>

         </form>
       </div>
       
   </div>
</div>

</div>


<script type="text/javascript">
$(function(){
function opps(){
	 var sid =$('.school option:selected').val(); 
	 	 var opsa = new Array();
		 opsa[0]='<option value="0">--请选择--</option>';
		<?php foreach($campus as $k=>$v){
			  $str = 'opsa['.$k.']='."'"; 
			  foreach ($v as $n=>$m){
				    if($minfo['campus_id']==$m['id']) {$t= " selected";}
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