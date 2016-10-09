<?php require(inc_('head')); ?>
<?php require(inc_('leftnav')); ?>
<link href="<?php echo TS; ?>m1/images/zzsc.css" rel="stylesheet" />
<script type="text/javascript" src="<?php echo TS; ?>m1/js/easyCore.js"></script>
<div class="warp ban">

    <div class="zzsc">
     <div class="fright cleafix">
          <div id="picBox" class="sliderBox">
              <ul id="show_pic">
                <?php if(!empty($ban)){
                 $bani=0; 
                  foreach($ban as $bk=>$bv){

                    if($bv['type'] == 1){?>

                  <li <?php if($bani > 0) echo 'class="hide"'; ?>>
                    <a href="<?php echo $banto = empty($bv['banto'])!=false ? 'javascript:void"':$bv['banto'].'"  target="_blank"';?>">
                    <img src="<?php echo $bv['banimg']?>" width="1020" height="200" border="0" />
                    </a>
                  </li>

             <?php $bani++;
           }}
           }?>
              </ul>
          </div>
    <script src="<?php echo TS; ?>m1/js/index.js"></script>
      </div>
    </div>
</div>


<script type="text/javascript">
$(function(){
	$('#showmore').click(function(){
		$('.moresearch').show();
		});
	$('#hidemore').click(function(){
		$('.moresearch').hide();
		window.location.href = "/";
	 });
	});
</script>

<div class="warp">
   <div class="list">
    <form action='' method="post" style="border: 1px solid #ddd;margin-bottom: 10px;">
        <div class="type-nav">
            <a href="/" class="on">最新兼职信息</a>
            <a href="<?php echo u_('Index/trains')?>">最新活动培训</a>
        </div>
        <div class="moresearch">

                <b style="padding-left:10px;">工作编号</b>
                <input type="text" name="mc" placeholder="请输入工作编号" style="width:220px;height:26px;border:1px solid #ddd;    text-indent: 6px;"/>
               <b style="padding-left:30px;">类型</b>
               <select name="st" style="width:120px;height:30px;border:1px solid #ddd;" class="part_time_type" value="">
                <option value="">不限</option>
                 <option value="普通">普通</option>
                 <option value="双休">双休</option>
                 <option value="节假日">节假日</option>
                 <option value="寒暑假">寒暑假</option>
                 <option value="实习生">实习生</option>
               </select>
               <button type="submit" style="cursor:pointer;width:60px;height: 30px;background:#f2800e;color:#fff;border:1px solid #f2800e;    margin-left: 20px;">筛选
              </button> 
               <!-- <a href="javascript:void" id="hidemore">关闭筛选</a> -->
            <?php 
            $larr =  array('Sunday'=>7,'Monday'=>1,'Tuesday'=>2,'Wednesday'=>3,'Thursday'=>4,'Friday'=>5,'Saturday'=>6);
            $curl = $larr[date('l',time())];
            ?>
            <br />



            <b style="padding-left:10px;">日期</b>
            <span class="data_click">
