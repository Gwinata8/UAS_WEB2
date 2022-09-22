<?php
	
	include('../dbconnect.php');
	include('htmlhead_admin.php');
?> 
<script src="berita_admin.js"></script>

<div class="container-fluid;p-3 mb-2 bg-secondary text-white">
	<h2 style="text-align:center;">Berita</h2>

	<div class="mb-2">
		<button type="button" id="btnNew" class="btn btn-dark" data-toggle="modal" data-target="#newModal">
			Tambah
		</button>
	</div>

	<table class="table table-striped table-dark">
		<tr>
			<th>No.</th>
			<th>Judul</th>
			<th>Artikel</th>
			<th>Gambar</th>
			<th>Sumber</th>
			<th>Action</th>
		</tr>
	</table>
</div>

<!-- Modal New -->
<div class="modal fade" id="newModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    
	<div class="modal-content">
    
	  <div class="modal-header bg-dark text-white">
        <h5 class="modal-title" id="exampleModalLabel">Tambah berita</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
	  
	  <div class="modal-body">
		  <div id="notification"></div>
		  <form id="formNew">
			  <div class="form-group">
				<label>ID Berita</label>
				<input type="text" class="form-control" id="id" name="id" placeholder="ID...">
			  </div>
			  
			  <div class="form-group">
				<label>Judul Berita</label>
				<input type="text" class="form-control" id="judul" name="judul" placeholder="Judul...">
			  </div>
			  
			  <div class="form-group">
				<label>Artikel Berita</label>				
				<textarea class="form-control" id="artikel" name="artikel" placeholder="Artikel..."></textarea>
			  </div>
			  
			  <div class="form-group">
				<label>Gambar Berita</label>
				<input type="text" class="form-control" id="gambar" name="gambar" placeholder="Gambar...">
			  </div>
			  
			  <div class="form-group">
				<label>Sumber</label>
				<input type="text" class="form-control" id="sumber" name="sumber" placeholder="Sumber...">
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
				<h5 class="modal-title" id="exampleModalLabel">Edit Berita</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<div id="notification"></div>
				<form id="formEdit">
					<div class="form-group">
						<label>ID Berita</label>
						<input type="text" class="form-control" id="idEdit" name="idEdit"readonly>
					</div>
					
					<div class="form-group">
						<label>Judul</label>
						<input type="text" class="form-control" id="judulEdit" name="judulEdit" placeholder="Judul...">
					</div>
					
					<div class="form-group">
						<label>Artikel Berita</label>				
						<textarea class="form-control" id="artikelEdit" name="artikelEdit" placeholder="Artikel..."></textarea>
					</div>
			  
					<div class="form-group">
						<label>Gambar Berita</label>
						<input type="text" class="form-control" id="gambarEdit" name="gambarEdit" placeholder="Gambar...">
					</div>
					
					<div class="form-group">
						<label>Sumber</label>
						<input type="text" class="form-control" id="sumberEdit" name="sumberEdit" placeholder="Sumber...">
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
				<h5 class="modal-title" id="exampleModalLabel">Hapus Berita</h5>
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