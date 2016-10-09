<!-- 备忘弹框 -->
<style type="text/css">
#pop{background:#fff;width:300px; height:282px;font-size:12px;position:fixed;right:0;bottom:0;} 
#popHead{line-height:32px;background:#fdd;border-bottom:1px solid #e0e0e0;font-size:12px; 
padding-left:10px;} 
#popHead span{font-size:14px;color:#666;line-height:32px;height:32px;} 
#popHead #popClose{position:absolute;right:10px;} 
#popHead a#popClose:hover{color:#f00;cursor:pointer;}
#popContent{text-align: center;line-height: 40px;} 
</style>
<div id="pop" style="display:none;"> 
      <div id="popHead"> 
        <a id="popClose" title="关闭">关闭</a> 
        <span>备忘提醒</span> 
    </div> 
    <div id="popContent" style="width:300px;height:250px;overflow-y:scroll;">
    </div> 
</div> 
<!-- end备忘弹框 -->
<script type="text/javascript">
/////////////////////导航///S////////////////////////
 //左侧菜单显示
function locations(id){
	setCookie('ulid',id,1);
	var menu = document.getElementById('menu');
	var uls  = menu.getElementsByTagName('ul');
	for(var i=0;i<uls.length;i++){
		uls[i].style.display='none';
		}
	document.getElementById(getCookie('ulid')).style.display="block";
	}
/////////////////////右部宽度///S////////////////////////	
  var r = document.getElementById('right');
  var w = screen.width;
  r.style.width = (w-273)+'px';

/////////////////////JS COOKIE///S////////////////////////
function getCookie(c_name)
{
if (document.cookie.length>0)
  {
  c_start=document.cookie.indexOf(c_name + "=");
  if (c_start!=-1)
    { 
    c_start=c_start + c_name.length+1;
    c_end=document.cookie.indexOf(";",c_start);
    if (c_end==-1) c_end=document.cookie.length;
    return unescape(document.cookie.substring(c_start,c_end));
    } 
  }
return "";
}

function setCookie(c_name,value,expiredays)
{
var exdate=new Date();
exdate.setDate(exdate.getDate()+expiredays);
document.cookie=c_name+ "=" +escape(value)+((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
}
/////////////////////JS COOKIE///E////////////////////////
</script>
<script type="text/javascript">
$.ajax({
  type: "POST",
  url: "<?php echo u_('Company/noticememorajax'); ?>",
  dataType: "json",
  success: function(result){
    console.log(result);
    if(result.length !=0){
      $('#pop').show();
      // $("#popContent").text(result[0]['info']);
      for(var i=0;i<result.length;i++){
      $("#popContent").append("<p>企业名称："+result[i]['cname']+"</p><p>备忘内容："+result[i]['info']+"</p>");
        // $(".company_name").append(result[i]['cname']);
        // $(".content").append(result[i]['info']);
      }
    }
  }
});
$("#popClose").click(function(){
  $('#pop').hide();
});
</script>
</body>
</html>