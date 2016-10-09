<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>拜访记录列表</span><a href="<?php echo u_('index') ?>" style="margin-left:4px;background:#08DEC2;">返回</a>
  <a href="<?php echo $uid==0 ? u_('Company/addvisit'): u_('Company/addvisit',array('uid'=>$uid)); ?>" style="display:inline-block;background:#30B8FB;">
    <?php echo $uid==0 ? '新增备拜访信息': '新增该公司拜访信息'; ?>
  </a>
      <a href="<?php echo u_('Company/visit',array('mym'=>1)); ?>" style="margin-right:4px;background:#F199CD;">查看所有拜访信息</a>
  <a href="<?php echo u_('Company/visit',array('mym'=>0)); ?>" style="margin-right:4px;background:#A5B90A;">只看我的拜访信息</a>
  </div>
  <div style="margin:10px 0">
<form action="" method="post">
拜访时间：<input type="text" name="vistime1" style="width:120px; padding:0" value="<?php  echo date("Y-m-01 00:00",time())?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" /> 至 
<input type="text" name="vistime2"  style="width:120px;padding:0" value="<?php  echo date("Y-m-d H:i",time())?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
&nbsp;&nbsp;&nbsp;
拜访人：<select name="ad_id" style="padding:0; width:100px;">
<option value="0">--请选择--</option>
<?php foreach($ads as $k=>$v){?>
<option value="<?php echo $v['id']?>"><?php echo $v['realname']?></option>
<?php }?>
</select>
&nbsp;&nbsp;&nbsp;
公司名称：<input type="text" name="cname" style="width:120px; padding:0" />
&nbsp;&nbsp;
<button type="submit" style="padding:2px 10px;">搜索</button>
</form>
</div>
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">企业名称</th><th>拜访时间</th><th>拜访方式</th><th>拜访内容</th><th>拜访人</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php 
$mrr = array('去电','来电','QQ','上门');
if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['cname']?></td>
<td><?php echo date("Y-m-d",$v['vistime'])?></td>
<td><?php echo $mrr[$v['methods']];?></td>
<td><?php echo $v['info']?></td>
<td><?php echo $v['realname']?></td>
<td>
<?php if(n_('Company|editvisit',$Spow)){ ?><a href="<?php echo u_('editvisit',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a> <?php } ?>
<?php if(n_('Company|delvisit',$Spow)){ ?><a href="<?php echo u_('delvisit',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>
<?php include(inc_('foot')); ?>