<?php
	require "inc/lib.inc.php";
	require "inc/config.inc.php";
		$name = mysqli_real_escape_string($link, trim(strip_tags($_POST['name'])));
		$email = mysqli_real_escape_string($link, trim(strip_tags($_POST['email'])));
		$phone = mysqli_real_escape_string($link, trim(strip_tags($_POST['phone'])));
		$adress = mysqli_real_escape_string($link, trim(strip_tags($_POST['adress'])));
		$datetime=time();
		$orderid=uniqid();
		$order=$name.'|'.$email.'|'.$phone.'|'.$adress.'|'.$orderid.'|'.$datetime;
		$flink=fopen('admin/'.ORDERS_LOG,'a-');
		fputs($flink,$order.PHP_EOL);
		saveOrder($datetime,$orderid);
		fclose($flink);
?>
<html>
<head>
	<title>Сохранение данных заказа</title>
</head>
<body>
	<p>Ваш заказ принят.</p>
	<p><a href="catalog.php">Вернуться в каталог товаров</a></p>
</body>
</html>