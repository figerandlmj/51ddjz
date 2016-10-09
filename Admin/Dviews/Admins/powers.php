<?php include(inc_('head')); ?>
<div class="right" id="right">
  <div class="title"><span>管理员：<?php echo $i['realname']; ?> 的权限设置</span><a href="<?php echo u_('index') ?>" style="display:inline-block;background:#08DEC2;">返回</a>
  </div>
<form action="" method="post" onSubmit="return confirm('确定添加？')">
<input type="hidden" name="id" value="<?php echo $i['id'];?>">

<?php if($i['powers'][0]=='all'){
echo '<input type="hidden" name="or" value="all">';
}
?>
<table width="100%" border="0" id="powers">
<tr><td width="100"><!--<label><input type="checkbox" name="powers[]" value="Index|site_index" <?php //if(!empty($i['powers']) && !empty($i['powers']) && in_array('Index|site_index',$i['powers'])) echo 'checked';?>><b>系统设置</b></label>--></td>
    <td>
   <label><input type="checkbox" name="powers[]" value="Admins|person_info" <?php if(!empty($i['powers']) && in_array('Admins|person_info',$i['powers'])) echo 'checked';?>>个人资料</label>
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Admins|index" <?php if(!empty($i['powers']) && in_array('Admins|index',$i['powers'])) echo 'checked';?>><b>管理员</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Admins|addadmins" <?php if(!empty($i['powers']) && in_array('Admins|addadmins',$i['powers'])) echo 'checked';?>>添加管理员</label>
   <label><input type="checkbox" name="powers[]" value="Admins|editadmins" <?php if(!empty($i['powers']) && in_array('Admins|editadmins',$i['powers'])) echo 'checked';?>>编辑管理员</label>
 <!--    <label><input type="checkbox" name="powers[]" value="Admins|deladmins" <?php// if(!empty($i['powers']) && in_array('Admins|deladmins',$i['powers'])) echo 'checked';?>>删除管理员</label>
    <label><input type="checkbox" name="powers[]" value="Admins|powers" <?php// if(!empty($i['powers']) && in_array('Admins|powers',$i['powers'])) echo 'checked';?>>权限管理</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Page|index" <?php if(!empty($i['powers']) && in_array('Page|index',$i['powers'])) echo 'checked';?>><b>页面管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Admins|addpage" <?php if(!empty($i['powers']) && in_array('Admins|addpage',$i['powers'])) echo 'checked';?>>添加页面</label>
   <label><input type="checkbox" name="powers[]" value="Admins|editpage" <?php if(!empty($i['powers']) && in_array('Admins|editpage',$i['powers'])) echo 'checked';?>>编辑页面</label>
   <!--  <label><input type="checkbox" name="powers[]" value="Admins|delpage" <?php// if(!empty($i['powers']) && in_array('Admins|delpage',$i['powers'])) echo 'checked';?>>删除页面</label>-->
    </td>
