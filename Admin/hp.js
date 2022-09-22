$(this).ready(function(){
	loadTable();
	function loadTable(){	
		$.ajax({
			url: '../server/jHp.php',
			dataType: 'json',
			success: function(data){
				var table = "";
				var i = 1;
				
				$.each(data, function(key,value){
					table += '<tr>'
					table += '<td>'+i+'</td>'
					table += '<td>'+value.nm_produk+'</td>'				
					table += '<td>'+value.merk+'</td>'
					table += '<td>'+value.ram+'</td>'
					table += '<td>'+value.rom+'</td>'
					table += '<td>'+value.id_produk+'</td>'
					table += '<td><button class="btnEdit btn btn-primary" data-toggle="modal" data-target="#editModal" data-id_produk="'+value.id_produk+'" data-nm_produk="'+value.nm_produk+'" data-ram="'+value.ram+'"data-rom="'+value.rom+'" data-merk="'+value.id_merk+'">Edit</button>  <button class="btnDelete btn btn-danger" data-toggle="modal" data-target="#deleteModal" data-id_produk="'+value.id_produk+'">Delete</button></td>';
					table += '</tr>'
					i++;
				});
				$('table').append(table);
			}
		});
	}
	
	$("#btnNew").click(function(){
		
		$.ajax({
			url: '../server/getMerk.php',
			dataType: 'json',
			success: function(data){
				var merk;
				$.each(data, function(key, value){
					merk += '<option value='+ value.kd_merk +'>'+ value.nm_merk +'</option>'
				});
				$("#merk").html(merk);
			}
		});
		
	});
	
	
	$(this).on('click', '.btnEdit', function() {
		var id_merk = $(this).data('merk');
		$.ajax({
			url: '../server/getMerk.php',
			dataType: 'json',
			success: function(data){
				var merk;
				$.each(data, function(key, value){
					merk += '<option value='+ value.kd_merk +'>'+ value.nm_merk +'</option>'
				});
				$("#merkEdit").html(merk);
				$("#merkEdit").val(id_merk);
			}
			
		});
		$("#idEdit").val($(this).data('id_produk'));
		$("#namaEdit").val($(this).data('nm_produk'));
		$("#ramEdit").val($(this).data('ram'));
		$("#romEdit").val($(this).data('rom'));
		
	});
	
	$(this).on('click', '.btnDelete', function() {
		
		$("#idDelete").val($(this).data('id_produk'));
	});
	
	$("[id^='form']").submit(function(e) {
		var urlFile = '../server/HP_add.php';
		if(this.id==='formEdit')
			urlFile = '../server/HP_edit.php';
		else if(this.id==='formDelete')
			urlFile = '../server/hp_delete.php';
		console.log(urlFile);
		e.preventDefault();
		var formData = $(this).serialize();
		$.ajax({
			url: urlFile,
			method: 'POST',	
			data: formData, 
			dataType: 'JSON',
			success: function(data){
				
				if(data.result){
					$('.modal-body').html(data.msg);
					$('.btnSave').hide();
					$(".btnClose").click(function(){
						location.reload();
					});
				} else{
					$('#notification').html('<div class="alert alert-danger" role="alert">'
											+data.msg + '</div>');
				}
				
			}
		});
	})
	
});

