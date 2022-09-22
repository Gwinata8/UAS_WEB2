<?php
	include('htmlhead.php');
?> 
<body style="background: #29a19c; font-family: 'Century Gothic', cursive;">
   
    <h1 style="color: white; text-align:center;" > Hubungi Kami </h1> 
            <div class="container">
                <div class="row">
                    <div class="col">
                    
                    </div>
                    <div class="col-6">
                    <form action="#" method="POST" onSubmit="validation()" style="color: white">
                        <div>
                            <label>Nama:</label><br>
                            <input type="text" name="name" id="name" class="form-control" required="" placeholder="Nama">
                        </div>
                        <br>
                        <div>
                            <label>Email:</label><br>
                            <input type="email" name="email" id="email" class="form-control" required="" placeholder="Email">
                        </div>
                        <br>
                        <div>
                            <label>Pesan:</label><br>
                            <textarea class="form-control" id="message" rows="3" required="" placeholder="Pesan"></textarea>
                        </div>
                        <br>
                        <div>
                            <button type="submit" class="btn btn-dark">Submit</button>
                        </div>
                    </form>
                    </div>
                    <div class="col">
                    
                    </div>
                </div>
            </div>
            
	<?php
		include('footer.php');
	?>
    
    <script>
        function validation() {
            var nama = document.getElementById("name").value;            
            alert("Terima kasih "+nama+", pertanyaan Anda akan kami balas secepatnya.");
            
        }
    </script>
</body>