</tr>
<tr><td width="100" valign="top"><label><input type="checkbox" name="powers[]" value="Member|index" <?php if(!empty($i['powers']) && in_array('Member|index',$i['powers'])) echo 'checked';?>><b>会员管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Member|addmember" <?php if(!empty($i['powers']) && in_array('Member|addmember',$i['powers'])) echo 'checked';?>>添加会员</label>
    <label><input type="checkbox" name="powers[]" value="Member|editmember_u" <?php if(!empty($i['powers']) && in_array('Member|editmember_u',$i['powers'])) echo 'checked';?>>编辑会员</label>
    <label><input type="checkbox" name="powers[]" value="Member|memberinfo" <?php if(!empty($i['powers']) && in_array('Member|memberinfo',$i['powers'])) echo 'checked';?>>会员资料编辑</label>
    <label><input type="checkbox" name="powers[]" value="Member|delmember" <?php if(!empty($i['powers']) && in_array('Member|delmember',$i['powers'])) echo 'checked';?>>删除会员</label>
    
    <label><input type="checkbox" name="powers[]" value="Member|hislist" <?php if(!empty($i['powers']) && in_array('Member|hislist',$i['powers'])) echo 'checked';?>>会员记录</label>
    <label><input type="checkbox" name="powers[]" value="Member|warning" <?php if(!empty($i['powers']) && in_array('Member|warning',$i['powers'])) echo 'checked';?>>会员警告</label>
    <label><input type="checkbox" name="powers[]" value="Member|frozen" <?php if(!empty($i['powers']) && in_array('Member|frozen',$i['powers'])) echo 'checked';?>>会员冻结</label>
    <label><input type="checkbox" name="powers[]" value="Member|limit" <?php if(!empty($i['powers']) && in_array('Member|limit',$i['powers'])) echo 'checked';?>>会员限制</label>
    <label><input type="checkbox" name="powers[]" value="Member|search" <?php if(!empty($i['powers']) && in_array('Member|search',$i['powers'])) echo 'checked';?>>会员详细搜索</label>
    <label><input type="checkbox" name="powers[]" value="Member|counts" <?php if(!empty($i['powers']) && in_array('Member|counts',$i['powers'])) echo 'checked';?>>学校新进会员统计</label>
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Member|membergrade" <?php if(!empty($i['powers']) && in_array('Member|membergrade',$i['powers'])) echo 'checked';?>><b>会员等级管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Member|addmembergrade" <?php if(!empty($i['powers']) && in_array('Member|addmembergrade',$i['powers'])) echo 'checked';?>>添加会员等级</label>
    <label><input type="checkbox" name="powers[]" value="Member|editmembergrade" <?php if(!empty($i['powers']) && in_array('Member|editmembergrade',$i['powers'])) echo 'checked';?>>编辑会员等级</label>
<!--    <label><input type="checkbox" name="powers[]" value="Member|delmember" <?php// if(!empty($i['powers']) && in_array('Member|delmembergrade',$i['powers'])) echo 'checked';?>>删除会员等级</label>-->
    </td>
</tr>



<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Company|index" <?php if(!empty($i['powers']) && in_array('Company|index',$i['powers'])) echo 'checked';?>><b>企业管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Company|addcompany" <?php if(!empty($i['powers']) && in_array('Company|addcompany',$i['powers'])) echo 'checked';?>>添加企业</label>
    <label><input type="checkbox" name="powers[]" value="Company|editcompany_u" <?php if(!empty($i['powers']) && in_array('Company|editcompany_u',$i['powers'])) echo 'checked';?>>编辑企业</label>
    <label><input type="checkbox" name="powers[]" value="Company|companyinfo" <?php if(!empty($i['powers']) && in_array('Company|companyinfo',$i['powers'])) echo 'checked';?>>企业资料编辑</label>
    <label><input type="checkbox" name="powers[]" value="Company|compattr" <?php if(!empty($i['powers']) && in_array('Company|compattr',$i['powers'])) echo 'checked';?>>企业属性设置</label>
    <label><input type="checkbox" name="powers[]" value="Company|companyshow" <?php if(!empty($i['powers']) && in_array('Company|companyshow',$i['powers'])) echo 'checked';?>>企业信息查看</label>
    <label><input type="checkbox" name="powers[]" value="Company|counts" <?php if(!empty($i['powers']) && in_array('Company|counts',$i['powers'])) echo 'checked';?>>企业合作数据统计</label>
<!--    <label><input type="checkbox" name="powers[]" value="Company|delcompany" <?php //if(!empty($i['powers']) && in_array('Company|delcompany',$i['powers'])) echo 'checked';?>>删除企业</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Company|comptype" <?php if(!empty($i['powers']) && in_array('Company|comptype',$i['powers'])) echo 'checked';?>><b>企业类型管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Company|addcomptype" <?php if(!empty($i['powers']) && in_array('Company|addcomptype',$i['powers'])) echo 'checked';?>>添加企业类型</label>
    <label><input type="checkbox" name="powers[]" value="Company|editcomptype" <?php if(!empty($i['powers']) && in_array('Company|editcomptype',$i['powers'])) echo 'checked';?>>编辑企业类型</label>
<!--    <label><input type="checkbox" name="powers[]" value="Company|delcomptype" <?php// if(!empty($i['powers']) && in_array('Company|delcomptype',$i['powers'])) echo 'checked';?>>删除企业类型</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Company|visit" <?php if(!empty($i['powers']) && in_array('Company|visit',$i['powers'])) echo 'checked';?>><b>企业拜访记录</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Company|addvisit" <?php if(!empty($i['powers']) && in_array('Company|addvisit',$i['powers'])) echo 'checked';?>>添加拜访记录</label>
    <label><input type="checkbox" name="powers[]" value="Company|editvisit" <?php if(!empty($i['powers']) && in_array('Company|editvisit',$i['powers'])) echo 'checked';?>>编辑拜访记录</label>
