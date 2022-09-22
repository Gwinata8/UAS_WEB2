<?php

include('../dbconnect.php');

$stmt= $db -> prepare("SELECT id_produk, nm_produk, ram, rom, a.id_merk, b.nm_merk AS merk 
						FROM produk a JOIN merk b 
						ON a.id_merk=b.kd_merk");

$stmt -> execute();
$result = $stmt -> fetchAll();

echo json_encode($result);

?>

