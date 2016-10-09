<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>企业列表</span><a href="<?php echo u_('Company/addcompany'); ?>" style="display:inline-block;background:#08DEC2;">添加企业</a>
    <a href="javascript:void();" id="secid" style="margin-right:4px;display:inline-block;background:#F199CD;">展开/关闭搜索栏</a>
  </div>
 <style type="text/css">
 label{
	 float:none; width:auto; padding-right:8px;}
input[type="text"]{
	padding:2px;
	}
#sel td{
	padding:4px 0;
	}
 </style>
<div id="seid" style="width:100%; height:1px; overflow:hidden;">
 <form action="index.php?" method="get">
 <input type="hidden" name="m" value="admin" />
 <input type="hidden" name="c" value="Company" />
 <input type="hidden" name="a" value="index" />
 <input type="hidden" name="search" value="1" />
<table width="100%" id="sel">
<tr>
<td>企业类型</td>
<td>
<label><input type="radio" name="types" value="0" checked="checked" /> 不限</label>
<?php foreach($comptype as $cv){ ?>
<label><input type="radio" name="types" value="<?php echo $cv['id']?>"  /> <?php echo $cv['types']?></label>
<?php }?>
</td>
</tr>
<tr>
<td>选择区域：</td>
<td>
<select name="area">
<option value="0">---不限---</option>
<?php foreach($areas as $av){ ?>
<option value="<?php echo $av['id']?>"/> <?php echo $av['title']?></option>
<?php }?>
</select></td><td>
选择行业：</td><td>
<select name="industry_id">
<option value="0">---不限---</option>
<?php foreach($industry as $iv){ ?>
<option value="<?php echo $iv['id']?>"/> <?php echo $iv['name']?></option>
<?php }?>
</select>
</td>
</tr>
<tr>
<td>企业名称：</td><td><input type="text" name="cname" /> </td><td>
重点企业：</td><td>
<label style="float:none;"><input type="checkbox" name="important" value="1" /></label></td>
</tr>
<tr>
<td>企业地址：</td><td>
<input type="text" name="addr" /></td><td>
到达路线：</td><td>
<input type="text" name="route" />
</td>
</tr>
<tr>
<td>
联系人：</td><td><input type="text" name="mlinkman1" /></td><td>
联系电话：</td><td><input type="text" name="mlinkman2" />

</td>
</tr>

<tr>
<td>是否激活：</td>
<td>
<label><input type="radio" name="locks" value="" checked="checked" /> 不限</label>
<label><input type="radio" name="locks" value="1"  /> 已激活(审核)</label>
<label><input type="radio" name="locks" value="0"  /> 未激活(审核)</label>
</td>
<td>
拜访天数：
</td>
<td>
<label><input type="checkbox" name="novisit" value="1" /> 从未拜访</label>
<input type="text" name="visit" style="width:50px;" /> 天以上
</td>
</tr>

<tr>
<td>是否合作：</td>
<td>
<label><input type="radio" name="coop" value="" checked="checked" /> 不限</label>
<label><input type="radio" name="coop" value="1"  /> 已合作</label>
<label><input type="radio" name="coop" value="0"  /> 未合作</label>
</td>
<td>是否黑名单：</td><td>
<label><input type="radio" name="blist" value="" checked="checked" /> 不限</label>
<label><input type="radio" name="blist" value="1"  /> 是</label>
<label><input type="radio" name="blist" value="0"  /> 否</label>
</td>
</tr>
<tr>
<td>添加人：</td><td><select name="ad_id">
<option value="0">---不限---</option>
<?php foreach($admins as $adv){ ?>
<option value="<?php echo $adv['id']?>"/> <?php echo $adv['realname']?></option>
<?php }?>
</select></td><td>
添加时间：</td><td>
<input type="text" name="regtime1" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"/> 至 
<input type="text" name="regtime2" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
</td>
</tr>
<tr>
<td>
输出项目：
</td><td colspan="3">
<label><input type="checkbox" name="puts[]" value="types" checked="checked" /> 企业类型</label>
<label><input type="checkbox" name="puts[]" value="area" checked="checked" /> 区域</label>
<label><input type="checkbox" name="puts[]" value="industry" checked="checked"  /> 行业</label>
<label><input type="checkbox" name="puts[]" value="cname" checked="checked"  /> 企业名称</label>
<label><input type="checkbox" name="puts[]" value="important" /> 是否重点</label>
<label><input type="checkbox" name="puts[]" value="addr" /> 地址</label>
<label><input type="checkbox" name="puts[]" value="route" /> 路线</label>
<label><input type="checkbox" name="puts[]" value="mlinkman1" checked="checked" /> 联系人</label>
<label><input type="checkbox" name="puts[]" value="mlinkman2" checked="checked" /> 联系电话</label>
<label><input type="checkbox" name="puts[]" value="locks"  /> 激活</label>
<!--<label><input type="checkbox" name="puts[]" value="QQ" /> 拜访天数</label>-->
<label><input type="checkbox" name="puts[]" value="coop" /> 是否合作</label>
<!--<label><input type="checkbox" name="puts[]" value="blist"  checked="checked" /> 黑名单</label>-->
<label><input type="checkbox" name="puts[]" value="ad_id"  checked="checked" /> 添加人</label>
<label><input type="checkbox" name="puts[]" value="regtime"  checked="checked" /> 添加时间</label>
</td>
</tr>
<tr>
<td>

