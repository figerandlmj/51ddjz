<?php defined('DLIVE') or exit();

class MemberController extends CommonController{

	public function index(){
           
            $a = PFIX.'member_user';
            $b = PFIX.'member_grade';
            $addt = '';
            if(get_('addtype')!==false) $addt = "AND {$a}.addtype =".get_('addtype');
            $x =  new Page();
            $xs = $x->curP(get_('p'));
             $xe = $x->lenP();
            $qstr = "SELECT $a.*,$b.gname FROM $a,$b WHERE $a.grade = $b.id ".$addt." ORDER BY regtime DESC LIMIT $xs,$xe";
            $list = $this->query($qstr);
                    $d['list'] = $list;
                    $d['page'] = $x->showP($this->affnum);
			$this->display('',$d);
	}

	public function addmember(){
           if(IS_POST){
            $p = $_POST;
            $p['realname'] = zh_($p['realname'])==false ? err_('姓名格式不正确') : $p['realname'];
            $p['sex']      = (int)f_($p['sex']);
            $p['mcard']    = trim($p['mcard'])=='' ? err_('会员卡号不能为空') : $p['mcard'];
            if(!empty($p['viptime'])){
                  $p['viptime'] = strtotime($p['viptime']);
            }
            $p['mid']      =  trim($p['mid'])=='' ? err_('身份证号不能为空') : $p['mid'];
            $p['tel']      = $this->fvar($p['tel'],'mob')==false ? err_('手机号码格式不正确') : $p['tel'];
            $p['email']    = $this->fvar($p['email'],'mail')==false ? '' : $p['email'];
            $p['password'] = $this->fvar($p['password'],'chup')==false ? err_('密码格式不正确') : $p['password'];
            //检测重复信息
            $chemail = $this->getfield('member_user','email',array('email'=>$p['email']));
            if($chemail) err_('该登录邮箱已被使用');
            $chmcard = $this->getfield('member_user','mcard',array('mcard'=>$p['mcard']));
            if($chmcard) err_('该卡号已存在');
             $chmid = $this->getfield('member_user','mid',array('mid'=>$p['mid']));
            if($chmid) err_('该身份证号已存在');
             $chtel = $this->getfield('member_user','tel',array('tel'=>$p['tel']));
            if($chtel) err_('该手机号已存在');

            if($p['password']!== $p['repassword']){
                err_('确认密码不一致');
            }
            $p['regtime']  = time();
            $gradedate = $this->getfield('member_grade','sertime',array('id'=>$p['grade']));
            $gtime = (int)$gradedate['sertime'];
            $vvtime = empty($p['viptime']) ? $p['regtime']:$p['viptime'];
            $p['endstime']  = strtotime("+$gtime month",$vvtime);
            $p['password'] = $this->pass2($p['password']);
            $sub = $p['sub'];
            unset($p['sub'],$p['repassword']);
            $add = $this->add('member_user',$p);
            if(!$add) err_('添加会员账号失败');
            else{
                $pms['uid'] = $add;
                $addm = $this->add('member',$pms);
                if($sub == 1) header('location:'.u_('index'));
                elseif($sub == 2) header('location:'.u_('memberinfo',array('uid'=>$add)));
            }
           }
           $grade = $this->select('member_grade');
           $info['grade'] = $grade;
           $this->display('',$info);
			
	}

