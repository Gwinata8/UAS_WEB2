<?php
	
	include('../dbconnect.php');
	include('htmlhead_admin.php');
?> 
<script src="hp.js"></script>

<div class="container-fluid;p-3 mb-2 bg-secondary text-white">
	<h2 style="text-align:center;">Produk HP</h2>

	<div class="mb-2">
		<button type="button" id="btnNew" class="btn btn-dark" data-toggle="modal" data-target="#newModal">
			Tambah
		</button>
	</div>

	<table class="table table-striped table-dark">
		<tr>
			<th>No.</th>
			<th>Nama Produk</th>			
			<th>Merk</th>
			<th>Ram</th>
			<th>Rom</th>
			<th>ID Produk</th>
			<th>Action</th>
		</tr>
	</table>
</div>

<!-- Modal New -->
<div class="modal fade" id="newModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    
	<div class="modal-content">
    
	  <div class="modal-header bg-dark text-white">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Produk HP</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
	  
	  <div class="modal-body">
		  <div id="notification"></div>
		  <form id="formNew">
			  <div class="form-group">
				<label>ID produk</label>
				<input type="text" class="form-control" id="id" name="id" placeholder="Isi ID produk...">
			  </div>
			  
			  <div class="form-group">
				<label>Nama produk</label>
				<input type="text" class="form-control" id="nama" name="nama" placeholder="Isi nama produk...">
			  </div>
			  
			  <div class="form-group">
				<label>RAM</label>
				<input type="text" class="form-control" id="ram" name="ram" placeholder="Isi RAM...">
			  </div>
			  
			  <div class="form-group">
				<label>ROM</label>
				<input type="text" class="form-control" id="rom" name="rom" placeholder="Isi ROM...">
			  </div>
			  
			  <div class="form-group">
				<label>Merk</label>
				<select class="form-control" id="merk" name="merk">
							  
				</select>
			  </div>
		  </div>
		  
		  <div class="modal-footer">
			<button type="button" class="btnClose btn btn-secondary" data-dismiss="modal">Close</button>
			<button type="submit" class="btnSave btn btn-primary">Save</button>
		  </div>
		</form>
	  </div>
	
	
  </div>
</div>

<!-- Modal Edit -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">

		<div class="modal-content">

			<div class="modal-header bg-dark text-white">
				<h5 class="modal-title" id="exampleModalLabel">Edit Produk HP</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<div id="notification"></div>
				<form id="formEdit">
					<div class="form-group">
						<label>ID Produk</label>
						<input type="text" class="form-control" id="idEdit" name="idEdit"readonly>
					</div>
					
					<div class="form-group">
						<label>Nama produk</label>
						<input type="text" class="form-control" id="namaEdit" name="namaEdit" placeholder="Isi nama produk...">
					</div>
					
					<div class="form-group">
						<label>RAM</label>
						<input type="text" class="form-control" id="ramEdit" name="ramEdit" placeholder="Isi RAM...">
					</div>
					
					<div class="form-group">
						<label>ROM</label>
						<input type="text" class="form-control" id="romEdit" name="romEdit" placeholder="Isi ROM...">
					</div>
					
					<div class="form-group">
						<label>Merk</label>
						<select class="form-control" id="merkEdit" name="merkEdit">

						</select>
					</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btnClose btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="submit" class="btnSave btn btn-primary">Save</button>
			</div>
			</form>
		</div>


	</div>
</div>

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-dark text-white">
				<h5 class="modal-title" id="exampleModalLabel">Hapus Produk HP</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div id="notification"></div>
				<div>
					<h2>Data yang dihapus tidak dapat dikembalikan!</h2>
					<h3>Lanjutkan?</h3>
				</div>
				<form id="formDelete">
					<input type="hidden" id="idDelete" name="idDelete">
			</div>

			<div class="modal-footer">
				<button type="button" class="btnClose btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="submit" class="btnSave btn btn-danger">Ya</button>
			</div>
			</form>
		</div>
	</div>
</div>


<?php
		include('footer_admin.php');
?> 