</td><td colspan="3">
<button type="submit">搜索</button>
</td>
</tr>
</table>
  </form>
 </div>
 <?php
 $s = $puts;
 ?>
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr>
   <?php if(in_array('types',$s)){?><th width="40">类型</th><?php }?>
   <?php if(in_array('cname',$s)){?><th width="180">企业名称</th><?php }?>
   <?php if(in_array('area',$s)){?><th>区域</th><?php }?>
   <?php if(in_array('industry',$s)){?><th>行业</th><?php }?>
   <?php if(in_array('mlinkman1',$s)){?><th>联系人</th><?php }?>
   <?php if(in_array('mlinkman2',$s)){?><th>联系电话</th><?php }?>
   <?php if(in_array('important',$s)){?><th>是否重点</th><?php }?>
   <?php if(in_array('addr',$s)){?><th>地址</th><?php }?>
   <?php if(in_array('route',$s)){?><th>路线</th><?php }?>
   <?php if(in_array('coop',$s)){?><th>是否合作</th><?php }?>
   <?php if(in_array('ad_id',$s)){?><th>添加人</th><?php }?>
   <?php if(in_array('regtime',$s)){?><th>添加时间</th><?php }?>
   <?php if(in_array('locks',$s)){?><th>激活</th><?php }?>
   <th>操作</th>
   </tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<?php
if(trim($v['mlinkman'])!=''){
	 $str = str_replace(array("\r\n","\n"), "#", $v['mlinkman']);
     $mlinkman = explode('#', $str);
    if (!empty(strstr($mlinkman[0], '|'))) {
        $ml = explode('|',$mlinkman[0]);
    } else if (!empty(strstr($mlinkman[0], ','))) {
        $ml = explode(',',$mlinkman[0]);
    }

	}
 $locks = $v['locks']==0 ? '<font color="#FF0000">锁定</font>':'正常';?>
<tr>
 <?php if(in_array('types',$s)){?><td><?php echo $v['types'];?></td><?php }?>
 <?php if(in_array('cname',$s)){?><td><?php echo $v['cname'];?></td><?php }?>
 <?php if(in_array('area',$s)){?><td><?php echo $v['title'];?></td><?php }?>
 <?php if(in_array('industry',$s)){?><td><?php echo $v['name']?></td><?php }?>
 <?php if(in_array('mlinkman1',$s)){?><td><?php echo $ml[0]?></td><?php }?>
 <?php if(in_array('mlinkman2',$s)){?><td><?php echo $ml[2]?></td><?php }?>
 <?php if(in_array('important',$s)){?><td><?php echo $important = $v['important']==1 ? '是':'否'?></td><?php }?>
 <?php if(in_array('addr',$s)){?><td><?php echo $v['addr']?></td><?php }?>
 <?php if(in_array('route',$s)){?><td><?php echo $v['route']?></td><?php }?>
 <?php if(in_array('coop',$s)){?><td><?php echo $coop = $v['coop']==1 ? '是':'否'?></td><?php }?>
 <?php if(in_array('ad_id',$s)){?><td><?php echo $v['realname']?></td><?php }?>
 <?php if(in_array('regtime',$s)){?><td><?php echo date("Y-m-d H:i",$v['regtime'])?></td><?php }?>
 <?php if(in_array('locks',$s)){?><td><?php echo $locks;?></td><?php }?>
<td>
<?php if(n_('Company|companyinfo',$Spow)){ ?><a href="<?php echo u_('companyinfo',array('uid'=>$v['id']));?>" style="display:inline-block;background:#FFD600;">资料</a> <?php } ?>
<?php if(n_('Company|editcompany_u',$Spow)){ ?><a href="<?php echo u_('editcompany_u',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">账号</a> <?php } ?>
<?php if(n_('Company|compattr',$Spow)){ ?><a href="<?php echo u_('compattr',array('uid'=>$v['id']));?>" style="display:inline-block;background:#ff8400;">属性</a> <?php } ?>
<a href="<?php echo u_('Company/companyshow',array('id'=>$v['id']));?>" style="display:inline-block;background:#8A83EC;">查</a>
<?php if(n_('Company|memor',$Spow)){ ?><a href="<?php echo u_('Company/memor',array('uid'=>$v['id']));?>" style="display:inline-block;background:#8A83EC;">备</a> <?php } ?>
<?php if(n_('Company|visit',$Spow)){ ?><a href="<?php echo u_('Company/visit',array('uid'=>$v['id']));?>" style="display:inline-block;background:#8A83EC;">拜</a> <?php } ?>
<?php if(n_('Company|delcompany',$Spow)){ ?><a href="<?php echo u_('delcompany',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删</a></td><?php } ?>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>

<div>
<?php echo $page;?>
</div>
</div>

<script type="text/javascript">
$(function(){
$('#secid').click(function(){
	var hh = $('#seid').height();
	if(hh ==400){
	  $('#seid').height(1);
	}
	else{
	  $('#seid').height(400);
	}
	});
});
</script>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>
<?php include(inc_('foot')); ?>