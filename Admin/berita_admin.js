$(this).ready(function(){
	loadTable();
	function loadTable(){	
		$.ajax({
			url: '../server/jBerita.php',
			dataType: 'json',
			success: function(data){
				var table = "";
				var i = 1;
				
				$.each(data, function(key,value){
                    table += '<tr>'
					table += '<td>'+value.id+'</td>'
					table += '<td>'+value.judul+'</td>'
					table += '<td>'+value.artikel+'</td>'
					table += '<td>'+value.gambar+'</td>'
					table += '<td>'+value.sumber+'</td>'
					table += '<td><button class="btnEdit btn btn-primary" data-toggle="modal" data-target="#editModal" data-id="'+value.id+'" data-judul="'+value.judul+'" data-artikel="'+value.artikel+'" data-gambar="'+value.gambar+'" data-sumber="'+value.sumber+'">Edit</button>  <button class="btnDelete btn btn-danger" data-toggle="modal" data-target="#deleteModal" data-id="'+value.id+'">Delete</button></td>';
                    table += '</tr>'
                  
				});
				$('table').append(table);
			}
		});
	}
		
	$(this).on('click', '.btnEdit', function() {
	
		$("#idEdit").val($(this).data('id'));
		$("#judulEdit").val($(this).data('judul'));
		$("#artikelEdit").val($(this).data('artikel'));
		$("#gambarEdit").val($(this).data('gambar'));
		$("#sumberEdit").val($(this).data('sumber'));
	});
	
	
	$("[id^='form']").submit(function(e) {
		var urlFile = '../server/berita_add.php';
		if(this.id==='formEdit')
			urlFile = '../server/berita_edit.php';
		else if(this.id==='formDelete')
			urlFile = '../server/berita_delete.php';
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

