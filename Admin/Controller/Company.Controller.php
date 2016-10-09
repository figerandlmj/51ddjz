<?php defined('DLIVE') or exit();


class CompanyController extends CommonController
{

    public function __construct()
    {
        parent::__construct();
        $this->areas = $this->get_area();
    }


    private function get_area()
    {
        $fs = $this->getfield('admins', 'area_id', array('id' => session('userid')));
        $ids = $fs['area_id'];
        return $ids;
    }


    public function index()
    {
        $data['areas'] = $this->select('area');
        $data['industry'] = $this->select('industry');
        $data['admins'] = $this->select('admins');
        $data['comptype'] = $this->select('comptype');
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();

        if (IS_GET && isset($_GET['search'])) {

            $a = PFIX . 'company_user';
            $b = PFIX . 'company';
            $c = PFIX . 'area';
            $d = PFIX . 'industry';
            $e = PFIX . 'admins';
            $f = PFIX . 'visit';
            $g = PFIX . 'comptype';
            $p = $_GET;
            $w = '';

            $tys = " AND $a.types = $g.id";
            if ($p['types'] > 0) {
                $t1 = (int)$p['types'];
                $w .= " AND $a.types = $t1";

            }

            if ($p['area'] > 0) {
                $t2 = (int)$p['area'];

                $w .= " AND $a.area_id = $t2";

            }

            if ($p['industry_id'] > 0) {
                $t3 = (int)$p['industry_id'];
                $w .= " AND $a.industry_id = $t3";

            }

            if (trim($p['cname']) != '') {
                $t4 = $p['cname'];
                $w .= " AND $a.cname LIKE '%" . $t4 . "%'";
            }
            //地址
            if (trim($p['addr']) != '') {
                $t5 = $p['addr'];
                $w .= " AND $b.addr LIKE '%" . $t5 . "%'";
            }
            //重点企业
            if (isset($p['important'])) {
                $t6 = (int)$p['important'];
                $w .= " AND $b.important = $t6";
            }
            //路线
            if (trim($p['route']) != '') {
                $t7 = $p['route'];
                $w .= " AND $b.route LIKE '%" . $t7 . "%'";
            }
            //联系人
            if (trim($p['mlinkman1']) != '') {
                $t8 = $p['mlinkman1'];
                $w .= " AND $a.mlinkman LIKE '%" . $t8 . "%'";
            }
            //电话
            if (trim($p['mlinkman2']) != '') {
                $t9 = $p['mlinkman2'];
                $w .= " AND $a.mlinkman LIKE '%" . $t9 . "%'";
            }
            //是否激活
            if (is_numeric($p['locks'])) {
                $t10 = (int)$p['locks'];
                $w .= " AND $a.locks = $t10";
            }
            //拜访天数 //可优化  Group by
            if (isset($p['novisit']) || (isset($p['novisit']) && is_numeric($p['visit']))) {
                $getv = $this->select('visit');
                $vids = array();
                foreach ($getv as $key => $value) {
                    $vids[$value['com_id']] = $value['com_id'];
                }
                $vid = implode(',', $vids);
                $w .= " AND $a.id NOT IN($vid)";
            }
            if (!isset($p['novisit']) && is_numeric($p['visit'])) {
                $t11 = time() - (((int)$p['visit']) * 3600 * 24);
                $getv1 = $this->select('visit');
                $vids1 = array();
                foreach ($getv1 as $key => $value) {
                    if ($value['vistime'] < $t11) {
                        $vids1[$value['com_id']] = $value['com_id'];
                    } else {
                        unset($vids1[$value['com_id']]);
                        continue;
                    }
                }
                $vid1 = implode(',', $vids1);
                $w .= " AND $a.id IN($vid1)";
            }
            //是否合作
            if (is_numeric($p['coop'])) {
                $t12 = (int)$p['coop'];
                $w .= " AND $b.coop = $t12";
            }
            //是否黑名单
            if (is_numeric($p['blist'])) {
                $t13 = (int)$p['blist'];
                $getb = $this->select('blist');
                $bids = array();
                foreach ($getb as $key => $value) {
                    $bids[$value['com_id']] = $value['com_id'];
                }
                $bid = implode(',', $bids);
                if ($t13 == 1) {
                    $w .= " AND $a.id IN($bid)";
                }
                if ($t13 === 0) {
                    $w .= " AND $a.id NOT IN($bid)";
                }

            }
            //添加人
            $ads = " AND $a.ad_id = $e.id";
            if ($p['ad_id'] > 0) {
                $t10 = (int)$p['ad_id'];
                $w .= " AND $a.ad_id = $t10";

            }

            if (trim($p['regtime1']) != '') {
                $t13 = strtotime($p['regtime1']) - 1;
                $w .= " AND $a.regtime > $t13";
                if (trim($p['regtime2']) != '') {
                    $t14 = strtotime($p['regtime2']) + (3600 * 24) + 1;
                    $w .= " AND $a.regtime < $t14";
                }
            }
            if (!empty($w) || $p['types'] > 0 || $p['ad_id'] > 0) {
                $qstr = "SELECT $b.*,$a.*,$d.name,$c.title,$e.realname,$g.types
                    FROM $a,$b,$c,$d,$e,$g
                    WHERE $a.id = $b.uid
                    AND $a.industry_id = $d.id 
                    $ads
                    $tys
                    AND $a.area_id = $c.id
                    $w
                    ORDER BY $a.regtime DESC
                    LIMIT $xs,$xe";
                $exec = $this->query($qstr);


            } elseif (empty($w) && $p['types'] == 0 && $p['ad_id'] == 0) {
                err_('没有设置查询条件');
            }

            $data['puts'] = $_GET['puts'];

        } else {
            $data['puts'] = array('cname', 'industry', 'mlinkman1', 'mlinkman2', 'regtime');
            $a = PFIX . "company_user";
            $b = PFIX . "industry";
            //AND $a.area_id IN(".$this->areas.")
            $exec = $this->query("SELECT $a.*,$b.name
                                      FROM $a,$b
                                      WHERE $a.industry_id = $b.id
                                      ORDER BY $a.regtime DESC
                                      LIMIT $xs,$xe");
        }
        if (!$exec) $exec = array();
        $data['page'] = $x->showP($this->affnum);
        $data['list'] = $exec;

        $this->display('', $data);
    }

    //添加企业
    public function addcompany()
    {
        $info['areas'] = $this->select('area');
        $inds = $this->select('industry');

        if (IS_POST) {
            $post = $_POST;
            foreach ($post as $key => $value) {
                $val = $this->fvar(trim($value), 'html');
                if (empty($val) && $key != 'email') {
                    err_('信息填写不完整');
                    return false;
                }
            }
            $post['cname'] = zh_($post['cname']) == false ? err('非法的企业名称') : $post['cname'];

            $post['mlinkman'] = trim($post['mlinkman']);
            if (f_($post['email']) != '') {
                $post['email'] = $this->fvar($post['email'], 'mail') ? $post['email'] : err_('错误的邮箱格式');
            }

            $sub = (int)$post['sub'];
            unset($post['sub']);
            $post['regtime'] = time();
            $post['ad_id'] = session('userid') != false ? session('userid') : 1;
            $post['locks'] = intval($post['locks']);
            $post['types'] = intval($post['types']);


            $add = $this->add('company_user', $post);
            if (!$add) err_('添加企业失败');
            elseif ($sub == 1) {
                header("location:" . u_('Company/index'));
            } elseif ($sub == 2) {
                header("location:" . u_('Company/companyinfo', array('uid' => $add)));
            }
        }
        $info['inds'] = $inds;
        $info['types'] = $this->select('comptype');
        $this->display('', $info);

    }


    public function editcompany_u()
    {
        $id = get_('id');
        if (IS_POST) {
            $post = $_POST;
            foreach ($post as $key => $value) {
                $val = $this->fvar(trim($value), 'html');
                if (empty($val) && $key != 'email') err_($key . '信息填写不完整');
            }
            $post['cname'] = zh_($post['cname']) == false ? err_('非法的企业名称') : $post['cname'];

            $post['mlinkman'] = trim($post['mlinkman']);

            if (f_($post['email']) != '') {
                $post['email'] = $this->fvar($post['email'], 'mail') ? $post['email'] : err_('错误的邮箱格式');
            }

            unset($post['sub']);

            $post['locks'] = intval($post['locks']);
            $post['types'] = intval($post['types']);

            $fid = $post['id'];
            unset($post['id']);
            $add = $this->update('company_user', $post, array('id' => $fid));
            if (!$add) err_('操作失败');
            else {
                header("location:" . u_('Company/index'));
            }
        }
        $inds = $this->query("SELECT id,name FROM " . PFIX . "industry");
        $data['inds'] = $inds;
        $data['areas'] = $this->select('area');
        $info = $this->getone('company_user', array('id' => $id));
        $data['info'] = $info;
        $data['types'] = $this->select('comptype');

        $this->display('', $data);
    }


    public function companyinfo()
    {
        $uid = get_('uid');
        if (!$uid) err_('缺少执行参数');
        $ck = $this->getone('company_user', array('id' => $uid));
        if (!$ck) err_('非法操作');
        $get = $this->getone('company', array('uid' => $uid));
        if (IS_POST) {
            $post = $_POST;
            $aore = isset($post['aore']) ? $post['aore'] : 0;
            unset($post['aore']);
            $post['uid'] = (int)$post['uid'];
            $post['addr'] = $this->fvar(f_($post['addr']), 'html');
            if (f_($post['route']) != '') {
                $post['route'] = $this->fvar(f_($post['route']), 'html');
            }
            if (f_($post['chttp']) != '') {
                $post['chttp'] = $this->fvar($post['chttp'], 'url') ? $post['chttp'] : err_('错误的网址格式');
            }

            $cinfo = f_($post['cinfo']);
            if (empty($cinfo) || mb_strlen($cinfo) < 20) {
                err_('企业简介字数必须过短');
            }
            $post['cinfo'] = $this->fvar($post['cinfo'], 'html');
            $post['remarks'] = $this->fvar($post['remarks'], 'html');

            if ($aore == 0) {
                $post['coop'] = 0;
                $post['important'] = 0;
                $post['locktime'] = 0;
                $exec = $this->add('company', $post);
            } elseif ($aore == 1) {

                $exec = $this->update('company', $post, array('uid' => $post['uid']));
            }
            if (!$exec) err_('操作失败');
            else {
                header("location:" . u_('Company/index'));
            }

        }


        if ($get) {
            $data['info'] = $get;
            $data['info']['aore'] = 1;

        } else {
            $data['info'] = array('addr' => '', 'route' => '', 'email' => '', 'chttp' => '', 'cinfo' => '', 'remarks' => '');
            $data['info']['aore'] = 0;
        }
        $data['info']['cname'] = $ck['cname'];
        $data['info']['uid'] = $uid;
        $this->display('', $data);
    }


    public function compattr()
    {
        $uid = get_('uid');
        if (!$uid) err_('缺少执行参数');
        $ck = $this->getone('company_user', array('id' => $uid));
        if (!$ck) err_('非法操作');
        $get = $this->getone('company', array('uid' => $uid));
        if (IS_POST) {
            $post = $_POST;
            $aore = $post['aore'];
            unset($post['aore']);

            $post['uid'] = (int)$post['uid'];
            $post['coop'] = 0;
            if (isset($post['cooptime']) && cle($post['cooptime']) != '') {
                $post['coop'] = 1;
                $post['cooptime'] = strtotime($post['cooptime']);
            }
            $post['important'] = (int)$post['important'];


            if ($aore == 0) {
                $exec = $this->add('Company', $post);
            } elseif ($aore == 1) {
                $exec = $this->update('Company', $post, array('uid' => $post['uid']));
            }
            if (!$exec) err_('操作失败');
            else {
                header("location:" . u_('Company/index'));
            }
        }

        if ($get) {
            $data['info'] = $get;
            $data['info']['aore'] = 1;

        } else {
            $data['info'] = array('coop' => 0, 'important' => 0);
            $data['info']['aore'] = 0;
            $data['info']['locktime'] = 0;
        }
        $blist = $this->getone('blist', array('com_id' => $uid));

        $data['info']['blist'] = $blist === false ? 0 : 1;
        $data['info']['cname'] = $ck['cname'];
        $data['info']['uid'] = $uid;
        $this->display('', $data);

    }

    public function blist()
    {
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $list = $this->select("blist", NULL, "$xs,$xe", 'addtime DESC');
        $data['page'] = $x->showP($this->affnum);
        if ($list) {
            foreach ($list as $key => $value) {

                $f1 = $this->getfield('company_user', 'cname', array('id' => $value['com_id']));
                $list[$key]['cname'] = $f1['cname'];
                $f2 = $this->getfield('admins', 'realname', array('id' => $value['ad_id']));
                $list[$key]['adname'] = $f2['realname'];

            }
        } else {
            $list = array();
        }
        $data['list'] = $list;
        $this->display('', $data);
    }

    public function delcompany()
    {

        $id = get_('id');

        $ch2 = $this->getone('jobs', array('comp_id' => $id, 'endtime gt' => time()));
        $ch3 = $this->getone('trains', array('comp_id' => $id, 'endtime gt' => time()));
        if ($ch2 || $ch3) {
            err_('该企业下尚有有效信息存在，不可直接删除，您可以采取锁定操作！');
        }
        $del1 = $this->delete('company', array('uid' => $id));
        $del2 = $this->delete('company_user', array('id' => $id)); //需要判断其下是否存在附属信息
        if (!$del2) {
            err_('删除失败');
        } else {
            header("location:" . u_('Company/index'));
        }

    }

    public function addblist()
    {
        if (IS_POST) {
            $post = $_POST;
            $post['reason'] = f_($post['reason']);
            if (empty($post['reason'])) {
                err_('黑名单原因未填写');
            }
            $post['addtime'] = time();
            $post['ad_id'] = session('userid');
            $add = $this->add('blist', $post);
            if (!$add) err_('添加失败');
            else {
                header("location:" . u_('Company/index'));
            }
        }
        $cid = get_('cid');
        $cname = get_('cname');
        $data['cid'] = $cid;
        $data['cname'] = $cname;
        $this->display('', $data);
    }


    public function delblist()
    {
        if (get_('id'))
            $del = $this->delete('blist', array('id' => get_('id')));
        elseif (get_('cid'))
            $del = $this->delete('blist', array('com_id' => get_('cid')));
        else err_('非法操作');

        if (!del) err_('解除失败');
        else header("location:" . $_SERVER['HTTP_REFERER']);
    }


    public function industry()
    {
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $list = $this->select('industry', null, "$xs,$xe", 'id DESC');

        if (!$list) $list = array();
        $data['list'] = $list;

        $data['page'] = $x->showP($this->affnum);
        $this->display('', $data);
    }

    public function addindustry()
    {
        if (IS_POST) {
            $post = $_POST;
            $chname = f_($post['name']);
            if (empty($chname)) err_('不合法的行业名称');
            $ch = $this->getone('industry', array('name' => $post['name'], 'id nq' => $post['id']));
            if ($ch) err_('行业名称已存在');
            $psot['info'] = f_($post['info']);
            $add = $this->add('industry', $post);
            if (!$add) err_('添加行业失败');
            else header("location:" . u_('Company/industry'));
        }

        $this->display();
    }

    public function editindustry()
    {
        if (IS_POST) {
            $post = $_POST;
            $ch = $this->getone('industry', array('name' => $post['name'], 'id nq' => $post['id']));
            if ($ch) err_('行业名称已存在');
            $post['name'] = f_($post['name']) == '' ? err_('不合法的行业名称') : $post['name'];
            $psot['info'] = f_($post['info']);
            $add = $this->update('industry', $post, array('id' => (int)$post['id']));
            if (!$add) err_('编辑行业失败');
            else {
                header("location:" . u_('Company/industry'));
            }
        }
        $info = $this->getone('industry', array('id' => (int)get_('id')));
        $data['info'] = $info;

        $this->display('', $data);
    }

    public function delindustry()
    {
        $id = get_('id');
        if (!$id) err_('未知的参数');
        $exec = $this->delete('industry', array('id' => $id));
        if (!$exec)
            err_('删除失败');
        else
            header("location:" . u_('Company/industry'));
        $this->display();
    }

    public function area()
    {
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $a = PFIX . 'area';
        $b = PFIX . 'admins';

        $list = $this->select('area', null, "$xs,$xe", 'id DESC');
        $rname = $this->select('admins');
        foreach ($list as $key => $value) {
            $list[$key]['realname'] = '';
            foreach ($rname as $k => $v) {
                $arr = explode(',', $v['area_id']);
                if (in_array($value['id'], $arr)) {
                    $list[$key]['realname'] .= '[' . $v['realname'] . ']';
                }
            }
        }
        if (!$list) $list = array();
        $data['list'] = $list;
        $data['page'] = $x->showP($this->affnum);

        $this->display('', $data);
    }

    public function addarea()
    {

        if (IS_POST) {
            $post = $_POST;
            $psot['title'] = f_($post['title']);
            if (empty($psot['title']))
                err_('区域名称不能为空');
            $ch = $this->getone('area', array('title' => $post['title'], 'id nq' => $post['id']));
            if ($ch) err_('区域名称已存在');
            $add = $this->add('area', $post);
            if (!$add) err_('添加区域失败');
            else header("location:" . u_('Company/area'));
        }
        $admin = $this->select('admins');
        $data['admins'] = $admin;
        $this->display('', $data);
    }

    public function editarea()
    {
        if (IS_POST) {
            $post = $_POST;
            $psot['title'] = f_($post['title']);
            $ch = $this->getone('area', array('title' => $post['title'], 'id nq' => $post['id']));
            if ($ch) err_('区域名称已存在');
            $add = $this->update('area', $post, array('id' => $post['id']));
            if (!$add) err_('编辑区域失败');
            else header("location:" . u_('Company/area'));
        }
        $info = $this->getone('area', array('id' => (int)get_('id')));
        $data['info'] = $info;
        $admin = $this->select('admins');
        $data['admins'] = $admin;
        $this->display('', $data);
    }

    public function delarea()
    {
        $id = get_('id');
        if (!$id) err_('未知的参数');
        $exec = $this->delete('area', array('id' => $id));
        if (!$exec)
            err_('删除失败');
        else
            header("location:" . u_('Company/area'));
        $this->display();
    }

    public function comptype()
    {
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $list = $this->select("comptype", null, "$xs,$xe");
        if (!$list) $list = array();
        $x = new Page($list, get_('p'));
        $data['list'] = $list;
        $data['page'] = $x->showP($this->affnum);
        $this->display('', $data);
    }

    public function addctype()
    {
        if (IS_POST) {
            $post = $_POST;
            $psot['types'] = f_($post['types']);
            if (empty($psot['types']))
                err_('类型不能为空');
            $ch = $this->getone('comptype', array('types' => $post['types']));
            if ($ch) err_('该类型已存在');
            $add = $this->add('comptype', $post);
            if (!$add) err_('添加类型失败');
            else header("location:" . u_('Company/comptype'));
        }
        $this->display();
    }

    public function editctype()
    {
        if (IS_POST) {
            $post = $_POST;
            $psot['types'] = f_($post['types']);
            $ch = $this->getone('comptype', array('types' => $post['types']));
            if ($ch) err_('类型名称已存在');
            $add = $this->update('comptype', $post, array('id' => (int)$post[id]));
            if (!$add) err_('编辑类型失败');
        }
        $info = $this->getone('comptype', array('id' => (int)get_('id')));
        $data['info'] = $info;
        $this->display('', $data);
    }

    public function delctype()
    {
        $id = get_('id');
        if (!$id) err_('未知的参数');
        $exec = $this->delete('comptype', array('id' => $id));
        if (!$exec)
            err_('删除失败');
        else
            header("location:" . u_('Company/comptype'));
        $this->display();
    }

    //拜访
    public function visit()
    {
        $ad_id = session('userid');
        $adn = '';
        $uidstr = ' AND';

        if (!empty($ad_id)) {
            $adn = ' AND a.ad_id = ' . $ad_id;
        }
        if (get_('uid')) {
            $adn .= $uidstr . " a.com_id = " . (int)get_('uid');
        }


        if (get_('mym') && get_('mym') == 1) {
            $adn = '';
        }

        // p_($adn);
        $a = PFIX . 'visit';
        $b = PFIX . 'company_user';
        $c = PFIX . 'admins';

        $pand = '';
        if (IS_POST) {
            $p = $_POST;
            $setime = strtotime(date("Y-m-d", time()));
            $setime = strtotime($p['vistime1']);
            $pand .= " AND a.vistime > $setime";
            if (trim($p['vistime2']) != '') {
                $setime2 = strtotime($p['vistime2']);
                $pand .= " AND  a.vistime < $setime2";
            }

            if (trim($p['cname']) != '') {
                $pand .= " AND b.cname LIKE '%" . $p['cname'] . "%'";
            }
            if ((int)$p['ad_id'] > 0) {
                $pand .= " AND a.ad_id=" . (int)$p['ad_id'];
            }
        }
        if (!empty($pand)) {
            $adn = '';
        }
        $adn .= $pand;

        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $qstr = "SELECT a.*,b.cname,c.realname
                                  FROM $a AS a, $b AS b ,$c AS c
                                  WHERE a.com_id = b.id
                                  AND a.ad_id = c.id
                                  $adn
                                  ORDER BY addtime DESC
                                  LIMIT $xs,$xe";
        // p_($qstr);
        $data = $this->query($qstr);
        if (!$data) $data = array();
        $data['list'] = $data;
        $data['page'] = $x->showP($this->affnum);

        $admins = $this->select('admins');
        $data['ads'] = $admins;
        $data['uid'] = 0;
        if (get_('uid')) {
            $data['uid'] = (int)get_('uid');
        }
        $this->display('', $data);
    }

    public function addvisit()
    {
        //$ad_id = session('userid');
        if (IS_POST) {
            $p = $_POST;
            if (!zh_($p['cname'])) err_('非法的企业名称');
            $cnameID = $this->getfield('company_user', 'id', array('cname' => $p['cname']));
            if (!$cnameID) err_('该企业尚未注册，请先注册该企业');
            $cnameID = $cnameID['id'];
            $p['ad_id'] = session('userid');
            $p['com_id'] = $cnameID;
            $p['vistime'] = strtotime(f_($p['vistime']));
            $p['methods'] = f_($p['methods']);
            $p['info'] = f_($p['info']);
            $p['addtime'] = time();
            unset($p['cname']);
            if (trim(strip_tags($p['info'])) == '') {
                err_('拜访内容必须填写');
            }
            //var_export($p); exit;
            $add = $this->add('visit', $p);
            if (!$add) err_('添加失败');
            elseif (get_('uid')) {
                header("location:" . u_('Company/visit', array('uid' => (int)get_('uid'))));
            } else {
                header("location:" . u_('Company/visit'));
            }
        }
        $d['cname'] = '';
        if (get_('uid')) {
            $uid = (int)get_('uid');
            $cname = $this->getfield('company_user', 'cname', array('id' => $uid));
            $d['cname'] = $cname['cname'];
        }

        //$data['ad_id'] = $ad_id;
        $m = m_('Admin');
        $incs = $m->incs();
        $d['incs'] = $incs;
        $this->display('', $d);
    }

    //编辑拜访记录
    public function editvisit()
    {
        if (IS_POST) {
            $p = $_POST;
            if (!zh_($p['cname'])) err_('非法的企业名称');
            $cnameID = $this->getfield('company_user', 'id', array('cname' => $p['cname']));
            if (!$cnameID) err_('该企业尚未注册，请先注册该企业');
            $cnameID = $cnameID['id'];
            if (!isset($p['id'])) err_('非法操作');
            $p['ad_id'] = session('userid');
            $p['com_id'] = $cnameID;
            $p['vistime'] = strtotime(f_($p['vistime']));
            $p['methods'] = f_($p['methods']);
            $p['info'] = f_($p['info']);
            $p['addtime'] = time();
            unset($p['cname']);
            if (trim(strip_tags($p['info'])) == '') {
                err_('拜访内容必须填写');
            }
            //var_export($p); exit;
            $add = $this->update('visit', $p, array('id' => $p['id']));
            if (!$add) err_('编辑失败');

            else header("location:" . u_('Company/visit'));
        }
        $id = get_('id');
        $get = $this->getone('visit', array('id' => $id));
        $cname = $this->getfield('company_user', 'cname', array('id' => $get['com_id']));
        $get['cname'] = $cname['cname'];
        $data['info'] = $get;
        $m = m_('Admin');
        $incs = $m->incs();
        $data['incs'] = $incs;
        $this->display('', $data);
    }

    //删除拜访记录
    public function delvisit()
    {
        $id = get_('id');
        $del = $this->delete('visit', array('id' => $id));
        if (!$del) err_('添加备忘录失败');
        else header("location:" . u_('Company/visit'));
    }

    //备忘录
    public function memor()
    {

        $a = PFIX . 'memor';
        $b = PFIX . 'admins';
        if (get_('uid')) {
            $cn = $this->getfield('company_user', 'cname', array('id' => (int)get_('uid')));
            $and = " AND $a.cname = '" . $cn['cname'] . "'";
        } else {
            $and = " AND $a.ad_id = " . session('userid');
            if (get_('mym') && get_('mym') == 1) {
                $and = '';
            }
        }
        $pand = '';
        if (IS_POST) {
            $p = $_POST;
            $setime = strtotime(date("Y-m-d", time()));
            if (trim($p['warntime1']) == '') {
                if ($p['day'] == 1) {
                    $pand .= " AND $a.warntime > $setime";
                }
                if ($p['day'] == 2) {
                    $pand .= " AND $a.warntime < $setime";
                }
            } else {
                $setime = strtotime($p['warntime1']);
                $pand .= " AND $a.warntime > $setime";
                if (trim($p['warntime2']) != '') {
                    $setime2 = strtotime($p['warntime2']);
                    $pand .= " AND  $a.warntime < $setime2";
                }
            }

            if (trim($p['cname']) != '') {
                $pand .= " AND $a.cname LIKE '%" . $p['cname'] . "%'";
            }
            if ((int)$p['ad_id'] > 0) {
                $pand .= " AND $a.ad_id=" . (int)$p['ad_id'];
            }
        }
        if (!empty($pand)) {
            $and = '';
        }
        //p_($pand);
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $qstr = "SELECT $a.*,$b.realname FROM $a,$b WHERE $a.ad_id=$b.id" . $and . $pand . " ORDER BY $a.addtime DESC LIMIT $xs,$xe";
        //p_($qstr);
        $list = $this->query($qstr);
        $admins = $this->select('admins');
        $data['ads'] = $admins;
        $data['list'] = $list;
        $data['page'] = $x->showP($this->affnum);
        $data['uid'] = 0;
        if (get_('uid')) {
            $data['uid'] = (int)get_('uid');
        }
        $this->display('', $data);
    }

    //添加备忘录
    public function addmemor()
    {
        if (IS_POST) {
            $p = $_POST;
            $p['ad_id'] = session('userid');
            $p['info'] = f_($p['info']);
            $p['addtime'] = time();
            $p['warntime'] = strtotime($p['warntime']);
            if ($p['warntime'] < time()) err_('执行时间不能为过去时！');
            $add = $this->add('memor', $p);
            if (!$add) err_('添加备忘录失败');
            elseif (get_('uid')) {
                header("location:" . u_('Company/memor', array('uid' => (int)get_('uid'))));
            } else {
                header("location:" . u_('Company/memor'));
            }

        }
        $m = m_('Admin');
        $incs = $m->incs();
        $data['incs'] = $incs;
        $data['cname'] = '';
        if (get_('uid')) {
            $uid = (int)get_('uid');
            $cname = $this->getfield('company_user', 'cname', array('id' => $uid));
            $data['cname'] = $cname['cname'];
        }
        $this->display('', $data);
    }

    //编辑备忘录
    public function editmemor()
    {
        if (IS_POST) {
            $p = $_POST;
            if (!isset($p['id']) || trim($p['id']) == '') err_('非法操作');
            $p['ad_id'] = session('userid');
            $p['info'] = f_($p['info']);
            $p['addtime'] = time();
            $p['warntime'] = strtotime($p['warntime']);
            $add = $this->update('memor', $p, array('id' => $p['id']));
            if (!$add) err_('添加备忘录失败');
            else header("location:" . u_('Company/memor'));
        }
        $info = $this->getone('memor', array('id' => get_('id'), 'ad_id' => get_('ad_id')));
        if (!$info) err_('无效的信息');
        $data['info'] = $info;
        $m = m_('Admin');
        $incs = $m->incs();
        $data['incs'] = $incs;
        $this->display('', $data);
    }

    //删除备忘录
    public function delmemor()
    {
        $id = get_('id');
        $ad_id = get_('ad_id');
        if (!$id) return err_('非法操作');
        $del = $this->delete('memor', array('id' => $id, 'ad_id' => $ad_id));
        if (!$del) err_('删除失败');
        else header("location:" . u_('Company/memor'));
    }

    /**
     * 备忘提醒弹框
     */
    public function noticememorajax()
    {
        $user_id = session('userid');
        $a = PFIX . 'memor';
        $time = strtotime(date('Y-m-d') . ' 23:59:59');

        $memor = $this->query("SELECT * FROM $a m WHERE m.ad_id = $user_id AND $time >= m.warntime AND m.is_alert = 1");

        echo json_encode($memor);
    }

    /**
     * 是否提醒
     */
    public function alertmemor()
    {
        $id = get_('id');
        $ad_id = get_('ad_id');

        $memor = $this->getone('memor', array('id' => $id, 'ad_id' => $ad_id));

        $is_alert = $memor['is_alert'] == 0 ? 1 : 0;

        $update = $this->update('memor', array('is_alert' => $is_alert), array('id' => $id, 'ad_id' => $ad_id));
        if (!$update) err_('操作失败');
        else header("location:" . u_('Company/memor'));

    }


    //合作统计
    public function counts()
    {
        $a = PFIX . 'company_user';
        $b = PFIX . 'company';
        $c = PFIX . 'comptype';
        $d = PFIX . 'admins';
        $w = '';
        $data['industry'] = $this->select('industry');
        //$data['admins'] = $this->select('admins');
        $data['comptype'] = $this->select('comptype');
        $dsort = 'sgnum';
        if (IS_GET && isset($_GET['search'])) {
            $p = $_GET;

            //合作时间
            if (trim($p['cooptime1']) != '') {
                $time1 = strtotime($p['cooptime1']) - 1;
                $w .= " AND $b.cooptime > $time1";
                if (trim($p['cooptime2']) != '') {
                    $time2 = strtotime($p['cooptime2']) + (3600 * 24) + 1;
                    $w .= " AND $b.cooptime < $time2";
                }
            }
            //行业
            if ($p['industry_id'] > 0) {
                $ind = (int)$p['industry_id'];
                $w .= " AND $a.industry_id = $ind";
            }
            //类型
            if ($p['types'] > 0) {
                $ty = (int)$p['types'];
                $w .= " AND $a.types = $ty";
            }

            if ($p['sort'] == 2) {
                $dsort = 'jobnum';
            }
            if ($p['sort'] == 3) {
                $dsort = 'zpnum';
            }

        }
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $list = $this->query("SELECT $a.id,$a.cname,$a.linkman,$a.tel,$b.cooptime,$b.important,$c.types,$d.realname
        		FROM $a,$b,$c,$d
        		WHERE $a.id = $b.uid
        		AND $b.coop = 1
        		AND $a.types = $c.id
        		AND $a.ad_id = $d.id
                $w
            LIMIT $xs,$xe
        		");
        $sorts = array();
        foreach ($list as $key => $value) {
            $cun = $this->select('jobs', array('cname' => $value['cname']));
            $ccc = array();
            $bs = 0;
            foreach ($cun as $keys => $values) {
                $ccc[] = $values['id'];
                $bs += $values['sex1'] + $values['sex2'];

            }
            $cc1 = implode(',', $ccc);
            $cun1 = $this->getcount('jobnamelist', array('jobs_id in' => $cc1, 'admi' => 1));
            $list[$key]['jobnum'] = count($cun);
            $list[$key]['sgnum'] = empty($cun1) ? 0 : $cun1;
            $list[$key]['zpnum'] = $bs;
            if (empty($cun) && empty($cun1) && empty($bs)) {
                unset($list[$key]);
                continue;
            }
            $sorts[] = $list[$key][$dsort];
        }
        array_multisort($sorts, SORT_DESC, $list);
        //p_($list);

        $data['list'] = $list;
        $data['page'] = $x->showP($this->affnum);
        $this->display('', $data);
    }

    public function companyshow()
    {
        $id = (int)get_('id');
        $a = PFIX . 'company_user';
        $b = PFIX . 'company';
        $c = PFIX . 'industry';
        $d = PFIX . 'comptype';
        $e = PFIX . 'admins';

        $qstr = "SELECT $a.*,$b.*,$c.name AS iname,$d.types,$e.realname FROM $a,$b,$c,$d,$e
                WHERE $a.id = $b.uid
                AND $a.industry_id = $c.id
                AND $a.types = $d.id
                AND $a.ad_id = $e.id
                AND $a.id = $id
                ";
        $data = $this->query($qstr);

        if (!$data)

            err_('获取企业信息失败，可能是缺少必要的企业资料');
        $data = $data[0];
        $data['cinfo'] = htmlspecialchars_decode($data['cinfo']);

        $ds['blist'] = '无';
        $blist = $this->getfield('blist', 'id', array('com_id' => $id));
        if ($blist) {
            $ds['blist'] = '黑名单企业';
        }

        $ds['con'] = $data;
        $ds['con']['id'] = $id;
        $this->display('', $ds);
    }

    public function companyjobs()
    {
        $id = get_('id');
        $cn = $this->getfield('company_user', 'cname', array('id' => $id));
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $data = $this->select('jobs', array('cname' => $cn['cname'], 'auditing' => 1, 'end' => 0, 'endtime gt' => time()), "$xs,$xe");

        $d['list'] = $data;
        $d['page'] = $x->showP($this->affnum);
        $d['cid'] = $id;
        $d['cname'] = $cn['cname'];
        $this->display('', $d);
    }

    public function companyjobsh()
    {
        $id = get_('id');
        $cn = $this->getfield('company_user', 'cname', array('id' => $id));
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $data = $this->select('jobs', array('cname' => $cn['cname'], 'auditing' => 1, 'end or' => 1, 'endtime lt' => time()), "$xs,$xe");

        $d['list'] = $data;
        $d['page'] = $x->showP($this->affnum);
        $d['cid'] = $id;
        $d['cname'] = $cn['cname'];
        $this->display('', $d);
    }


}