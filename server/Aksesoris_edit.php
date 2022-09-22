<?php

include('../dbconnect.php');

$id = $_POST['idEdit'];
$nama = $_POST['namaEdit'];
$merk = $_POST['merkEdit'];
$harga = $_POST['hargaEdit'];

$data['result'] = 0;

$stmt = $db->prepare("UPDATE aksesoris SET nama='$nama', merk='$merk' , harga='$harga' WHERE id='$id'");
$result = $stmt->execute();

	if($result){
		$data['result'] = 1;
		$msg = "Proses berhasil...";
	} else 
        $msg = "Proses gagal...!!";
        
    $data['msg'] = $msg;

    echo json_encode($data);
?>