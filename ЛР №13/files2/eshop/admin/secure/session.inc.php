<?
session_start();
if(!isset($_SESSION['admin'])){
header('Location: /eshop/admin/secure/login.php?ref='.
$_SERVER['REQUEST_URI']);
exit;
}


