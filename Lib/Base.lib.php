<?php defined('DLIVE') or exit();


class Base{

   
    private $link;    
    private $database;
    private $query;
    var     $result;
    var     $pfix;
    var 	$affnum;
    private $table;

	public function __construct(){
         $this->affnum = null ;
	}
    
  
	protected function linkDB(){
            $host = conf_('DB_HOST');
            $user = conf_('DB_USER');
            $pass = conf_('DB_PASS');
            $name = conf_('DB_NAME');
            $port = conf_('DB_PORT');
            $this->pfix=conf_('DB_PFIX');

            $this->link = mysql_connect($host.':'.$port,$user,$pass);
            if(!$this->link) 
            	  err_('数据库服务器连接失败！');
            if(!$this->database = mysql_select_db($name))
                err_('数据库连接失败！');
            mysql_query('set names utf8');
	}
    
  //原生查询
	protected function query($sql_str=''){
           $this->linkDB();
           $str          = trim($sql_str);
           $this->result = false; 
		       if(empty($str))
           return false;
          $this->affnum = $this->gettotal($str);
  
           	$this->query   = mysql_query($str , $this->link);
          if(!$this->query) {

           	  return false; 
              }
              $data = array();
              while($fetch   = mysql_fetch_array($this->query,MYSQL_ASSOC)){
                   $data[]   = $fetch;
               }
           
             $this->result = $data;
       
	           $this->freeDB();
	           $this->closeDB();
             return $this->result;
	}

  public function select($table,$where=null,$limit=null,$order=null){
          $this->linkDB();
          $this->table =  $table;
          if(isset($where)){
            $where = " WHERE ".$this->wheres($where);
            if(!$where) return false;
          }else{
            $where='';
          }
          $order = isset($order) ? 'ORDER BY '.$order : 'ORDER BY id ASC';
          $limit = isset($limit) ? 'LIMIT '.$limit : '';
          $qstr = 'SELECT * FROM '.f_(PFIX.$this->table).$where.' '.$order.' '.$limit;
          $this->affnum = $this->gettotal($qstr);
          $this->query = mysql_query($qstr,$this->link);
          if(!$this->query){
          return false;
         }
        
          $data = array();
          while($fetch   = mysql_fetch_array($this->query,MYSQL_ASSOC)){
                   $data[]   = $fetch;
               }

           
             $this->result = $data;

          
             $this->freeDB();
             $this->closeDB();
             return $this->result;
  }

  public function uselect($table,$fields,$wheres,$limit=null){
          $this->linkDB(); 
          $order = isset($order) ? $order : 'id DESC';
          $this->table  = explode(',',$table);
          $fields = explode(',',$fields);
          $wheres = explode(',',$wheres);
          $where  = " WHERE ".PFIX.$this->table[0].'.'.$wheres[0]."=".PFIX.$this->table[1].'.'.$wheres[1];
          $fieldstr  = PFIX.$this->table[0].'.'.$fields[0].','.PFIX.$this->table[1].'.'.$fields[1];
          $qstr  = "SELECT ".$fieldstr." FROM ".f_(PFIX.$this->table[0]).",".f_(PFIX.$this->table[1]).$where." LIMIT $limit";
          $this->affnum = $this->gettotal($qstr);
          $this->query = mysql_query($qstr,$this->link);
          if(!$this->query) return false;

          while($fetch   = mysql_fetch_array($this->query,MYSQL_ASSOC)){
                   $data[]   = $fetch;
               }
            
             $this->result = $data;
         
             $this->freeDB();
             $this->closeDB();
             return $this->result;
  }

  protected function update($table,$data=array(),$field=array()){
        $this->linkDB();
    
        $str='';
        foreach ($data as $key => $value) {
          $str.='`'.$key."`=".$this->choo($value).",";
        }
        $str = rtrim($str,',');
        if(empty($str)) return false;
        $where = $this->wheres($field); 
        if(!$where) return false;
        $qstr = "UPDATE ".PFIX.$table." SET ".$str." WHERE ".$where;
        $up = mysql_query($qstr,$this->link);
        if($up){
            $aff =  mysql_affected_rows();
            $this->closeDB();
            return $aff;
        }
        else{
           
            $this->closeDB();
            return false;
        }
  }

