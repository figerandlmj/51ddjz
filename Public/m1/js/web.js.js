// JavaScript Document

function trim(str) {
            str = str.replace(/<\/?[^>]*>/g,''); //去除HTML tag
            str = str.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
            str = str.replace(/(^[\s\u3000]*)|([\s\u3000]*$)/g,"");//去掉&nbsp;
            return str;
    }
	
//匹配中文 数字 字母 下划线       
function checkStr(str) {
           var reg = /^(?!_)(?!.*?_$)[a-zA-Z0-9_\u4e00-\u9fa5]+$/;
			if (!reg.test(str)) {
		       return false;
			}
			return true;
        }
//数字 字母 下划
function checkNS(s){
	var reg = /^[a-zA-Z0-9_]{5,20}$/;              //正则表达式
	if(!reg.test(s)){
			 return false;
		}
	return true;
	}


//过滤特殊字符
function checkChar(id)
{
   var iu, iuu, regArray=new Array("◎","■","●","№","↑","→","↓"+
   "!","@","#","$","%","^","&","*","(",")","_","-","+","=","|","","[","]","？","~","`"+
   "!","<",">","‰","→","←","↑","↓","¤","§","＃","＆","＆","＼","≡","≠"+
   "≈","∈","∪","∏","∑","∧","∨","⊥","‖","‖","∠","⊙","≌","≌","√","∝","∞","∮"+
   "∫","≯","≮","＞","≥","≤","≠","±","＋","÷","×","/","Ⅱ","Ⅰ","Ⅲ","Ⅳ","Ⅴ","Ⅵ","Ⅶ","Ⅷ","Ⅹ","Ⅻ","一","二"+
   "╄","╅","╇","┻","┻","┇","┭","┷","┦","┣","┝","┤","┷","┷","┹","╉","╇","【","】"+
   "三","四","五","六","七","八","九","十","①","②","③","④","⑤","⑥","⑦","⑧","⑨","⑩","┌","├","┬","┼","┍","┕","┗","┏","┅","—"+
   "〖","〗","←","〓","☆","§","□","‰","◇","＾","＠","△","▲","＃","℃","※",".","≈","￠");
   iuu=regArray.length;
   var obj=document.getElementById(id);
   if(obj.value=="")
   {
     alert("用户名不能为空");
      obj.focus();
      return false;
   }
   for(iu=1;iu<=iuu;iu++)
   {  
      if(regArray[iu] !="")
       {
          if (obj.value.indexOf(regArray[iu])!=-1)
           {
             alert("注册名不可以包含：" + regArray[iu]);
             document.Gforms.username.focus();
             return false;
          }
        }
   }
   return true;             
}

//判断如期
function isValidDate(s){ 
    var reDate = "/(?:[1-9]|0[1-9]|[12][0-9]|3[01])/(?:[1-9]|0[1-9]|1[0-2])/(?:19d{2}|20d{2})/"; 
    return reDate.test(s); 
}

//邮箱
function testemail(mail){
          var temp = mail;
          //对电子邮件的验证
          var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
           if(myreg.test(temp)){
                return true;
           }
		   return false;
        }