<?php defined('DLIVE') or exit();

//分页类

class Page extends Base{
    var $nums;   //总条数
    public $length; //每页数目
    public $p;      // 当前页
    var $ps;     //总页数
    public $data;
    public $show;
    
    public function __construct(){
	     
          $this->length = isset($len) ? $len : conf_('PAGE_LEN');
          $this->p = 1;
       
    }

   
    public function total($t){
         $this->nums   = $t;
          if(empty($this->nums)){
                return false;
          }
    }
    public function curP($p=null){
         if(isset($p) && is_numeric($p)){ 
            $this->p = $p;
          }else{
            $this->p = 1;
          }
          return ($this->p-1)*$this->length;
    }

    public function lenP($len=null){
         $this->length = isset($len) ? $len : conf_('PAGE_LEN');
            return $this->length;
    }
  
    private function pUrl($p){
    	$url   = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
    	$urls  = parse_url($url);
    	//$urls['path'] = '/index.php';
    	$urls['path'] = 'index.php';
    	if(!isset($urls['query'])){
    		$urls['query'] = 'm='.MODULE_NAME.'&c='.CLASS_NAME.'&a='.ACTION_NAME;
    	}
    	parse_str($urls['query'],$uris);
    	$uris['p'] = $p;
    	$urls['query'] = http_build_query($uris);
    	if(isset($urls['port'])){ 
    		$urls['port'] = ':'.$urls['port'];
    	}else{ 
    		$urls['port'] = '';
    	}
//    	$reUrl = 'http://'.$urls['host'].$urls['port'].$urls['path'].'?'.$urls['query'];
    	$reUrl = $urls['path'].'?'.$urls['query'];
    	return $reUrl;

    }

    private function pdata($data){ 
        $pss = $this->p == 1 ? 0 : ($this->p-1)*$this->length;
    	return array_slice($data, $pss,$this->length);
    }

    public function showP($total){
        $this->nums   = $total;
        if(empty($this->nums)){
            return false;
        }
        $this->ps     = ceil($this->nums / $this->length);

        $x     = array();
        $pLen  = $this->ps < 5 ? $this->ps : 5;
        $pStart= $this->p > 2 ? $this->p-2 : 1 ;
         if(($this->p+5) >= $this->ps && $this->p > 2){
                $pStart = $aaaa = ($this->ps - 4) > 0 ? $this->ps - 4 : 1;
            }
        $str   = '<div class="ipage"><div class="w">';
    
        $x['f'] = $this->pUrl(1);
        $str.='<span class="f"><a href="'.$x['f'].'">首页</a></span>';
 
        if($this->p > 7 && $this->ps > 7){ 
 			$x['p5'] = $this->pUrl($this->p-5);
 			$str.='<span class="ps5"><a href="'.$x['p5'].'">前5页</a></span>';

        }
 
        if($this->p > 1){ 
        	$x['p'] = $this->pUrl($this->p-1);
        	$str.='<span class="p"><a href="'.$x['p'].'">上一页</a></span>';
        }
       
        for($i = 1; $i <= $pLen; $i++){ 
           
        	$x[$i] = $this->pUrl($pStart);
        	$cl = 'p'.$pStart;
        	if($pStart == $this->p){ 
        		$x[$i] = 'javascript:viod';
        		$cl = 'on';
        	}
        	$str.='<span class="'.$cl.'"><a href="'.$x[$i].'">'.$pStart.'</a></span>';
        	$pStart++;

        }
    
        if($this->p < $this->ps){ 
        	$x['n'] = $this->pUrl($this->p+1);
        	$str.='<span class="n"><a href="'.$x['n'].'">下一页</a></span>';
        }

       
        if($this->ps > 7 && $this->p < ($this->ps - 7)){ 
        	$x['n5'] = $this->pUrl($this->p+3);
        	$str.='<span class="n5"><a href="'.$x['n5'].'">后5页</a></span>';
        }

       
        $x['e'] = $this->pUrl($this->ps);
//         $str.='<span class="e"><a href="'.$x['e'].'">尾页</a></span> 共'.$this->nums.'条 '.$this->ps.'页';
        $str.='<span class="e"><a href="'.$x['e'].'">尾页</a></span> ';

        $str .='</div></div>';
        return $str;

    }

}