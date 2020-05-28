<?php
require_once "NewsDB.class.php";
$news = new NewsDB();
$res=$news->getNews();
if (!is_array($res=$news->getNews())){
    $errMsg = "Произошла ошибка при выводе новостной ленты";
    echo $errMsg;
}
else {
    echo "Количество записей: " . count($res);
    foreach ($res as $new) {
        $dt = date("d-m-Y H:m", $new['datetime']);
        echo "<hr> №: {$new['id']} <br>";
        echo "Заголовок: {$new['title']} <br>";
        echo "Категория: {$new['category']} <br>";
        echo "Описание: {$new['description']} <br>";
        echo "Ресурс: {$new['source']} <br>";
        echo "Время: {$dt} <br>";
    }
}
?>