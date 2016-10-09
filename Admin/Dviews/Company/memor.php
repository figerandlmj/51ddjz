<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>备忘录列表</span><a href="<?php echo u_('index') ?>" style="margin-left:4px;background:#08DEC2;" >返回</a>
  <a href="<?php echo $uid==0 ? u_('Company/addmemor'): u_('Company/addmemor',array('uid'=>$uid)); ?>" style="display:inline-block;background:#30B8FB;">
  <?php echo $uid==0 ? '新增备忘录': '新增该公司备忘录'; ?>
  </a>
    <a href="<?php echo u_('Company/memor',array('mym'=>1)); ?>" style="margin-right:4px;background:#F199CD;">查看所有备忘录</a>
  <a href="<?php echo u_('Company/memor',array('mym'=>0)); ?>" style="margin-right:4px;background:#A5B90A;">只看我的备忘录</a>
  </div>
<div style="margin:10px 0">
<form action="" method="post">
执行时间：<input type="text" name="warntime1" style="width:120px; padding:0" value="<?php // echo date("Y-m-d H:i",time())?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" /> 至 
<input type="text" name="warntime2"  style="width:120px;padding:0" value="<?php // echo date("Y-m-d H:i",time()+3600*24*7)?>" readonly
onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"/>
&nbsp;&nbsp;&nbsp;
备忘人：<select name="ad_id" style="padding:0; width:100px;">
<option value="0">--请选择--</option>
<?php foreach($ads as $k=>$v){?>
<option value="<?php echo $v['id']?>"><?php echo $v['realname']?></option>
<?php }?>
</select>
&nbsp;&nbsp;&nbsp;
公司名称：<input type="text" name="cname" style="width:120px; padding:0" />
&nbsp;&nbsp;&nbsp;
拜访日期：
<label style="float:none;"><input type="radio" name="day" value="0" checked="checked"  />不限</label>
<label style="float:none;"><input type="radio" name="day" value="1"/>今天及以后</label>
<label style="float:none;"><input type="radio" name="day" value="2" />今天以前</label>

<button type="submit" style="padding:2px 10px;">搜索</button>
</form>
</div>
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">企业名称</th><th width="130">添加/执行时间</th><th width="80">备忘人</th><th>备忘内容</th><th width="120">操作</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['cname']?></td>
<td>执：<font<?php if($v['warntime'] < time()) echo ' color="#FF0000"';?> ><?php echo date("Y-m-d H:i",$v['warntime']);?></font>
<br />
添：<?php echo date("Y-m-d H:i",$v['addtime']);?>
</td>
<td><?php echo $v['realname']?></td>
<td><?php echo $v['info']?></td>
<td>
<?php if(n_('Company|alertmemor',$Spow)){ ?><a href="<?php echo u_('alertmemor',array('id'=>$v['id'],'ad_id'=>$v['ad_id']));?>" style="display:inline-block;background:#F39999;"><?php if($v['is_alert']==0) { echo "提醒";}elseif($v['is_alert']==1) { echo "取消提醒";}?></a> <?php } ?>
<?php if(n_('Company|editmemor',$Spow)){ ?><a href="<?php echo u_('editmemor',array('id'=>$v['id'],'ad_id'=>$v['ad_id']));?>" style="display:inline-block;background:#41940F;">编辑</a> <?php } ?>
<?php if(n_('Company|delmemor',$Spow)){ ?><a href="<?php echo u_('delmemor',array('id'=>$v['id'],'ad_id'=>$v['ad_id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;margin-top:4px;">删除</a><?php } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php echo $page;?>
</div>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>
<?php include(inc_('foot')); ?>