	public function editmember_u(){
     $get           = $this->getone('member_user',array('id'=>get_('id')));
    if(IS_POST){
                $p = $_POST;
                $p['id'] = f_($p['id']);
                if(!isset($p['id']) || empty($p['id'])) err_('非法操作');
                $p['realname'] = zh_($p['realname'])==false ? err_('姓名格式不正确') : $p['realname'];
                $p['sex']      = (int)f_($p['sex']);
                $p['mcard']    = trim($p['mcard'])=='' ? err_('会员卡号不能为空') : $p['mcard'];
           		  $p['mid']      =  trim($p['mid'])=='' ? err_('身份证号不能为空') : $p['mid'];
                $p['tel']      = $this->fvar($p['tel'],'mob')==false ? err_('手机号码格式不正确') : $p['tel'];
                $p['email']    = $this->fvar($p['email'],'mail')==false ? '' : $p['email'];
                $p['password'] = $this->fvar($p['password'],'chup')==false ? err_('密码格式不正确') : $p['password'];
                $p['id'] = (int)$p['id'];
                $chemail = $this->getfield('member_user','email',array('email'=>$p['email'],'id nq'=>$p['id']));
           		if($chemail) err_('该邮箱已被使用');

            	$chmcard = $this->getfield('member_user','mcard',array('mcard'=>$p['mcard'],'id nq'=>$p['id']));
           		if($chmcard) err_('该卡号已存在');
           		
            	$chmid = $this->getfield('member_user','mid',array('mid'=>$p['mid'],'id nq'=>$p['id']));
           		if($chmid)   err_('该身份证号已存在');
           		
            	$chtel = $this->getfield('member_user','tel',array('tel'=>$p['tel'],'id nq'=>$p['id']));
            	if($chtel)   err_('该身手机号已存在');

                if($p['password']!== $p['repassword']){
                    err_('确认密码不一致');
                }
                // $p['regtime']  = time();
                if(!empty($p['viptime'])){
                  $p['viptime']    =strtotime($p['viptime']);
                }
                if($get['endstime'] <> $p['endstime']){
                   $p['endstime']  = strtotime($p['endstime']);
                }
                if($get['grade'] <> $p['grade']){
                   $gradedate = $this->getfield('member_grade','sertime',array('id'=>$p['grade']));
                   $gtime = (int)$gradedate['sertime'];
                   $vvtime = empty($p['viptime']) ? $get['regtime'] : $p['viptime'];
                   $p['endstime']  = strtotime("+$gtime month",$vvtime);
                }
               $chpass = $this->getfield('member_user','password',array('password'=>$p['password'],'id'=>$p['id']));
                if(!$chpass){
                  $p['password'] = $this->pass2($p['password']);
                }
               // $sub = $p['sub'];
                unset($p['sub'],$p['repassword']);
                $add = $this->update('member_user',$p,array('id'=>$p['id']));
                if(!$add) err_('编辑会员账号失败');
                else{
                    header('location:'.u_('index'));
                }
               }
              
               $grade         = $this->select('member_grade');
               $info['grade'] = $grade;
               $info['i']     = $get;
               $this->display('',$info);
            
	}
    
    public function memberinfo(){
        $uid = get_('uid');
        $realname = $this->getfield('member_user','realname',array('id'=>$uid));
        $ch = $this->getone('member',array('uid'=>$uid));
        $e  = 1; 
        if(!$ch) $e = 0;
        //p_($ch);
        if(IS_POST){
          $p = $_POST;
          // p_($p);
          foreach ($p as $k => $v) {
              if(!is_array($v))
              $p[$k]= $this->fvar($v,'html');
          }
          $freetime='';
          foreach ($p['freetime'] as $key => $value) {
              $freetime.=$value.',';
          }
          $p['freetime'] = rtrim($freetime,',');
          if($p['school_id']==0 || $p['toyear']==0 || $p['major_id']==0){
            err_('院校与专业必须填写');
          }
          
          if(!isset($p['id'])){
            $add = $this->add('member',$p);
          }else{
            $add = $this->update('member',$p,array('id'=>$p['id'],'uid'=>$p['uid']));
          }
          if(!$add) err_('操作失败');
          else header('location:'.u_('index'));
        }

        $major = $this->select('major');
        $d['major'] = $major;
        $school = $this->select('school');
        $d['school'] = $school;
        $campus = $this->select('campus');
        if(!empty($campus)){
            $arr=array();
            foreach ($campus as $key => $v) {
                $arr[$v['scho_id']][$v['id']] = $campus[$key];
            }
        }
        $d['e']      = $e;
        if($e){
             $ch['freetime'] = explode(',', $ch['freetime']);
             $d['info']   = $ch;

        }
        $d['info']['uid']  = $uid;
        $d['campus'] = $arr;
        $d['info']['realname'] = $realname['realname'];
        $this->display('',$d);
    }
    
	public function delmember(){
		$id = get_('id');
        $ch = $this->getone('member',array('uid'=>$id));
        if($ch){
            $del1 = $this->delete('member',array('uid'=>$id));
        }
        $del = $this->delete('member_user',array('id'=>$id));
        if(!del) err_('删除失败');
        else header('location:'.u_('index'));
	}
 
