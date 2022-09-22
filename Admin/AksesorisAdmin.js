$(this).ready(function(){
	loadTable();
	function loadTable(){	
		$.ajax({
			url: '../server/jAksesoris.php',
			dataType: 'json',
			success: function(data){
				var table = "";
				var i = 1;
				
				$.each(data, function(key,value){           
                    table += '<tr>'
					table += '<td>'+i+'</td>'
					table += '<td>'+value.nama+'</td>'	
					table += '<td>'+value.merk+'</td>'
                    table += '<td>'+value.harga+'</td>'
                    table += '<td><button class="btnEdit btn btn-primary" data-toggle="modal" data-target="#editModal" data-id="'+value.id+'" data-nama="'+value.nama+'" data-merk="'+value.merk+'" data-harga="'+value.harga+'">Edit</button>  <button class="btnDelete btn btn-danger" data-toggle="modal" data-target="#deleteModal" data-id="'+value.id+'">Delete</button></td>'				
					table += '</tr>'
					i++;
				});
				$('table').append(table);
			}
		});
	}
	

	$(this).on('click', '.btnEdit', function() {	
		$("#idEdit").val($(this).data('id'));
		$("#namaEdit").val($(this).data('nama'));
        $("#merkEdit").val($(this).data('merk'));
        $("#hargaEdit").val($(this).data('harga'));
		
	});
	
	$(this).on('click', '.btnDelete', function() {
		
		$("#idDelete").val($(this).data('id'));
	});
	
	$("[id^='form']").submit(function(e) {
        var urlFile = '../server/Aksesoris_add.php';
		if(this.id==='formEdit')
			urlFile = '../server/Aksesoris_edit.php';
		else if(this.id==='formDelete')
			urlFile = '../server/aksesoris_delete.php';
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

