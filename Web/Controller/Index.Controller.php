<?php defined('DLIVE') or exit();

class IndexController extends Base
{

    public function index()
    {
        $site = m_('Web');
        //$joblist      = $this->select('jobs',array('auditing'=>1,'end'=>0,'endtime gt'=>time()),'addtime DESC');
        $a = PFIX . 'jobs';
        //$b= PFIX.'company_user';
        $c = PFIX . 'industry';
        $k = PFIX . 'jobnamelist';
        $m = PFIX . 'member_user';
        $time5 = time();
        $w = '';

        /** 初始化所有数据sort字段
        $data = $this->query("SELECT * FROM $a");
        foreach ($data as $key => $value) {
            $count = $this->getcount('jobnamelist', array('jobs_id' => $value['id']));
            $is_end = 0;
            if (time() > $value['endtime']) {
                $is_end = 1;
            }
            if ($value['top'] == 1 && $count < $value['mnums'] && $is_end == 0) {
                $this->update('jobs', array('sort' => 9), array('id' => $value['id']));
            } else if ($value['top'] == 0 && ($is_end == 1 || $value['end'] == 1)) {
                $this->update('jobs', array('sort' => 6), array('id' => $value['id']));
            } else if ($value['top'] == 0 && $count >= $value['mnums']) {
                $this->update('jobs', array('sort' => 7), array('id' => $value['id']));
            } else if ($value['top'] == 0 && $count < $value['mnums'] && $is_end == 0) {
                $this->update('jobs', array('sort' => 8), array('id' => $value['id']));
            }
        }
         ***/

        //初始未结束状态数据sort字段
        $data = $this->query("SELECT * FROM $a WHERE $a.endtime > " . time() . " AND end = 0");
        foreach ($data as $key => $value) {
            $count = $this->getcount('jobnamelist', array('jobs_id' => $value['id']));
            $is_end = 0;
            if (time() > $value['endtime']) {
                $is_end = 1;
            }
            if ($value['top'] == 1 && $count < $value['mnums'] && $is_end == 0) {
                $this->update('jobs', array('sort' => 9), array('id' => $value['id']));
            } else if ($value['top'] == 0 && ($is_end == 1 || $value['end'] == 1)) {
                $this->update('jobs', array('sort' => 6), array('id' => $value['id']));
            } else if ($value['top'] == 0 && $count >= $value['mnums']) {
                $this->update('jobs', array('sort' => 7), array('id' => $value['id']));
            } else if ($value['top'] == 0 && $count < $value['mnums'] && $is_end == 0) {
                $this->update('jobs', array('sort' => 8), array('id' => $value['id']));
            } else if ($value['top'] == 1 && $count >= $value['mnums'] && $is_end == 0) {
                $this->update('jobs', array('sort' => 7), array('id' => $value['id']));
            }
        }

        /***********************强制把实际已结束的待聘条目sort更新为已结束***********************/
//        $theTime = $this->query("SELECT id FROM $a WHERE $a.endtime < " . time() . " AND $a.sort = 8");
        $theTime = $this->query("SELECT id FROM $a WHERE $a.endtime < " . time());
        if ($theTime) {
            foreach ($theTime as $key => $value) {
                $this->update('jobs', array('sort' => 6), array('id' => $value['id']));
            }
        }
        /*********************************************************************************/

        if (IS_POST) {
            $p = $_POST;
            if (!is_numeric($p['mc'])) header('Web/Index/index');
            if (f_($p['mc']) != '') {
                $mc = (int)$p['mc'];
                $w .= " AND $a.jobnub = $mc";
            }
            if (f_($p['st']) != '') {
                $st = $p['st'];
                $w .= " AND $a.jobtype = '" . $st . "'";
            }

        }
        $d['showmoreshow'] = 0;
        if (!IS_POST && get_('d') && is_numeric(get_('d'))) {
            $dss = (int)get_('d');
            $w .= " AND UNIX_TIMESTAMP($a.jobtimestart)-1 < $dss";
            $w .= " AND UNIX_TIMESTAMP($a.jobtimeend)+1 > $dss";
            $d['showmoreshow'] = 1;

        }
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $qstrs = " SELECT $a.* FROM $a
          	WHERE $a.auditing = 1
          	AND $a.end = 0
          	$w
          	ORDER BY $a.sort DESC, $a.addtime DESC
          	LIMIT $xs,$xe
          	";

        $joblist = $this->query($qstrs);
        $d['page'] = $x->showP($this->affnum);

        foreach ($joblist as $key => $value) {
            $dddd = $this->getcount('jobnamelist', array('jobs_id' => $value['id'], 'cancel' => 0));
            $joblist[$key]['jcount'] = empty($dddd) ? 0 : $dddd;
        }

        $d['jobs'] = $joblist;

        $niclist = array();
        foreach ($joblist as $kj => $vj) {
            if ($site->blist($vj['cname'])) {
                unset($joblist[$kj]);
            }
        }
        $notices = $this->select('notice', array('put' => 1, 'endtime gt' => time()), '0,6', 'top DESC,addtime DESC');
        foreach ($notices as $key => $value) {
            $niclist[$key] = $value;
            $niclist[$key]['desc'] = strcut(htmlspecialchars_decode($value['contents']), 24);
            unset($niclist[$key]['contents']);
        }

        $d['niclist'] = $niclist;
        $getinds = $this->select('industry');
        $industry = array();
        //foreach ($getinds as $key => $value) {
        //$industry[$value['id']] = $value;
        // }
        //$d['inds'] = $industry;

        $d['ban'] = $this->select('banner');


        $d['info'] = $site->siteinfo();

        $mjsql = "SELECT m.realname, job.job, FROM_UNIXTIME(j.regtime) AS regtime FROM $k j LEFT JOIN $m m ON j.mem_id = m.id LEFT JOIN $a job ON job.id = j.jobs_id ORDER BY j.id DESC LIMIT 20";

        $d['member_job'] = $this->query($mjsql);

        $this->display('', $d);
    }

