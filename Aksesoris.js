$(this).ready(function(){
	loadTable();
	function loadTable(){	
		$.ajax({
			url: 'server/jAksesoris.php',
			dataType: 'json',
			success: function(data){
				var table = "";
				var i = 1;
				
				$.each(data, function(key,value){
					//alert(key+':'+value.id_produk);
					table += '<tr>'
					table += '<td>'+i+'</td>'
					table += '<td>'+value.nama+'</td>'	
					table += '<td>'+value.merk+'</td>'
					table += '<td>'+value.harga+'</td>'				
					table += '</tr>'
					i++;
				});
				$('table').append(table);
			}
		});
	}
	
});

