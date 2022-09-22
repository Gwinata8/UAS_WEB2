<?php

include('../dbconnect.php');


$stmt = $db->prepare("SELECT * FROM merk");
$stmt->execute();
$result = $stmt->fetchAll();

echo json_encode($result);

?>