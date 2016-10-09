<?php defined('DLIVE') or exit();

class AdminModel extends Base{
	
    public function __construct(){
	      
    }
	public function checkUser($user){
		   if(empty($user)) return false; 
           $userdata = $this->getone('admins',array('username'=>$user));
          
           if(!$userdata)          return false;
                                   return $userdata;
	}

	

	public function siteinfo(){
		$data = $this->query("SELECT * FROM ".PFIX."site LIMIT 0,1");
		return $data;
		}



	public function addschool($data=array()){
         $add = $this->add('school',$data);
         return $add;
	}

 
    public function incs(){
    	
				$iid = '';
				$iid = $this->getfield('admins','area_id',array('id'=>session('userid')));
				$iid = $iid['area_id'];
				$a = PFIX."company_user";
				$b = PFIX."industry";
				$incs = $this->query("SELECT $a.id,$a.cname,$a.industry_id,$b.name FROM $a,$b
			          WHERE $a.industry_id = $b.id 
					");
				
				$arr = array();
				foreach ($incs as $k => $v) {
					$arr[$v['industry_id']]['list'][] = $v;
					$arr[$v['industry_id']]['name'] = $v['name'];
				}
	    		return $arr; 

    }

	public function searchincs($param)
	{
		$iid = '';
		$iid = $this->getfield('admins','area_id',array('id'=>session('userid')));
		$iid = $iid['area_id'];
		$a = PFIX."company_user";
		$b = PFIX."industry";
		$incs = $this->query("SELECT $a.id,$a.cname,$a.industry_id,$b.name FROM $a,$b
			          WHERE $a.industry_id = $b.id AND $a.cname LIKE '%$param%'
					");

		$arr = array();
		foreach ($incs as $k => $v) {
			$arr[$v['industry_id']]['list'][] = $v;
			$arr[$v['industry_id']]['name'] = $v['name'];
		}
		return $arr;

	}
	
}



