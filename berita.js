$(this).ready(function(){
	loadTable();
	function loadTable(){	
		$.ajax({
			url: 'server/jberita.php',
			dataType: 'json',
			success: function(data){
				var table = "";
				var i = 1;
				
				$.each(data, function(key,value){
					table += '<tr>'
					table += '<td>'+i+'</td>'	
					table += '<td>'+value.judul+'</td>'
					table += '<td>'+value.sumber+'</td>'	
					table += '<td><a href="artikel.php?idberita='+value.id+'" style="color: yellow">Selengkapnya</button></td>'
					table += '</tr>'
					i++;
				});
				$('table').append(table);
			}
		});
	}
	
});

