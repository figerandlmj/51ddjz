<?php defined('DLIVE') or exit();
require (D_PATH.'Config/default.config.php');

require (D_PATH.'Lib/_function.lib.php');

$DM = conf_('VAR_MODULE');
$DC = conf_('VAR_CONTROLLER');
$DA = conf_('VAR_ACTION');

define('REQUEST_METHOD',$_SERVER['REQUEST_METHOD']);
define('IS_GET',        REQUEST_METHOD =='GET' ? true : false);
define('IS_POST',       REQUEST_METHOD =='POST' ? true : false);
define('IS_PUT',        REQUEST_METHOD =='PUT' ? true : false);
define('MODULE_NAME',   get_($DM)? get_($DM) : conf_('DEFAULT_MODULE'));
define('CLASS_NAME',    get_($DC)? get_($DC) : conf_('DEFAULT_CONTROLLER'));
define('ACTION_NAME',   get_($DA)? get_($DA) : conf_('DEFAULT_ACTION'));
define('PFIX',          conf_('DB_PFIX'));


$_urls = get_(null,'url');
if(!$_urls){
	$_urls[$DM] = MODULE_NAME;
	$_urls[$DC] = CLASS_NAME;
}
if(!get_($DC) || get_($DA)){
	$_urls[$DC] = CLASS_NAME;
	$_urls[$DA] = ACTION_NAME;
}


import_('Lib/Base','lib');

import_('Lib/_page','lib');

    if(strtolower(CLASS_NAME) !='login' && strtolower(MODULE_NAME)=='admin'){
		import_(MODULE_NAME.'/Common','Controller');
	}
	

import_(ucfirst($_urls[$DM]).'/'.ucfirst($_urls[$DC]),'Controller');

$class = ucfirst($_urls[$DC]).'Controller';
$html = new $class();
if(!method_exists($html , $_urls[$DA])){
   err_('无法加载：'.$_urls[$DA].'方法');
}
unset($DM,$DC,$class);

$html -> $_urls[$DA]();

