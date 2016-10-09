<?php require(inc_('head')); ?>
<?php require(inc_('leftnav')); ?>
<link href="<?php echo TS; ?>m1/images/zzsc.css" rel="stylesheet" />
<script type="text/javascript" src="<?php echo TS; ?>m1/js/easyCore.js"></script>
<div class="warp ban">
    <div class="zzsc">
     <div class="fright cleafix">
          <div id="picBox" class="sliderBox">
              <ul id="show_pic">
                <?php if(!empty($ban)){ $bani=0;
                foreach($ban as $bk=>$bv){
                    if($bv['type'] == 1){?>
                  <li <?php if($bani > 0) echo 'class="hide"'; ?>><a href="<?php echo $banto = empty($bv['banto'])!=false ? 'javascript:void"':$bv['banto'].'"  target="_blank"';?>"><img src="<?php echo $bv['banimg']?>" width="1020" height="200" border="0" /></a></li>
             <?php $bani++;}}}?>
              </ul>
          </div>
    <script src="<?php echo TS; ?>m1/js/index.js"></script>
      </div>
    </div>
</div>

<div class="warp">
   <div class="list">
    <div style="border: 1px solid #ddd;margin-bottom: 10px;border-bottom:none;">
      <div class="type-nav">
          <a href="/">最新兼职信息</a>
          <a href="<?php echo u_('Index/trains')?>" class="on">最新活动培训</a>
      </div>
    </div>
      <ul>
      <?php if(!empty($trains)) foreach($trains as $jk=>$jv){?>
         <li>
         <span class="s1"><?php  echo $itype=$jv['itype']==0 ? '培训' : '活动';?> &nbsp;</span>
         <span class="s2"><a href="<?php echo u_('Index/trainscontent',array('id'=>$jv['id']));?>" target="_blank"><?php echo $jv['title'];?></a></span>
         <span class="s6">关注：<?php echo $jv['hits'];?></span>
         <span class="s6" style="width:130px;">开始于：<?php echo date("Y-m-d",$jv['starttime']);?></span>

         </li>
     <?php }?>
      </ul>

      <div class="page">
         <div style="margin:0 auto; width:550px;">
         <?php echo $page;?>
         </div>
      </div>

   </div>

   <?php require(inc_('right')); ?>
   <?php require(inc_('footstyle')); ?>
</div>
<?php include(inc_('foot')); ?>


