<?php
//get函数
function get_($n=null,$url=null,$f=null){
      	if(empty($_SERVER["QUERY_STRING"])) return false;
        
       
      	if(is_null($n)){
        		$get = $_GET;
            if($url!=='url'){
                if(isset($get[conf_('VAR_MODULE')]))     unset($get[conf_('VAR_MODULE')]); 
                if(isset($get[conf_('VAR_CONTROLLER')])) unset($get[conf_('VAR_CONTROLLER')]); 
                if(isset($get[conf_('VAR_ACTION')]))     unset($get[conf_('VAR_ACTION')]); 
            }
            if(count($get)==0) return false;
  	      	foreach ($get as $key => $value) {
    	      		if(!isset($_GET[$key])){
    	      			 return false;
    	      		}
    	      		$get[$key] = isset($f)? f_($value) : $value;
  	      	}
      	}
      	else{
        		if(!isset($_GET[$n])){
        		  	return false;
        		}
        		$get = isset($f)? f_($_GET[$n]) : $_GET[$n];
      	}
      return $get;
}



function err_($str='错误'){
          $back = $_SERVER['HTTP_REFERER'];
	         $box = '<!DOCTYPE html><html><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>错误提示</title></head><body>';
           $box.= '<div style="width:460px; height:auto; background:#fff; padding:20px; line-height:24px; font-family:microsoft yahei;';
           $box.= 'position:absolute; z-index:9999999; left:50%; margin-left:-230px; top:10%; border:dashed 4px #ddd; font-size:16px; color:#555;">';
           $box.= '<p>错误：'. $str .'  <br><br><a href="'.$back.'" style="text-decoration:none; color:blue;">[返回]</a></p>';
           $box.= '</div></body></html>';
           exit($box);
}


function suc_($url,$str){
	       $box = '<!DOCTYPE html><html><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>成功提示</title></head><body>';
           $box.= '<div style="width:460px; height:auto; background:#fff; padding:20px; line-height:24px; font-family:microsoft yahei;';
           $box.= 'position:absolute; z-index:9999999; left:50%; margin-left:-230px; top:10%; border:dashed 4px #ddd; font-size:16px; color:#555;">';
           $box.= '<p>提示：'. $str .'  <br><br><a href="'.$url.'">[确定]</a></p>';
           $box.= '</div></body></html>';
           exit($box);
}


function import_($path,$type){
	   if(strtolower($type)=='controller' || strtolower($type)=='model'){
		   	$type = ucfirst($type);
		   	$c    = explode('/',$path);
		   	$c    = $c[0]. '/' .$type .'/'. $c[1];
	   }
	   else {
	   		$c    = $path;
	   }
	      $file = D_PATH . ucfirst($c) . '.' . $type . '.php';
        $r    = is_file( $file );
        if($r == false) {
       		header('location:'.u_('Web/Index/index'));
       	}

       return require($file);
}


function conf_($n){
      $n = trim($n);
     if(!empty($n)){
       $config = import_('Config/default','config');
       return $config[$n];
     }
      
}


function f_($vars){
      $st = array("%","=","0x","(",")",">","<",".","`","%20",";",'/^(\xef\xbb\xbf)/',"'",'"');
      $en = array("\%","\=","","","","","","","","","","","","");
      $vars = trim(str_replace($st,$en,strip_tags($vars)));
      return $vars;
}


function zh_($str){
   if(!preg_match("/^[\x{4e00}-\x{9fa5}]{2,14}$/u",$str)){
     return false;
   }
   return true;
}

function m_($model){
      $module = get_(conf_('VAR_MODULE'))==false ? conf_('DEFAULT_MODULE') : get_(conf_('VAR_MODULE'));
      $path = D_PATH.ucfirst($module).'/Model/'.ucfirst($model).'.Model.php';
      $file = file_exists($path);
      if(!$file)
        err_('类文件不存在');
      require $path;
      $get_model = $model.'Model'; 
      if(!class_exists($get_model))
        err_('不存在的类');
      return new $get_model;
}



function session($name,$val=null){
       $name = trim(f_($name));
       // 
       if(isset($val))                              $val  = trim(f_($val));
       //
       if(empty($name))                             return false;
       //
       if(!isset($_SESSION))                        session_start();
	   if(0===strpos($name,'[')){
		   if('[pause]'==$name){ // 暂停session
			   session_write_close();
		   }elseif('[start]'==$name){ // 启动session
			   session_start();
		   }elseif('[destroy]'==$name){ // 销毁session
			   $_SESSION =  array();
			   session_unset();
			   session_destroy();
		   }elseif('[regenerate]'==$name){ // 重新生成id
			   session_regenerate_id();
		   }
	   }
       //
       if(!isset($_SESSION[$name]) && !isset($val)) return false;
       //
       if($val=='null'){
         unset($_SESSION[$name]);

       }
       elseif(isset($val) && $val!=='null'){
          $_SESSION[$name] = $val;
       }                           
       else {
          $result = $_SESSION[$name];
          return $result;
       }
}