     //会员等级
	public function membergrade(){
    $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
            $list = $this->select('member_grade',null,"$xs,$xe");
          
                    $d['list'] = $list;
                    $d['page'] = $x->showP($this->affnum);
			$this->display('',$d);
	}

	public function addmembergrade(){
            if(IS_POST){
            	$p = $_POST;
            	$p['gname'] = f_($p['gname']); 
            	$p['sertime'] = (int)$p['sertime'];
            	if(empty($p['gname'])) err_('级别名称必须填写');
            	$add = $this->add('member_grade',$p);
            	if(!$add) err_('添加失败');
            	else header('location:'.u_('membergrade'));
            }
			$this->display();
	}

	public function editmembergrade(){
           if(IS_POST){
            	$p = $_POST;
            	$p['gname'] = f_($p['gname']); 
            	$p['sertime'] = (int)$p['sertime'];
            	if(empty($p['gname'])) err_('级别名称必须填写');
            	$add = $this->update('member_grade',$p,array('id'=>$p['id']));
            	if(!$add) err_('编辑失败');
            	else {
                //修改服务时间
                $sertime = $p['sertime'];
                $nums = $this->getcount('member_user',array('grade'=>$p['id']));
                $sts = 0;
                if($nums){
                  
                  for($i=0; $i<$nums; ){
                    $list = $this->select('member_user',array('grade'=>$p['id']),"$i,50");
                    foreach ($list as $key => $value) {
                      if(empty($value['viptime']))
                        {continue;}
                      $endstime = strtotime("+$sertime month",$value['viptime']);
                      $und = $this->update('member_user',array('endstime'=>$endstime),array('id'=>$value['id']));
                      if(!$und)
                        {continue;}
                      else
                        {$sts++;}
                    }
                    $i = ($i+50) > $nums ? $i+($nums-$i) : $i+50;
                  }
                }
                if($sts){
                  header('location:'.u_('membergrade'));
                }
                else{
                  err_('更新会员服务时间失败！');
                }
              }
            }
            $d = $this->getone('member_grade',array('id'=>get_('id')));
   			$d['i'] = $d;
			$this->display('',$d);
	}

	public function delmembergrade(){
           $id = get_('id');
           if(!$id) err_('非法操作');
           //$del = $this->delete('member_grade',array('id'=>$id));
           $del = false;
		       if(!$del) err_('会员级别禁止删除');
           else header('location:'.u_('membergrade'));
	}