<!--    <label><input type="checkbox" name="powers[]" value="Company|delvisit" <?php// if(!empty($i['powers']) && in_array('Company|delvisit',$i['powers'])) echo 'checked';?>>删除拜访记录</label>-->
    </td>
</tr>
 <input type="hidden" name="powers[]" value="Company|companyjobs" />
 <input type="hidden" name="powers[]" value="Company|companyjobsh" />
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Company|memor" <?php if(!empty($i['powers']) && in_array('Company|memor',$i['powers'])) echo 'checked';?>><b>企业拜访备忘</b></label></td>
    <td>
   
    <label><input type="checkbox" name="powers[]" value="Company|addmemor" <?php if(!empty($i['powers']) && in_array('Company|addmemor',$i['powers'])) echo 'checked';?>>添加拜访备忘</label>
    <label><input type="checkbox" name="powers[]" value="Company|editmemor" <?php if(!empty($i['powers']) && in_array('Company|editmemor',$i['powers'])) echo 'checked';?>>编辑拜访备忘</label>
    <label><input type="checkbox" name="powers[]" value="Company|delmemor" <?php if(!empty($i['powers']) && in_array('Company|delmemor',$i['powers'])) echo 'checked';?>>删除拜访备忘</label>
    <label><input type="checkbox" name="powers[]" value="Company|alertmemor" <?php if(!empty($i['powers']) && in_array('Company|alertmemor',$i['powers'])) echo 'checked';?>>备忘提醒</label>
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Company|blist" <?php if(!empty($i['powers']) && in_array('Company|blist',$i['powers'])) echo 'checked';?>><b>企业黑名单管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Company|addblist" <?php if(!empty($i['powers']) && in_array('Company|addblist',$i['powers'])) echo 'checked';?>>添加企业黑名单</label>
<!--    <label><input type="checkbox" name="powers[]" value="Company|delblist" <?php //if(!empty($i['powers']) && in_array('Company|delblist',$i['powers'])) echo 'checked';?>>解除企业黑名单</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Company|area" <?php if(!empty($i['powers']) && in_array('Company|area',$i['powers'])) echo 'checked';?>><b>企业区域管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Company|addarea" <?php if(!empty($i['powers']) && in_array('Company|addarea',$i['powers'])) echo 'checked';?>>添加企业区域</label>
    <label><input type="checkbox" name="powers[]" value="Company|editarea" <?php if(!empty($i['powers']) && in_array('Company|editarea',$i['powers'])) echo 'checked';?>>编辑企业区域</label>
<!--    <label><input type="checkbox" name="powers[]" value="Company|delarea" <?php //if(!empty($i['powers']) && in_array('Company|delarea',$i['powers'])) echo 'checked';?>>删除企业区域</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Company|industry" <?php if(!empty($i['powers']) && in_array('Company|industry',$i['powers'])) echo 'checked';?>><b>企业行业管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Company|addindustry" <?php if(!empty($i['powers']) && in_array('Company|addindustry',$i['powers'])) echo 'checked';?>>添加行业</label>
    <label><input type="checkbox" name="powers[]" value="Company|editindustry" <?php if(!empty($i['powers']) && in_array('Company|editindustry',$i['powers'])) echo 'checked';?>>编辑行业</label>
<!--    <label><input type="checkbox" name="powers[]" value="Company|delindustry" <?php// if(!empty($i['powers']) && in_array('Company|delindustry',$i['powers'])) echo 'checked';?>>删除行业</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="School|index" <?php if(!empty($i['powers']) && in_array('School|index',$i['powers'])) echo 'checked';?>><b>大学管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="School|addschool" <?php if(!empty($i['powers']) && in_array('School|addschool',$i['powers'])) echo 'checked';?>>添加大学</label>
    <label><input type="checkbox" name="powers[]" value="School|editschool" <?php if(!empty($i['powers']) && in_array('School|editschool',$i['powers'])) echo 'checked';?>>编辑大学</label>
