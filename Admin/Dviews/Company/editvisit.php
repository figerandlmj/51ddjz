<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>编辑记录</span><a href="<?php echo u_('visit') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
 <?php // if(!$info || empty($info)) die;?>
<form action="" method="post" onSubmit="return confirm('确定提交？')">
<input type="hidden" name="id" value="<?php echo $info['id'];?>">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">企业名称：</td>
<td><input type="text" name="cname"  value="<?php echo $info['cname'];?>" placeholder="企业名称"><button type="button" id="chsbox">选</button></td>
</tr>
<tr><td width="100" align="right">拜访时间：</td>
<td><input type="text" name="vistime" class="Wdate" value="<?php echo date("Y-m-d",$info['vistime']);?>" readonly onClick="WdatePicker()"><span>* </span></td>
</tr>
<tr><td width="100" align="right">拜访方式：</td>
<td>
<select name="methods">
<option value="1"  <?php if($info['methods']==1) echo 'selected="selected"';?> >去电</option>
<option value="2" <?php if($info['methods']==2) echo 'selected="selected"';?>>来电</option>
<option value="3" <?php if($info['methods']==3) echo 'selected="selected"';?>>QQ</option>
<option value="4" <?php if($info['methods']==4) echo 'selected="selected"';?>>上门</option>
</select>

</td>
</tr>
<tr><td width="100" align="right">拜访内容：</td>
<td><textarea name="info" style="width:500px; height:80px;" placeholder="拜访内容"><?php echo $info['info'];?></textarea><span>* </span></td>
</tr>
<tr><td></td><td><button type="submit">提交</button></td></tr>
</table>
</form>
</div>

<div class="shadow-bg"></div>
<div class="chs-box">
   <div class="chs-title">
      <span>选择企业</span>
      <div class="chs-close">关闭</div>
   </div>
   <div class="chs-list">
   <table width="100%" id="cnames">
   <?php foreach($incs as $k=>$v){?>
      <tr>
         <td valign="top" width="100" style="border-right:#ddd dashed 1px; padding:0 10px;"><?php echo $v['name']?></td>
         <td style="border-bottom:#ddd dashed 1px; padding:0 10px;">
            <ul>
            <?php foreach($v['list'] as $vl){?>
              <li><?php echo $vl['cname']?></li>
            <?php }?>
            </ul>
         </td>
      </tr>
   <?php }?>
   </table>
   </div>
</div>
<script type="text/javascript">
$(function(){
	$("#chsbox").click(function(){
		$('.shadow-bg').show();
		$('.chs-box').show();
		});
	$(".chs-close").click(function(){
		$('.shadow-bg').hide();
		$('.chs-box').hide();
		});
	$('#cnames li').click(function(){
		$('input[name="cname"]').val($(this).text());
		$('.shadow-bg').hide();
		$('.chs-box').hide();
		});
	});
</script>
<?php include(inc_('foot')); ?>
<script type="text/javascript" src="<?php echo TS.'../../../ext/My97DatePicker/WdatePicker.js';?>"></script>