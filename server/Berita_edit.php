<?php

include('../dbconnect.php');

$id = $_POST['idEdit'];
$judul = $_POST['judulEdit'];
$artikel = $_POST['artikelEdit'];
$gambar = $_POST['gambarEdit'];
$sumber = $_POST['sumberEdit'];

$data['result'] = 0;

$stmt = $db->prepare("UPDATE berita SET judul='$judul', artikel='$artikel', gambar='$gambar', sumber='$sumber' WHERE id='$id'");
$result = $stmt->execute();

	if($result){
		$data['result'] = 1;
		$msg = "Proses berhasil...";
	} else 
        $msg = "Proses gagal...!!";
        
    $data['msg'] = $msg;

    echo json_encode($data);
?>