    public function trains()
    {
        $site = m_('Web');
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $trains = $this->select('trains', array('put' => 1), "$xs,$xe", 'addtime DESC');
        $d['page'] = $x->showP($this->affnum);
        $notices = $this->select('notice', array('put' => 1, 'endtime gt' => time()), '0,6', 'top DESC,addtime DESC');
        foreach ($trains as $kj => $vj) {
            if ($site->blist($vj['cname'])) {
                unset($trains[$kj]);
            }
        }
        $niclist = array();
        foreach ($notices as $key => $value) {
            $niclist[$key] = $value;
            $niclist[$key]['desc'] = strcut(htmlspecialchars_decode($value['contents']), 24);
            unset($niclist[$key]['contents']);
        }
        $d['niclist'] = $niclist;
        $d['trains'] = $trains;

        $d['ban'] = $this->select('banner');
        $d['info'] = $site->siteinfo();
        
        $a = PFIX . 'jobs';
        $k = PFIX . 'jobnamelist';
        $m = PFIX . 'member_user';
        
        $mjsql = "SELECT m.realname, job.job, FROM_UNIXTIME(j.regtime) AS regtime FROM $k j LEFT JOIN $m m ON j.mem_id = m.id LEFT JOIN $a job ON job.id = j.jobs_id ORDER BY j.id DESC LIMIT 20";

        $d['member_job'] = $this->query($mjsql);
        
        $this->display('', $d);
    }

    //兼职信息
    public function jobscontent()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();

        $id = get_('id');
        if (!$id) _404();
        //已经报名人数
        $jobs1 = $this->getcount('jobnamelist', array('jobs_id' => $id, 'cancel' => 0));
        $d['reed'] = empty($jobs1) ? 0 : $jobs1;
        $con = $this->getone('jobs', array('id' => (int)$id));
        $hits = $con['hits'] + 1;
        if ($con) {
            $this->update('jobs', array('hits' => (int)$hits), array('id' => (int)$id));
        }
        //if($con['number'] == 0) $con['number'] = '不限';
        if ((int)$con['sex11'] == 1) {
            $con['sex1'] = '不限';
        } elseif ($con['sex1'] == 0) {
            $con['sex1'] = '暂无需求';
        }

