<?php
	// подключение библиотек
	require "inc/lib.inc.php";
	require "inc/config.inc.php";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Корзина пользователя</title>
</head>
<body>
	<h1>Ваша корзина</h1>
<?php

?>
<table border="1" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<th>N п/п</th>
	<th>Название</th>
	<th>Автор</th>
	<th>Год издания</th>
	<th>Цена, руб.</th>
	<th>Количество</th>
	<th>Удалить</th>
</tr>
<?php
	$i = 1;
	$sum = 0;
	if (count($basket)==1){
		echo('<a href="catalog.php">Корзина пуста! Вернитесь в каталог.</a><p></p>');
	} else echo('<a href="catalog.php">Вернуться в каталог</a><p></p>');
		$items=myBasket();
		if(is_object($items)||is_array($items)){
			foreach ($items as $item){
			$i++;
			$sum+=$item['price'];
?>

<tr>
	<td><?= $item['id']?></td>
	<td><?= $item['title']?></td>
	<td><?= $item['author']?></td>
	<td><?= $item['pubyear']?></td>
	<td><?= $item['price']?></td>
	<td><?= $item['quantity']?></td>
	<td><a href="delete_from_basket.php?del=<?= $item['id'];?>">Удалить</a></td>
</tr>

<?php 
}}
?>

</table>

<p>Всего товаров в корзине <?= $i?> на сумму: <?= $sum?> руб.</p>

<div align="center">
	<input type="button" value="Оформить заказ!"
                      onClick="location.href='orderform.php'" />
</div>

</body>
</html>