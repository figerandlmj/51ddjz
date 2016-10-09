<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>首页焦点图</span><?php // if(n_('Admins|addadmins',$Spow)){ ?><a href="<?php echo u_('Index/addbanner'); ?>" style="display:inline-block;background:#08DEC2;">添加图片</a><?php // } ?>
  </div>
  
<table width="98%" border="0" cellspacing="1" class="l">
<thead>
   <tr><th width="180">预览</th><th>标题</th><th>跳转地址</th><th>类型</th><th>操作</th></tr>
</thead>
<tbody  align="center">
<?php
 if(!empty($list)) foreach($list as $v): ?>
<tr>
<td><img src="<?php echo $v['banimg'];?>" width="200" height="50"></td>
<td><?php echo $v['bantitle']?></td>
<td><?php echo $v['banto']?></td>
<td><?php if($v['type'] == 1) echo '首页banner图'; elseif($v['type'] == 2) echo '首页兼职风采图'; ?></td>
<td>
<?php //if(n_('Index|editbanner',$Spow)){ ?><a href="<?php echo u_('editbanner',array('id'=>$v['id']));?>" style="display:inline-block;background:#41940F;">编辑</a><?php //} ?>
<?php //if(n_('Index|delbanner',$Spow)){ ?><a href="<?php echo u_('delbanner',array('id'=>$v['id']));?>" onClick="return confirm('确定删除？')" style="display:inline-block;background:#DE0808;">删除</a><?php // } ?></td>
</tr>
<?php endforeach;?>
</tbody>
</table>
</form>
<?php // echo $page;?>
</div>
<?php include(inc_('foot')); ?>