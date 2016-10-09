<?php defined('DLIVE') or exit();

class TrainsController extends CommonController{

	public function index(){
         $d['admins'] = $this->select('admins');
        $a = PFIX.'trains';
        $b = PFIX.'admins';
        $w = '';
       //  $list = $this->uselect('trains,admins','*,realname','ad_id,id');
        if(IS_GET && isset($_GET['search'])){
            $p = $_GET;
            //主题
            if(trim($p['title'])!=''){
                $t2 = $p['title'];
                $w.=" AND $a.title LIKE '%".$t2."%'";
            }
            //企业名称
            if(trim($p['cname'])!=''){
                $t3 = $p['cname'];
                $w.=" AND $a.cname LIKE '%".$t3."%'";
            }
            //管理员
             if($p['ad_id'] > 0){
                $t7 = (int)$p['ad_id'];
                $w.=" AND $a.ad_id = $t7";
            }
        }
        $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
          $qstr = "SELECT $a.*,$b.realname FROM $a,$b
                WHERE $a.ad_id = $b.id
                $w
                ORDER BY addtime DESC
                LIMIT $xs,$xe
                ";
         $list = $this->query($qstr);
         $d['page'] = $x->showP($this->affnum);

         if(!$list) 
         	$list = array();
         else{
            foreach ($list as $k => $v) {
                $g = $this->getcount('trainsnamelist',array('trai_id'=>$v['id'],'sub'=>0));
                $list[$k]['nnum'] = empty($g) ? 0 : $g;
            }
         }
        // echo '<pre>';
        // var_export($list); exit;
          
                    $d['list'] = $list;
                    
         $this->display('',$d);
	}

	public function addtrains(){
        if(IS_POST){
        	$post = $_POST;
            if(session('userid')==1 || session('free')==1){
                $post['put'] = 1;
            }
        	$post['title'] = trim($post['title']);
            $post['cname'] = trim($post['cname']) == '' ? err_('不合法的企业名称') : $post['cname'];
            $post['addr']  = trim($post['addr']);
         	$post['contents'] = trim($post['contents']);
            $post['tel']      = trim($post['tel']);
            $post['ps']      = (int)$post['ps'];
            $post['email']    = $this->fvar($post['email'],'mail') == false ? '' : $post['email'];
        	if($post['title']=='' || $post['contents']==''){
        		err_('标题与内容必须填写！');
        	}
        	$post['title'] = $this->fvar($post['title'],'html');
        	$post['contents'] = $this->fvar($post['contents'],'html');
        	$post['addtime'] = time();
        	//$post['put'] = intval($this->fvar($post['put'],'html'));
            $post['bstarttime'] = strtotime($post['bstarttime']);
            $post['bendtime'] = strtotime($post['bendtime']);
        	$post['starttime'] = strtotime($post['starttime']);
        	$post['endtime'] = empty($post['endtime']) ? time()+3600 : strtotime($post['endtime']);
            if($post['endtime'] < $post['starttime']){
                err_('截止时间设置错误');
            }
            if($post['bendtime'] < $post['bstarttime'] || $post['starttime'] < $post['bendtime']){
                err_('报名时间设置错误');
            }
        	$post['ad_id'] = session('userid');
            $str = '';
            foreach ($post['grade'] as $key => $value) {
                $str.=$value.',';
            }
            $post['grade'] = rtrim($str,',');
            $add = $this->add('trains',$post);
            if(!$add) err_('添加培训内容失败');
            else{
            	header('location:'.u_('Trains/index'));
            }

        }
        $grades = $this->select('member_grade');
        $d['g'] = $grades;
        $m = m_('Admin');
        $incs = $m->incs();
        $d['incs'] = $incs;
		$this->display('',$d);
	}
    
	public function edittrains(){
          if(IS_POST){
            $post = $_POST;
            $post['title'] = trim($post['title']);
            $post['cname'] = trim($post['cname']) == '' ? err_('不合法的企业名称') : $post['cname'];
            $post['addr']  = trim($post['addr']);
            $post['contents'] = trim($post['contents']);
            $post['tel']      = trim($post['tel']);
            $post['ps']      = (int)$post['ps'];
            $post['email']    = $this->fvar($post['email'],'mail') == false ? '' : $post['email'];
            if($post['title']=='' || $post['contents']==''){
                err_('标题与内容必须填写！');
            }
            $post['title'] = $this->fvar($post['title'],'html');
            $post['contents'] = $this->fvar($post['contents'],'html');
            //$post['addtime'] = time();
            //$post['put'] = intval($this->fvar($post['put'],'html'));
            $post['bstarttime'] = strtotime($post['bstarttime']);
            $post['bendtime'] = strtotime($post['bendtime']);
            $post['starttime'] = strtotime($post['starttime']);
            $post['endtime'] = empty($post['endtime']) ? time()+3600 : strtotime($post['endtime']);
            if($post['endtime'] < $post['starttime']){
                err_('截止时间设置错误');
            }
            if($post['bendtime'] < $post['bstarttime'] || $post['starttime'] < $post['bendtime']){
                err_('报名时间设置错误');
            }
            $post['ad_id'] = session('userid');
            $str = '';
            foreach ($post['grade'] as $key => $value) {
                $str.=$value.',';
            }
            $post['grade'] = rtrim($str,',');
            $add = $this->update('trains',$post,array('id'=>(int)$post['id']));
            if(!$add) err_('编辑培训内容失败');
            else{
                header('location:'.u_('Trains/index'));
            }

        }
        $id = (int)get_('id');
        $info = $this->getone('trains',array('id'=>$id));
        $get  = $this->getfield('admins','realname',array('id'=>$info['ad_id']));
        if(!$info) err_('不存在的内容');
        $info['realname'] = $get['realname'];
        $info['grade'] = explode(',', $info['grade']);
        $data['i'] = $info;
        $grades = $this->select('member_grade');
        $m = m_('Admin');
        $incs = $m->incs();
        $data['incs'] = $incs;
        $data['g'] = $grades;
		$this->display('',$data);
	}

