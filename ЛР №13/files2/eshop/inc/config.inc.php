<?php
define('DB_HOST','localhost');
define('DB_LOGIN','root');
define('DB_PASSWORD','root');
define('DB_NAME','eshop');
define('ORDERS_LOG','orders.log');
$basket=array();
$count=0;
$link=mysqli_connect(DB_HOST,DB_LOGIN,DB_PASSWORD,DB_NAME);
if (!$link) {
    print("Ошибка: Невозможно установить соединение с MySQL.");
	exit;
}
basketInit();
?>