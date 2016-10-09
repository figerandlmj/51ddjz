<?php defined('DLIVE') or exit();
class SchoolController extends CommonController{

    public function index(){
    	$x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
    	$result = $this->query('SELECT * FROM '.PFIX.'school '."LIMIT $xs,$xe");
                    $d['list'] = $result;
                   $d['page'] = $x->showP($this->affnum);
    	$this->display('',$d);
    }

    //编辑学校
    public function editschool(){
    	if(IS_POST){
    		$post = $_POST;
			$post['name'] = f_($post['name']);
			if(empty($post['name'])) err_('学校名称不能为空！');
			$zh = trim($post['name']);
			if(empty($zh))  err_('不合法的学校名称！');
			$ch = $this->getone('school',array('name'=>$post['name']));
			if($ch) err_('学校已存在，不能重复添加');
			$exec = $this->update('school',$post,array('id'=>$post['id']));
			if(!$exec){
				err_("更名失败");
			}else{
				header("location:".u_('index'));
			}
    	}
    	$id = get_('id');
    	if(!$id) err_('未知的参数');
    	$info = $this->getone('school',array('id'=>$id));
        $data['info'] = $info;
        $this->display('',$data);
    }

    //添加学校
	public function addschool(){
		if(IS_POST){
			$post = $_POST;
			$post['name'] = f_($post['name']);
			if(empty($post['name'])) err_('学校名称不能为空！');
			$zh = trim($post['name']);
			if(empty($zh))  err_('不合法的学校名称！');
			$ch = $this->getone('school',array('name'=>$post['name']));
			if($ch) err_('学校已存在，不能重复添加');
			$M = m_('Admin');
			$add = $M->addschool($post);
			if(!$add){
				err_("添加学校失败");
			}else{
				header("location:".u_('index'));
			}
		}
		$this->display();
	}

	//删除学校
	public function delschool(){
		$id =  get_('id');
		if(!$id) err_('未知的参数');
		$exec = $this->delete('school',array('id'=>$id));
		if(!$exec)
			err_('删除失败');
		else
			header("location:".u_('index'));
	}

	public function campus(){
		$id = get_('scho_id');
		$x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
		$data = $this->query("SELECT * FROM ".PFIX."campus WHERE scho_id = ".$id." LIMIT $xs,$xe");
		
		if(!$data) $data = array();
		
                    $d['list'] = $data;
                   $d['page'] = $x->showP($this->affnum);
		$d['scho_id'] = $id;
		$this->display('',$d);
	}

	public function addcampus(){
		$id = get_('scho_id');
		if(IS_POST){
           $post = $_POST;
           $post['scho_id'] = (int)$post['scho_id'];
           $post['name'] = zh_($post['name'])===false ? err_('校区名称必须为汉字'):$post['name'];
           $ch = $this->getone('campus',array('name'=>$post['name'],'scho_id'=>$post['scho_id']));
           	if($ch) err_('校区名称已存在');
           $add = $this->add('campus',$post);
           if(!$add) err_('添加校区失败');
           else header("location:".u_('index'));
		}
		$data['scho_id'] = $id;
		$this->display('',$data);
	}

	public function editcampus(){
		$id = get_('id');
		$info  = $this->getone('campus',array('id'=>$id));
		if(IS_POST){
           $post = $_POST;
           $post['id'] = (int)$post['id'];
           $post['name'] = zh_($post['name'])===false ? err_('校区名称必须为汉字'):$post['name'];
           $ch = $this->getone('campus',array('name'=>$post['name'],'scho_id'=>get_('scho_id')));
           	if($ch) err_('校区名称已存在');
           $add = $this->update('campus',$post,array('id'=>$post['id']));
           if(!$add) err_('编辑校区失败');
           else header("location:".u_('index'));
		}
		
		$data['info'] = $info;
		$this->display('',$data);
	}

	public function delcampus(){
		$id = get_('id');
		$del = $this->delete('campus',array('id'=>$id));
		if(!$del) err_('删除校区失败');
		else header("location:".u_('index'));
		$this->display('',$data);
	}


public function major(){
	$x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
    	$result = $this->select('major',null,"$xs,$xe");
      
                    $d['list'] = $result;
                     $d['page'] = $x->showP($this->affnum);
    	$this->display('',$d);
    }

    //编辑学校
    public function editmajor(){
    	if(IS_POST){
    		$post = $_POST;
			$post['name'] = f_($post['name']);
			if(empty($post['name'])) err_('专业名称不能为空！');
			$zh = zh_($post['name']);
			if(!$zh)  err_('不合法的专业名称！');
			$ch = $this->getone('major',array('name'=>$post['name']));
			if($ch) err_('专业已存在，不能重复添加');
			$exec = $this->update('major',$post,array('id'=>$post['id']));
			if(!$exec){
				err_("更名失败");
			}else{
				header("location:".u_('major'));
			}
    	}
    	$id = get_('id');
    	if(!$id) err_('未知的参数');
    	$info = $this->getone('major',array('id'=>$id));
        $data['info'] = $info;
        $this->display('',$data);
    }

    //添加学校
	public function addmajor(){
		if(IS_POST){
			$post = $_POST;
			$post['name'] = f_($post['name']);
			if(empty($post['name'])) err_('专业名称不能为空！');
			$zh = zh_($post['name']);
			if(!$zh)  err_('不合法的专业名称！');
			$ch = $this->getone('major',array('name'=>$post['name']));
			if($ch) err_('专业已存在，不能重复添加');
			//$M = m_('Admin');
			$add = $this->add('major',$post);
			if(!$add){
				err_("添加专业失败");
			}else{
				header("location:".u_('major'));
			}
		}
		$this->display();
	}

	//删除学校
	public function delmajor(){
		$id =  get_('id');
		if(!$id) err_('未知的参数');
		$exec = $this->delete('major',array('id'=>$id));
		if(!$exec)
			err_('删除失败');
		else
			header("location:".u_('major'));
	}
}