  protected function delete($table,$field=array()){
        $this->linkDB();
        
        $where = $this->wheres($field);
        if(!$where) return false;
        $up = mysql_query("DELETE FROM ".PFIX.$table." WHERE ".$where,$this->link);
        if($up){
            $aff =  mysql_affected_rows();
            $this->closeDB();
            return $aff;
        }
        else{
            $this->closeDB();
            return false;
        }
  }

  protected function add($table,$data=array()){
         $this->linkDB();
         $this->table =  $table;
         $strKey='';
         $strVal='';
         foreach ($data as $key => $value) {
              $strKey.='`'.$key.'`,';
              $strVal.=is_numeric($value)? $value."," : "'".$value."',";
         }
         $strKey = rtrim($strKey,',');
         $strVal = rtrim($strVal,',');
         $qstr = "INSERT INTO ".PFIX.$this->table."(".$strKey.") VALUES (".$strVal.")";
        
         $insert = mysql_query($qstr);
         if($insert){
            $insert_id = mysql_insert_id();
            $this->closeDB();
            return $insert_id;
         }
         else {
          
          return false;
        }

  }
 
   protected function getcount($table,$where=null){

           $this->linkDB();
              $this->table = $table;
           if(isset($where)){
            $where =" WHERE " .$this->wheres($where);
            if(!$where) return false;
           }else{
            $where='';
           }
           $counts = mysql_query('SELECT COUNT(id) FROM '.PFIX.f_($this->table).$where);
           if(!$counts)
           return false;
           return (int)mysql_result($counts, 0);
   }


   protected function getone($table,$field){
          $this->linkDB();
           $this->table = $table;
          $where = $this->wheres($field);
          if(!$where) return false;
          $qstr = "SELECT * FROM ".f_(PFIX.$this->table)." WHERE ".$where." LIMIT 0,1";
          $this->query = mysql_query($qstr);
          if(!$this->query){
          //exit(mysql_error());
          return false;
          }
          $this->result = mysql_fetch_assoc($this->query);
          return $this->result;
   }

 
   private function gettotal($str){
      $str    = explode('FROM', $str);
      $str[1] = explode('ORDER', $str[1]);
      $str[1] = $str[1][0];
      $str[1] = explode('LIMIT', $str[1]);
      $nstr   = 'SELECT COUNT(*) FROM '.$str[1][0];
      $nstr=trim($nstr);

      $qr     = mysql_query($nstr,$this->link);
      if($qr){
     
        $rsa = mysql_fetch_row($qr);
        return (int)$rsa[0];
      }
      else{
        return false;
      }
   }

   
   protected function getfield($table,$field,$where,$order=null){
          $this->linkDB();
          $this->table = $table;
          $where = $this->wheres($where);
          if(!$where) return false;

          if(isset($order)){
            $order = " ORDER BY $order";
          }
          else{
            $order = '';
          }
          $this->query = mysql_query("SELECT ".$field." FROM ".f_(PFIX.$this->table)." WHERE ".$where.$order." LIMIT 0,1",$this->link);
          if(!$this->query){
         
            return false;
          }
          $this->result = mysql_fetch_assoc($this->query);
          return $this->result;
   }



