<?php
require "NewsDB.class.php";
$news = new NewsDB();
if (empty($_GET['id'])){
    $errMsg = "Пустой ID";
    echo $errMsg;
} 
else {
    $res = $news->showNews($_GET['id']);
    if (!$res){
        echo "Такой записи не существует";
    }
    else {
        $dt = date("d-m-Y H:m:i", $entry['datetime']);
        echo "<hr> №: {$new['id']} <br>";
        echo "Заголовок: {$res['title']} <br>";
        echo "Категория: {$res['category']} <br>";
        echo "Описание: {$res['description']} <br>";
        echo "Ресурс: {$entry['source']} <br>";
        echo "Время: {$dt} <br>";
    }
}
?>