<?php require(inc_('head')); ?>
<?php require(inc_('leftnav')); ?>
<div class="warp">
   <div class="list">
      <div class="type-nav">
          <h2><?php $itype = $con['itype']== 0 ? '培训' : '活动'; echo $con['title']?><small> <?php echo date("Y/m/d",$con['addtime'])?></small></h2>
      </div>
      <div class="jobli">
      <ul>
        <?php
		 $dl = getDay_($con['bstarttime'])==false ? '' : '['.getDay_($con['bstarttime']).']';
		 $dl2 = getDay_($con['bendtime'])==false ? '' : '['.getDay_($con['bendtime']).']';
		 $dl3 = getDay_($con['starttime'])==false ? '' : '['.getDay_($con['starttime']).']';
		 $dl4 = getDay_($con['endtime'])==false ? '' : '['.getDay_($con['endtime']).']';
		 ?>
         <!--<li style="width:99%"><font color="#000">培训单位：</font><a href="<?php // echo u_('Company/index',array('cname'=>$con['cname']))?>" target="_blank"><?php // echo $con['cname']?></a></li>-->
         <li><font color="#000">报名电话：</font><?php echo $con['tel']?></li>
         <li><font color="#000">报名邮箱：</font><?php echo $con['email']?></li>
          <li><font color="#000">人数规模：</font><?php echo (int)$con['ps']?></li>
         <li style="clear:both; width:100%"><font color="#000">报名时间：</font><i><?php echo date("Y-m-d H:i",$con['bstarttime']).$dl.'</i> 至 <i>'.date("Y-m-d H:i",$con['bendtime']).$dl2?></i></li>
         
         <li style="clear:both; width:100%"><font color="#000"><?php echo $itype;?>时间：</font><i><?php echo date("Y-m-d H:i",$con['starttime']).$dl3.'</i> 至 <i>'.date("Y-m-d H:i",$con['endtime']).$dl4?></i></li>
         <li style="clear:both;"><font color="#000"><?php echo $itype;?>地址：</font><?php echo $con['addr']?></li>
         <li style="clear:both;"><font color="#000">申请权限：</font> <?php if(!empty($con['grade'])) foreach($con['grade'] as $k=>$v){
         echo '['.$grades[$v]['gname'].'] ';
         }?></li>
           <li style=" width:100%">
           <span style="font-size:16px; color:#f60">已报名：<?php echo $tnum?>/<?php echo $con['ps'];?></span>
         </li>
      </ul>
      <?php if($con['bendtime'] < time()){?>
      		<a href="javascript:void(0);" class="go-btn" style="background:#aaa; font-size:12px; font-style:italic;">报名已结束</a>
       <?php }else{?>
		  <?php if(session('islogin') || session('loginOr')){?>
          <?php if(!$isr){?>
              <a href="<?php echo u_('Index/addtrainsname',array('id'=>$con['id']));?>" class="go-btn" onclick="return confirm('请准时准点参加面试或工作！可以同时申请报名兼职、培训活动，但是时间不能有冲突或重叠！特殊情况不能参加面试或工作，请在报名截止时间前至少提前3个小时进行[退订]操作！')">申请报名</a>
              <?php }else{?>
              <a href="javascript:void(0);" class="go-btn" style="background: #06C; font-size:12px; font-style:italic;">您已报名该<?php echo $itype;?></a>
              <?php }?>
          <?php }else{?>
          <a href="<?php echo u_('User/login');?>" class="go-btn">申请报名</a>
          <?php }?>
        <?php }?>
      </div>
      <div class="jobdesc">
      <div class="job-title"><?php echo $itype;?>说明：</div>
     <?php if(session('islogin') || session('loginOr')){?>
      <?php echo htmlspecialchars_decode($con['contents'])?>
       <?php }else{?>
        <p style="clear:both; width:80%; text-align:center; margin-top:20px; color:#999"><i>登录后查看更多<?php echo $itype;?>信息！</i></p>
         <?php }?>
      
      </div>
   
     
   </div>
    
   <?php require(inc_('right')); ?>
</div>

<?php include(inc_('foot')); ?>
