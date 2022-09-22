<?php

include('../dbconnect.php');

$id = $_POST['id'];
$nama = $_POST['nama'];
$ram = $_POST['ram'];
$rom = $_POST['rom'];
$merk = $_POST['merk'];

$stmt = $db->prepare("SELECT id_produk FROM produk WHERE id_produk='$id'");
$stmt->execute();
$row_num = $stmt->rowCount();

$data['result'] = 0;

if($row_num>0){
	
	$msg = "ID sudah terdaftar!";
	
} else {

	$stmt = $db->prepare("INSERT INTO produk VALUES(:id_produk,:nm_produk,:ram,:rom,:id_merk)");
	$result = $stmt->execute(array(':id_produk'=>$id, ':nm_produk'=>$nama, ':ram'=>$ram, ':rom'=>$rom, ':id_merk'=>$merk));

	if($result){
		$data['result'] = 1;
		$msg = "Proses berhasil!";
	} else 
		$msg = "Proses gagal!!!";

}

$data['msg'] = $msg;

echo json_encode($data);
?>