<div class="left-nav">
    <div class="nav">
      <a style="border:none;"><img src="<?php echo TS;?>m1/images/management_center.png" border=0 alt="管理中心" style="position: relative;right: 2px;"></a>
    <?php if(!session('islogin')){?>
       <a href="<?php echo u_('User/login')?>" style="border-top:none;" target="_blank">登录</a>
       <a href="<?php echo u_('User/reg')?>" style="color:#666666;border-bottom:none;">注册</a>
    <?php }else{?>
       <a href="<?php echo u_('User/index',array('id'=>session('memberid')))?>" style="border-top:none;" target="_blank">用户中心</a>
       <a href="<?php echo u_('User/loginout')?>" onClick="return confirm('确定退出？')">安全退出</a>
    <?php }?>
       
    </div>
  <!--  <div class="ewm"></div>-->
</div>
<div class="right-nav">
  <div class="nav">
      <img src="<?php echo TS;?>m1/images/weixin.png" border=0 alt="管理中心" style="position: relative;left: 14px;width: 114px;height: 114px;top: 10px;">
      <a style="color:#8F8F8F;text-decoration:none;padding-top: 0px;padding-bottom: 10px;padding-left: 2px;">扫一扫，微信关注</a>
      <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3216656004&site=qq&menu=yes" style="border-bottom:none;">
        <img border="0" src="http://wpa.qq.com/pa?p=2:3216656004:51" alt="点击这里给我发消息" title="个人找兼职"/>
      </a>
      <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3119388552&site=qq&menu=yes" style="border-bottom:none;">
        <img border="0" src="http://wpa.qq.com/pa?p=2:3119388552:51" alt="点击这里给我发消息" title="企业招兼职"/>
      </a>
      <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3119388552&site=qq&menu=yes" style="border-bottom:none;">
        <img border="0" src="http://wpa.qq.com/pa?p=2:3119388552:51" alt="点击这里给我发消息" title="项目合作"/>
      </a>
  </div>       
</div>