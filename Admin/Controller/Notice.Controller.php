<?php defined('DLIVE') or exit();

class NoticeController extends CommonController{

	public function index(){
 $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
         $list = $this->query("SELECT ".PFIX."notice.*,".PFIX."admins.realname FROM ".PFIX."notice,".PFIX."admins
                               WHERE ".PFIX."notice.ad_id = ".PFIX."admins.id ORDER BY addtime DESC LIMIT $xs,$xe");
         if(!$list) 
         	$list = array();
          
                    $d['list'] = $list;
                    $d['page'] = $x->showP($this->affnum);
         $this->display('',$d);
	}
	public function addnotice(){
        if(IS_POST){
        	$post = $_POST;
        	$post['title'] = trim($post['title']);
        	$post['contents'] = trim($post['contents']);
        	if($post['title']=='' || $post['contents']==''){
        		err_('标题与内容必须填写！');
        	}
        	$post['title'] = $this->fvar($post['title'],'html');
        	$post['contents'] = $this->fvar($post['contents'],'html');
        	$post['addtime'] = time();
        	$post['put'] = intval($this->fvar($post['put'],'html'));
        	$post['endtime'] = strtotime($post['endtime']);
        	$post['endtime'] = empty($post['endtime']) ? time()+3600*2400 : $post['endtime'];
        	if($post['endtime'] - time() < 36000){
                 err_('结束时间错误！');
        	}
        	$post['ad_id'] = session('userid');
            
            $add = $this->add('notice',$post);
            if(!$add) err_('添加公告失败');
            else{
            	header('location:'.u_('Notice/index'));
            }

        }
		$this->display();
	}
	public function editnotice(){
         if(IS_POST){
        	$post = $_POST;
        	$id   = (int)trim($post['id']);
        	unset($post['id']);
         	$post['title'] = trim($post['title']);
        	$post['contents'] = trim($post['contents']);
        	$post['put']    =  intval(trim($post['put']));
        	if($post['title']=='' || $post['contents']==''){
        		err_('标题与内容必须填写！');
        	}
        	$post['endtime'] = strtotime($post['endtime']);
        	$post['endtime'] = empty($post['endtime']) ? time()+3600*2400 : $post['endtime'];
        	if($post['put'] != 0){
	        	if($post['endtime'] - time() < 36000){
	                 err_('结束时间错误！');
	        	}
        	}
        	$post['ad_id'] = session('userid');
        	$post['title'] = $this->fvar($post['title'],'html');
        	$post['contents'] = $this->fvar($post['contents'],'html');
            $add = $this->update('notice',$post,array('id'=>$id));
            if(!$add) err_('编辑公告失败');
            else{
            	header('location:'.u_('Notice/index'));
            }
        }
        $id = (int)get_('id');
        $info = $this->getone('notice',array('id'=>$id));
        if(!$info) err_('不存在的公告信息');
        $data['info'] = $info;
		$this->display('',$data);
	}
	public function delnotice(){
        $id = (int)trim(get_('id'));
        $del = $this->delete('notice',array('id'=>$id));
        if(!$del){
        	err_('删除失败');
        }else{
        	header('location:'.u_('Notice/index'));
        }
	}

	public function topnotice(){

		$id = get_('id');
		$post['top'] = get_('top');
		$set =$this->update('notice',$post,array('id'=>$id));
		if(!$set) err_('操作失败');
		else{
			header('location:'.u_('Notice/index'));
		}
	}

	public function putnotice(){

		$id = get_('id');
		$endtime = $this->getfield('notice','endtime',array('id'=>$id));
		if($endtime < time()) err_('公告已经过期');
		$post['put'] = get_('put');
		$set =$this->update('notice',$post,array('id'=>$id));
		if(!$set) err_('操作失败');
		else{
			header('location:'.u_('Notice/index'));
		}
	}
}