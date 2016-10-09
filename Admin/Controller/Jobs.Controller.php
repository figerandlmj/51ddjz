<?php defined('DLIVE') or exit();

class JobsController extends CommonController
{

    public function index()
    {
        $data['admins'] = $this->select('admins');
        $a = PFIX . 'jobs';
        $b = PFIX . 'admins';

        $w = '';
        $ts = '';

        /** 初始化所有数据sort字段
         * $data = $this->query("SELECT * FROM $a");
         * foreach ($data as $key => $value) {
         * $count = $this->getcount('jobnamelist', array('jobs_id' => $value['id']));
         * $is_end = 0;
         * if (time() > $value['endtime']) {
         * $is_end = 1;
         * }
         * if ($value['top'] == 1 && $count < $value['mnums'] && $is_end == 0) {
         * $this->update('jobs', array('sort' => 9), array('id' => $value['id']));
         * } else if ($value['top'] == 0 && ($is_end == 1 || $value['end'] == 1)) {
         * $this->update('jobs', array('sort' => 6), array('id' => $value['id']));
         * } else if ($value['top'] == 0 && $count >= $value['mnums']) {
         * $this->update('jobs', array('sort' => 7), array('id' => $value['id']));
         * } else if ($value['top'] == 0 && $count < $value['mnums'] && $is_end == 0) {
         * $this->update('jobs', array('sort' => 8), array('id' => $value['id']));
         * }
         * }
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
        $t = 0;
        if (get_('t')) {
            $t = get_('t');

            $time = strtotime(date("Y-m-d 00:00:00", time()));
            $time1 = $time + (3600 * 24);
            if ($t == 1) {
                $ts = " AND $a.admitime > $time1";
            }

            if ($t == 2) {
                $ts = " AND $a.admitime > $time AND $a.admitime < $time1";
            } elseif ($t == 3) {
                $ts = " AND $a.jobtimestart < '" . date('Y-m-d') . "'";
            }

        }
        if (IS_GET && isset($_GET['search'])) {
            $p = $_GET;

            if (trim($p['jobnub']) != '') {
                $t1 = $p['jobnub'];
                $w .= " AND $a.jobnub = $t1";
            }

            if (trim($p['cname']) != '') {
                $t2 = $p['cname'];
                $w .= " AND $a.cname LIKE '%" . $t2 . "%'";
            }

            if (trim($p['job']) != '') {
                $t3 = $p['job'];
                $w .= " AND $a.job LIKE '%" . $t3 . "%'";
            }

            if (trim($p['admitime']) != '') {
                $t4 = strtotime($p['admitime']);
                $w .= " AND $a.admitime > $t4";
            }

            if (trim($p['jobtimestart']) != '') {
                $t5 = $p['jobtimestart'];
                if (!strtotime($p['jobtimestart'])) {
                    $w .= " AND $a.jobtimestart LIKE '%" . $t5 . "%'";
                } else {
                    $t5 = strtotime($t5);
                    $w .= " AND UNIX_TIMESTAMP($a.jobtimestart) >= $t5";
                    if (strtotime($p['jobtimeend']) != false) {
                        $t6 = strtotime($p['jobtimeend']) + (3600 * 24) + 1;
                        $w .= " AND UNIX_TIMESTAMP($a.jobtimeend) < $t6";
                    }
                }
            }


            if (trim($p['addtime1']) != '') {
                $t7 = strtotime($p['addtime1']);
                $w .= " AND $a.addtime > $t7";
                if (trim($p['addtime2']) != '') {
                    $t8 = strtotime($p['addtime2']);
                    $w .= " AND $a.addtime < $t8";
                }
            }

            if ($p['ad_id'] > 0) {
                $t7 = (int)$p['ad_id'];
                $w .= " AND $a.ad_id = $t7";
            }

            if (empty($w)) {
                err_('请先设置搜索条件');
            }

        }

        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();

        if ($t == 3) {
            $order = "$a.jobtimestart DESC, $a.jobtimestartt ASC";
        } else {
            $order = "$a.sort DESC, $a.addtime DESC";
        }

        $qstr = "SELECT $a.*,$b.realname FROM $a,$b
                     WHERE $a.ad_id = $b.id $w $ts
                     ORDER BY " . $order . "
                     LIMIT $xs,$xe
                    ";

        $list = $this->query($qstr);
        $data['page'] = $x->showP($this->affnum);
        if (!$list)
            $list = array();
        else {
            foreach ($list as $k => $v) {
                $list[$k]['static'] = '';
                if ($v['auditing'] == 0) {
                    $list[$k]['static'] .= '[未审核]';
                } elseif ($v['end'] == 1 || $v['endtime'] < time()) {
                    $list[$k]['static'] .= '[已终止]';
                } else {
                    $list[$k]['static'] = '<font color="#009900">进行中</font>';
                }
                $g = $this->getcount('jobnamelist', array('jobs_id' => $v['id'], 'cancel' => 0));
                $list[$k]['nnum'] = empty($g) ? 0 : $g;

                $list[$k]['result'] = '未录取';
                $admited_member = $this->select('jobnamelist', array('jobs_id' => $v['id'], 'admi' => 1));
                if (!empty($admited_member)) {
                    $list[$k]['result'] = '已录取';
                }
            }
        }

        $data['list'] = $list;

        $this->display('', $data);
    }

    public function addjobs()
    {
        if (IS_POST) {


            $denub1 = strtotime(date("Y-m-d 00:00:00", time()));
            $denub2 = strtotime(date("Y-m-d 23:59:59", time()));
            $jnub = $this->getcount('jobs', array('addtime gt' => $denub1, 'addtime lt' => $denub2));
            if (!$jnub || $jnub == 0) {
                $jnub == 0;
            }
            $jnub = $jnub + 1;
            if ($jnub < 10) {
                $jnub = '0' . $jnub;
            }

            $curnub = (int)(date("Ymd", time()) . $jnub);

            $post = $_POST;
            if (session('userid') == 1 || session('free') == 1) {
                $post['auditing'] = 1;
            }


            $post['cname'] = zh_($post['cname']) == false ? err_('不合法的企业名称') : $post['cname'];
            $post['jobtimestart'] = cle($post['jobtimestart']);
            $post['jobtimeend'] = cle($post['jobtimeend']);
            $post['jobtimestartt'] = cle($post['jobtimestartt']);
            $post['jobtimeendt'] = cle($post['jobtimeendt']);
            if (empty($post['mnums'])) {
                err_('招聘人数必须正确填写！');
            }

            if (isset($post['sex1']) && isset($post['sex2'])) {
                $tmun = (int)$post['sex1'] + (int)$post['sex2'];
            } elseif (isset($post['sex1']) && !isset($post['sex2'])) {
                $tmun = (int)$post['sex1'];
            } elseif (isset($post['sex2']) && !isset($post['sex1'])) {
                $tmun = (int)$post['sex2'];
            }
            if (isset($tmun) && $tmun > (int)$post['mnums']) {
                err_('招聘人数需求不能超过总人数');
            }

            $post['stature1'] = cle($post['stature1']);
            $post['stature2'] = cle($post['stature2']);
            $post['admitime'] = strtotime($post['admitime']);
            $post['desc'] = trim($post['desc']);
            $post['gathtime'] = $this->fvar($post['gathtime'], 'html');

            $post['desc'] = $this->fvar($post['desc'], 'html');
            $post['addtime'] = time();
            $post['ad_id'] = (int)session('userid');
            $post['ways'] = $this->fvar($post['ways'], 'html');
            $post['wage'] = (int)$post['wage'];
            $post['endtime'] = strtotime($post['endtime']);


            $ch = $this->getfield('company_user', 'id,cname', array('cname' => $post['cname']));
            if (!$ch) err_('无效的企业名称');


            if ($post['desc'] == '' || $post['jobtimestart'] == '' || $post['jobtimestartt'] == '') {
                err_('内容以及工作开始日期时间必须填写！');
            }
            $otherx = '';
            if (!empty($post['otherx'])) {
                $otherx = implode(',', $post['otherx']);
            }
            $post['otherx'] = $otherx;
            $str = '';
            if (!empty($post['grade'])) {
                $str = implode(',', $post['grade']);
            }
            $post['grade'] = $str;

            $post['jobnub'] = $curnub;
            $post['sort'] = 9;

            $add = $this->add('jobs', $post);
            if (!$add) err_('添加兼职信息失败');
            else {
                header('location:' . u_('Jobs/index'));
            }

        }
        $grades = $this->select('member_grade');
        $d['g'] = $grades;
        $m = m_('Admin');
        $incs = $m->incs();
        $d['incs'] = $incs;
        $this->display('', $d);
    }

    /**
     * 招聘单位搜索
     */
    public function getUnitAjax()
    {
        $post = $_POST;
        $unit = trim($post['unit']);
        $m = m_('Admin');
        $incsJson = $m->searchincs($unit);
//        header("Content-Type:application/json;charset=UTF-8");
        header("Content-Type:text/html;charset=UTF-8");
        header("Cache-Control:no-cache");
        echo json_encode($incsJson);
    }

    public function editjobs()
    {
        if (IS_POST) {
            $post = $_POST;
            //$post['title']         = trim($post['title']);
            $post['cname'] = zh_($post['cname']) == false ? err_('不合法的企业名称') : $post['cname'];
            $post['jobtimestart'] = trim($post['jobtimestart']);
            $post['jobtimeend'] = trim($post['jobtimeend']);
            $post['jobtimestartt'] = trim($post['jobtimestartt']);
            $post['jobtimeendt'] = trim($post['jobtimeendt']);
            if (empty($post['mnums'])) {
                err_('招聘人数必须正确填写！');
            }

            if (isset($post['sex1']) && isset($post['sex2'])) {
                $tmun = (int)$post['sex1'] + (int)$post['sex2'];
            } elseif (isset($post['sex1']) && !isset($post['sex2'])) {
                $tmun = (int)$post['sex1'];
            } elseif (isset($post['sex2']) && !isset($post['sex1'])) {
                $tmun = (int)$post['sex2'];
            }
            if (isset($tmun) && $tmun > (int)$post['mnums']) {
                err_('招聘人数需求不能超过总人数');
            }

            $post['stature1'] = cle($post['stature1']);
            $post['stature2'] = cle($post['stature2']);
            $post['admitime'] = strtotime($post['admitime']);
            $post['desc'] = trim($post['desc']);
            $post['gathtime'] = $this->fvar($post['gathtime'], 'html');
            // $post['number']        = (int)f_($post['number']);
            //$post['title']         = $this->fvar($post['title'],'html');
            $post['desc'] = $this->fvar($post['desc'], 'html');
            if ((int)$post['reput'] == 1) {
                $post['addtime'] = time();
            }
            unset($post['reput']);
            $post['ad_id'] = (int)session('userid');
            $post['ways'] = $this->fvar($post['ways'], 'html');
            $post['wage'] = (int)$post['wage'];
            $post['endtime'] = strtotime($post['endtime']);

            if (!isset($post['id'])) err_('非法操作');
            //if($post['admitime'] < time()) err_('面试时间不合理');
            $ch = $this->getfield('company_user', 'cname', array('cname' => $post['cname']));
            if (!$ch) err_('无效的企业名称');
            //if($post['jobtimestart']+3600 > $post['jobtimeend']) 
            //err_('工作时间设置不合理');
            // if($post['admitime']+3600 > $post['jobtimestart'])
            // err_('录取时间设置不合理');
            /*if($post['sex1']=='' && $post['sex2']==''){
                $post['sex1'] = 0;
                $post['sex2'] = 0;
            }*/
            if ($post['desc'] == '' || $post['jobtimestart'] == '' || $post['jobtimestartt'] == '') {
                err_('内容以及工作开始日期时间必须填写！');
            }
            $otherx = '';
            if (!empty($post['otherx'])) {
                $otherx = implode(',', $post['otherx']);
            }
            $post['otherx'] = $otherx;
            $str = '';
            if (!empty($post['grade'])) {
                $str = implode(',', $post['grade']);
            }
            $post['grade'] = $str;

            //unset($post['sex11'],$post['sex22']);
            //p_($post);
            $add = $this->update('jobs', $post, array('id' => (int)$post['id']));
            if (!$add) err_('编辑兼职信息失败');
            else {
                header('location:' . u_('Jobs/index'));
            }

        }
        $id = (int)get_('id');
        $info = $this->getone('jobs', array('id' => $id));
        $get = $this->getfield('admins', 'realname', array('id' => $info['ad_id']));
        if (!$info) err_('不存在的内容');
        $info['realname'] = $get['realname'];
        $info['grade'] = explode(',', $info['grade']);
        $info['otherx'] = explode(',', $info['otherx']);
        $data['i'] = $info;
        $grades = $this->select('member_grade');
        $data['g'] = $grades;
        $m = m_('Admin');
        $incs = $m->incs();
        $data['incs'] = $incs;
        $this->display('', $data);
    }

    public function deljobs()
    {
        $id = (int)trim(get_('id'));
        $del = $this->delete('jobs', array('id' => $id));
        if (!$del) {
            err_('删除失败');
        } else {
            header('location:' . u_('Jobs/index'));
        }
    }

    public function endjobs()
    {
        $id = (int)trim(get_('id'));
        $t = $this->getfield('jobs', 'end', array('id' => $id));
        $end = $t['end'] == 0 ? 1 : 0;
        $del = $this->update('jobs', array('end' => $end), array('id' => $id));
        if (!$del) {
            err_('操作失败');
        } else {
            header('location:' . u_('Jobs/index'));
        }
    }

    //
    public function editauditing()
    {
        $id = (int)get_('id');
        $p['auditing'] = (int)get_('aud');
        $exec = $this->update('jobs', $p, array('id' => $id));
        if (!$exec) err_('审核失败');
        else header('location:' . u_('Jobs/index'));
    }

    //
    public function topz()
    {
        $id = get_('id');
        $top = $this->getfield('jobs', 'top', array('id' => $id));
        $p['top'] = $top['top'] == 1 ? 0 : 1;
        $exec = $this->update('jobs', $p, array('id' => $id));

        if ($exec) {
            $count = $this->getcount('jobnamelist', array('jobs_id' => $id, 'admi' => 1));
            $data = $this->getone('jobs', array('id' => $id));
            $is_end = 0;
            if (time() > $data['endtime']) {
                $is_end = 1;
            }
            if ($p['top'] == 1 && $count < $data['mnums'] && $is_end == 0) {
                $this->update('jobs', array('sort' => 9), array('id' => $id));
            } else if ($p['top'] == 0 && ($is_end == 1 || $data['end'] == 1)) {
                $this->update('jobs', array('sort' => 6), array('id' => $id));
            } else if ($p['top'] == 0 && $count >= $data['mnums']) {
                $this->update('jobs', array('sort' => 7), array('id' => $id));
            } else if ($p['top'] == 0 && $count < $data && $is_end == 0) {
                $this->update('jobs', array('sort' => 8), array('id' => $id));
            }
        }


        if (!$exec) err_('置顶失败');
        else header('location:' . u_('Jobs/index'));
    }

    //
    public function copyz()
    {
        $id = get_('id');
        $copy = $this->getone('jobs', array('id' => $id));
        $copy['top'] = 0;

        //编号算法
        $denub1 = strtotime(date("Y-m-d 00:00:00", time()));
        $denub2 = strtotime(date("Y-m-d 23:59:59", time()));
        $jnub = $this->getcount('jobs', array('addtime gt' => $denub1, 'addtime lt' => $denub2));
        if (!$jnub || $jnub == 0) {
            $jnub == 0;
        }
        $jnub = $jnub + 1;
        if ($jnub < 10) {
            $jnub = '0' . $jnub;
        }

        $curnub = (int)(date("Ymd", time()) . $jnub);

        $copy['jobnub'] = $curnub;
        $copy['hits'] = 0;
        $copy['auditing'] = 0;
        $copy['addtime'] = time();
        unset($copy['id']);
        $exec = $this->add('jobs', $copy);
        if (!$exec) err_('复制失败');
        else header('location:' . u_('Jobs/index'));
    }

    //
    public function jobnamelist()
    {
        $id = (int)get_('id');
        $jobs = $this->getfield('jobs', 'id,title,addtime', array('id' => $id));
        $a = PFIX . 'jobnamelist';
        $b = PFIX . 'member_user';
        $c = PFIX . 'member';
        $d = PFIX . 'school';
        $addtime = $jobs['addtime'];
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $list = $this->query("SELECT $a.*,$b.realname,$b.sex,$b.tel,$d.name,$c.age
            FROM $a,$b,$c,$d
            WHERE $a.jobs_id = $id
            AND $a.mem_id = $b.id
            AND $b.id = $c.uid
            AND $c.school_id = $d.id
            AND $a.cancel = 0
            LIMIT $xs,$xe
            ");
        $data['page'] = $x->showP($this->affnum);
        $data['list'] = $list;

        $data['info'] = $jobs;
        $this->display('', $data);
    }

    public function addjobnamelist()
    {
        if (IS_POST) {

            $b = PFIX . 'member_user';
            $c = PFIX . 'member';
            $d = PFIX . 'school';
            $x = new Page();

            $where = ' WHERE 1';
            if ($_POST['realname']) {
                $rn = $_POST['realname'];
                $where .= " AND ($b.realname LIKE '%$rn%' OR $b.tel LIKE '%$rn%' )";
            }

            if ($_POST['tel']) {
                $tel = $_POST['tel'];
                $where .= " AND $b.tel LIKE '%$tel%'";
            }

            // 前天添加手机号码查询
//    		if(!zh_($rn)) err_('会员姓名必须为至少两个汉字！');

            $xs = $x->curP(get_('p'));
            $xe = $x->lenP();
            $list = $this->query("SELECT $b.id,$b.realname,$b.sex,$b.tel,$d.name,$c.age
		            FROM $b,$c,$d
		            $where
		            AND $b.id = $c.uid
		            AND $c.school_id = $d.id
                    LIMIT $xs,$xe
            ");
            $data['list'] = $list;
            $data['page'] = $x->showP($this->affnum);
            $data['jobid'] = get_('id');

            $this->display('', $data);

        } else {
            $this->display();
        }

    }

    public function addjobnamelist2()
    {
        $jid = get_('jid');
        $id = get_('id');
        $ch = $this->getfield('jobs', 'end,endtime', array('id' => $jid));
        if ($ch) {
            if ($ch['endtime'] < time() || (int)$ch['end'] == 1)
                err_('非常遗憾！该职位录取已截止！');
        } else {
            err_('该职位无法进行申请！');
        }

        //检测是否已经申请过
        $bch = $this->getone('jobnamelist', array('jobs_id' => $jid, 'mem_id' => $id));
        $ex = false;
        if ($bch) {
            if ($bch['cancel'] == 0) {
                err_('不能重复报名');
            } else {
                $bchp['cancel'] = 0;
                $bchp['regtime'] = time();
                $ex = $this->update('jobnamelist', $bchp, array('jobs_id' => $jid, 'mem_id' => $id));
            }
        } else {
            $bchp['jobs_id'] = $jid;
            $bchp['mem_id'] = $id;
            $bchp['cancel'] = 0;
            $bchp['regtime'] = time();
            $ex = $this->add('jobnamelist', $bchp);
        }
        if (!$ex) err_('添加名额失败！');
        else header('location:' . u_('Jobs/jobnamelist', array('id' => $jid)));

    }

    public function editjobnamelist()
    {
        $jid = get_('id');
        if (is_numeric(get_('admi'))) {
            $admi = get_('admi');
            $p['admi'] = (int)$admi;
        } elseif (is_numeric(get_('dc'))) {
            $dc = get_('dc');
            $p['daochang'] = (int)$dc;
        }
        $ex = $this->update('jobnamelist', $p, array('id' => $jid));
        if ($ex) {
            $jobId = get_('jobid');
            $count = $this->getcount('jobnamelist', array('jobs_id' => $jobId, 'admi' => 1));
            $mnums = $this->getfield('jobs', 'mnums', array('id' => $jobId));
            if ($count >= $mnums['mnums']) {
                $this->update('jobs', array('sort' => 7), array('id' => $jobId));
            } else {
                $this->update('jobs', array('sort' => 8), array('id' => $jobId));
            }

        }

        if (!$ex) err_('录取失败');
        else header('location:' . u_('Jobs/jobnamelist', array('id' => get_('jobid'))));

    }

    public function deljobnamelist()
    {
        $jid = get_('id');
        $ex = $this->delete('jobnamelist', array('id' => $jid));
        if (!$ex) {
            err_('删除失败');
        } else {
            // $user_id = session('userid');
            // $this->add('jobnamelist_record', array('jobnamelist_id' => $jid, 'admin_id' => $user_id, 'create_time' => date('Y-m-d H:i:s')));
            header('location:' . u_('Jobs/jobnamelist', array('id' => get_('jobid'))));
        }

    }

}