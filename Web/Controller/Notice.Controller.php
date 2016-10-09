<?php defined('DLIVE') or exit();

class NoticeController extends Base{

    public function __construct(){
    		parent::__construct();
    		$site  = m_('Web');
    		$this->info = $site->siteinfo();
    }

    public function index(){
 
    	 $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
    	$notices      = $this->select('notice',array('put'=>1,'endtime gt'=>time()),"$xs,$xe",'top DESC,addtime DESC');
        $d['notices'] = $notices;
        $d['page'] = $x->showP($this->affnum);
    	$d['info']    = $this->info;
        $this->display('',$d);
    }

    public function content(){
    	$id = (int)get_('id');
    	$data = $this->getone('notice',array('id'=>$id));
    	if(!$data) _404();
        $hitsa = $this->getfield('notice','hits',array('id'=>(int)$id));
        $hits = $hitsa['hits']+1;
        if($hitsa){
            $this->update('notice',array('hits'=>(int)$hits),array('id'=>(int)$id));
        }
        $data['contents'] = htmlspecialchars_decode($data['contents']);
    	$d['con']     = $data;
    	$d['info']    = $this->info;
        $this->display('',$d);
    }
}