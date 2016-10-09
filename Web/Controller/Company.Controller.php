<?php defined('DLIVE') or exit();
               
class CompanyController extends Base{

	public function __construct(){
    		parent::__construct();
    		$this->m  = m_('Web');
    		$this->info = $this->m->siteinfo();
    }

    public function index(){
    		$id = get_('id');
    		$cname = get_('cname');
    		$blist = $this->m->blist($cname);
    		if((!$id && !$cname) || $blist==true) _404();
    		if($cname && !$id){
    			$gf = $this->getfield('company_user','id',array('cname'=>$cname));
    			if($gf){
    				$id = $gf['id'];
    			}
    			else{
    				_404();
    			}
    		}
    		$a = PFIX.'company_user';
    		$b = PFIX.'company';
    		$data = $this->query("SELECT $a.cname,$a.types,$b.* FROM $a,$b
    			WHERE $a.id = $b.uid
    			AND $a.id = $id
    			");

    		if(!$data) _404();
    		$data = $data[0];
    		$data['cinfo'] = htmlspecialchars_decode($data['cinfo']);
    		$jobs = array();
    		$se = $this->select('jobs',array('cname'=>$data['cname']));
    		if($se) $jobs = $se;
    		$d['jobs'] = $jobs;
    		$d['con'] = $data;
    		$d['info']    = $this->info;
        	$this->display('',$d);
    }

    public function jobs(){
    		$cname = get_('cname') == false ? _404() : get_('cname');
    		$d['info']    = $this->info;
            $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
    		$data = $this->select('jobs',array('cname'=>$cname,'auditing' => 1,'jobtimestart gt'=>time()),"$xs,$xe");
                    $d['list'] = $data;
                    $d['page'] = $x->showP($this->affnum);
    		$d['cname'] = $cname;
        	$this->display('',$d);
    }

}