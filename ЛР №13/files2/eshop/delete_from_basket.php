<?php
	require "inc/lib.inc.php";
	require "inc/config.inc.php";
	if(isset($_GET['del'])) {
		$delid = (int)(trim(strip_tags($_GET['del'])));
		deleteItemFromBasket($delid);
	}
		header('Location: basket.php');
?>