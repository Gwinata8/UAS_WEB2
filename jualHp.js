$(this).ready(function(){
	loadTable();
	function loadTable(){	
		$.ajax({
			url: 'server/jHp.php',
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
					table += '</tr>'
					i++;
				});
				$('table').append(table);
			}
		});
	}
	
});