<!--             <a href="/" style="color:#f2800e;padding-left: 30px;">不限</a> -->
            <?php for($di = 1; $di<=7 ;$di++){
              $iday = strtotime(date("Y-m-d",time() - 24 * 3600));
              //$itime = $di > $curl ? $iday+(3600*24*($di - $curl)) : $iday-(3600*24* ($curl - $di));
              $itime = $iday+3600*24*$di;
            ?>

            <a href="<?php echo u_('Index/index',array('d'=>strtotime(date("Y-m-d",$itime))))?>"><?php echo getday_(date("Y-m-d",$itime)).'('.date("m.d",$itime).')'?></a>
            <?php }?>

          </span>
        </div>
    </form>

      <table width="98%" class="table_list" cellpadding="0" cellspacing="0" style="margin:0 auto;">
        <thead>
           <tr style="background: #f2f2f2;">
             <th>工作编号</th>  <th>类型</th>   <th>招聘职位</th>  <th>性别</th>  <th>待遇</th>  <th>工作日期</th>  <th>状态</th>
           </tr>
        </thead>
        
        <tbody>
        <?php if(!empty($jobs)) foreach($jobs as $jk=>$jv){?>
           <tr>
              <td><?php echo $jv['jobnub'];?></td>
              <td><?php echo $jv['jobtype'];?></td>
              <td><a href="<?php echo u_('Index/jobscontent',array('id'=>$jv['id']));?>" target="_blank"><?php echo $jv['job'];?></td>
              <td><span class="gender"><?php  
			  if((!empty($jv['sex2']) && !empty($jv['sex1'])) || ($jv['sex11'] == 1 && $jv['sex22']==1)) echo '不限'; 
			  elseif($jv['sex11'] == 1 && $jv['sex2'] > 0) echo '不限'; 
			  elseif($jv['sex22'] == 1 && $jv['sex1'] > 0) echo '不限'; 
			  elseif(empty($jv['sex2']) && !empty($jv['sex1'])) echo '男';
			  elseif(empty($jv['sex1']) && !empty($jv['sex2'])) echo '女';
			  ?></span></td>
              <td class="td-bold"><?php echo $att = empty($jv['wage']) ? '面议' : $jv['wage'].'元/'.$jv['unit']?></td>
              <?php
			  $dl = getDay_($jv['jobtimestart'])==false ? '' : '['.getDay_($jv['jobtimestart']).']';
		 	  $dl2 = getDay_($jv['jobtimeend'])==false ? '' : '['.getDay_($jv['jobtimeend']).']';
			  ?>
              <td><?php echo substr($jv['jobtimestart'],5,5). $to= empty($jv['jobtimeend']) ? '' :' 至 '.substr($jv['jobtimeend'],5,5); ?></td>
              <td><span class="state"><?php
			    if($jv['endtime'] < time() || $jv['end'] == 1) echo '已结束';
//				elseif($jv['end']==1) echo '已结束';
				elseif($jv['jcount']>=$jv['mnums']) echo '已满';
				else echo '待聘';
			  ?></span></td>
           </tr>
           <?php }?>
        </tbody>
      </table>     
      <div class="page">
        <?php echo $page;?>
      </div>
<script type="text/javascript">
$(function(){
  $(".data_click a").click(function(){
    $(this).css("color","#f2800e");
    $(this).siblings().css("color","#000");
  })
})

// 画性别背景圆
$(".gender").each(function(index){
  if($(this).text()=="男"){
    $(this).css({
      "display": "inline-block",
      "background":"#50b1e3",
      "width":"30px",
      "height":"30px",
      "border-radius":"50%",
      "-webkit-border-radius": "50%",
      "-moz-border-radius": "50%",
      "color":"#fff",
      "margin-top":"10px",
      "line-height":"30px"
    })
  }else if($(this).text()=="女"){
    $(this).css({
      "display": "inline-block",
      "background":"#fa8686",
      "width":"30px",
      "height":"30px",
      "border-radius":"50%",
      "-webkit-border-radius": "50%",
      "-moz-border-radius": "50%",
      "color":"#fff",
      "margin-top":"10px",
       "line-height":"30px"
    })
  }else if($(this).text()=="不限"){
    $(this).css({
      "display": "inline-block",
      "background":"#cc9bf5",
      "width":"30px",
      "height":"30px",
      "border-radius":"50%",
      "-webkit-border-radius": "50%",
      "-moz-border-radius": "50%",
      "color":"#fff",
      "margin-top":"10px",
       "line-height":"30px"
    })
  }
})                    
// 画状态背景圆角矩形
$(".state").each(function(index){
  if($(this).text()=="已结束"){
    $(this).css({
      "display": "inline-block",
      "background":"#d9d9d9",
      "width":"58px",
      "height":"20px",
      "border-radius":"4px",
      "-webkit-border-radius": "4px",
      "-moz-border-radius": "4px",
      "color":"#fff",
      "margin-top":"10px",
      "line-height":"20px"
    })
  }else if($(this).text()=="待聘"){
    $(this).css({
      "display": "inline-block",
      "background":"#37d323",
      "width":"58px",
      "height":"20px",
      "border-radius":"4px",
      "-webkit-border-radius": "4px",
      "-moz-border-radius": "4px",
      "color":"#fff",
      "margin-top":"10px",
      "line-height":"20px"
    })
  }else if($(this).text()=="已满"){
    $(this).css({
      "display": "inline-block",
      "background":"#fa8686",
      "width":"58px",
      "height":"20px",
      "border-radius":"4px",
      "-webkit-border-radius": "4px",
      "-moz-border-radius": "4px",
      "color":"#fff",
      "margin-top":"10px",
      "line-height":"20px"
    })
  }
})
</script>      
   </div>    
   <?php require(inc_('right')); ?>
   <?php require(inc_('footstyle')); ?>
</div>
   
<?php include(inc_('foot')); ?>
