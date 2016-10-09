<?php require(inc_('head')); ?>

<div class="warp page-title">
我的个人中心
</div>
<div class="page-box">
<div class="ads">
  <span>欢迎您：<?php echo $info['realname'];?></span>
</div>

<div class="member-box">
   <div class="left-tab">
     <ul>
        <li><a href="<?php echo u_('User/index',array('id'=>session('memberid'))); ?>">个人资料</a></li>
        <li class="on"><a href="<?php echo u_('User/mynearadd',array('id'=>session('memberid'))); ?>">近期申请</a></li>
        <li><a href="<?php echo u_('User/historyadd',array('id'=>session('memberid'))); ?>">历史兼职</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left">我的近期兼职申请</span>
       
       </div>
       <div>
		<table width="100%" class="l" cellspacing="1">
        <thead>
   <tr><th>职位</th><th>申请时间</th><th>是否录取</th><th>操作</th></tr>
</thead>
<tbody  align="center">
        <?php if(!empty($jobs)) foreach($jobs as $k=>$v){?>
           <tr>
           
           <td><a href="<?php echo u_('Index/jobscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['job']?></a></td>
           <td><?php echo date("Y-m-d H:i",$v['regtime'])?></td>
           <td><?php echo $admi=$v['admi']==0? '未录取' : '<font color="#006600">已录取</font>'?></td>
           <td>
		   <?php if($v['cancel']==0){?>
           <a class="b" href="<?php echo u_('User/canceljob',array('id'=>$v['id']))?>" onclick="return confirm('特殊情况不能参加面试或工作，请在报名截止时间前至少提前3个小时进行[退订]操作！退订成功后，3个小时之内不能再次申请报名该信息或其他信息，24小时之内只能申请退订一次！')">取消申请</a>
           <?php }else{?>
           <a class="b" href="<?php echo u_('User/canceljob',array('id'=>$v['id']))?>" style="background:#999" onclick="return confirm('请准时准点参加面试或工作！可以同时申请报名兼职、培训活动，但是时间不能有冲突或重叠！特殊情况不能参加面试或工作，请在报名截止时间前至少提前3个小时进行[退订]操作！')">重新申请</a>
           <?php }?>
           </td>
           </tr>
        <?php }?>
        </tbody>
        </table>
        <?php echo $page;?>
       </div>
       
       
       <div class="catname" style="margin-top:30px;">
       <span style="float:left">我的近期培训/活动申请</span>
       
       </div>
       <div>
		<table width="100%" class="l" cellspacing="1">
        <thead>
   <tr><th width="180">标题</th><th>培训单位</th><th>申请时间</th><th>是否到场</th><th>操作</th></tr>
</thead>
<tbody  align="center">
        <?php if(!empty($trains)) foreach($trains as $k=>$v){?>
           <tr>
           <td><a href="<?php echo u_('Index/trainscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a></td>
           <td><?php echo $v['cname']?></td>
           <td><?php echo date("Y-m-d H:i",$v['regtime'])?></td>
           <td><?php echo $admi=$v['arrive']==0? '未到场' : '<font color="#006600">已到场</font>'?></td>
           <td>
		   <?php if($v['sub']==0){?>
           <a class="b" onclick="return confirm('特殊情况不能参加面试或工作，请在报名截止时间前至少提前3个小时进行[退订]操作！退订成功后，3个小时之内不能再次申请报名该信息或其他信息，24小时之内只能申请退订一次！')" href="<?php echo u_('User/canceltrains',array('id'=>$v['id']))?>">退订</a>
           <?php }else{?>
           <a class="b" onclick="return confirm('请准时准点参加面试或工作！可以同时申请报名兼职、培训活动，但是时间不能有冲突或重叠！特殊情况不能参加面试或工作，请在报名截止时间前至少提前3个小时进行[退订]操作！')" href="<?php echo u_('User/canceltrains',array('id'=>$v['id']))?>" style="background:#999" >订阅</a>
           <?php }?>
           </td>
           </tr>
        <?php }?>
        </tbody>
        </table>
       </div>
       
   </div>
</div>

</div>
<?php include(inc_('foot')); ?>