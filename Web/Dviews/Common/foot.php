</div>
<div class="copyr">
<!--	
<?php foreach($info['pages'] as $p){?>
<a href="<?php echo u_('Page/index',array('id'=>$p['id']))?>" target="_blank"><?php echo $p['title'];?></a>|
<?php }?>
-->
<span>
<a href="http://www.miibeian.gov.cn" style="color:#000;" target="_blank">网站备案号: 皖ICP备15007616（1/3）</a>
<?php echo $info['copyright'];?>
</span>
<ul style="width:710px;height:60px;margin:0 auto;margin-top:20px;padding-left: 30px;">
	<li><a href="http://www.mps.gov.cn/" target="_blank" style="padding:0px!important;"><img src="<?php echo TS;?>m1/images/safety_ record01.png" style="width:120px;height:50px;padding-right:20px;"/></a></li>
	<li><a href="http://www.ahaic.gov.cn/" target="_blank" style="padding:0px!important;"><img src="<?php echo TS;?>m1/images/safety_ record03.png" style="width:120px;height:50px;padding-right:20px;"/></a></li>
	<li><a href="http://net.china.com.cn"  target="_blank" style="padding:0px!important;"><img src="<?php echo TS;?>m1/images/safety_ record02.png" style="width:120px;height:50px;padding-right:20px;"/></a></li>
	<li><a href="http://trust.360.cn/"  target="_blank" style="padding:0px!important;"><img src="<?php echo TS;?>m1/images/safety_ record04.png" style="width:120px;height:50px;padding-right:20px;"/></a></li>
	<li><a href="http://www.knet.cn/"  target="_blank" style="padding:0px!important;"><img src="<?php echo TS;?>m1/images/safety_ record05.png" style="width:120px;height:50px;padding-right:20px;"/></a></li>
</ul>
</div>
<script type="text/javascript">
$(window).resize(function(){
	var h_doc = $(document).height();
    var h_foo = h_doc-130;
    $('.copyr').offset({top:h_foo,left:0});
});
</script>
</body>
</html>