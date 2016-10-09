<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>培训信息列表</span><?php if(n_('Trains|addtrains',$Spow)){ ?><a href="<?php echo u_('Trains/addtrains'); ?>" style="display:inline-block;background:#08DEC2;">新增培训信息</a><?php } ?>
  <a href="javascript:void();" id="secid" style="display:inline-block;background:#F199CD;">展开/关闭搜索栏</a>
  </div>
   <style type="text/css">
  input[type=text]{padding:2px;}
  td { margin:2px 4px;}
  </style>

 <div id="seid" style="width:100%; height:1px; overflow:hidden;">
 <form action="index.php?" method="get">
 <input type="hidden" name="m" value="admin" />
 <input type="hidden" name="c" value="Trains" />
 <input type="hidden" name="a" value="index" />
 <input type="hidden" name="search" value="1" />
<table width="100%">
<tr>
<td width="100" align="right">主题：</td>
<td>
<input type="text" name="title" />
单位：<input type="text" name="cname" />
管理员：<select name="ad_id">
<option value="0">---不限---</option>
<?php foreach($admins as $adv){ ?>
<option value="<?php echo $adv['id']?>"/> <?php echo $adv['realname']?></option>
<?php }?>
</select>

<button type="submit">搜索</button>

</td>
</tr>

</table>
</form>
</div>
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th>标题</th><th>单位</th><th>状态</th><th>添加人</th><th>报名人数</th><th>审核状态</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $k => $v): ?>
<tr>
<td><?php echo $v['title'];?></td>
<td><?php echo $v['cname']?></td>
<td><?php 
if($v['put']==0) echo '未发布';
elseif(time() < $v['bstarttime']) echo '报名在即';
elseif(time() < $v['bendtime']) echo '报名中';
elseif(time() < $v['starttime']) echo '报名结束';
elseif(time() < $v['endtime']) echo '培训中';
elseif(time() > $v['endtime']) echo '培训结束';
?></td>
<td><?php echo $v['realname'];?></td>
<td><?php echo '<a href="'.u_('Trains/trainsnamelist',array('id'=>$v['id'])).'">'.$v['nnum'].'</a>/'.$v['ps']?></td>
<td><?php echo $auditing = $v['put']==0 ? '<font color="#f00">未审核</font>':'<font color="#009900">审核通过</font>';?></td>
<td>

<?php $aud=$v['put']==0 ? 1:0; ?>
<?php if(n_('Trains|editauditing',$Spow)){ ?><a href="<?php echo u_('editauditing',array('id'=>$v['id'],'put'=>$aud));?>" <?php if($v['put']==0){?>  style="background:#999" <?php }?> style="display:inline-block;background:#FFD600;">
<?php echo $auditings = $v['put']==0 ? '审核通过':'取消审核';?>
</a><?php } ?>

<?php if(n_('Trains|edittrains',$Spow)){ ?><a href="<?php echo u_('edittrains',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a> <?php } ?>
<a href="<?php echo u_('Web/Index/trainscontent',array('id'=>$v['id']));?>" target="_blank" style="display:inline-block;background:#8A83EC;">查</a>
<?php if(n_('Trains|deltrains',$Spow)){ ?><a href="<?php echo u_('deltrains',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a> <?php } ?></td>
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
	if(hh ==60){
	  $('#seid').height(1);
	}
	else{
	  $('#seid').height(60);
	}
	});

});
</script>
<?php include(inc_('foot')); ?>