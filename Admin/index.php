<?php
    include("process.php");
?>


<!doctype html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    </head>        

    <body style="background: #29a19c; font-family: 'Century Gothic', cursive;">
    <br><br><br><br>
         <h1 style="color: white; text-align:center;" > Admin Login </h1>
            <div class="container">
                <div class="row">
                    <div class="col">
                    
                    </div>
                    <div class="col-6">
                    <form action="#" method="POST" style="color: white">                    
                        <div>
                            <label>Email:</label><br>
                            <input type="email" name="email" class="form-control" id="email1" aria-describedby="email" required="" placeholder="Email address">
                            <small>'Ex. admin@admin.com'</small>
                        </div>
                        <br>
                        <div>
                            <label>Password:</label><br>
                            <input type="password" name="password" class="form-control" id="password" required="" placeholder="Password">
                            <small>'Ex. admin'</small>
                        </div>
                        <br>
                        <div>
                            <button type="submit" class="btn btn-dark" value="submit" name="submit">Sign In</button>
							<a href="../" style="color:#FFE4C4; text-decoration:none;">Bukan Admin</a></td>
                        </div>						
                    </form>
                    </div>
                    <div class="col">
                    </div>
                </div>
            </div>
    </body>
</html>


