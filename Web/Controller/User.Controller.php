<?php defined('DLIVE') or exit();

class UserController extends Base
{

    public function index()
    {
        if (session('islogin') == false) {
            header('location:' . u_('User/login'));
        }
        $id = get_('id');
        if (!$id || $id != session('memberid')) _404();
        else {
            $id = (int)$id;
        }
        $uinfo = $this->getone('member_user', array('id' => $id));
        $minfo = $this->getone('member', array('uid' => $id));
        if ($uinfo && $minfo) {
            $info = array_merge($minfo, $uinfo);
            switch ($info['sex']) {
                case 0:
                    $info['sex'] = '男';
                    break;
                case 1:
                    $info['sex'] = '女';
                    break;
            }
            switch ($info['hel']) {
                case 0:
                    $info['hel'] = '无';
                    break;
                case 1:
                    $info['hel'] = '有';
                    break;
            }

            $grade = $this->getfield('member_grade', 'gname', array('id' => $info['grade']));
            $info['grade'] = $grade['gname'];

            $school = false;
            if (!empty($info['school_id'])) {
                $school = $this->getfield('school', 'name', array('id' => $info['school_id']));
            }
            $campus['name'] = '';
            if (!empty($info['campus_id'])) {
                $campus = $this->getfield('campus', 'name', array('id' => $info['campus_id']));
            }
            if ($school) {
                $info['school'] = $school['name'] . '(' . $campus['name'] . ')';
            } else {
                $info['school'] = '<i>未填写</i>';
            }

            $major = false;
            if (!empty($info['major_id'])) {
                $major = $this->getfield('major', 'name', array('id' => $info['major_id']));
            }
            if ($major) {
                $info['major'] = $major['name'];
            } else {
                $info['major'] = '<i>未填写</i>';
            }


            if (!empty($info['freetime'])) {
                $ftime = array();
                $free = explode(',', $info['freetime']);
                $timeg = array(
                    '1am' => '周一上午', '1pm' => '周一下午',
                    '2am' => '周二上午', '2pm' => '周二下午',
                    '3am' => '周三上午', '3pm' => '周三下午',
                    '4am' => '周四上午', '4pm' => '周四下午',
                    '5am' => '周五上午', '5pm' => '周五下午',
                    '6am' => '周六上午', '6pm' => '周六下午',
                    '7am' => '周日上午', '7pm' => '周日下午',
                );

                foreach ($free as $key => $value) {
                    $ftime[] = $timeg[$value];
                }
                $info['freetime'] = $ftime;

            } else {
                $info['freetime'] = array();
            }

        } else {
            $info = array();
        }

        $wtime = time() - (3600 * 24 * 2);
        $warn = $this->select('warning', array('uid' => session('memberid'), 'readstatic gt' => $wtime));
        $uwarn = $this->update('warning', array('readstatic' => time()), array('uid' => session('memberid'), 'readstatic' => 0));

        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $d['minfo'] = $info;
        $d['warn'] = $warn;
        $this->display('', $d);
    }

