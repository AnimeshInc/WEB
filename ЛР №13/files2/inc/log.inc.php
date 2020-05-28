<?
$dt = time(); 
$page = $_SERVER['REQUEST_URI'];
$ref = $_SERVER['HTTP_REFERER'];
$path = "{$dt} | {$page} | {$ref}". PHP_EOL;
echo "{$path}";
$f = dirname(__DIR__). '/log/' ."PATH_LOG.txt";
file_put_contents($f, $path, FILE_APPEND);
?>