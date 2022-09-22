
<?php
	
	include('dbconnect.php');
	include('htmlhead.php');
?> 


<body style="background: #29a19c; font-family: 'Century Gothic', cursive;">
	<script src="Aksesoris.js"></script>
	<div class="container-fluid;p-3 mb-2 bg-secondary text-white">
			<div class="content"style="background: #29a19c;">
				<br>
				<br>
				<h3 style="text-align:center; background-color:#343a40;">Daftar Aksesoris yang kami jual</h3>
				<table class="table table-striped table-dark" style="text-align:center;">
					<tr>
						<th>No.</th>
						<th>Nama Produk</th>		
						<th>Merk</th>
						<th>Harga</th>	
					</tr>
				</table>
			</div>
	</div>

	<br>
	<br>
	<br>


	<?php
		include('footer.php');
	?>
	
</body>