        if ((int)$con['sex22'] == 1) {
            $con['sex2'] = '不限';
        } elseif ($con['sex2'] == 0) {
            $con['sex2'] = '暂无需求';
        }
        if ($con['stature1'] == 0) {
            $con['stature1'] = '不限';
        } else {
            $con['stature1'] .= 'CM';
        }
        if ($con['stature2'] == 0) {
            $con['stature2'] = '不限';
        } else {
            $con['stature2'] .= 'CM';
        }
        $otherx = array();
        if (!empty($con['otherx'])) {
            $con['otherx'] = explode(',', $con['otherx']);
            if (in_array('jkz', $con['otherx'])) {
                $otherx[] = '持健康证';
            }
            if (in_array('yhk', $con['otherx'])) {
                $otherx[] = '持银行卡';
            }
            if (in_array('sfz', $con['otherx'])) {
                $otherx[] = '持身份复印件';
            }
            if (in_array('xsz', $con['otherx'])) {
                $otherx[] = '持学生证';
            }
        }

        $con['otherx'] = $otherx;
        $grades = $this->select('member_grade');
        $grade = array();
        foreach ($grades as $key => $value) {
            $grade[$value['id']] = $value;
        }
        $con['grade'] = explode(',', $con['grade']);
        $d['grades'] = $grade;
        if (cle($con['addr']) == '') $con['addr'] = '官方通知';
        unset($con['cname']);
        if (!empty($con['endtime'])) {
            $con['endtime'] = date('Y-m-d H:i:s', $con['endtime']);
        }
        $d['con'] = $con;
        $d['isr'] = 0;
        //检测是否已经申请过
        $bch = $this->getone('jobnamelist', array('jobs_id' => get_('id'), 'mem_id' => session('memberid')));
        if ($bch) {
            if ($bch['regtime'] > $con['addtime'] && $bch['cancel'] == 0) {
                $d['isr'] = 1;
            }
        }
        $notices = $this->select('notice', array('put' => 1, 'endtime gt' => time()), '0,6', 'addtime DESC');
        foreach ($notices as $key => $value) {
            $niclist[$key] = $value;
            $niclist[$key]['desc'] = strcut(htmlspecialchars_decode($value['contents']), 24);
            unset($niclist[$key]['contents']);
        }

        $d['niclist'] = $niclist;

        $a = PFIX . 'jobs';
        $k = PFIX . 'jobnamelist';
        $m = PFIX . 'member_user';

        $mjsql = "SELECT m.realname, job.job, FROM_UNIXTIME(j.regtime) AS regtime FROM $k j LEFT JOIN $m m ON j.mem_id = m.id LEFT JOIN $a job ON job.id = j.jobs_id ORDER BY j.id DESC LIMIT 20";

        $d['member_job'] = $this->query($mjsql);

