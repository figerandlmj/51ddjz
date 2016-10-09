<?php
header("Content-type: text/html; charset=utf-8");
date_default_timezone_set('PRC'); 
error_reporting(0);

// // 主机网址
// define ('_HOST', (empty($_SERVER["HTTPS"]) || $_SERVER['HTTPS'] == 'off' ? 'http://' : 'https://') . $_SERVER['HTTP_HOST']);
// define ('_HTTP', _HOST . str_ireplace('/index.php', '', $_SERVER['SCRIPT_NAME']) . '/');

define('DLIVE', 'ZIX');
define('WEB'  , './Web/Controller/');  
define('ADM'  , './Admin/Controller/'); 
define('D_PATH', dirname(__FILE__) . DIRECTORY_SEPARATOR);

define('TS','./Public/');
require './Lib/_init.lib.php';