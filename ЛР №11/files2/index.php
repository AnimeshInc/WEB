<?
	include 'inc/cookie.inc.php';
	include 'inc/headers.inc.php';
	define('PATH_LOG', 'path.log');
	include 'inc/log.inc.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title><?= $title?></title>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="inc/style.css" />
	</head>
	<body>

		<div id="header">
			<img src="logo.gif" width="187" height="29" alt="Наш логотип" class="logo" />
			<span class="slogan">обо всём сразу</span>
		</div>
		<div id="content">
			<h1><?= $header?></h1>
			<blockquote>
			<?php
				if ($visitCounter == 1){
					echo "Спасибо, что зашли на огонек";
				}
				if ($visitCounter > 1){
					echo "Вы зашли к нам в {$visitCounter} раз";
				}
				echo "<br> Последнее посещение: {$lastVisit}"
			?>
			</blockquote>
			<?php
				include 'inc/routing.inc.php';
			?>	
		</div>
		<div id="nav">
			<h2>Навигация по сайту</h2>
			<ul>
				<li><a href='index.php'>Домой</a></li>
				<li><a href='index.php?id=contact'>Контакты</a></li>
				<li><a href='index.php?id=about'>О нас</a></li>
				<li><a href='index.php?id=info'>Информация</a></li>
				<li><a href='test/index.php'>Он-лайн тест</a></li>
				<li><a href='index.php?id=gbook'>Гостевая книга</a></li>
				<li><a href='index.php?id=log'>Журнал посещений</a></li>
				<li><a href='eshop/catalog.php'>Магазин</a></li>
			</ul>
		</div>
		<div id="footer">
			&copy; Супер-мега сайт, 2000 &ndash; <?= date('Y')?>
		</div>
	</body>
</html>