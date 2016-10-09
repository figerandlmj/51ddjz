<?php include(inc_('head')); ?>
<div class="right" id="right">
<div class="title">申请记录<a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<style type="text/css">
td a{
	background:none;
	filter:none;
	}
</style>
<table width="45%" class="l" cellspacing="1" style="float:left">
 <thead>
   <tr><th>职位</th><th>申请时间</th><th>是否录取</th></tr>
</thead>
<tbody  align="center">
        <?php if(!empty($jobs)) foreach($jobs as $k=>$v){?>
           <tr>
           <td><a href="<?php echo u_('Web/Index/jobscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['job']?></a></td>
           <td><?php echo date("Y-m-d H:i",$v['regtime'])?></td>
           <td><?php echo $admi=$v['admi']==0? '未录取' : '<font color="#006600">已录取</font>'?></td>
           
           </tr>
        <?php }?>
        </tbody>
        </table>
<table width="45%" class="l" cellspacing="1" style="float:left; margin-left:20px;">
        <thead>
   <tr><th width="180">标题</th><th>培训单位</th><th>申请时间</th><th>是否到场</th></tr>
</thead>
<tbody  align="center">
        <?php if(!empty($trains)) foreach($trains as $k=>$v){?>
           <tr>
           <td><a href="<?php echo u_('Web/Index/trainscontent',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a></td>
           <td><?php echo $v['cname']?></td>
           <td><?php echo date("Y-m-d H:i",$v['regtime'])?></td>
           <td><?php echo $admi=$v['arrive']==0? '未到场' : '<font color="#006600">已到场</font>'?></td>
           
           </tr>
        <?php }?>
        </tbody>
        </table>

</div>


<?php include(inc_('foot')); ?>
