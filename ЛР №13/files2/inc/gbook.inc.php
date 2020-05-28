<?php 
const DB_HOST = 'localhost';
const DB_LOGIN = 'root';
const DB_PASSWORD = 'root';
const DB_NAME = 'gbook';
$dh = mysqli_connect(DB_HOST,DB_LOGIN,DB_PASSWORD,DB_NAME);

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if (isset($_POST['name'], $_POST['email'], $_POST['msg'])) {
        $name = trim(strip_tags($_POST['name']));
        $email = trim(strip_tags($_POST['email']));
        $msg = trim(strip_tags($_POST['msg']));
        $dt = "INSERT INTO msgs (name, email, msg)
        VALUES ('$name', '$email', '$msg') ";
        mysqli_query($dh, $dt);
    }
}

if ($_SERVER['REQUEST_METHOD']=='GET'){
    if (isset($_GET['del'])){
        $del=(int)$_GET['del'];
        $dt="DELETE FROM msgs WHERE id = $del";
        mysqli_query($dh,$dt);
    }
}
?> 

<h3>Оставьте запись в нашей Гостевой книге</h3>

<form method="post" action="<?= $_SERVER['REQUEST_URI']?>">
Имя: <br /><input type="text" name="name" /><br />
Email: <br /><input type="text" name="email" /><br />
Сообщение: <br /><textarea name="msg"></textarea><br />

<br /> 

<input type="submit" value="Отправить!" />

</form> 

<?php
$ms = "SELECT id, name, email, msg, UNIX_TIMESTAMP(datetime) as dt
FROM msgs ORDER BY id DESC";
$result = mysqli_query($dh, $ms);
    mysqli_close($dh);
$rows = mysqli_num_rows($result);
    echo "<b> Всего записей в гостевой книге: $rows";
while($row = mysqli_fetch_assoc($result)){
    echo "<p align='left'> " . date("d.m.Y в H:i:s", $row["dt"]);
    echo "<br /><a href='mailto:{$row["name"]}'>{$row['name']}</a>". " Написал:";
    echo "<br />{$row["msg"]}";
    echo "<p align='right'> <a href='http://files2/index.php?id=gbook&del={$row[id]}'>Удалить</a>";
}
?>