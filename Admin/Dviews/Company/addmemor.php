<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>添加备忘录</span><a href="<?php echo u_('memor') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">
<table width="100%" border="0" cellspacing="12">
<tr><td width="100" align="right">企业名称：</td>
<td><input type="text" name="cname" placeholder="企业名称" value="<?php echo $cname;?>"><button type="button" id="chsbox">选</button></td>
</tr>
<tr><td width="100" align="right">执行时间：</td>
<td><input type="text" name="warntime" class="Wdate" value="<?php echo date("Y-m-d H:i",time());?>" readonly onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})"><span>* </span></td>
</tr>
<tr><td width="100" align="right">备忘内容：</td>
<td><textarea name="info" style="width:500px; height:80px;" placeholder="内容"></textarea><span>* </span></td>
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
<script type="text/javascript" src="<?php echo TS.'/ext/My97DatePicker/WdatePicker.js';?>"></script>