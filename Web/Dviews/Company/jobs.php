<?php require(inc_('head')); ?>

<div class="warp page-title">
企业信息
</div>
<div class="page-box">


<div class="member-box">
   <div class="left-tab">
     <ul>
        <li><a href="<?php echo u_('Company/index',array('cname'=>$cname))?>">企业简介</a></li>
        <li class="on"><a href="javascript:void">正在招聘的职位</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left">招聘列表</span>
       </div>
       <?php if(!$list){ echo '<i>该企业咱未发布任何兼职职位</i>';}else{ ?>
       <ul>
       <?php foreach($list as $k => $v){ ?>
        <li><?php echo date("Y-m-d",$v['addtime'])?> <a href="<?php echo u_('Index/jobscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a></li>
         <?php }?>
       </ul>
       <?php echo $page;?>
       <?php }?>

       
   </div>
</div>

</div>
<?php include(inc_('foot')); ?>