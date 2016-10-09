<?php defined('DLIVE') or exit();

class PageController extends Base{

    public function __construct(){
    		parent::__construct();
    		$site  = m_('Web');
    		$this->info = $site->siteinfo();
    }

    public function index(){
    		$id = get_('id');
    		if(!$id) _404();
    		$data = $this->getone('page',array('id'=>$id,'locks'=>0));
    		if(!$data) _404();
             $hitsa = $this->getfield('page','hits',array('id'=>(int)$id));
        $hits = $hitsa['hits']+1;
        if($hitsa){
            $this->update('page',array('hits'=>(int)$hits),array('id'=>(int)$id));
        }
    		$data['contents'] = htmlspecialchars_decode($data['contents']);
    		$d['con'] = $data;
    		$d['info']    = $this->info;
        	$this->display('',$d);
    }

}