<?php defined('DLIVE') or exit();

class PageController extends CommonController{

         public function index(){
            $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
            $list = $this->select('page',null,"$xs,$xe");
            if(!$list) $list = array();
                    $d['list'] = $list;
                   $d['page'] = $x->showP($this->affnum);
         	$this->display('',$d);
         }

         public function addpage(){
            if(IS_POST){
            	$p = $_POST;
            	$p['title'] = trim($p['title']);
            	$p['contents'] = trim($p['contents']);
            	if(empty($p['title']) || empty($p['contents'])) 
            		err_('标题与内容不能为空');
            	foreach ($p as $key => $value) {
            		$p[$key] = $this->fvar($p[$key],'html');
            	}
            	$p['addtime'] = time();
            	$add = $this->add('page',$p);
            	if(!$add) err_('添加失败');
            	else header('location:'.u_('index'));
            }
         	$this->display();
         }

         public function editpage(){
         	 if(IS_POST){
            	$p = $_POST;
            	if(!isset($p['id'])) err_('非法操作');
            	$p['title'] = trim($p['title']);
            	$p['contents'] = trim($p['contents']);
            	if(empty($p['title']) || empty($p['contents'])) 
            		err_('标题与内容不能为空');
            	foreach ($p as $key => $value) {
            		$p[$key] = $this->fvar($p[$key],'html');
            	}
            	$add = $this->update('page',$p,array('id'=>$p['id']));
            	if(!$add) err_('编辑失败');
            	else header('location:'.u_('index'));
            }
            $info = $this->getone('page',array('id'=>get_('id')));
            $d['i'] = $info;
         	$this->display('',$d);
         }

         public function delpage(){
            if(!get_('id')) err_('非法操作');
            $del = $this->delete('page',array('id'=>get_('id')));
            if(!$del) err_('删除失败');
            	else header('location:'.u_('index'));
         }

         public function lockpage(){
         	$id = get_('id');
         	if(!$id) err_('非法操作');
         	$p['locks'] = (int)get_('locks');
         	$exec = $this->update('page',$p,array('id'=>$id));
         	header('location:'.u_('index'));
         }

}