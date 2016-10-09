<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>已合作企业列表</span> 
</div>
<style type="text/css">
input[type=text]{
	padding:2px;
	}
</style>
 <form action="index.php?" method="get">
 <input type="hidden" name="m" value="admin" />
 <input type="hidden" name="c" value="Company" />
 <input type="hidden" name="a" value="counts" />
 <input type="hidden" name="search" value="1" />
<table width="100%">
<tr>
  <td width="100">合作时间：</td> <td><input type="text" name="cooptime1" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" /> 至
   <input type="text" name="cooptime2"  readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"/></td> 
  <td>选择行业：</td> <td>
  <select name="industry_id">
  <option value="0">----不限----</option>
  <?php foreach($industry as $iv){ ?>
<option value="<?php echo $iv['id']?>"/> <?php echo $iv['name']?></option>
<?php }?>
  </select>
  </td>
</tr>
<tr>
  <td>企业类型：</td> <td>
  <label><input type="radio" name="types" value="0" checked="checked" /> 不限</label>
<?php foreach($comptype as $cv){ ?>
<label><input type="radio" name="types" value="<?php echo $cv['id']?>"  /> <?php echo $cv['types']?></label>
<?php }?>
  </td>
  <td>排序：</td> <td>
  <label><input type="radio" name="sort" value="1" checked="checked" />上岗人数</label>
  <label><input type="radio" name="sort" value="2" />信息条数</label>
  <label><input type="radio" name="sort" value="3" />招聘总数</label>
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
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">企业名称</th><th>企业类型</th><th>重点</th><th>合作时间</th><th>信息数量</th><th>上岗人数</th><th>招聘总数</th><th>查看</th></tr>
</thead>
<tbody  align="center">
<?php if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><?php echo $v['cname'];?></td>
<td><?php echo $v['types']?></td>
<td><?php echo $imp = $v['important']==0 ? '否' : '是';?></td>
<td><?php echo date("Y-m-d",$v['cooptime']);?></td>
<td><?php echo $v['jobnum']?></td>
<td><?php echo $v['sgnum']?></td>
<td><?php echo $v['zpnum']?></td>
<td><a href="<?php echo u_('Company/companyshow',array('id'=>$v['id']))?>">查看</a></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
<?php echo $page;?>
</div>
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>
<?php include(inc_('foot')); ?>