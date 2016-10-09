<?php require(inc_('head')); ?>
<?php require(inc_('leftnav')); ?>
<div class="warp">
   <div class="list">
      <div class="type-nav">
          <h2><?php //echo $con['title']?><small> <?php echo date("Y/m/d",$con['addtime'])?></small>
    
          </h2>
      </div>
      <div class="jobli">
      <ul>
        
         <li><font color="#000">招聘职位：</font><font color="#FF6600" size="+1"><?php echo $con['job']?></font></li>
          <?php if(session('islogin') || session('loginOr')){?>
         <li><font color="#000">信息编号：</font><font color="#FF6600"><?php echo $con['jobnub']?></font></li>
          <li><font color="#000">薪资待遇：</font><font color="#FF6600"><?php echo $att = empty($con['wage']) ? '面议' : $con['wage'].'元/'.$con['unit']?></font></li>
          <li><font color="#000">咨询电话：</font><font color="#FF6600"><?php echo $con['otel']?></font></li>

          <li><font color="#000">结算方式：</font><font color="#FF6600"><?php echo $con['settlement']?></font></li>

         <li><font color="#000">招聘人数：</font>[男：<?php echo $con['sex1']?>] [女：<?php echo $con['sex2']?>]</li>
		     <li><font color="#000">身高要求：</font>[男：<?php echo $con['stature1']?>]  [女：<?php echo $con['stature2']?>]</li>
         <li><font color="#000">工作地点：</font><font color="#FF6600"><?php echo $con['jobaddr']?></font>
         </li>
         <li style="clear:both;width:100%;"><font color="#000">工作时间：</font><?php echo $con['jobtimestartt']. $emt = empty($con['jobtimeendt']) ? '' :' 至 '.$con['jobtimeendt'];?>
         </li>

          <li style="clear:both;width:100%;"><font color="#000">工作日期：</font><?php
     $dl = getDay_($con['jobtimestart'])==false ? '' : '['.getDay_($con['jobtimestart']).']';
     $dl2 = getDay_($con['jobtimeend'])==false ? '' : '['.getDay_($con['jobtimeend']).']';
     $dl3 = getDay_($con['gathtime'])==false ? '' : '['.getDay_($con['gathtime']).']';
     ?><?php echo $con['jobtimestart'].$dl. $to= empty($con['jobtimeend']) ? '' :' 至 '.$con['jobtimeend'].$dl2; ?>
         </li>

         <li style="clear:both;"><font color="#000">面试时间：</font><?php echo date("Y-m-d H:i",$con['admitime']).'['.getDay_($con['admitime']).']'?></li>
         <li style="clear:both;"><font color="#000">集合时间：</font><?php if($con['gathtime']=='') echo '等通知';else echo $con['gathtime'].$dl3;?></li>
         <li style="clear:both;"><font color="#000">集合地址：</font><?php echo $con['addr']?></li>
         <li style="clear:both;"><font color="#000">申请权限：</font><?php if(!empty($con['grade'])) foreach($con['grade'] as $k=>$v){
         echo '['.$grades[$v]['gname'].'] ';
         }?>
         </li>

         <li style="clear:both;"><font color="#000">报名截止：</font><?php echo date("Y-m-d H:i",strtotime($con['endtime'])).'['.getDay_(strtotime($con['endtime'])).']'?></li>

         <li style="clear:both;"><font color="#000">其它要求：</font><?php if(!empty($con['otherx'])) foreach($con['otherx'] as $k=>$v){
         echo '['.$v.'] ';
         }?>
         </li>
         <li style=" width:100%">
           <span style="font-size:16px; color:#f60">已报名：<?php echo $reed?>/<?php echo $con['mnums'];?></span>
         </li>
         <?php }else{?>
          <li style="clear:both; width:80%; text-align:center; margin-top:20px; color:#999"><i>登录后查看更多招聘信息！</i></li>
         <?php }?>
      </ul>
      <?php if(strtotime($con['endtime']) < time()){?>
      		<a href="javascript:void(0);" class="go-btn" style="background:#aaa; font-size:12px; font-style:italic;">该职位录取时间已截至</a>
       <?php }else{?>
		  <?php if(session('islogin')){?>
			  <?php if(!$isr){?>
              <a href="<?php echo u_('Index/addjobname',array('id'=>$con['id']));?>" class="go-btn" onclick="return confirm('请准时准点参加面试或工作！可以同时申请报名兼职、培训活动，但是时间不能有冲突或重叠！特殊情况不能参加面试或工作，请在报名截止时间前至少提前3个小时进行[退订]操作！')">申请报名</a>
              <span></span>
              <?php }else{?>
              <a href="javascript:void(0);" class="go-btn" style="background: #06C; font-size:12px; font-style:italic;">您已报名该职位</a>
              <?php }?>
          <?php }else{?>
          <?php if($reed == $con['mnums']) {?>
          <a class="go-btn" style="background:#ccc;">报名已满</a>
          <?php }else{ ?>
          <a href="<?php echo u_('User/login');?>" class="go-btn">申请报名</a>
          <?php }}?>
        <?php }?>
        
      </div>
      <div class="jobdesc">
      <div class="job-title">工作说明：</div>
      <?php if(session('islogin') || session('loginOr')){?>
      <?php echo htmlspecialchars_decode($con['desc'])?>
       <?php }else{?>
        <p style="clear:both; width:80%; text-align:center; margin-top:20px; color:#999"><i>登录后查看更多招聘信息！</i></p>
         <?php }?>      
      </div>

      <!-- ================= -->
      <div class="jobdesc jobdesc01">
      <div class="job-title job-title01">会员必读 - 注意事项：</div>
      1. 有任何问题请致电咨询客服经理0553-2205055、2205066，咨询时间9:00-18:00；<br/>
          2. 退订工作请在报名截止时间前3个小时，（进入用户中心，点击左侧近期申请即可进行退订）或者致电0553-2205055、2205066申请退订，退订时间9:00-18:00； <br/>
          3. 成功预定工作后，请准时参加，无故不到者将停卡1-3个月，请同学谨慎报名；<br/>
          4. 请不要重复报名多个时间有冲突的兼职（包括面试时间冲突）；<br/>
          5. 所有工作岗位只限持卡本人选择使用，不能私自转借他人或者找他们替代使用，一经发现，取消会员资格！  
      </div>
      <!-- ================== -->
      <div class="jobdesc jobdesc01">
      <div class="job-title job-title01">温馨提示：</div>
      1. 集合、面试时，请带好会员卡、身份证、笔以及信息中所提及的须带物品；<br/>
