<?php

include('../dbconnect.php');

$stmt= $db -> prepare("SELECT *	FROM aksesoris");

$stmt -> execute();
$result = $stmt -> fetchAll();

echo json_encode($result);

?>

