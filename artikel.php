
<?php
	
	include('dbconnect.php');
	include('htmlhead.php');
?> 

<body style="background: #29a19c; font-family: 'Century Gothic', cursive;">
			<div class="container-fluid;p-3 mb-2 bg-secondary text-white">
			
		<div class="content"style="text-align:Justify; background: #29a19c;">
			<br>
			<br>
			<div class="container">
				<div class="row">
                <?php 
					if(isset($_GET['idberita'])){
						
					$idberita = $_GET['idberita'];
					$stmt = $db->prepare("SELECT * FROM berita WHERE id='$idberita'");
					$stmt->execute();
                    $result = $stmt->fetchAll();
                
					
					foreach($result as $row){
						
                        echo '<div>';
                        echo '<h1>'.$row['judul'].'</h1>';
                        echo '<h3><b>'.$row['sumber'].'<b></h3>';
                        echo '<div style="text-align:center">';
                        echo '<img src="berita/'.$row['gambar'].'">';
                        echo '</div>';
						echo '<div>';
						echo '<br><h4 style="white-space: pre-line;">'.$row['artikel'].'</h4>';
						echo '</div>';
						echo '</div>';
											
                    }
					}
					?>
                </div>
            </div>
        </div>				
	</div>

		<?php
			include('footer.php');
		?>
</body>