 public function hislist(){
      //if(!get_('mid')) _404();
         $a = PFIX.'jobs';
    $b = PFIX.'jobnamelist';
    $mid = get_('mid');
    $time5 = time();
    $x =  new Page();
    $xs = $x->curP(get_('p'));
    $xe = $x->lenP();
    $jobs = $this->query("SELECT $a.id,$a.title,$a.job,$b.regtime,$b.cancel,$b.admi FROM $a,$b
              WHERE $a.id = $b.jobs_id 
              AND $b.mem_id = $mid 
              LIMIT $xs,$xe;
      ");
    if(!$jobs){
      $jobs = array();
    }
    $d['jobs'] = $jobs;
    $d['page'] = $x->showP($this->affnum);

    $a = PFIX.'trains';
    $b = PFIX.'trainsnamelist';
    $trains = $this->query("SELECT $a.id,$a.title,$a.cname,$b.regtime,$b.sub,$b.arrive FROM $a,$b
              WHERE $a.id = $b.trai_id AND $b.mem_id = $mid
              ORDER BY $a.addtime DESC;
      ");
    if(!$trains){
      $trains = array();
    }
    
                    
                    

    $d['trains'] = $trains;
          $this->display('',$d);
 }

	public function search(){ 
		if(IS_GET && isset($_GET['search'])){
			$p     = $_GET;
			$arr = array();
			$a = PFIX.'member_user';
			$b = PFIX.'member';
      //$c = '';
     
			$w = '';
			$as = false;
			$bs = false;
			//兼职时间
			$freetime = false;
			if(isset($p['freetime'])){ 
				//$freetime =implode(',', $p['freetime']);
      				for($fi=0;$fi<count($p['freetime']);$fi++){ 
      					$w.=" AND $b.freetime LIKE '%".$p['freetime'][$fi]."%'";
      				}
				    if(!$bs) $bs = true;
	        }
	        //性别
	        $sex     = (int)$p['sex'];
	        if($sex < 3){ 
	        	$w.=" AND $a.sex = $sex";
	        	if(!$as) $as = true;
	        }
	        //校区
	        $school_id = empty($p['school_id']) ? false : $p['school_id'];
	        if($school_id){ 
	        	$w.=" AND $b.school_id = $school_id";
	        	if(!$bs) $bs = true;
	        }
	        $campus_id  = empty($p['campus_id']) ? false : $p['campus_id'];
	        if($campus_id){ 
	        	$w.=" AND $b.campus_id = $campus_id";
	        	if(!$bs) $bs = true;
	        }
	        //级别
	        $grade   = false;
	        if(isset($p['grade'])) { 
	        	$grade    = implode(',', $p['grade']);
	        	$w.=" AND $a.grade IN($grade)";
	        	if(!$as) $as = true;
	        }
	        //专业
	        $major   = empty($p['major_id']) ? false : $p['major_id'];
	        if($major){
	        	$w.=" AND $b.major_id = $major";
	        	if(!$bs) $bs = true;
	        }
	        //学历
	        $education   = empty($p['education']) ? false : $p['education'];
	        if($education){
	        	$w.=" AND $b.education = '".$education."'";
	        	if(!$bs) $bs = true;
	        }
	        //学届
	        $toyear  = empty($p['toyear']) ? false : $p['toyear'];
	        if($toyear){
	        	$w.=" AND $b.toyear = $toyear";
	        	if(!$bs) $bs = true;
	        }
	        //卡号
          if(isset($p['mcard']) && trim($p['mcard'])!=''){
            $mcard = $p['mcard'];
            $w.=" AND $a.mcard = '".$mcard."'";
            if(!$as) $as = true;
          }
          //姓名
          if(isset($p['realname']) && trim($p['realname'])!=''){
            $realname = $p['realname'];
            $w.=" AND $a.realname LIKE '%".$realname."%'";
            if(!$as) $as = true;
          }
          //手机号码
          if(isset($p['tel']) && trim($p['tel'])!=''){
            $tel = $p['tel'];
            $w.=" AND $a.tel = $tel";
            if(!$as) $as = true;
          }
          //QQ
          if(isset($p['QQ']) && trim($p['QQ'])!=''){
            $QQ = (int)$p['QQ'];
            $w.=" AND $b.QQ = $QQ";
            if(!$bs) $bs = true;
          }
          //身高范围
          if(isset($p['stature1']) && trim($p['stature1'])!=''){
            $stature1 = (int)$p['stature1'];
              $w.=" AND $b.stature > $stature1";
            if(isset($p['stature2']) && trim($p['stature2'])!=''){
              $stature2 = (int)$p['stature2'];
              $w.=" AND $b.stature < $stature2";
            }
          if(!$bs) $bs = true;
          }
           //工作历史

          if(isset($p['works']) && trim($p['works'])==1){
            $sel = $this->select('jobnamelist',array('admi'=>1,'cancel'=>0));
           // p_($sel);
            $ids = array();

            foreach ($sel as $key => $value) {
                $ids[$value['mem_id']] = $value['mem_id'];
            }
            $idss = implode(',', $ids);
            if(empty($idss)) $idss = 0;
            $w.=" AND $a.id NOT IN($idss)";
            if(!$bs) $bs = true;
            //$c = ','.PFIX.'jobnamelist';
          }

           //服务状态
          $stime = time();
          if(isset($p['ends']) && trim($p['ends'])==1){
            $w.=" AND $a.endstime > $stime";
            if(!$as) $as = true;
          }
          elseif(isset($p['ends']) && trim($p['ends'])==2){
            $stime = time();
            $w.=" AND $a.endstime < $stime";
            if(!$as) $as = true;
          }

	        if(!$as && !$bs){ 
	        		header('location:'.u_('Member/search'));
	        } 
          $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
	        $qstr = "SELECT $b.*,$a.*
	        		FROM $a,$b WHERE $a.id = $b.uid ".$w." ORDER BY $a.regtime DESC LIMIT $xs,$xe";
	        //p_($qstr);
	        $list = $this->query($qstr);
                    $d['list'] = $list;
                    $d['page'] = $x->showP($this->affnum);
		      
	  	}
			//查询会员等级
      $grades = $this->select('member_grade');
			//查询校区
			$schools = $this->select('school');
              $campuss = $this->select('campus');
              if(!empty($campuss)){
              $arr=array();
                foreach ($campuss as $key => $v) {
                $arr[$v['scho_id']][$v['id']] = $campuss[$key];
                 }
			//查询专业
			$majors = $this->select('major');
			$grades1  = array(); 
			$schools1 = array();
			$campuss1 = array();
			$majors1  = array();
			foreach ($grades as $k => $v) {
				$grades1[$v['id']] = $v; 
			}
			foreach ($schools as $k => $v) {
				$schools1[$v['id']] = $v; 
			}
			foreach ($majors as $k => $v) {
				$majors1[$v['id']] = $v; 
			}
			foreach ($campuss as $k => $v) {
				$campuss1[$v['id']] = $v; 
			}
			$d['grade']    = $grades1;
			$d['school']   = $schools1;
			$d['campus']   = $arr;
			$d['icampus']   = $campuss1;
			$d['major']    = $majors1;
      $d['puts'] = isset($_GET['puts']) ? $_GET['puts'] : array();

			$this->display('',$d);
		}
	}

	public function counts(){ 
		if(IS_GET && isset($_GET['search'])){
			$p     = $_GET;
			$arr = array();
			$a = PFIX.'member_user';
			$b = PFIX.'member';
			$w = '';
			//注册时间
			$as = strtotime($p['ts']);
			$ae = strtotime($p['te'])+(3600*24)+1;
			
			$w.=" AND $a.regtime >= $as";
			$w.=" AND $a.regtime <= $ae";
	        //校区
	        $school_id = empty($p['school_id']) ? false : $p['school_id'];
	        if($school_id){ 
	        	$w.=" AND $b.school_id = $school_id";
	        }
	        $campus_id  = empty($p['campus_id']) ? false : $p['campus_id'];
	        if($campus_id){ 
	        	$w.=" AND $b.campus_id = $campus_id";
	        }
          $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
	        $qstr = "SELECT $a.realname,$a.sex,$a.grade,$a.regtime,$a.tel,$b.*
	        		FROM $a,$b WHERE $a.id = $b.uid ".$w." LIMIT $xs,$xe";
	        //p_($qstr);
	        $list = $this->query($qstr);
                    $d['list'] = $list;
                    $d['page'] = $x->showP($this->affnum);
		      
		}


			//查询会员等级
              $grades = $this->select('member_grade');
			//查询校区
			  $schools = $this->select('school');
              $campuss = $this->select('campus');
              if(!empty($campuss)){
              $arr=array();
                foreach ($campuss as $key => $v) {
                $arr[$v['scho_id']][$v['id']] = $campuss[$key];
                 }
			//查询专业
			$majors = $this->select('major');
			$grades1  = array(); 
			$schools1 = array();
			$campuss1 = array();
			$majors1  = array();
			foreach ($grades as $k => $v) {
				$grades1[$v['id']] = $v; 
			}
			foreach ($schools as $k => $v) {
				$schools1[$v['id']] = $v; 
			}
			foreach ($majors as $k => $v) {
				$majors1[$v['id']] = $v; 
			}
			foreach ($campuss as $k => $v) {
				$campuss1[$v['id']] = $v; 
			}
			$d['grade']    = $grades1;
			$d['school']   = $schools1;
			$d['campus']   = $arr;
			$d['icampus']   = $campuss1;
			$d['major']    = $majors1;

		$this->display('',$d);
	} 

}

public function frozen(){
  $uid = get_('uid');
  $time =strtotime(date("Y-m-d 00:00:00", time()));
  $info = $this->getfield('member_user','id,realname,endstime',array('id'=>$uid));
  $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
  $hisfrz = $this->select('frozen',array('uid'=>$uid),"$xs,$xe");
   
        $d['list'] = $hisfrz;
        $d['page'] = $x->showP($this->affnum);
  $curfrz = $this->getone('frozen',array('uid'=>$uid,'static'=>1,'ztimee gt'=>$time));
  $d['curfrz'] = $curfrz;
  $d['info']   = $info;
  if(IS_POST){
    $p = $_POST;
    if(isset($p['static']) && (int)$p['static']==0){
      if($curfrz){
        $ex = $this->update('frozen',array('static'=>0),array('id'=>$curfrz['id']));
        //变更服务到期时间
        $ends = $info['endstime']-($curfrz['ztimee'] - $time);
        $ex1=$this->update('member_user',array('endstime'=>$ends),array('id'=>$uid));
        if($ex && $ex1){
           header('location:'.u_('Member/frozen',array('uid'=>$uid)));
        }
      }
      else{
        err_('当前会员并不在冻结中，无需执行此操作！');
      }
    }
    else{
      
      $p['ztimes'] = strtotime($p['ztimes']);
      $p['ztimee'] = strtotime($p['ztimee']);
     
      if($p['ztimee'] > $info['endstime']) err_('冻结时间必须在服务期内！');
      if($p['ztimes'] < $time) err_('冻结时间至少从现在时间开始');
      if($p['ztimes'] > $p['ztimee'] ) err_('冻结结束时间必须大于开始时间');
      if($curfrz){
         $add = $this->update('frozen',$p,array('id'=>$curfrz['id']));
      }
      else{
        $p['uid'] = $uid;
        $p['ad_id'] = session('userid');
        $add = $this->add('frozen',$p);
      }
      if($add){
        //变更服务到期时间
        $ends = $info['endstime']+($p['ztimee'] - $p['ztimes']);
         $this->update('member_user',array('endstime'=>$ends),array('id'=>$uid));
        header('location:'.u_('Member/frozen',array('uid'=>$uid)));
      } 
      else{
        err_('添加冻结失败');
      }
    }
  }
  $this->display('',$d);
}


public function limit(){
  $uid = get_('uid');
   $time =strtotime(date("Y-m-d 00:00:00", time()));
  $info = $this->getfield('member_user','id,realname,endstime',array('id'=>$uid));
  $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
   $data = $this->select('limit',array('uid'=>$uid),"$xs,$xe");
   $curlimit = $this->getone('frozen',array('uid'=>$uid,'static'=>1,'ztimee gt'=>$time));
  $d['curlimit'] = $curlimit;
        $d['list'] = $data;
        $d['page'] = $x->showP($this->affnum);
        $d['info'] = $info;
  if(IS_POST){
    $p = $_POST;
    if(isset($p['static']) && (int)$p['static']==0){
      if($data){
        $ex = $this->update('limit',array('static'=>0),array('id'=>$uid));      
        if($ex){
           header('location:'.u_('Member/limit',array('uid'=>$uid)));
        }
      }
      else{
        err_('当前会员并不在限制中，无需执行此操作');
      }
    }
    else{
      
      $p['limittimes'] = strtotime($p['limittimes']);
      $p['limittimee'] = strtotime($p['limittimee']);
     
      if($p['limittimee'] > $info['endstime']) err_('限制时间必须在服务期内！');
      if($p['limittimes'] < $time) err_('限制时间至少从现在时间开始');
      if($p['limittimes'] > $p['limittimee'] ) err_('限制结束时间必须大于开始时间');
      if($curlimit){
         $add = $this->update('limit',$p,array('id'=>$curlimit['id']));
      }
      else{
        $p['uid'] = $uid;
        $p['ad_id'] = session('userid');
        $add = $this->add('limit',$p);
      }
      if($add){
        header('location:'.u_('Member/limit',array('uid'=>$uid)));
      } 
      else{
        err_('添加限制失败');
      }
    }


  }
   $this->display('',$d);
}


public function warning(){
 
     $uid  = get_('uid');
     $x =  new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
     $data = $this->select('warning',array('uid'=>$uid),"$xs,$xe");
     $info = $this->getfield('member_user','id,realname,endstime',array('id'=>$uid));
     $d['list'] = $data;
    $d['page'] = $x->showP($this->affnum);
     $d['info'] = $info;
 if(IS_POST){
    $p = $_POST;
    if(trim($p['warnmess'])=='') err_('警告内容不能为空');
    $p['addtime'] = time();
    $p['ad_id'] = session('userid');
    $add = $this->add('warning',$p);
    if(!$add) err_('添加失败');
    else{
       header('location:'.u_('Member/warning',array('uid'=>$uid)));
    }
  }
     $this->display('',$d);
}




}




    
