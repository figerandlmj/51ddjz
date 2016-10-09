<div class="right_content">
<div class="about">
      <div class="title">
      	<span style="float:left;">最新公告</span>
        <a href="<?php echo u_('Notice/index')?>" target="_blank">更多<font class="F">＞</font></a>
      </div>
      <ul>
         <?php foreach($niclist as $v){ ?>
         <li>
            <a href="<?php echo u_('Notice/content',array('id'=>$v['id']))?>" target="_blank"><?php echo $v['title']?></a>
            <p><?php echo $v['desc']?></p>
         </li>
         <?php }?>
      </ul>
</div>
<div class="about" style="margin-top:20px;margin-bottom:20px;">
      <div class="title title02">
         <span style="float:left;">兼职动态</span>
      </div>
      <div class="scrollNews" >
        <ul>
                   <?php foreach($member_job as $v){ ?>
                   <li>
                      <a><?php echo $v['regtime']?></a>
                      <p><?php echo $v['realname'] . ' 刚刚预定了' . $v['job']; ?></p>
                   </li>
                   <?php }?>
          </ul>
     </div>
        
</div>
<script type="text/javascript">
$(function(){
        var $this = $(".scrollNews");
  var scrollTimer;
  $this.hover(function(){
     clearInterval(scrollTimer);
   },function(){
     scrollTimer = setInterval(function(){
       scrollNews( $this );
     }, 2000 );
  }).trigger("mouseleave");
});
function scrollNews(obj){
   var $self = obj.find("ul:first"); 
   var lineHeight = $self.find("li:first").height(); //获取宽度，向上滚动则需要获取高度.height()
   $self.animate({ "marginTop" : -lineHeight +"px" }, 600 , function(){ //向左滚动，向上滚动则需要改为marginTop,其他方向类似，下同
         $self.css({marginTop:0}).find("li:first").appendTo($self); //appendTo能直接移动元素
   })
}
</script> 
</div>