  private function wheres($wheres){
         $str = '';
         if(empty($wheres)) return false;
         if(!is_array($wheres)) return false;
         foreach ($wheres as $key => $value) {
                  $t = explode(" ", $key);
                   if(!isset($t[1]) || empty($t[1]))
                    $t[1] = 'eq';
                   else  
                    $t[1] = f_($t[1]);
                  switch ($t[1]) {
                    case 'gt':
                    if(!is_numeric($value)) return false;
                    $str.= $t[0].">".$value." AND ";
                      break;
                    case 'lt':
                    if(!is_numeric($value)) return false;
                    $str.= $t[0]."<".$value." AND ";
                      break;
                    case 'eq':
                    $str.= $t[0]."=".$this->choo($value)." AND ";
                      break;
                    case 'nq':
                    $str.= $t[0]."!=".$value." AND ";
                      break;
                    case 'ge':
                    if(!is_numeric($value)) return false;
                     $str.= $t[0].">=".$value." AND ";
                      break;
                    case 'le':
                     if(!is_numeric($value)) return false;
                     $str.= $t[0]."<=".$value." AND ";
                      break;
                    case 'in':
                     $str.= $t[0]." IN (".$value.") AND ";
                      break;
                    case 'notin':
                     $str.= $t[0]." NOT IN (".$value.") AND ";
                      break;
                    case 'like':
                     $str.= $t[0]." LIKE '%".trim($value,"'")."%' AND ";
                      break;
                     case 'or':
                     $str.= $t[0]."=".$this->choo($value)." OR ";
                      break;
                    case 'between':
                     $value= explode(",", $value);
                     $str.= $t[0]." BETWEEN ".$this->choo($value[0])." AND ".$this->choo($value[0])." AND ";
                      break;
                    default:
                      return false;
                      break;
                  }
                 } 
        return rtrim(rtrim($str),'AND');     
  }
  
   

   private function freeDB(){
   	       @ mysql_free_result($this->query);
   }
   

   private function closeDB(){
           @ mysql_close($this->link); 
   }
   
   
   public function __call($name,$arg){
   	      err_('无法访问'.$name);
   }
   
   private function choo($var){
      if(is_numeric($var)) return $var;
      else return "'".$var."'";
   }
 
