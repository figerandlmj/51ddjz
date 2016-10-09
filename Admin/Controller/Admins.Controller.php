<?php defined('DLIVE') or exit();

class AdminsController extends CommonController
{

    public function __construct()
    {
        parent::__construct();

    }


    private function get_area($ad_id)
    {
        $fs = $this->getfield('admins', 'area_id', array('id' => $ad_id));
        $ids = $fs['area_id'];
        $data = $this->select('area', array('id in' => $ids));
        $str = '';
        foreach ($data as $key => $value) {
            $str .= $data[$key]['title'] . ',';
        }
        $str = rtrim($str, ',');
        return $str;
    }


    public function index()
    {
        $x = new Page();
        $xs = $x->curP(get_('p'));
        $xe = $x->lenP();
        $exec = $this->select('admins', NULL, "$xs,$xe", 'locks DESC');
        $data['page'] = $x->showP($this->affnum);
        if ($exec) {
            foreach ($exec as $k => $v) {
                $exec[$k]['name'] = $this->get_area($v['id']);
            }
            $data['list'] = $exec;

        }
        $this->display('', $data);
    }


    public function addadmins()
    {

        if (IS_POST) {
            $p = $_POST;
            //p_($p);
            if (!zh_($p['realname']) || mb_strlen($p['realname'], 'utf8') > 4 || mb_strlen($p['realname'], 'utf8') < 2) err_('真实姓名错误');
            $p['username'] = trim($p['username']);
            if (empty($p['username'])) err_('用户名格式不正确');
            if (!$this->fvar($p['password'], 'chup') || strlen($p['password']) < 5) err_('密码格式不正确');
            $ch = $this->getone('admins', array('username' => trim($p['username'])));
            if ($ch) err_('该用户名已经被使用');
            if ($p['password'] !== $p['repassword']) err_('确认密码不正确');
            $p['password'] = $this->pass2($p['password']);
            unset($p['repassword']);
            if (count($p['area_id']) == 0) $p['area_id'] = '';

            else {
                $p['area_id'] = implode(',', $p['area_id']);
            }
            $add = $this->add('admins', $p);
            if (!$add) err_('添加管理员失败');
            else header('location:' . u_('index'));
        }
        $inds = $this->select('area');
        $info['inds'] = $inds;
        $this->display('', $info);
    }


    public function editadmins()
    {
        $id = get_('id');
        $info['i'] = $this->getone('admins', array('id' => $id));
        if (IS_POST) {
            $p = $_POST;
            if (!isset($p['id'])) err_('非法操作');
            $p['id'] = (int)trim($p['id']);
            //p_($p);
            if (!zh_($p['realname']) || mb_strlen($p['realname'], 'utf8') > 4 || mb_strlen($p['realname'], 'utf8') < 2) err_('真实姓名错误');
            $p['username'] = trim($p['username']);
            if (empty($p['username'])) err_('用户名格式不正确');
            if (!$this->fvar($p['password'], 'chup') || strlen($p['password']) < 5) err_('密码格式不正确');
            $ch = $this->getone('admins', array('username' => trim($p['username']), 'id nq' => $p['id']));
            if ($ch) err_('该用户名已经被使用');
            if ($p['password'] !== $p['repassword']) err_('确认密码不正确');
            unset($p['repassword']);

            $chpass = $this->getfield('admins', 'password', array('password' => $p['password'], 'id' => $p['id']));
            if (!$chpass) {
                $p['password'] = $this->pass2($p['password']);
            }

            if (count($p['area_id']) == 0) $p['area_id'] = '';

            else {
                $p['area_id'] = implode(',', $p['area_id']);
            }
            //p_($p);
            $add = $this->update('admins', $p, array('id' => $p['id']));
            if (!$add) err_('编辑管理员失败');
            else header('location:' . u_('index'));
        }
        $inds = $this->select('area');
        //$area_id = $this->get_area($id);
        $info['i']['area_id'] = explode(',', $info['i']['area_id']);
        $info['inds'] = $inds;
        $this->display('', $info);
    }


    public function deladmins()
    {

        $id = get_('id');
        if ($id == 1) err_('超级管理员不允许删除');
        $del = $this->delete('admins', array('id' => $id));
        if (!$del) {
            err_('删除失败');
        } else {
            header("location:" . u_('Admins/index'));
        }

    }

    //离职隐藏
//    public function hideadmins()
//    {
//        $id = get_('id');
//        if ($id == 1) err_('超级管理员不允许离职');
//        $hide = $this->update('admins', array('is_hide' => 1), array('id' => $id));
//        if (!$hide) {
//            err_('操作失败');
//        } else {
//            header("location:" . u_('Admins/index'));
//        }
//
//    }


    public function powers()
    {
        if (IS_POST) {
            $p = $_POST;
            if ($p['id'] != 1) {
                if (isset($p['or'])) err_('最高管理员保留所有权限');
                if ($p['id'] == session('userid')) err_('不允许自我设置');
                $str = 'Index|index,';
                $nstr = implode(',', $p['powers']);
                $p['powers'] = $str . $nstr;

                $exec = $this->update('admins', $p, array('id' => $p['id']));
                if (!$exec) err_('设置失败');
                else  header("location:" . u_('Admins/index'));
            } else {
                err_('最高管理员保留所有权限');
            }
        }
        $d['i'] = $this->getfield('admins', 'id,realname,powers', array('id' => get_('id')));
        $d['i']['powers'] = explode(',', $d['i']['powers']);

        $this->display('', $d);
    }


}