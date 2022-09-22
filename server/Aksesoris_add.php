<?php

include('../dbconnect.php');

$id = $_POST['id'];
$nama = $_POST['nama'];
$merk = $_POST['merk'];
$harga = $_POST['harga'];

$stmt = $db->prepare("SELECT id FROM aksesoris WHERE id='$id'");
$stmt->execute();
$row_num = $stmt->rowCount();

$data['result'] = 0;

if($row_num>0){
	
	$msg = "ID sudah terdaftar!";
	
} else {

	$stmt = $db->prepare("INSERT INTO aksesoris VALUES(:id,:nama,:merk,:harga)");
	$result = $stmt->execute(array(':id'=>$id, ':nama'=>$nama, ':merk'=>$merk, ':harga'=>$harga ));

	if($result){
		$data['result'] = 1;
		$msg = "Proses berhasil!";
	} else 
		$msg = "Proses gagal!!!";

}

$data['msg'] = $msg;

echo json_encode($data);
?>