<!--    <label><input type="checkbox" name="powers[]" value="School|delschool" <?php //if(!empty($i['powers']) && in_array('School|delschool',$i['powers'])) echo 'checked';?>>删除大学</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="School|campus" <?php if(!empty($i['powers']) && in_array('School|campus',$i['powers'])) echo 'checked';?>><b>大学校区管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="School|addcampus" <?php if(!empty($i['powers']) && in_array('School|addcampus',$i['powers'])) echo 'checked';?>>添加大学校区</label>
    <label><input type="checkbox" name="powers[]" value="School|editcampus" <?php if(!empty($i['powers']) && in_array('School|editcampus',$i['powers'])) echo 'checked';?>>编辑大学校区</label>
<!--    <label><input type="checkbox" name="powers[]" value="School|delcampus" <?php //if(!empty($i['powers']) && in_array('School|delcampus',$i['powers'])) echo 'checked';?>>删除大学校区</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="School|major" <?php if(!empty($i['powers']) && in_array('School|major',$i['powers'])) echo 'checked';?>><b>大学专业管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="School|addmajor" <?php if(!empty($i['powers']) && in_array('School|addmajor',$i['powers'])) echo 'checked';?>>添加大学专业</label>
    <label><input type="checkbox" name="powers[]" value="School|editmajor" <?php if(!empty($i['powers']) && in_array('School|editmajor',$i['powers'])) echo 'checked';?>>编辑大学专业</label>
   <!-- <label><input type="checkbox" name="powers[]" value="School|delmajor" <?php //if(!empty($i['powers']) && in_array('School|delmajor',$i['powers'])) echo 'checked';?>>删除大学专业</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Jobs|index" <?php if(!empty($i['powers']) && in_array('Jobs|index',$i['powers'])) echo 'checked';?>><b>兼职信息管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Jobs|addjobs"  <?php if(!empty($i['powers']) && in_array('Jobs|addjobs',$i['powers'])) echo 'checked';?>>添加兼职信息</label>
    <label><input type="checkbox" name="powers[]" value="Jobs|editjobs"  <?php if(!empty($i['powers']) && in_array('Jobs|editjobs',$i['powers'])) echo 'checked';?>>编辑兼职信息</label>
<!--    <label><input type="checkbox" name="powers[]" value="Jobs|deljobs"  <?php //if(!empty($i['powers']) && in_array('Jobs|deljobs',$i['powers'])) echo 'checked';?>>删除兼职信息</label>-->
    <label><input type="checkbox" name="powers[]" value="Jobs|editauditing"  <?php if(!empty($i['powers']) && in_array('Jobs|editauditing',$i['powers'])) echo 'checked';?>>审核兼职信息</label>
    <label><input type="checkbox" name="powers[]" value="Jobs|topz"  <?php if(!empty($i['powers']) && in_array('Jobs|topz',$i['powers'])) echo 'checked';?>>置顶兼职信息</label>
    <label><input type="checkbox" name="powers[]" value="Jobs|copyz"  <?php if(!empty($i['powers']) && in_array('Jobs|copyz',$i['powers'])) echo 'checked';?>>复制兼职信息</label>
    <label><input type="checkbox" name="powers[]" value="Jobs|getUnitAjax"  <?php if(!empty($i['powers']) && in_array('Jobs|getUnitAjax',$i['powers'])) echo 'checked';?>>搜索企业</label>
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Jobs|jobnamelist"  <?php if(!empty($i['powers']) && in_array('Jobs|jobnamelist',$i['powers'])) echo 'checked';?>><b>兼职报名管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Jobs|addjobnamelist"  <?php if(!empty($i['powers']) && in_array('Jobs|addjobnamelist',$i['powers'])) echo 'checked';?>>新增报名会员</label>
     <input type="hidden" name="powers[]" value="Jobs|addjobnamelist2" />
    <label><input type="checkbox" name="powers[]" value="Jobs|editjobnamelist"  <?php if(!empty($i['powers']) && in_array('Jobs|editjobnamelist',$i['powers'])) echo 'checked';?>>审核报名会员</label>
   <!-- <label><input type="checkbox" name="powers[]" value="Jobs|deljobnamelist"  <?php //if(!empty($i['powers']) && in_array('Jobs|deljobnamelist',$i['powers'])) echo 'checked';?>>删除报名会员</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Trains|index"  <?php if(!empty($i['powers']) && in_array('Trains|index',$i['powers'])) echo 'checked';?>><b>活动培训列表</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Trains|addtrains"  <?php if(!empty($i['powers']) && in_array('Trains|addtrains',$i['powers'])) echo 'checked';?>>新增培训</label>
    <label><input type="checkbox" name="powers[]" value="Trains|edittrains"  <?php if(!empty($i['powers']) && in_array('Trains|edittrains',$i['powers'])) echo 'checked';?>>编辑培训</label>
