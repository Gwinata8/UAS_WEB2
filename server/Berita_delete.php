<?php

include('../dbconnect.php');

$id = $_POST['idDelete'];

$data['result'] = 0;

$stmt = $db->prepare("DELETE FROM berita WHERE id='$id'");
$result = $stmt->execute();

	if($result){
		$data['result'] = 1;
		$msg = "Proses berhasil...";
	} else 
        $msg = "Proses gagal...!!";
        
    $data['msg'] = $msg;

    echo json_encode($data);
?>