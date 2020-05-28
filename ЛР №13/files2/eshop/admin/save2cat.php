<?php
	require "../inc/lib.inc.php";
	require "../inc/config.inc.php";
	if($_SERVER['REQUEST_METHOD'] == "POST"){
		$title = mysqli_real_escape_string($link, trim(strip_tags($_POST['title'])));
		$author = mysqli_real_escape_string($link, trim(strip_tags($_POST['author'])));
		$pubyear = (int) trim(strip_tags($_POST['pubyear']));
		$price = (int) trim(strip_tags($_POST['price']));
		
		if (!addItemToCatalog($title, $author, $pubyear, $price)){
			echo 'Ошибка добавления товара в каталог';
		} 
		else {
			header("Location:add2cat.php");
		}
	}
?>