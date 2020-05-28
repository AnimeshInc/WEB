<?php
	require "inc/lib.inc.php";
	require "inc/config.inc.php";
	if(isset($_GET['id'])) {
		$id = (int)(trim(strip_tags($_GET['id'])));
		add2Basket($id);
	}
	header('Location: catalog.php');
?>