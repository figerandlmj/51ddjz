<?php defined('DLIVE') or exit();

//后台首页
class IndexController extends CommonController{
  
     public function index(){
     	$adt = strtotime(date("Y-m-01",time()));
		$d['mm'] = $this->getcount('member_user',array('regtime gt'=> $adt));
		$d['mm1'] = $this->getcount('member_user',array('regtime gt'=> $adt,'locks'=>1));
		$d['mm0'] = $d['mm'] - $d['mm1'];
		$d['mz'] = $this->getcount('member_user');
		$d['mz1'] = $this->getcount('member_user',array('locks'=>1));
		$d['mz0'] = $d['mz'] - $d['mz1'];

		$d['cm'] = $this->getcount('company_user',array('regtime gt'=> $adt));
		$d['cz'] = $this->getcount('company_user');

		$d['jm'] = $this->getcount('jobs',array('addtime gt'=> $adt));
		$d['jm1'] = $this->getcount('jobs',array('addtime gt'=> $adt,'auditing'=>1));
		$d['jm0'] = $d['jm'] - $d['jm1'];
		$d['jz'] = $this->getcount('jobs');
		$d['jz1'] = $this->getcount('jobs',array('auditing'=>1));
		$d['jz0'] = $d['jz'] - $d['jz1'];

		$d['tm'] = $this->getcount('trains',array('addtime gt'=> $adt));
		$d['tm1'] = $this->getcount('trains',array('addtime gt'=> $adt,'put'=>1));
		$d['tm0'] = $d['tm'] - $d['tm1'];
		$d['tz'] = $this->getcount('trains');
		$d['tz1'] = $this->getcount('trains',array('put'=>1));
		$d['tz0'] = $d['tz'] - $d['tz1'];

        $userid = session('userid');
        $days = (int)strtotime(date("Y-m-d",time())." 00:00:00");
        $daye = (int)strtotime(date("Y-m-d",time())." 23:59:59");
        $list = $this->select('memor',array('ad_id'=>$userid,'warntime gt'=>$days,'warntime lt'=>$daye));
        $d['memor'] = $list;
     	$this->display('',$d);
     }
     

     public function site_index(){
     	 $yes = 0;
		 if(IS_POST){
			 $post = $_POST;
			 $post['sitename']    = $this->fvar($post['sitename'],'html');
			 $post['siteurl']     = $this->fvar($post['siteurl'],'url');
			 $post['keywords']    = $this->fvar($post['keywords'],'html');
			 $post['description'] = $this->fvar($post['description'],'html');
			 $post['copyright']   = $this->fvar($post['copyright'],'html');
             if(trim($post['sitename'])=='') err_('网站名称不能为空');
             if(trim($post['siteurl'])=='')  err_('网站网址不能为空');
             $exec = $this->update('site',$post,array('id'=>3));
             if(!$exec)
             	err_('更新数据失败');
             else $yes = 1;
			 }
		$M     = m_('Admin');
		$result = $M->siteinfo();
		$data['info']=$result[0];
		$data['info']['yes'] = $yes;
     	$this->display('',$data);
     }
    

     public function person_info(){
     	$yes = 0;
     	if(IS_POST){
			 $post['realname']    = $this->fvar($_POST['realname'],'html');
			 $post['password']    = $this->fvar($_POST['password'],'html');
			 if($post['password']!==$_POST['repassword'])
			 	err_('确认密码不一致！');
			 unset($_POST['repassword'],$_POST['username'],$_POST['area_id']);
             
              $chpass = $this->getfield('admins','password',array('password'=>$p['password'],'id'=>session('userid')));
                if(!$chpass){
                  $p['password'] = $this->pass2($p['password']);
                }

			 $exec = $this->update('admins',$post,array('id'=>(int)session('userid')));
             if(!$exec)
             	err_('更新数据失败');
             $yes = 1;

     	}
        $result = $this->getone('admins',array('id'=>session('userid'))); //获取个人信息
        if(!$result)
        	err_('无法获取信息');
        $data['info'] = $result;
        $data['info']['yes']   = $yes;
        $this->display('',$data);
     }

     public function banner(){
        $list = $this->select('banner');
        $this->display('',array('list'=>$list));
     }

     public function addbanner(){
        if(IS_POST){
            $filetype=array('image/gif','image/jpeg','image/pjpeg','image/png');
            $filedir = './Public/upload/';
            $p['banto'] = $this->fvar($_POST['banto'],'url') == false ? '' : $_POST['banto'];
            $type = $_FILES['imgfile']['type'];
            $size = $_FILES['imgfile']['size']/1024;
            $ext = explode('.', $_FILES['imgfile']['name']);
            $ext = $ext[count($ext)-1];
            if(empty($type) || empty($size)){
                err_('您还未上传图片');
            }
            if(!in_array($type,$filetype)) err_('图片类型错误');
            if($size > 2000) err_('图片大小不能超过2MB');
            $filename = $filedir.substr((string)time(), 1,6).(string)rand(100,999).'.'.$ext;
            $p['banimg'] =  $filename;
            $p['bantitle'] = cle($_POST['bantitle']);
            $p['type'] = $_POST['type'];
            $add = $this->add('banner',$p);
            if($add){
                $do = move_uploaded_file($_FILES["imgfile"]["tmp_name"], $filename);
                if($do){
                    header('location:'.u_('Index/banner'));
                }
                else{
                    err_('上传失败');
                }
            }
            else{
                    err_('添加失败');
                }

        }
         $this->display();
        }

        public function editbanner(){
            $id = get_('id');
            if(IS_POST){
            $filetype=array('image/gif','image/jpeg','image/pjpeg','image/png');
            $filedir = './Public/upload/';
            $p['banto'] = $this->fvar($_POST['banto'],'url') == false ? '' : $_POST['banto'];
            $type = $_FILES['imgfile']['type'];
            $size = $_FILES['imgfile']['size']/1024;
            $ext = explode('.', $_FILES['imgfile']['name']);
            $ext = $ext[count($ext)-1];
            if(empty($type) || empty($size)){
                err_('您还未上传图片');
            }
            if(!in_array($type,$filetype)) err_('图片类型错误');
            if($size > 2000) err_('图片大小不能超过2MB');
            $filename = $filedir.substr((string)time(), 1,6).(string)rand(100,999).'.'.$ext;
            $p['banimg'] =  $filename;
            $p['bantitle'] = cle($_POST['bantitle']);
            $p['type'] = $_POST['type'];
            $add = $this->update('banner',$p,array('id'=>$_POST['id']));
            if($add){
                $do = move_uploaded_file($_FILES["imgfile"]["tmp_name"], $filename);
                if($do){
                    header('location:'.u_('Index/banner'));
                }
                else{
                    err_('上传失败');
                }
            }
            else{
                    err_('编辑失败');
                }

        }
         $info  = $this->getone('banner',array('id'=>$id));
         $d['info'] = $info;
         //p_($info);
         $this->display('',$d);
        }
        public function delbanner()
        {
           $id = get_('id');
           $file = $this->getfield('banner','banimg',array('id'=>$id));
           if(is_file($file['banimg'])){
             unlink($file['banimg']);
           }
           $ex = $this->delete('banner',array('id'=>$id));
           if(!$ex) err_('删除失败');
           else header('location:'.u_('Index/banner'));
        }

}

