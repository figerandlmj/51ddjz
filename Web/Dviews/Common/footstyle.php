<div class="picture_style">
        <div class="title" style="display:none;">
            <span>兼职风采</span>
            <ul class="arrow">
                <a class="og_prev" href="javascript:;"><li><</li></a>
                <a class="og_next " href="javascript:;"><li>></li></a>
            </ul>
        </div>
        <div class="box">
            <img src="<?php echo TS;?>m1/images/part_time_style.png" border=0 alt="兼职风采" style="float:left;width:177px;height:155px;">
            <!-- bcty365提示：特效DIV开始 -->
            <div id="Marquee_x">
                <ul>
                    <li>

                         <?php if(!empty($ban)){
                 $bani=0; 
                  foreach($ban as $bk=>$bv){

                    if($bv['type'] == 2){?>

                  <div>
                    <a >
                    <img src="<?php echo $bv['banimg']?>"/>
                    <span style="text-align:center;"><?php echo $bv['bantitle']?></span>
                    </a>
                  </div>

             <?php $bani++;
           }}
           }?>
                    </li>
                </ul>
            </div>
           
        </div>
</div>
<script type="text/javascript">
$(function(){
    $('#Marquee_x').jcMarquee({ 'marquee':'x','margin_right':'10px','speed':20 });
    // DIVCSS5提示：10px代表间距，第二个20代表滚动速度
});
;(function($){
    $.fn.jcMarquee = function(options) {
        var defaults = {
            'marquee':'x',
            'margin_bottom':'0',
            'margin_right':'0',
            'speed':'10'
        };
        var options = $.extend(defaults,options);
        return this.each(function() {
            var $marquee = $(this),
                $marquee_scroll = $marquee.children('ul');
            $marquee_scroll.append("<li class='clone'>"+"</li>");
            $marquee_scroll.find('li').eq(0).children().clone().appendTo('.clone');
            var $marquee_left = $marquee_scroll.find('li');
            if (options.marquee == 'x') {
                var x = 0;
                $marquee_scroll.css('width','1000%');
                $marquee_left.find('div').css({'margin-right':options.margin_right});
                $marquee_left.css({'margin-right':options.margin_right});
                function Marquee_x(){ 
                    $marquee.scrollLeft(++x);
                    _margin = parseInt($marquee_left.find('div').css('margin-right'));
                    if(x==$marquee_left.width()+_margin) { x = 0 };
                };
                var MyMar=setInterval(Marquee_x,options.speed); 
                $marquee.hover(function(){
                    clearInterval(MyMar);
                },function(){
                    MyMar=setInterval(Marquee_x,options.speed);
                });
            }
            if (options.marquee == 'y') {
                var y = 0;
                $marquee_scroll.css('height','1000%');
                $marquee_left.find('div').css('margin-bottom',options.margin_bottom);
                $marquee_left.css('margin-bottom',options.margin_bottom);
                function Marquee_y(){ 
                    $marquee.scrollTop(++y);
                    _margin = parseInt($marquee_left.find('div').css('margin-bottom'));
                    if(y==$marquee_left.height()+_margin) { y = 0 };
                };
                var MyMar=setInterval(Marquee_y,options.speed); 
                $marquee.hover(function(){
                    clearInterval(MyMar);
                },function(){
                    MyMar=setInterval(Marquee_y,options.speed);
                });
            };
        });
    };
})(jQuery)
</script>