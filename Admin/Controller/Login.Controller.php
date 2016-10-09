<?php defined('DLIVE') or exit();

class LoginController extends Base{

	public function index(){
        if(IS_POST){
        	$post     = $_POST;
            $code     = f_($post['code']);
            if(strtolower($code) != session('code'))
            err_('验证码不正确');
        	$username = $post['username'];
        	$password = $post['password'];
        	$M        = m_('Admin');
            $uData    = $M->checkUser($username);
            
            if(!$uData) err_('用户名或密码错误！');
            if($uData['locks']==0) err_('账号未授权');
            
            if($this->pass2($password)==$uData['password']){
            	session('loginOr'    ,'dlive');
            	session('userid'     ,$uData['id']);
				session('username'   ,$uData['username']);
                if($uData['free']==1){
                   session('free'    ,1); 
                }
				session('realname' ,$uData['realname']);
				//setcookie('area_id'  ,$uData['area_id'] ,time()+3600*10);
				session('[regenerate]');
				session('[pause]');
            	header('location:'.u_('Index/index',$data));
            }
            else{
            	err_('用户名或密码错误！');
            }
        }
		$this->display();
	}
	 //验证码
    public function code(){
        import_('Lib/_code','lib');
        $_vc = new ValidateCode(); 
        $_vc->doimg();
        session('code', $_vc->getCode());
    }

	public function loginout(){
		     session('[destroy]');
             //foreach ($_COOKIE as $key => $value) {
               // setcookie($_COOKIE[$key], '', time()-1);
             //}
			 header('location:'.u_('Login/index'));
		}
}