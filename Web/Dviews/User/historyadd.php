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
        <li><a href="<?php echo u_('User/mynearadd',array('id'=>session('memberid'))); ?>">近期申请</a></li>
        <li class="on"><a href="<?php echo u_('User/historyadd',array('id'=>session('memberid'))); ?>">历史兼职</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left">我的已兼职记录</span>
       
       </div>
       <div>
		<table width="100%" class="l" cellspacing="1">
        <thead>
   <tr><th width="180">标题</th><th>职位</th><th>申请时间</th></tr>
</thead>
<tbody  align="center">
        <?php if(!empty($jobs)) foreach($jobs as $k=>$v){?>
           <tr>
           <td><a href="<?php echo u_('Index/jobscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a></td>
           <td><?php echo $v['job']?></td>
           <td><?php echo date("Y-m-d H:i",$v['regtime'])?></td>
           </tr>
        <?php }?>
        </tbody>
        </table>
       </div>
       
       
       <div class="catname" style="margin-top:30px;">
       <span style="float:left">我的培训/活动记录</span>
       
       </div>
       <div>
		<table width="100%" class="l" cellspacing="1">
        <thead>
   <tr><th width="180">标题</th><th>培训单位</th><th>申请时间</th></tr>
</thead>
<tbody  align="center">
        <?php if(!empty($trains))  foreach($trains as $k=>$v){?>
           <tr>
           <td><a href="<?php echo u_('Index/trainscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a></td>
           <td><?php echo $v['cname']?></td>
           <td><?php echo date("Y-m-d H:i",$v['regtime'])?></td>
           </tr>
        <?php }?>
        </tbody>
        </table>
       </div>
       
   </div>
</div>

</div>
<?php include(inc_('foot')); ?>