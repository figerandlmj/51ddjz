<?php
$str = trim(strip_tags($_GET['keytxt']));
header('location:/index.php?m=Web&c=Index&a=search&keytxt='.$str);
?>