<!--    <label><input type="checkbox" name="powers[]" value="Trains|deltrains" <?php //if(!empty($i['powers']) && in_array('Trains|deltrains',$i['powers'])) echo 'checked';?>>删除培训</label>-->
    <label><input type="checkbox" name="powers[]" value="Jobs|editauditing"  <?php if(!empty($i['powers']) && in_array('Jobs|editauditing',$i['powers'])) echo 'checked';?>>审核培训信息</label>
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Trains|trainsnamelist"  <?php if(!empty($i['powers']) && in_array('Trains|trainsnamelist',$i['powers'])) echo 'checked';?>><b>培训报名管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]" value="Trains|addtrainsnamelist"  <?php if(!empty($i['powers']) && in_array('Trains|addtrainsnamelist',$i['powers'])) echo 'checked';?>>新增报名会员</label>
    <input type="hidden" name="powers[]" value="Trains|addtrainsnamelist2" />
    <label><input type="checkbox" name="powers[]" value="Trains|edittrainsnamelist"  <?php if(!empty($i['powers']) && in_array('Trains|edittrainsnamelist',$i['powers'])) echo 'checked';?>>审核报名会员</label>
   <!-- <label><input type="checkbox" name="powers[]" value="Trains|deltrainsnamelist"  <?php// if(!empty($i['powers']) && in_array('Trains|deltrainsnamelist',$i['powers'])) echo 'checked';?>>删除报名会员</label>-->
    </td>
</tr>
<tr><td width="100"><label><input type="checkbox" name="powers[]" value="Notice|index" <?php if(!empty($i['powers']) && in_array('Notice|index',$i['powers'])) echo 'checked';?>><b>网站公告管理</b></label></td>
    <td>
    <label><input type="checkbox" name="powers[]"  value="Notice|addnotice" <?php if(!empty($i['powers']) && in_array('Notice|addnotice',$i['powers'])) echo 'checked';?>>新增公告</label>
    <label><input type="checkbox" name="powers[]" value="Notice|editnotice" <?php if(!empty($i['powers']) && in_array('Notice|editnotice',$i['powers'])) echo 'checked';?>>编辑公告</label>
   <!-- <label><input type="checkbox" name="powers[]" value="Notice|delnotice" <?php //if(!empty($i['powers']) && in_array('Notice|delnotice',$i['powers'])) echo 'checked';?>>删除公告</label>-->
    </td>
</tr>
<tr><td style="border-bottom:none;"></td><td style="border-bottom:none;">
<button type="submit">提交</button> 
</td></tr>
</table>
</form>
</div>
<script type="text/javascript">
$(function(){
	$('tr').find('td:first label').each(function(){
		var ch = $(this).find('input').is(':checked');
		if(ch==false){
			$(this).parent().next().find('input').each(function(){
				$(this).attr('disabled','disabled');
				$(this).parent('label').css('color','#bbb');
				});
		}else{
			 $(this).parent().next().find('input').each(function(){
				$(this).attr('disabled',false);
				
				});
		}
		});
	
		
		
	<?php if($i['powers'][0]=='all'){
	echo '$("input[type=checkbox]").attr("checked",true);';
	}?>
	$('tr').find('td:first label').click(function(){
		var ch = $(this).find('input').is(':checked');
		if(ch==false){
			$(this).parent().next().find('input').each(function(){
				$(this).attr('disabled','disabled');
				$(this).parent('label').css('color','#bbb');
				});
		}else{
			 $(this).parent().next().find('input').each(function(){
				$(this).attr('disabled',false);
				$(this).parent('label').css('color','#666');
				});
		}
	});
});
</script>
<?php include(inc_('foot')); ?>