    public function login()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }

    public function chlogin()
    {
        if (IS_POST) {
            $p = $_POST;
            $code = f_($p['code']);
            if (strtolower($code) !== session('code')) {
                echo 'code';
                return false;
            }
            $tel = $this->fvar($p['tel'], 'mob') == false ? false : $p['tel'];
            $pass = $this->fvar($p['password'], 'chup') == false ? false : $p['password'];
            if ($tel && $pass) {
                $ch = $this->getone('member_user', array('tel' => $tel));
                if ($ch) {

                    $pass = $this->pass2($pass);
                    if ($pass === $ch['password']) {
                        session('memberid', $ch['id']);
                        setcookie('realname', $ch['realname']);
                        session('islogin', 'd');
                        session('ismc', 'm');
                        $on = 'on|' . session('memberid');
                        echo $on;
                    } else {
                        echo 'err';
                        return false;
                    }
                } else {
                    echo 'err';
                    return false;
                }
            } else {
                echo 'err';
                return false;
            }
        }
    }

    public function loginout()
    {
        session('[destroy]');
        header('location:' . u_('User/login'));
        exit;
    }

    public function repass()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        if (IS_POST) {
            $p = $_POST;
            $code = f_($p['code']);
            if ($code !== session('code')) {
                return false;
            }
            $email = $this->fvar($p['email'], 'mail') == false ? false : $p['email'];
            if ($email) {
                $ch = $this->getone('member_user', array('email' => $email));
                if ($ch) {

                    $time = time();
                    if (($time - $ch['tokentime']) < conf_('CHTIME')) err_('已发送的验证仍有效，请进入邮箱验证！');
                    $token = md5(uniqid());
                    $ps['token'] = $token;
                    $ps['tokentime'] = $time;
                    $intoken = $this->update('member_user', $ps, array('email' => $email));
                    if ($intoken) {
                        import_('Lib/_email', 'lib');
                        $smtp = new smtp();
                        $mailsubject = '多多兼职网密码重置';
                        $mailbody = '点击：<a href="' . $d['info']['siteurl'] . u_('User/repass2', array('u' => $email, 't' => $token)) . '">' . $token . '</a> 重置密码';
                        $res = $smtp->sendmail($email, $mailsubject, $mailbody, 'HTML');
                        if (!$res) {
                            err_('邮件发送失败！');
                        }
                    } else {
                        err_('存储Token失败');
                    }
                } else {
                    err_('无效的邮箱');
                }
            } else {
                err_('非法的邮箱格式');
            }
        }


        $this->display('', $d);
    }

    public function repass2()
    {

        $email = get_('u');
        $token = get_('t');
        if (!$email || !$token) _404();
        $d['able'] = false;
        $d['email'] = false;
        $d['token'] = false;
        $ch = $this->getfield('member_user', 'tokentime', array('email' => $email, 'token' => $token));
        if ((time() - $ch['tokentime']) < conf_('CHTIME')) {
            $d['able'] = true;
            $d['email'] = $email;
            $d['token'] = $token;
        }
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }

    public function editrepass()
    {
        if (IS_POST) {
            $p = $_POST;
            $email = $p['u1'];
            $token = cle($p['t1']);
            $exec = false;
            $time = time();
            if ($this->fvar($p['password'], 'chup') == false || $this->fvar($p['repassword'], 'chup') == false || $p['password'] !== $p['repassword']) {
                echo 'p_err';
                return false;
            }
            $email = $this->fvar($p['u1'], 'mail') == false ? false : $p['u1'];
            if (!$email) {
                echo 'e_err';
                return false;
            }
            $ch = $this->getfield('member_user', 'tokentime', array('email' => $email, 'token' => $token));
            if (!$ch) {
                echo 'u_err';
                return false;
            }
            if (($time - $ch['tokentime']) > (int)conf_('CHTIME')) {
                echo 'o_err';
                return false;
            } else {
                unset($p['repassword'], $p['email'], $p['u1'], $p['t1']);
                $p['token'] = '';
                $p['tokentime'] = 0;
                $p['password'] = $this->pass2($p['password']);
                $exec = $this->update('member_user', $p, array('email' => $email));
            }
            if ($exec) {
                echo 'success';
                return;
            }


        }

    }

    //会员注册
    public function reg()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }

    public function chreg()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        if (IS_POST) {
            $p = $_POST;
            $ch = true;
            $err = '';
            foreach ($p as $key => $value) {
                $p[$key] = $this->fvar($value, 'html');
                $key = f_($key);
                switch ($key) {
                    case 'email':
                        if (!$this->fvar($value, 'mail')) {
                            $err .= 'email,';
                            $ch = false;
                        }
                        break;
                    case 'realname':
                        if (!zh_($value)) {
                            $err .= 'realname,';
                            $ch = false;
                        }
                        break;
                    case 'tel':
                        if (!$this->fvar($value, 'mob')) {
                            $err .= 'tel,';
                            $ch = false;
                        }
                        break;
                    case 'mid':
                        if (!isMid($value)) {
                            $err .= 'mid,';
                            $ch = false;
                        }
                        break;
                    case 'password':
                        if (!$this->fvar($value, 'chup')) {
                            $err .= 'password,';
                            $ch = false;
                        }
                        break;
                    case 'repassword':
                        if (!$this->fvar($value, 'chup') || $value !== $p['password']) {
                            $err .= 'repassword,';
                            $ch = false;
                        }
                        break;
                    case 'code':
                        if ($value !== session('code')) {
                            $err .= 'code,';
                            $ch = false;
                        }
                        break;
                }

            }

            if ($ch === false) {
                echo rtrim($err, ',');
                return false;
            }
            if ($ch === true) {
                $chemail = $this->select('member_user', array('email or' => $_POST['email'], 'tel or' => $p['tel'], 'mid' => $p['mid']));
                if ($chemail) {
                    $restr = '';
                    foreach ($chemail as $key => $value) {
                        if (in_array($_POST['email'], $value)) {
                            $restr .= 'reemail,';
                        }
                        if (in_array($p['tel'], $value)) {
                            $restr .= 'retel,';
                        }
                        if (in_array($_POST['mid'], $value)) {
                            $restr .= 'remid,';
                        }
                    }
                    $restr = rtrim($restr, ',');
                    echo $restr;
                    exit;
                }

                $p['sex'] = (int)$p['sex'];
                if (isset($p['id'])) unset($p['id']);
                $token = md5(uniqid());
                $time = time();
                $email = $p['email'];
                $p['token'] = $token;
                $p['tokentime'] = $time;
                $p['regtime'] = $time;
                //默认级别和服务到期时间
                $p['grade'] = 1;
                $gradedate = $this->getfield('member_grade', 'sertime', array('id' => 1));
                $gtime = (int)$gradedate['sertime'];
                $p['endstime'] = strtotime("+$gtime month");
                //end

                unset($p['repassword'], $p['code']);
                $p['password'] = $this->pass2($p['password']);
                $p['addtype'] = 1;
                $add = $this->add('member_user', $p);
                if ($add) {
                    $pm['uid'] = $add;
                    $addm = $this->add('member', $pm);
                    if (!$addm) {
                        echo 'reg_err1';
                        exit;
                    }
                    import_('Lib/_email', 'lib');
                    $smtp = new smtp();
                    $mailsubject = '多多兼职网账号激活';
                    $mailbody = '点击：<a href="' . $d['info']['siteurl'] . u_('User/reg2', array('u' => $email, 't' => $token)) . '">' . $token . '</a> 激活您的账号';
                    $res = $smtp->sendmail($email, $mailsubject, $mailbody, 'HTML');
                    if (!$res) {
                        echo 'reg_err1';
                        exit;
                    } else {
                        echo '激活邮件发送成功！';
                    }
                } else {
                    echo 'reg_err2';
                    exit;
                }
            }
        }
    }

    public function regtip()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);

    }

    public function regtip2()
    {
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);

    }

    public function reg2()
    {
        $m = get_('u');
        $t = get_('t');
        if (!$m || !$t) _404();
        $ch = $this->getone('member_user', array('email' => $m, 'token' => $t));
        if ($ch) {
            $p['locks'] = 1;
            $p['token'] = '';
            $p['tokentime'] = 0;
            $ex = $this->update('member_user', $p, array('email' => $m, 'token' => $t));
            if ($ex) {
                header('location:' . u_('User/regtip2'));
            } else {
                err_('很遗憾，激活失败，请稍后重试！');
            }
        } else {
            _404();
        }
    }

    //修改会员资料
    public function editmember()
    {

        if (!session('memberid') || get_('id') != session('memberid')) _404();
        if (IS_POST) {
            $p = $_POST;
            foreach ($p as $k => $v) {
                if (!is_array($v))
                    $p[$k] = $this->fvar($v, 'html');
            }
            if (empty($p['id']) || !isset($p['id']) || f_($p['id']) == '') _404();

            if (isset($p['stature']) && !empty($p['stature']) && ($p['stature'] < 40 || $p['stature'] > 280)) {
                err_('身高填写错误');

            }
            if (!empty($p['stature']) && ($p['weight'] < 10 || $p['weight'] > 300)) {
                err_('体重填写错误');

            }

            if (isset($p['education'])) {
                if ($p['education'] != 0 && f_($p['education']) == '')
                    err_('学历格式不正确');
            }
            if (isset($p['toyear'])) {
                if ($p['toyear'] < 2007 || f_($p['toyear']) == '')
                    err_('学届信息必须填写正确');
            }
            if (isset($p['major_id'])) {
                if ($p['major_id'] < 1 || f_($p['major_id']) == '')
                    err_('学届信息必须填写正确');
            }
            unset($p['id']);

            $umi = $this->update('member', $p, array('uid' => session('memberid')));
            if ($umi) {
                header('location:' . u_('User/index', array('id' => session('memberid'))));
                exit;
            } else {

                err_('修改资料失败，请稍后重试！');
            }

        }
        $uid = session('memberid');
        $mu = array();
        $mi = array();
        $mu = $this->getone('member_user', array('id' => session('memberid')));
        $mi = $this->getone('member', array('uid' => $uid));
        $major = $this->select('major');
        $d['major'] = $major;
        $school = $this->select('school');
        $d['school'] = $school;
        $campus = $this->select('campus');
        $arr = array();
        if (!empty($campus)) {
            foreach ($campus as $key => $v) {
                $arr[$v['scho_id']][$v['id']] = $campus[$key];
            }
        }
        $d['minfo'] = array_merge($mu, $mi);
        $d['campus'] = $arr;
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }


    public function editfreetime()
    {
        if (IS_POST) {
            $p = $_POST;
            $freetime = '';
            foreach ($p['freetime'] as $key => $value) {
                $freetime .= $value . ',';
            }
            $p['freetime'] = rtrim($freetime, ',');
            $exec = $this->update('member', $p, array('uid' => session('memberid')));
            if ($exec) {
                header('location:' . u_('User/index', array('id' => session('memberid'))));
                exit;
            } else {
                header('location:' . $_SERVER["HTTP_REFERER"]);
                exit;
            }
        }
        $ch = $this->getone('member', array('uid' => session('memberid')));
        $ch['freetime'] = explode(',', $ch['freetime']);
        $d['minfo'] = $ch;
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }

    public function editpass()
    {
        if (IS_POST) {
            $p = $_POST;
            $chh = $this->getfield('member_user', 'password', array('id' => session('memberid')));
            if ($this->pass2($p['opassword']) <> $chh['password']) {
                err_('旧密码输入不正确！');
            }
            $p['password'] = $this->fvar($p['password'], 'chup') == false ? err_('密码格式不正确') : $p['password'];
            $p['repassword'] = $this->fvar($p['repassword'], 'chup') == false ? err_('确认密码格式不正确') : $p['repassword'];
            if ($p['password'] <> $p['repassword']) {
                err_('确认密码不一致！');
            }
            $p['password'] = $this->pass2($p['password']);
            unset($p['opassword'], $p['repassword']);
            $exec = $this->update('member_user', $p, array('id' => session('memberid')));
            if ($exec) {
                suc_(u_('User/index', array('id' => session('memberid'))), '修改密码成功！');
                //header('location:'.u_('User/index',array('id'=>session('memberid'))));
                exit;
            } else {
                err_('修改密码失败！');
            }
        }

        $ch = $this->getone('member_user', array('id' => session('memberid')));
        $d['minfo'] = $ch;
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);

    }


    public function mynearadd()
    {
        if (!session('memberid') || get_('id') != session('memberid')) _404();
        $a = PFIX . 'jobs';
        $b = PFIX . 'jobnamelist';
        $mid = session('memberid');
        $time5 = time();
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $jobs = $this->query("SELECT $a.id,$a.title,$a.job,$b.regtime,$b.cancel,$b.admi FROM $a,$b
							WHERE $a.id = $b.jobs_id 
							AND $b.mem_id = $mid 
							AND $a.endtime > $time5
							AND  $a.end = 0
							ORDER BY $a.addtime DESC
							LIMIT $xs,$xe;
			");
        if (!$jobs) {
            $jobs = array();
        }
        $d['page'] = $x->showP($this->affnum);
        $a = PFIX . 'trains';
        $b = PFIX . 'trainsnamelist';
        $trains = $this->query("SELECT $a.id,$a.title,$a.cname,$b.regtime,$b.sub,$b.arrive FROM $a,$b
							WHERE $a.id = $b.trai_id AND $b.mem_id = $mid 
							ORDER BY $a.addtime DESC;
			");
        if (!$trains) {
            $trains = array();
        }

        $d['jobs'] = $jobs;


        $d['trains'] = $trains;
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }


    public function canceljob()
    {
        if (!session('memberid')) _404();
        $m = m_('Web');
        $id = get_('id');
        $p['cancel'] = 1;
        $mdatau = $this->getone('member_user', array('id' => session('memberid')));

        $se = $this->getfield('jobnamelist', 'cancel,canceltime', array('jobs_id' => $id, 'mem_id' => session('memberid')), 'canceltime DESC');

        if ($mdatau['endstime'] < time()) {
            err_('Sorry!  您的账号服务已到期！');
        }

        $frozen = $this->getfield('frozen', 'ztimes,ztimee', array('uid' => session('memberid'), 'ztimee gt' => time(), 'static' => 1));
        if ($frozen) {
            err_('Sorry!  您的账号目前处于被冻结状态！');
        }

        $limit = $this->getfield('limit', 'limittimes,limittimee', array('uid' => session('memberid'), 'limittimee gt' => time(), 'static' => 1));
        if ($limit) {
            err_('Sorry!  您的账号目前处于被限制状态！');
        }

        $chbs = $this->getfield('jobs', 'id,cname,jobtimestart,mnums,auditing,end,endtime', array('id' => $id));

        $jncount = $this->getcount('jobnamelist', array('jobs_id' => $chbs['id'], 'cancel' => 0));
        if ($jncount >= $chbs['mnums'] && $se['cancel'] == 1) {
            err_('该职位申请人数已满！');
        }

        if ($m->blist($chbs['cname']) || (int)$chbs['auditing'] == 0 || (int)$chbs['end'] == 1 || (int)$chbs['endtime'] < time())
            err_('该职位已结束申请，无法再进行相关操作！');


        if (!$se) err_('操作失败');
        if ($se['cancel'] == 1) {
            $p['cancel'] = 0;
        }

        $ccltime = time() - 3600 * 3;
        $cancelt = $this->getone('jobnamelist', array('mem_id' => session('memberid'), 'canceltime gt' => $ccltime));
        if ($p['cancel'] == 0 && $cancelt) {
            err_('Sorry! 距离上次取消预订的报名还没有过3个小时的时间！请继续等待');
        }

        $vvvtime = time() - 3600 * 24;
        $cancelv = $this->getone('jobnamelist', array('mem_id' => session('memberid'), 'canceltime gt' => $vvvtime));
        if ($p['cancel'] == 1 && $cancelv) {
            err_('Sorry! 24小时内只能退订一次');
        }

        if ($p['cancel'] == 1) {
            $p['canceltime'] = time();
        }
        if ($p['cancel'] === 0) {
            $maxctime = $this->getfield('jobnamelist', 'canceltime', array('mem_id' => session('memberid')), 'canceltime DESC');
            $p['canceltime'] = $maxctime['canceltime'];
            if ((int)$p['canceltime'] > time() - 3600 * 3) {
                err_('Sorry! 3个小时內只能进行一次申请预订操作');
            }
        }

        $lastjob = $this->select('jobnamelist', array('mem_id' => session('memberid')));

        if ($p['cancel'] === 0 && $lastjob && strtotime($chbs['jobtimestart']) && strtotime($chbs['jobtimeend'])) {

            $lastjobid = '';
            foreach ($lastjob as $k => $v) {
                if ($v['jobs_id'] == get_('id')) {
                    continue;
                }
                $lastjobid .= $v['jobs_id'] . ',';
            }
            $lastjobid = rtrim($lastjobid, ',');

            $nnjobs = $this->select('jobs', array('id in' => $lastjobid));
            $chbst = strtotime($chbs['jobtimestart']);
            $chben = strtotime($chbs['jobtimeend']);
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

        $exec = $this->update('jobnamelist', $p, array('jobs_id' => $id));
        if (!$exec) err_('操作失败');
        else header('location:' . u_('User/mynearadd', array('id' => session('memberid'))));

    }

    public function canceltrains()
    {
        if (!session('memberid')) _404();
        $id = get_('id');

        $m = m_('Web');
        $chbs = $this->getfield('trains', 'cname,put,endtime', array('id' => $id));
        if ($m->blist($chbs['cname']) || $chbs['put'] == 0)
            err_('该活动暂时无法被申请！');

        if (((int)$chbs['endtime'] - time()) < (3600 * 3))
            err_('抱歉！只有报名截止时间提前三个小时才可以退订');
        $p['sub'] = 1;
        $se = $this->getfield('trainsnamelist', 'sub,canceltime', array('trai_id' => $id));
        if (!$se) err_('操作失败');
        if ($se['sub'] == 1) {
            $p['sub'] = 0;
        }

        $ccltime = time() - 3600 * 3;
        $cancelt = $this->getone('trainsnamelist', array('mem_id' => session('memberid'), 'canceltime gt' => $ccltime));
        if ($p['sub'] == 0 && $cancelt) {
            err_('Sorry! 距离上次取消预订的报名还没有过3个小时的时间！请继续等待');
        }

        $vvvtime = time() - 3600 * 24;
        $cancelv = $this->getone('trainsnamelist', array('mem_id' => session('memberid'), 'canceltime gt' => $vvvtime));
        if ($p['sub'] == 1 && $cancelv) {
            err_('Sorry! 24小时内只能退订一次');
        } elseif ($p['sub'] == 1) {
            $p['canceltime'] = time();
        }

        $lastjob = $this->select('trainsnamelist', array('mem_id' => session('memberid')));

        if ($p['sub'] == 0 && $lastjob) {
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

        $exec = $this->update('trainsnamelist', $p, array('trai_id' => $id));
        if (!$exec) err_('操作失败');
        else header('location:' . u_('User/mynearadd', array('id' => session('memberid'))));
    }

    public function historyadd()
    {
        if (!session('memberid') || get_('id') != session('memberid')) _404();
        $a = PFIX . 'jobs';
        $b = PFIX . 'jobnamelist';
        $mid = session('memberid');
        $time5 = time();
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $jobs = $this->query("SELECT $a.id,$a.title,$a.job,$b.regtime FROM $a,$b
							WHERE $a.id = $b.jobs_id 
							AND $b.mem_id = $mid 
							AND ($a.endtime < $time5
							OR  $a.end = 1)
							AND $b.admi = 1
							AND $b.cancel = 0
							ORDER BY $a.addtime DESC LIMIT $xs,$xe;
			");
        if (!$jobs) {
            $jobs = array();
        }
        $d['page'] = $x->showP($this->affnum);
        $a = PFIX . 'trains';
        $b = PFIX . 'trainsnamelist';

        $trains = $this->query("SELECT $a.id,$a.title,$a.cname,$b.regtime FROM $a,$b
							WHERE $a.id = $b.trai_id 
							AND $a.starttime < $time5 
							AND $b.mem_id = $mid 
							AND $b.arrive = 1
							AND $b.sub = 0
							ORDER BY $a.addtime DESC;
			");
        if (!$trains) {
            $trains = array();
        }
        $d['jobs'] = $jobs;

        $d['trains'] = $trains;
        $site = m_('Web');
        $d['info'] = $site->siteinfo();
        $this->display('', $d);
    }


    public function chcode()
    {
        if (IS_POST) {
            $p = $_POST;
            $code = f_($p['code']);
            if ($code !== session('code')) {
                echo 'err';
                return false;
            } else {
                echo 'on';
            }
        }

    }


    public function code()
    {
        import_('Lib/_code', 'lib');
        $_vc = new ValidateCode();
        $_vc->doimg();
        session('code', $_vc->getCode());
    }

}