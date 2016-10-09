<?php defined('DLIVE') or exit();

class WebModel extends Base{
    
    //获取网站信息
	public function siteinfo(){
		$siteinfo = $this->getone('site',array('id gt'=>0));
		$userinfo = array();
		$sitepage = $this->select('page',array('locks'=>0));
		if($this->islogin()){
			if(session('ismc')=='m'){
          		$userinfo = $this->getone('member_user',array('id'=>session('memberid')));
          	}
          	if(session('ismc')=='c'){
          		$userinfo = $this->getone('company_user',array('id'=>session('companyid')));
          	}
          }
        
        if($siteinfo){
        	unset($siteinfo['id']);
        	if(!empty($userinfo)){
        	$arr = array_merge($userinfo, $siteinfo);
        }else{ 
        	$arr=$siteinfo;
        }
            $arr['pages'] = $sitepage; 
        	return $arr;
        }
	}

	//检测是否登录
	public function islogin(){
		if(session('islogin') && session('islogin')=='d'){
			return true;
		}
		return false;
	}

	//验证企业黑名单
	public function blist($strid){
			$blist = false;
			$id = 0;
		if(is_numeric($strid)){
			$id = (int)$strid > 0 ? (int)$strid : 0;
		}
		else{
			$strid= f_($strid);
			$ist = $this->getfield('company_user','id',array('cname'=>$strid));
			$id = $ist==false ? 0 : (int)$ist['id'];
		}
	    $blist = $this->getfield('blist','com_id',array('com_id'=>$id));
	    if($blist!==false) return true;
	    else return false;
	}
}

