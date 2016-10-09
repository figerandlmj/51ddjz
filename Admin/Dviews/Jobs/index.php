<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>兼职信息列表</span><?php if(n_('Jobs|addjobs',$Spow)){ ?><a href="<?php echo u_('Jobs/addjobs'); ?>" style="display:inline-block;background:#F199CD;">新增兼职信息</a><?php } ?>
  <a href="javascript:void();" id="secid" style="display:inline-block;background:#08DEC2;">展开/关闭搜索栏</a>
  </div>
 <style type="text/css">
  input[type=text]{padding:2px;}
  td { margin:2px 4px;}
  .bs a{
	  color:#06F; font-weight:bold;
	  }
	  .bs a:hover{
		  color:#03F; 
		  }
  </style>
<div style="width:80%; height:36px; line-height:0;" class="bs">
<a href="<?php echo u_('index',array('t'=>1))?>">明日面试</a> |  
<a href="<?php echo u_('index',array('t'=>2))?>">今日面试</a> |  
<a href="<?php echo u_('index',array('t'=>3))?>">发布录取名单</a> 
<!--<a href="<?php //echo u_('index',array('t'=>3))?>">报名已足</a> | 
<a href="<?php //echo u_('index',array('t'=>4))?>">名额已满</a>-->
</div>
 <div id="seid" style="width:100%; height:1px; overflow:hidden;">
 <form action="index.php?" method="get">
 <input type="hidden" name="m" value="admin" />
 <input type="hidden" name="c" value="Jobs" />
 <input type="hidden" name="a" value="index" />
 <input type="hidden" name="search" value="1" />
<table width="100%">
<tr>
<td width="100" align="right">信息编号：</td><td><input type="text" name="jobnub" /></td>
<td width="100" align="right">企业名称：</td><td><input type="text" name="cname" /></td>
</tr>

<tr>
<td width="100" align="right">招聘岗位：</td><td><input type="text" name="job" /></td>
<td width="100" align="right">面试时间：</td>
<td><input type="text" name="admitime" class="Wdate" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"> 之后</td>
</tr>

<tr>
<td width="100" align="right">工作日期：</td>
<td width="550">
<input type="text" name="jobtimestart" class="Wdate" id="jobtimestart">
<img class="sw" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:'jobtimestart'})" src="<?php echo TS.'/ext/My97DatePicker/skin/datePicker.gif'?>" width="16" height="22" align="absmiddle">
 至
 <input type="text" name="jobtimeend" class="Wdate" id="jobtimeend">
 <img onclick="WdatePicker({dateFmt:'yyyy-MM-dd',el:'jobtimeend'})" src="<?php echo TS.'/ext/My97DatePicker/skin/datePicker.gif'?>" width="16" height="22" align="absmiddle"> (本后栏可选填)

</td>
<td width="100" align="right">管理员：</td><td>
<select name="ad_id">
<option value="0">---不限---</option>
<?php foreach($admins as $adv){ ?>
<option value="<?php echo $adv['id']?>"/> <?php echo $adv['realname']?></option>
<?php }?>
</select></td>
</tr>
<tr>
<td width="100" align="right">发布时间：</td>
<td width="550">
<input type="text" name="addtime1" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})">
 至
 <input type="text" name="addtime2" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})">
 

</td>
<td></td>
</tr>
<tr>
<td></td>
<td><button type="submit">搜索</button></td>
</tr>
</table>
</form>
</div>
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th>编号</th><th>招聘企业</th><th>职位</th><th>来源</th><th>报名人数</th><th>录取结果</th><th>面试时间</th><th>集合时间</th><th>工作时间</th><th>状态</th><th width="240">操作</th></tr>
</thead>
<tbody align="center">
<?php if(!empty($list)) foreach($list as $k => $v): ?>
<tr>
<td><?php //echo $v['title'];?>
<?php echo $v['jobnub'];?>
</td>
<td><?php echo $v['cname']?></td>
<td><?php echo $v['job']?></td>
<td><?php echo $v['realname'].'/'.$v['ways'];?></td>
<td><?php echo '<a href="'.u_('Jobs/jobnamelist',array('id'=>$v['id'])).'">'.$v['nnum'].'</a>/'.$v['mnums']?></td>
<td><?php echo $v['result']?></td>

<td><?php echo date("Y-m-d H:i",$v['admitime']).'<br>['.getDay_($v['admitime']).']'?></td>
<td><?php echo $v['gathtime']?></td>
<td><?php
if(strtotime($v['jobtimestart'])){
	$dts = '['.getDay_($v['jobtimestart']).']';
	}
if(strtotime($v['jobtimeend'])){
	$dte = '['.getDay_($v['jobtimeend']).']';
	}
 echo substr($v['jobtimestart'],5,5).$dts. $to= empty($v['jobtimeend']) ? '' :' 至 '.substr($v['jobtimeend'],5,5).$dte; ?>
<br />
<?php echo $v['jobtimestartt'].$to= empty($v['jobtimeendt']) ? '' :' 至 '.$v['jobtimeendt'];?>
</td>
<td <?php if($v['auditing']==0){?>  style="background:#ddd" <?php }?>><?php echo $v['static'];?></td>
<td style="height:50px;">
<?php $aud=$v['auditing']==0 ? 1:0; ?>
<?php if(n_('Jobs|editauditing',$Spow)){ ?><a href="<?php echo u_('editauditing',array('id'=>$v['id'],'aud'=>$aud));?>" <?php if($v['auditing']==0){?>  style="background:#999" <?php }?> style="display:inline-block;background:#FFD600;">
<?php echo $auditings = $v['auditing']==0 ? '审过':'消审';?>
</a><?php } ?>

<a href="<?php echo u_('endjobs',array('id'=>$v['id']));?>" <?php if((int)$v['end'] > 0){?>  style="background:#999" <?php }?> style="display:inline-block;background:#41940F;">
<?php echo $ends = $v['end']==0 ? '终止':'进行';?>
</a>
<br /><br />
<?php if(n_('Jobs|editjobs',$Spow)){ ?><a href="<?php echo u_('editjobs',array('id'=>$v['id']));?>" style="display:inline-block;background:#8A83EC;">编</a><?php } ?>
<a href="<?php echo u_('Web/Index/jobscontent',array('id'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#8A83EC;">查</a>
<a href="<?php echo u_('topz',array('id'=>$v['id']));?>" <?php if((int)$v['top'] > 0){?>  style="background:#999" <?php }?> style="display:inline-block;background:#8A83EC;">置</a>
<a href="<?php echo u_('copyz',array('id'=>$v['id']));?>" style="display:inline-block;background:#8A83EC;">复</a>
<?php if(n_('Jobs|deljobs',$Spow)){ ?><a href="<?php echo u_('deljobs',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删</a><?php }?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>

<script type="text/javascript">
$(function(){
$('#secid').click(function(){
	var hh = $('#seid').height();
	if(hh ==160){
	  $('#seid').height(1);
	}
	else{
	  $('#seid').height(160);
	}
	});

});
</script>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>
<?php include(inc_('foot')); ?>