   protected function display($path=null,$data=null){
          $path   =trim($path);
          if(empty($path)){
            
             $tpl = D_PATH.ucfirst(MODULE_NAME).'/'.conf_('TEMPLATE').'/'.ucfirst(CLASS_NAME).'/'.ACTION_NAME.'.php';
          }
          else{
            $file_s = explode('/', $path);
            $c = count($file_s);
            switch ($c) {
          
              case 1:
                $tpl = D_PATH.ucfirst(MODULE_NAME).'/'.conf_('TEMPLATE').'/'.ucfirst(CLASS_NAME).'/'.strtolower($path).'.php';
                break;
             
              case 2:
               if(!isset($file_s[1]) || empty($file_s[1])){
               $file_s[1] = ACTION_NAME;
               }
                $tpl = D_PATH.ucfirst(MODULE_NAME).'/'.conf_('TEMPLATE').'/'.ucfirst($file_s[0]).'/'.strtolower($file_s[1]).'.php';
           
              case 3:
               if(!isset($file_s[2]) || empty($file_s[2])){
               $file_s[2] = ACTION_NAME;
               }
                $tpl = D_PATH.ucfirst($file_s[0]).'/'.conf_('TEMPLATE').'/'.ucfirst($file_s[1]).'/'.strtolower($file_s[2]).'.php';
                break;
            }
          }
          $file_c = is_file($tpl);
   
          if(!$file_c){ err_('模板文件不存在');}
           $Spowers = array();
           if($this->getpowers()){
               $Spowers = $this->getpowers();
               $Spow = isset($Spowers[2])==false ? array() : $Spowers[2];
           }

             
          if(is_array($data) && count($data) > 0){
               foreach ($data as $key => $value) {
                         $$key = $value;
                        }
          }
          require($tpl);
   }
   

private function getpowers(){

$pnavs = array(
'Index'  =>'系统管理',
'Admins' =>'管理员',
'Page'   =>'页面信息',
'Member' =>'会员管理',
'Company'=>'企业管理',
'School' =>'学校管理',
'Jobs'   =>'兼职管理',
'Trains' =>'活动培训',
'Notice' =>'公告管理',
);
$cnavs = array(
'Index/site_index'  =>'站点信息',
'Admins/index'      =>'管理员列表',
'Page/index'        =>'页面管理',
'Member/index'      =>'注册会员管理',
'Member/search'     =>'会员详细搜索',
'Member/counts'     =>'学校新进会员统计',
'Member/membergrade'=>'会员等级管理',
'Company/index'     =>'企业信息管理',
'Company/comptype'  =>'企业类型管理',
'Company/visit'     =>'企业拜访记录',
'Company/memor'     =>'企业拜访备忘',
'Company/blist'     =>'企业黑名单管理',
'Company/area'      =>'企业区域管理',
'Company/industry'  =>'企业行业管理',
'Company/counts'    =>'企业合作数据统计',
'School/index'      =>'大学管理',
'School/addschool'  =>'添加大学',
'School/major'      =>'专业管理',
'Jobs/index'        =>'兼职信息管理',
'Jobs/addjobs'      =>'添加兼职信息',
'Trains/index'      =>'活动培训列表',
'Trains/addtrains'  =>'添加活动培训',
'Notice/index'      =>'网站公告管理',
'Notice/addnotice'  =>'添加网站公告',


);
     if(session('loginOr')!==false && session('userid')!='' && session('userid')!=1){
             $g = $this->getfield('admins','powers',array('id'=>session('userid')));
             if($g){
                $g = explode(',', $g['powers']);
                $pnav = array();
                $cnav = array();
                $iinav= array();
                foreach ($g as $k => $v) {
                  if(stripos($v,'|add')==false && stripos($v,'|edit')==false && stripos($v,'|del')==false && stripos($v,'_u')==false && stripos($v,'attr')==false){
                     $n = explode('|', $v);
                     if(stripos($v,'|index')){
                          $pnav[] = $n[0];
                          $cnav[] = $n[0].'|index';
                     }else{
                          $cnav[] = $v;
                     }
                  }

                  if(stripos($v,'|index')==false){
                    $iinav[] = $v;
                  }

                }
              
               $lnav  =array();
               $lmenu =array();
               $libtn =array();
               

               foreach ($pnavs as $k => $v) {
                  if(in_array($k, $pnav)){
                       $lnav[$k] = $v;
                  }
               }
            
               foreach ($cnavs as $ks => $vs) {
                  $n = explode('/', $ks);
                  $k = str_replace('/', '|', $ks);
                  if(in_array($k, $cnav)){
                       $lmenu[$n[0]][$ks] = $vs;
                  }
               }
             
               if(!empty($iinav)){
                 
                         $libtn = $iinav;
                  
               }
               
               $r = array(0=>$lnav,1=>$lmenu,2=>$libtn);
               return $r;

             }
         
          }
          if(session('loginOr')!==false && session('userid')!='' && session('userid')==1){
               $lmenu =array();
               foreach ($cnavs as $ks => $vs) {
                  $n = explode('/', $ks);
                       $lmenu[$n[0]][$ks] = $vs;
               }
               $r = array(0=>$pnavs,1=>$lmenu);
               return $r;
          }
        return false;
   }
  
  
   protected function fvar($data,$type){
         switch ($type) {
           case 'url':
              return $this->chUrl($data);
              break;
           case 'no' :
              return $this->noempty($data);
              break;
           case 'mail':
              return $this->chMail($data);
              break;
           case 'html':
              return $this->html2($data);
              break;
           case 'tel':
              return $this->tel($data);
              break;
           case 'mob':
              return $this->mob($data);
              break;
           case 'chup':
              return $this->chup($data);
              break;
           default:
              return false;
              break;
         }
         
   }


   protected function chUrl($url){
         return filter_var($url,FILTER_VALIDATE_URL);
   }
  
   protected function chMail($mail){
         return filter_var($mail,FILTER_VALIDATE_EMAIL);
   }

   protected function html2($str){
         $str = trim($str);
         return htmlspecialchars($str);

   }
  
   protected function tel($tel){
         $chstr = '/^0\d{2,3}(\-)?\d{7,8}$/';
         if(preg_match($chstr, $tel)){
          return true;
         }
         else{
          return false;
         }
   }
 
   protected function mob($mob){
         $chstr = '/^(1(([35][0-9])|(47)|(77)|[8][0123456789]))\d{8}$/';
          if(preg_match($chstr, $mob)){
          return true;
         }
         else{
          return false;
         }
   }
 
   protected function chup($chup){
         $chstr = '/[0-9a-zA-Z_]/';
         if(preg_match($chstr, $chup) && strlen($chup) > 4){
          return true;
         }
         else{
          return false;
         }
   }

  protected function pass2($pass){
          $pix  = 'Dlive_';
          $pass = md5(md5($pix.$pass));
          $pass = substr($pass,7,28);
          return $pass;
  }
}