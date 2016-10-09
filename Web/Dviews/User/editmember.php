<?php require(inc_('head')); ?>

<div class="warp page-title">
我的个人中心
</div>
<div class="page-box">
<div class="ads">
  <span>欢迎您：<?php echo $minfo['realname'];?></span>
</div>
<style type="text/css">
select{
	padding:4px; margin:6px 0;width:212px; font-family:microsoft yahei;
	}
textarea{
		padding:10px; font-family:microsoft yahei;
	}
input[type="text"]{
	padding:2px;
	}
</style>
<div class="member-box" style="overflow-y:auto; height:auto;">
   <div class="left-tab">
     <ul>
        <li class="on"><a href="<?php echo u_('User/index',array('id'=>session('memberid'))); ?>">个人资料</a></li>
        <li><a href="<?php echo u_('User/mynearadd',array('id'=>session('memberid'))); ?>">近期申请</a></li>
        <li><a href="<?php echo u_('User/historyadd',array('id'=>session('memberid'))); ?>">历史兼职</a></li>
     </ul>
   </div>
   
   <div class="right-box">
      <div style="width:auto; background: #FF9; border: #F60 solid 1px; color:#F60; padding:2px 10px; margin-bottom:10px;">
警示：请谨慎填写学校、专业、学届、学历、身高等重要信息，填写并提交后您将无法再次修改！
</div>
       <div class="catname">
       <span style="float:left">编辑个人资料</span>
       <span style="float:right"><a href="<?php echo u_('User/Index',array('id'=>session('memberid')))?>">返回</a></span>
       </div>
       <div>
       <form action="" method="post" onsubmit="return confirm('确定提交？')">
       
         <table width="100%">
         <input type="hidden" name="id" value="<?php echo session('memberid');?>">
         <?php if(empty($minfo['age'])){?>
         <tr>
         <td>年龄：</td><td colspan="3"><input type="text" name="age" placeholder="年龄"></td>
         
         </tr>
          <?php }?>
          <?php if(empty($minfo['age'])){?>
         <tr>
         <td>身高：</td><td colspan="3"><input type="text" name="stature"> CM</td>
        
         </tr>
          <?php }?>
         <tr>
          <tr>
          <td>体重：</td><td><input type="text" name="weight" value="<?php echo $minfo['weight'];?>" > KG</td>
           </tr>
         <tr>
         <td>Q Q：</td><td><input type="text" name="QQ" value="<?php echo $minfo['QQ'];?>" ></td></tr>
         <tr>
          <td>健康证：</td><td>
         <label><input type="radio" name="hel" value="0" <?php if($minfo['hel']==0) echo ' checked="checked"'?>>无</label>
&nbsp;&nbsp;&nbsp;&nbsp;
<label><input type="radio" name="hel" value="1" <?php if($minfo['hel']==1) echo ' checked="checked"'?>>有</label>
         </td>
         <td></td><td></td>
         </tr>
         <?php if(empty($minfo['education'])){?>
         <tr>
         <td>学历：</td>
         <td>
            <select name="education">
            <option value="0">--请选择--</option>
            <option value="初中"<?php if($minfo['education']=='初中')echo ' selected';?>>初中</option>
            <option value="高中"<?php if($minfo['education']=='高中')echo ' selected';?>>高中</option>
            <option value="中专"<?php if($minfo['education']=='中专')echo ' selected';?>>中专</option>
            <option value="专科"<?php if($minfo['education']=='专科')echo ' selected';?>>专科</option>
            <option value="本科"<?php if($minfo['education']=='本科')echo ' selected';?>>本科</option>
            <option value="硕士"<?php if($minfo['education']=='硕士')echo ' selected';?>>硕士</option>
            <option value="博士"<?php if($minfo['education']=='博士')echo ' selected';?>>博士</option>
            </select>
         </td>
         </tr>
          <?php }?>
          <?php if(empty($minfo['school_id'])){?>
         <tr>
         <td>学校：</td>
         <td>
         <select name="school_id" class="school">
<option value="0">--请选择--</option>
<?php foreach($school as $k=>$v):?>
<option value="<?php echo $v['id'];?>" <?php if($minfo['school_id']==$v['id'])echo 'selected';?>><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>
 &nbsp;&nbsp;&nbsp;&nbsp;
校区：
<select name="campus_id" id="campus">
<option value="0">--请选择--</option>
</select>
         </td>
         </tr>
          <?php }?>
          <?php if(empty($minfo['major_id'])){?>
         <tr><td>专业：</td><td>
         <select name="major_id">
<option value="0">--请选择--</option>
<?php foreach($major as $k=>$v):?>
<option value="<?php echo $v['id'];?>"><?php echo $v['name'];?></option>
<?php endforeach;?>
</select>
         </td>
         </tr>
          <?php }?>
           <?php if(empty($minfo['toyear'])){?>
         <tr>
         <td>学届：</td><td>
         <select name="toyear">
<option value="0">--请选择--</option>
<?php for($i=2007;$i<=(int)date("Y",time());$i++):?>
<option value="<?php echo $i;?>"><?php echo $i;?>届</option>
<?php endfor;?>
</select>
         </td>
         </tr>
          <?php }?>
        <tr>
         <td valign="top" style="padding-top:10px;">自我介绍：</td><td colspan="3" style="padding-top:10px;"><textarea name="specialty" style="width:640px; height:160px;"><?php echo $minfo['specialty'];?></textarea></td>
         </tr>
   
         <tr>
            <td></td> <td> <input type="submit" style="background:#F60; border:0; color:#fff; padding:4px 20px; cursor:pointer;" value="我已认真填写，确定提交！"></td>
         </tr>
         </table>
          
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
				    
					 $t='';
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