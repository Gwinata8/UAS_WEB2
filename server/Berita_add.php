<?php

include('../dbconnect.php');

$id = $_POST['id'];
$judul = $_POST['judul'];
$artikel = $_POST['artikel'];
$gambar = $_POST['gambar'];
$sumber = $_POST['sumber'];

$stmt = $db->prepare("SELECT id FROM berita WHERE id='$id'");
$stmt->execute();
$row_num = $stmt->rowCount();

$data['result'] = 0;

if($row_num>0){
	
	$msg = "ID sudah terdaftar!";
	
} else {

	$stmt = $db->prepare("INSERT INTO berita VALUES(:id,:judul,:artikel,:gambar,:sumber)");
	$result = $stmt->execute(array(':id'=>$id, ':judul'=>$judul, ':artikel'=>$artikel, ':gambar'=>$gambar, ':sumber'=>$sumber));

	if($result){
		$data['result'] = 1;
		$msg = "Proses berhasil!";
	} else 
		$msg = "Proses gagal!!!";

}

$data['msg'] = $msg;

echo json_encode($data);
?>