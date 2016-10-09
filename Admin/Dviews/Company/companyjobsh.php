<?php include(inc_('head')); ?>
<div class="right" id="right">
   <div class="title"><span><?php echo $cname?> 的企业信息</span> <a style="margin-left:4px;" href="<?php echo u_('Company/index')?>" style="display:inline-block;background:#08DEC2;">返回企业列表</a> <a href="javascript:window.history.back();">返回</a>
</div>

<div class="page-box">


<div class="member-box">
   <div class="left-tab">
     <ul>
        <li><a href="<?php echo u_('Company/companyshow',array('id'=>$cid))?>">企业简介</a></li>
        <li><a href="<?php echo u_('Company/companyjobs',array('id'=>$cid)); ?>">正在招聘的职位</a></li>
        <li class="on"><a href="javascript:void">过期招聘信息</a></li>
        <li><a href="<?php echo u_('Company/memor',array('uid'=>$cid)); ?>">查看该公司备忘信息</a></li>
        <li><a href="<?php echo u_('Company/visit',array('uid'=>$cid)); ?>">查看该公司拜访信息</a></li>
     </ul>
   </div>
   
   <div class="right-box">
       <div class="catname">
       <span style="float:left">招聘列表</span>
       </div>
       <?php if(!$list){ echo '<i>没有已结束的招聘历史</i>';}else{ ?>
       <ul>
       <?php foreach($list as $k => $v){ ?>
        <li><?php echo '发布时间：'.date("Y-m-d",$v['addtime'])?> | <?php echo '终止时间：'.date("Y-m-d",$v['end'])?> | <a href="<?php echo u_('Web/Index/jobscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['job']?></a></li>
         <?php }?>
       </ul>
       <?php echo $page;?>
       <?php }?>

       
   </div>
</div>

</div>
</div>
<?php include(inc_('foot')); ?>