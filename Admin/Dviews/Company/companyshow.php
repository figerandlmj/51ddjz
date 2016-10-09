<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span><?php echo $con['cname']?> 的企业信息</span> 
    <a href="<?php echo u_('Company/index')?>" style="margin-left:4px;display:inline-block;background:#F199CD;">返回企业列表</a> 
    <a href="javascript:window.history.back();" style="display:inline-block;background:#08DEC2;">返回</a>
</div>

<style type="text/css">
.right-box td{
	padding:4px 0; 
	}
.right-box td.b{
	font-weight:bold; 
	}
</style>
<div class="page-box">

<div class="member-box">
   <div class="left-tab">
     <ul>
        <li class="on"><a href="javascript:void">企业简介</a></li>
        <li><a href="<?php echo u_('Company/companyjobs',array('id'=>$con['id'])); ?>">正在招聘的职位</a></li>
        <li><a href="<?php echo u_('Company/companyjobsh',array('id'=>$con['id'])); ?>">过期招聘信息</a></li>
        <li><a href="<?php echo u_('Company/memor',array('uid'=>$con['id'])); ?>">查看该公司备忘信息</a></li>
        <li><a href="<?php echo u_('Company/visit',array('uid'=>$con['id'])); ?>">查看该公司拜访信息</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left">基本资料</span>
       </div>
       <?php
	 if(trim($con['mlinkman'])!=''){
	 $str = str_replace(array("\r\n","\n"), "#", $con['mlinkman']);
     $mlinkman = explode('#', $str);
	
	}
	   ?>
       <table width="99%">
          <tr><td width="70" class="b">所属行业：</td><td><?php echo $con['iname'] ?></td><td width="70" class="b">企业地址：</td><td><?php echo $con['addr'] ?></td></tr>
          <?php foreach($mlinkman as $v){
			   $ml = explode('|',$v);
			  ?>
          <tr><td width="70" class="b">联系人：</td><td><?php echo '['.$ml[1].'] '.$ml[0] ?></td><td width="70" class="b">联系电话：</td><td><?php echo $ml[2] ?></td></tr>
          <?php }?>
          <tr><td width="70" class="b">到达线路：</td><td><?php echo $con['route'] ?></td><td width="70" class="b">企业网址：</td><td><?php echo $con['chttp'] ?></td></tr>
         
          
       </table>
       <div style="width:100%; float:left; margin-top:20px;">
        <div class="catname">
       <span style="float:left">账号信息</span>
       </div>
       <table width="99%">
          <tr><td width="70" class="b">添加时间：</td><td><?php echo date("Y-m-d H:i",$con['regtime']) ?></td><td width="70" class="b">添加人：</td><td><?php echo $con['realname'] ?></td></tr>
          <tr><td width="70" class="b">是否重点：</td><td><?php echo $ipo = $con['important']==0? '否' : '<font color="#CC6600">重点</font>' ?></td><td width="70" class="b">黑名单：</td><td><?php echo $blist ?></td></tr>
          <tr><td width="70" class="b">企业类型：</td><td><?php echo $con['types'] ?></td><td width="70" class="b"></td><td></td></tr>
         
       </table>
     </div>
       <div style="width:100%; float:left; margin-top:20px;">
      <div class="catname">
       <span style="float:left">企业简介</span>
       </div>
           <div style="padding:20px 0; line-height:24px; color:#555; font-size:12px;">
           <?php echo $con['cinfo'] ?>
           </div>
       
       </div>
       
        <div style="width:100%; float:left;">
      		<div class="catname">
       <span style="float:left">企业备注</span>
       </div>
           <div style="padding:20px 0; line-height:24px; color:#555; font-size:14px;">
           <?php echo htmlspecialchars_decode($con['remarks']) ?>
           </div>
       
   
       
       </div>
       
       

       
   </div>
</div>

</div>
</div>
<?php include(inc_('foot')); ?>