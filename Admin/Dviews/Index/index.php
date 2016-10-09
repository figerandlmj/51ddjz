<?php require(inc_('head')); ?>
<style type="text/css">
.tipmemor{
	width:90%; height:20px; padding-left:20px; color:#f30;
	}
</style>
<div class="right" id="right">
<div class="sdiv1" style="margin-top:30px; width:81.5%; height:auto; overflow-y:auto; padding-bottom:15px;">
    <h4>我的今日备忘：<?php echo count($memor).' 条'; ?></h4>
   <?php
    
     if(!empty($memor)){
		 foreach($memor as $k=>$v){
			    ?>
			 <li class="tipmemor">[<?php echo date("Y-m-d H:i",$v['warntime']).']: 【'.$v['cname'].'】'.$v['info'];?></li>
                <?php
			 }
		 }
   ?>
    <p align="right"><a href="<?php echo u_('Company/memor') ?>">进入备忘管理中心 <font class="F" style="font-weight:normal"> &gt;&gt;</font></a></p>
    </div>
    
    <div class="sdiv1" style="margin-top:30px;">
    <h4>会员统计</h4>
    <p>本月新增：<font color="#c00"><?php echo $mm ?></font> 激活：<font color="#c00"><?php echo $mm1 ?></font> 未激活：<font color="#c00"><?php echo $mm0 ?></font></p>
    <p>会员总数：<font color="#c00"><?php echo $mz ?> </font>激活：<font color="#c00"><?php echo $mz1 ?></font> 未激活：<font color="#c00"><?php echo $mz0 ?></font></p>
    <p align="right"><a href="<?php echo u_('Member/index') ?>">进入会员管理中心 <font class="F" style="font-weight:normal"> &gt;&gt;</font></a></p>
    </div>
    
    <div class="sdiv1" style="margin-top:30px;">
    <h4>企业统计</h4>
    <p>本月新增：<font color="#c00"><?php echo $cm ?></font></p>
    <p>企业总数：<font color="#c00"><?php echo $cz ?></font></p>
    <p align="right"><a href="<?php echo u_('Company/index') ?>">进入企业管理中心 <font class="F" style="font-weight:normal"> &gt;&gt;</font></a></p>
    </div>
    
    <div class="sdiv1">
    <h4>兼职发布统计</h4>
    <p>本月新增：<font color="#c00"><?php echo $jm ?></font> 已审核：<font color="#c00"><?php echo $jm1 ?></font> 未审核：<font color="#c00"><?php echo $jm0 ?></font></p>
    <p>发布总数：<font color="#c00"><?php echo $jz ?></font> 已审核：<font color="#c00"><?php echo $jz1 ?></font> 未审核：<font color="#c00"><?php echo $jz0 ?></font></p>
    <p align="right"><a href="<?php echo u_('Jobs/index') ?>">进入兼职管理中心 <font class="F" style="font-weight:normal"> &gt;&gt;</font></a></p>
    </div>
    
    <div class="sdiv1">
    <h4>培训/活动发布统计</h4>
    <p>本月新增：<font color="#c00"><?php echo $tm ?></font> 已审核：<font color="#c00"><?php echo $tm1 ?></font> 未审核：<font color="#c00"><?php echo $tm0 ?></font></p>
    <p>发布总数：<font color="#c00"><?php echo $tz ?></font> 已审核：<font color="#c00"><?php echo $tz1 ?></font> 未审核：<font color="#c00"><?php echo $tz0 ?></font></p>
    <p align="right"><a href="<?php echo u_('Trains/index') ?>">进入培训管理中心 <font class="F" style="font-weight:normal"> &gt;&gt;</font></a></p>
    </div>

</div>
<?php require(inc_('foot')); ?>