	public function deltrains(){
        $id = (int)trim(get_('id'));
        $del = $this->delete('trains',array('id'=>$id));
        if(!$del){
        	err_('删除失败');
        }else{
        	header('location:'.u_('Trains/index'));
        }
	}

    //
    public function editauditing(){
        $id = (int)get_('id');
        $p['put'] = (int)get_('put');
        $exec = $this->update('trains',$p,array('id'=>$id));
        if(!$exec) err_('审核失败');
        else header('location:'.u_('Trains/index'));
    }

    //
    public function trainsnamelist(){
        $id = (int)get_('id');
        $jobs = $this->getfield('trains','id,title,addtime',array('id'=>$id));
        $a = PFIX.'trainsnamelist';
        $b = PFIX.'member_user';
        $c = PFIX.'member';
        $d = PFIX.'school';
        $addtime = $jobs['addtime'];
         $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $list = $this->query("SELECT $a.*,$b.realname,$b.sex,$b.tel,$d.name,$c.age
            FROM $a,$b,$c,$d
            WHERE $a.trai_id = $id
            AND $a.mem_id = $b.id
            AND $b.id = $c.uid
            AND $c.school_id = $d.id
            AND $a.regtime > $addtime
            AND $a.sub = 0
            LIMIT $xs,$xe
            ");
                    $data['list'] = $list;
                   $data['page'] = $x->showP($this->affnum);
        $data['info'] = $jobs;
        $this->display('',$data);
    }

    public function addtrainsnamelist(){ 
    	if(IS_POST){ 
    		$rn = $_POST['realname'];
//    		if(!zh_($rn)) err_('会员姓名必须为至少两个汉字！');
    		 $b = PFIX.'member_user';
       		 $c = PFIX.'member';
        	 $d = PFIX.'school';
             $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        	$list = $this->query("SELECT $b.id,$b.realname,$b.sex,$b.tel,$d.name,$c.age
		            FROM $b,$c,$d
		            WHERE ($b.realname LIKE '%$rn%' OR $b.tel LIKE '%$rn%')
		            AND $b.id = $c.uid
		            AND $c.school_id = $d.id
                    LIMIT $xs,$xe
            ");
                    $data['list'] = $list;
                   $data['page'] = $x->showP($this->affnum);
            $data['trainsid']=get_('id');
            $this->display('',$data);

    	}else{ 
    		$this->display();
    	}
    	
    }

	public function addtrainsnamelist2(){ 
		$jid = get_('tid');
		$id  = get_('id');
		$ch = $this->getfield('trains','bendtime,addtime',array('id'=>$jid));
		if($ch){
			if($ch['bendtime'] < time())
				err_('非常遗憾！该职位录取已截止！');
		}else{
			err_('该职位无法进行申请！');
		}

		//检测是否已经申请过
			$bch = $this->getone('trainsnamelist',array('trai_id'=>$jid,'mem_id'=>$id));
			$ex = false;
			if($bch) {
				if($bch['regtime'] > $ch['addtime'] && $bch['sub'] == 0){
					err_('不能重复报名');
				}
				else{
					$bchp['sub'] = 0;
					$bchp['regtime'] = time();
					$ex = $this->update('trainsnamelist',$bchp,array('trai_id'=>$jid,'mem_id'=>$id));
				}
			}
			else{
				$bchp['trai_id'] = $jid;
				$bchp['mem_id'] = $id;
				$bchp['sub'] = 0;
				$bchp['regtime'] = time();
				$ex = $this->add('trainsnamelist',$bchp);
				}
			if(!$ex) err_('添加名额失败！');
			else header('location:'.u_('Trains/trainsnamelist',array('id'=> $jid)));

	}
    public function edittrainsnamelist(){
        $jid = get_('id');
        $admi = get_('arrive');
        $p['arrive'] = (int)$admi;
        $ex = $this->update('trainsnamelist',$p,array('id'=>$jid));
        if(!$ex) err_('录取失败');
        else header('location:'.u_('Trains/trainsnamelist',array('id'=>get_('trainsid'))));
    }

     public function deltrainsnamelist(){
        $jid = get_('id');
        $ex = $this->delete('trainsnamelist',array('id'=>$jid));
         if(!$ex) err_('删除失败');
        else header('location:'.u_('Trains/trainsnamelist',array('id'=>get_('trainsid'))));

     }

}