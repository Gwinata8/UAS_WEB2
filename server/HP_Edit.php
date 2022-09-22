<?php

include('../dbconnect.php');

$id = $_POST['idEdit'];
$nama = $_POST['namaEdit'];
$ram = $_POST['ramEdit'];
$rom = $_POST['romEdit'];
$merk = $_POST['merkEdit'];

$data['result'] = 0;

$stmt = $db->prepare("UPDATE produk SET nm_produk='$nama', ram='$ram', rom='$rom', id_merk='$merk' WHERE id_produk='$id'");
$result = $stmt->execute();

	if($result){
		$data['result'] = 1;
		$msg = "Proses berhasil...";
	} else 
        $msg = "Proses gagal...!!";
        
    $data['msg'] = $msg;

    echo json_encode($data);
?>