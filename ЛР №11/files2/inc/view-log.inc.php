<?
include 'inc\log.inc.php';
if(file_exists($f)){
$file = fopen($f, "r");
$j[] = $k;
while ( $k = fgets($file) ){
$i = explode("|", $k);
echo sprintf("%s - %s -> %s <br>",
date('d/m/Y H:i:s ', $i[0]), $i[1], $i[2]);
}}
?>