        $this->display('', $d);
    }

    public function addjobname()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        if (!$site->islogin() || !get_('id')) _404();
        $p['jobs_id'] = get_('id');

        $ch = $this->getfield('jobs', 'id,endtime,jobtimestart,jobtimeend,mnums,end,grade,addtime,sex11,sex22,sex1,sex2', array('id' => get_('id')));
        $jncount = $this->getcount('jobnamelist', array('jobs_id' => $ch['id'], 'cancel' => 0));
        //$jncount = empty($jncount) ? 0 :$jncount;
        if ($jncount >= $ch['mnums']) {
            err_('该职位申请人数已满！');
        }
        if ($ch) {
            $ch['grade'] = explode(',', $ch['grade']);
            if ($ch['endtime'] < time() || $ch['end'] == 1)
                err_('非常遗憾！该职位报名已截止！');
            if (!in_array($d['info']['grade'], $ch['grade'])) {
                err_('您的会员等级尚不能申请该职位！');
            }
        } else {
            err_('该职位无法进行申请！');
        }
        $d['igo'] = true;
        $mdata = $this->getone('member', array('uid' => session('memberid')));
        $mdatau = $this->getone('member_user', array('id' => session('memberid')));
        if ($mdata) {
            if ($ch['sex11'] == 0 && $ch['sex1'] == 0 && $mdatau['sex'] == 0) {
                err_('Sorry!  该职位要求性别为女！');
            }
            if ($ch['sex22'] == 0 && $ch['sex2'] == 0 && $mdatau['sex'] == 1) {
                err_('Sorry!  该职位要求性别为男！');
            }
            $c = $mdata;
            //服务是否到期
            if ($mdatau['endstime'] < time()) {
                err_('Sorry!  您的账号服务已到期！');
            }
            //冻结检测
            $frozen = $this->getfield('frozen', 'ztimes,ztimee', array('uid' => session('memberid'), 'ztimee gt' => time(), 'static' => 1));
            if ($frozen) {
                err_('Sorry!  您的账号目前处于被冻结状态！');
            }
            //限制检测
            $limit = $this->getfield('limit', 'limittimes,limittimee', array('uid' => session('memberid'), 'limittimee gt' => time(), 'static' => 1));
            if ($limit) {
                err_('Sorry!  您的账号目前处于被限制状态！');
            }
            //会员信息检测
            if (empty($mdatau['tel']) || empty($c['school_id'])) {
                err_('非常遗憾！由于您的个人信息不完整，申请失败。请您补充个人信息后重试！');
            }

            //取消预订之后 3个小时等待申请
            $ccltime = time() - 3600 * 3;
            $cancelt = $this->getone('jobnamelist', array('mem_id' => session('memberid'), 'canceltime gt' => $ccltime));
            if ($cancelt) {
                err_('Sorry! 距离上次取消预订的报名还没有过3个小时的时间！请继续等待');
            }

            //开始验证  时间冲突
            $lastjob = $this->select('jobnamelist', array('mem_id' => session('memberid')));
            //如果有申请记录则验证
            if ($lastjob && strtotime($ch['jobtimestart']) && strtotime($ch['jobtimeend'])) {
                $lastjobid = '';
                foreach ($lastjob as $k => $v) {
                    if ($v['jobs_id'] == get_('id')) {
                        continue;
                    }
                    $lastjobid .= $v['jobs_id'] . ',';
                }
                $lastjobid = rtrim($lastjobid, ',');
                $nowjobendt = strtotime($ch['jobtimestart']);
                $nnjobs = $this->select('jobs', array('id in' => $lastjobid));
                $chbst = strtotime($ch['jobtimestart']);
                $chben = strtotime($ch['jobtimeend']);

                foreach ($nnjobs as $key => $value) {
                    if (strtotime($value['jobtimeend'])) {
                        if ((strtotime($value['jobtimeend']) >= $chbst && strtotime($value['jobtimestart']) <= $chbst) || (strtotime($value['jobtimeend']) >= $chben && strtotime($value['jobtimestart']) <= $chben)) {
                            err_('亲！您本次申请的兼职与已申请的兼职[<b>' . $value['job'] . '</b>]有时间冲突！');
                            break;
                            return false;
                        }
                    }
                }
            }

            //检测是否已经申请过
            $bch = $this->getone('jobnamelist', array('jobs_id' => get_('id'), 'mem_id' => session('memberid')));
            if ($bch) {
                if ($bch['cancel'] == 0) {
                    err_('不能重复报名');
                } else {
                    $bchp['cancel'] = 0;
                    $bchp['regtime'] = time();
                    $ex = $this->update('jobnamelist', $bchp, array('jobs_id' => get_('id'), 'mem_id' => session('memberid')));
                }
            } else {
                $p['mem_id'] = session('memberid');
                $p['regtime'] = time();
                $addname = $this->add('jobnamelist', $p);
                if (!$addname) {
                    $d['igo'] = false;
                }
            }
        } else {
            err_('无法获取您的个人信息，请确认您的会员账号激活成功！');
        }

        //查询申请人会员信息

        $this->display('', $d);
    }

    public function trainscontent()
    {

        $id = get_('id');
        if (!$id) {
            _404();
        }

        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $jobs1 = $this->getcount('trainsnamelist', array('trai_id' => $id, 'sub' => 0));
        $d['tnum'] = $jobs1;
        $con = $this->getone('trains', array('id' => (int)$id));
        $hits = $con['hits'] + 1;
        if ($con) {
            $this->update('trains', array('hits' => (int)$hits), array('id' => (int)$id));
        }
        if ($con['ps'] == 0) $con['ps'] = '不限';
        //$grade = $this->getfield('member_grade','gname',array('id'=>$con['grade']));
        //if($grade){ $con['grade'] = $grade['gname'];}
        $grades = $this->select('member_grade');
        $grade = array();
        foreach ($grades as $key => $value) {
            $grade[$value['id']] = $value;
        }
        $con['grade'] = explode(',', $con['grade']);
        $d['grades'] = $grade;

        if (cle($con['addr']) == '') $con['addr'] = '官方通知';
        $d['con'] = $con;

        $d['isr'] = 0;
        //检测是否已经申请过
        $bch = $this->getone('trainsnamelist', array('trai_id' => get_('id'), 'mem_id' => session('memberid')));
        if ($bch) {
            if ($bch['regtime'] > $con['addtime'] && $bch['sub'] == 0) {
                $d['isr'] = 1;
            }
        }
        $notices = $this->select('notice', array('put' => 1, 'endtime gt' => time()), '0,6', 'addtime DESC');
        foreach ($notices as $key => $value) {
            $niclist[$key] = $value;
            $niclist[$key]['desc'] = strcut(htmlspecialchars_decode($value['contents']), 24);
            unset($niclist[$key]['contents']);
        }

        $d['niclist'] = $niclist;
        

        $a = PFIX . 'jobs';
        $k = PFIX . 'jobnamelist';
        $m = PFIX . 'member_user';

        $mjsql = "SELECT m.realname, job.job, FROM_UNIXTIME(j.regtime) AS regtime FROM $k j LEFT JOIN $m m ON j.mem_id = m.id LEFT JOIN $a job ON job.id = j.jobs_id ORDER BY j.id DESC LIMIT 20";

        $d['member_job'] = $this->query($mjsql);
        
        $this->display('', $d);
    }

    public function addtrainsname()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        if (!$site->islogin() || !get_('id')) {
            _404();
        }
        $p['trai_id'] = get_('id');

        $ch = $this->getfield('trains', 'bendtime,starttime,endtime,grade,addtime', array('id' => get_('id')));
        if ($ch) {
            $ch['grade'] = explode(',', $ch['grade']);
            if ($ch['bendtime'] < time())
                err_('非常遗憾！报名已结束！');
            if (!in_array($d['info']['grade'], $ch['grade'])) {
                err_('您的会员等级尚不能申请该活动！');
            }

            //取消预订之后 3个小时等待申请
            $ccltime = time() - 3600 * 3;
            $cancelt = $this->getone('trainsnamelist', array('mem_id' => session('memberid'), 'canceltime gt' => $ccltime));
            if ($cancelt) {
                err_('Sorry! 距离上次取消预订的报名还没有过3个小时的时间！请继续等待');
            }

            $lastjob = $this->select('trainsnamelist', array('mem_id' => session('memberid')));
            //如果有申请记录则验证
            if ($lastjob) {
                $lastjobid = '';
                foreach ($lastjob as $k => $v) {
                    if ($v['trai_id'] == get_('id')) {
                        continue;
                    }
                    $lastjobid .= $v['trai_id'] . ',';
                }
                $lastjobid = rtrim($lastjobid, ',');
                $nnjobs = $this->select('trains', array('id in' => $lastjobid));
                $chbst = $ch['starttime'];
                $chben = $ch['endtime'];
                foreach ($nnjobs as $key => $value) {
                    if (($value['endtime'] >= $chbst && $value['starttime'] <= $chbst) || ($value['endtime'] >= $chben && $value['starttime'] <= $chben)) {
                        err_('亲！您的本次申请与已申请的[<b>' . $value['title'] . '</b>]有时间冲突！');
                        break;
                        return false;

                    }
                }
            }

        } else {
            err_('该活动无法进行申请！');
        }
        $d['igo'] = true;
        $mdata = $this->getone('member', array('uid' => session('memberid')));
        $mdatau = $this->getone('member_user', array('id' => session('memberid')));
        if ($mdata) {
            $c = $mdata;

            if (empty($mdatau['tel']) || empty($c['school_id'])) {
                err_('非常遗憾！由于您的个人信息不完整，申请失败。请您补充个人信息后重试！');
            }
            //检测是否已经申请过
            $bch = $this->getone('trainsnamelist', array('trai_id' => get_('id'), 'mem_id' => session('memberid')));
            if ($bch) {
                /*
                if((int)$bch['canceltime'] > 0 && (int)$bch['canceltime'] > (time()-3600*3)){
                    err_('Sorry! 3个小时內只能进行一次申请预订操作');
                }*/

                if ($bch['sub'] == 0) {
                    err_('不能重复报名');
                } else {
                    $bchp['sub'] = 0;
                    $bchp['regtime'] = time();
                    $ex = $this->update('trainsnamelist', $bchp, array('trai_id' => get_('id'), 'mem_id' => session('memberid')));
                }
            } else {
                $p['mem_id'] = session('memberid');
                $p['regtime'] = time();
                $addname = $this->add('trainsnamelist', $p);
                if (!$addname) {
                    $d['igo'] = false;
                }
            }
        } else {
            err_('无法获取您的个人信息，请确认您的会员账号激活成功！');
        }

        //查询申请人会员信息

        $this->display('', $d);
    }

    public function search()
    {
        $key = f_(get_('keytxt'));
        $a = PFIX . 'jobs';
        /*$b = PFIX.'trains';
        $c = PFIX.'notice';
        $d = PFIX.'company_user';
        $sarr = array();
        $data = $this->query("SELECT
                            $a.id,$a.title,$a.job,
                            $b.id,$b.title,$b.bstarttime,
                            $c.id,$c.title,
                            $c.id,$c.cname,$c.chttp
                            FROM $a,$b,$c,$d
                            WHERE $a.title LIKE '%{$key}%'
                            OR $b.title LIKE '%{$key}%'
                            OR $c.title LIKE '%{$key}%'
                            OR $d.cname LIKE '%{$key}%'

            ");
        if($data) {
            foreach ($data as $k => $v) {

            }
            $sarr = $data;
        }
        */
        $site = m_('Web');
        $sarr = array();
        if (!empty($key)) {
            $time = time();
            $x = new Page();
            $xs = $x->curP(get_('p'));
            $xe = $x->lenP();
            $job = $this->query("SELECT id,job AS title,addtime
			 	FROM $a WHERE job LIKE '%$key%'
			 	AND auditing = 1
			 	LIMIT $xs,$xe
			 	");
            //p_($job);
            $trains = $this->select('trains', array('title like' => $key, 'endtime gt' => $time, 'put' => 1));
            $notice = $this->select('notice', array('title like' => $key, 'endtime gt' => $time, 'put' => 1));
            // $company = $this->select('company_user',array('cname like'=>$key,'locks'=>1));
            if ($job) {
                foreach ($job as $key => $value) {
                    $job[$key]['url'] = 'Index/jobscontent';
                    array_push($sarr, $job[$key]);
                }
            }
            if ($trains) {
                foreach ($trains as $key => $value) {
                    $trains[$key]['url'] = 'Index/trainscontent';
                    array_push($sarr, $trains[$key]);
                }
            }
            if ($notice) {
                foreach ($notice as $key => $value) {
                    $notice[$key]['url'] = 'Notice/content';
                    array_push($sarr, $notice[$key]);
                }
            }
            // if($company){
            //	foreach ($company as $key => $value) {
            //$company[$key]['url'] = 'Company/index';
            //if($site->blist($value['id'])){
            //unset($company[$key]);
            //continue;
            //}
            //$company[$key]['title'] = $value['cname'];

            //$company[$key]['addtime'] = $value['regtime'];
            //unset($company[$key]['cname']);
            //array_push($sarr,$company[$key]);
            //}
            // }
        }


        $x = new Page($sarr, get_('p'));
        $d['list'] = $sarr;
        $d['page'] = $x->showP(count($sarr));
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }
}