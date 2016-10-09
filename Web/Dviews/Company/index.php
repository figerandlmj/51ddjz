<?php require(inc_('head')); ?>

<div class="warp page-title">
企业信息
</div>
<div class="page-box">


<div class="member-box">
   <div class="left-tab">
     <ul>
        <li class="on"><a href="javascript:void">企业简介</a></li>
        <li><a href="<?php echo u_('Company/Jobs',array('cname'=>$con['cname'])); ?>">正在招聘的职位</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left"><?php echo $con['cname']?></span>
       </div>
       <div>
       <p>认证情况：<?php echo $type = $con['types'] > 1 ? '<font color="#009933">已认证</font>' : '未认证';?></p>
       <div style="width:100%; float:left;">
      		<h4 style=" padding:0; margin:0; border-bottom:solid 1px #ddd;">企业简介：</h4>
           <div style="padding:20px 0; line-height:24px; color:#555; font-size:14px;">
           <?php echo $con['cinfo'] ?>
           </div>
       
       </div>
       
        <div style="width:100%; float:left;">
      		<h4 style=" padding:0; margin:0; border-bottom:solid 1px #ddd;">公司地址：</h4>
           <div style="padding:20px 0; line-height:24px; color:#555; font-size:14px;">
           <?php echo $con['addr'] ?>
           </div>
       
       </div>
       
       </div>
       
       

       
   </div>
</div>

</div>
<?php include(inc_('foot')); ?>