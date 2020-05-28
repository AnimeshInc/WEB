<?php
function __autoload($name){
    include  'classes/'. $name. ".class.php";
}

interface IAuthorizeUser{
    public function auth($login, $password);
}

$user1 = new user("user1","SSDD","1234");
$user2 = new user("user2","DDFF","5678");
$user3 = new user("user3","FFGG","6235");
$user4 = new SuperUser("user4","GGHH","8536","admin");

print_r($user4->getInfo());
echo "<br /><br />";
var_dump($user4->auth("GGHH","8536"));
echo "<br /><br />";
echo "Всего обычных пользователей:". User::$countUser;
echo "<br />";
echo "Всего супер-пользователей:". SuperUser::$countSUser;
echo "<br /><br />";
$user1->showInfo();
$user2->showInfo();
$user3->showInfo();
$user4->showInfo();