function u_($path,$arr=null){
       $path = explode('/',$path);
       $count= count($path);
       $ur   = 'index.php';
       $DM   = conf_('VAR_MODULE');
       $DC   = conf_('VAR_CONTROLLER');
       $DA   = conf_('VAR_ACTION');

       //格式化uri
       switch ($count) {
         case 0:
           $uri = $ur.'?'.$DM.'='.MODULE_NAME.'&'.$DC.'='.CLASS_NAME.'&'.$DA.'='.ACTION_NAME;
           break;
         case 1:
           $uri = $ur.'?'.$DM.'='.MODULE_NAME.'&'.$DC.'='.CLASS_NAME.'&'.$DA.'='.$path[0];
           break;
         case 2:
           $uri = $ur.'?'.$DM.'='.MODULE_NAME.'&'.$DC.'='.ucfirst($path[0]).'&'.$DA.'='.$path[1];
           break;
         case 3:
           $uri = $ur.'?'.$DM.'='.ucfirst($path[0]).'&'.$DC.'='.ucfirst($path[1]).'&'.$DA.'='.$path[2];
           break;
         default:
           err_('错误的参数格式');
           break;
       }
      if(isset($arr) && is_array($arr) && count($arr) > 0){
        foreach ($arr as $key => $value) {
          $uri.='&'.$key.'='.$value;
        }
      }
      return $uri;
}


function inc_($file){
	  $file = D_PATH.ucfirst(MODULE_NAME).'/Dviews/Common/'.$file.'.php';
	  if(!file_exists($file))
	  err_('无法加载文件');
	  return $file;
	}


function getip() { 
    if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")) 
      $ip = getenv("HTTP_CLIENT_IP"); 
    else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown")) 
      $ip = getenv("HTTP_X_FORWARDED_FOR"); 
    else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")) 
      $ip = getenv("REMOTE_ADDR"); 
    else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")) 
      $ip = $_SERVER['REMOTE_ADDR']; 
    else $ip = "unknown"; 
    return ($ip);
} 
 
function p_($arr){
   echo '<pre>';
   var_dump($arr);
   exit;
}

function n_($str,$arr=array()){
  if(session('userid')==1) return true;
  if(empty($arr)) return false;
  if(is_array($arr)){
      if(in_array($str, $arr)){
        return true;
      }else{
        return false;
      }
  }
}

function _404(){
   header("HTTP/1.1 404 Not Found");
   header('location:/404.html');
   exit;
}

function cle($str){
  return trim(strip_tags($str));

}

function strcut($str,$len){
  $str = strip_tags($str);
  $str = f_($str);
  $len = (int)$len;
  $strlen = mb_strlen($str,'utf8');
  if($strlen > $len){
    $cutstr = mb_substr($str, 0,(int)$len,'utf8');
    return $cutstr.'..';
  }
  return $str;
}

function isMid($vStr){
    $vCity = array(
        '11','12','13','14','15','21','22',
        '23','31','32','33','34','35','36',
        '37','41','42','43','44','45','46',
        '50','51','52','53','54','61','62',
        '63','64','65','71','81','82','91'
    );
 
    if (!preg_match('/^([\d]{17}[xX\d]|[\d]{15})$/', $vStr)) return false;
 
    if (!in_array(substr($vStr, 0, 2), $vCity)) return false;
 
    $vStr = preg_replace('/[xX]$/i', 'a', $vStr);
    $vLength = strlen($vStr);
 
    if ($vLength == 18)
    {
        $vBirthday = substr($vStr, 6, 4) . '-' . substr($vStr, 10, 2) . '-' . substr($vStr, 12, 2);
    } else {
        $vBirthday = '19' . substr($vStr, 6, 2) . '-' . substr($vStr, 8, 2) . '-' . substr($vStr, 10, 2);
    }
 
    if (date('Y-m-d', strtotime($vBirthday)) != $vBirthday) return false;
    if ($vLength == 18)
    {
        $vSum = 0;
        for ($i = 17 ; $i >= 0 ; $i--)
        {
            $vSubStr = substr($vStr, 17 - $i, 1);
            $vSum += (pow(2, $i) % 11) * (($vSubStr == 'a') ? 10 : intval($vSubStr , 11));
        }
 
        if($vSum % 11 != 1) return false;
    }
 
    return true;
}

function getday_($time){
  if(stripos($time,'-')){
  $time = strtotime($time);
  }
  elseif(!is_numeric($time)){
    return false;
  }
  $day = date("l",$time);
  $arr = array('Sunday'=>'周日','Monday'=>'周一','Tuesday'=>'周二','Wednesday'=>'周三','Thursday'=>'周四','Friday'=>'周五','Saturday'=>'周六');
  return $arr[$day];
}