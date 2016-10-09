<?php defined('DLIVE') or exit();

class CommonController extends Base{

 
	public function __construct(){
		
		if(!$this->checkLogin()){
           header('location:'.u_('login/index'));
		}
        $this->chpowers();
	}
    

	private function checkLogin(){
        $loginOr = session('loginOr');
        if(!$loginOr || $loginOr !=='dlive'){
            return false;
        }
        else{
        	return true;
        }
	}

    private function chpowers(){
        $id = session('userid');
        if($id!=1){
            $getf = $this->getfield('admins','powers',array('id'=>$id));
            $getf = explode(',', $getf['powers']);
            $pname = CLASS_NAME.'|'.ACTION_NAME;
            $pname = ucfirst($pname);
            if(!in_array($pname, $getf)) err_('您没有无权操作此功能');
        }
    }
}