2. 面试最好早到5-10分钟，以防错失面试、兼职的机会；也可让我们留给商家好印象；<br/>
3. 面对面试官时，不要害怕和紧张，把他当做你最好的合作伙伴和朋友，以一颗平常心，面对每一个提问；<br/>
4. 全面认识自己，推销自己的优点，承认自己的不足，发挥自己的专长和兴趣，给面试官一个自信且充满魅力的你；<br/>
5. 面试后，多多兼职网会在七天之内发布录取名单，请及时在录取名单内进行查询；<br/>
6. 面试通过的同学，请按商家要求的工作时间准时上岗，因故不能去的必须和负责人解释清楚，切不可临时不去；未通过面试的同学不要泄气，多多兼职网会继续给你提供更多选择的机会。面试是参加工作的必经之路，这一次的失败，是为了下一次的成功，加油！<br/>
7. 工作中有任何疑问，请致电多多兼职网，切勿跟商家正面冲突，我们会全力保证你们的每一份利益；<br/>
8. 对于商家提出任何收费要求（如：进场费，体检费，服装押金，保证金等），兼职信息里未提及厂家要求收费的，绝对不能交！及时联系多多兼职网！！！
      
      </div>
      <!-- ================== -->
   
     
   </div>
    
   <?php require(inc_('right')); ?>
</div>

<?php include(inc_('foot')); ?>
