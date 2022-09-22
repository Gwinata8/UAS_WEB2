<?php
    session_start();
    $error='';
    if(isset($_POST['submit'])){
        if(empty($_POST['email']) || empty($_POST['password'])){
            $error ="Username or Password is Invalid";
        }
        else{
            $email=$_POST['email'];
            $password=$_POST['password'];
           
            $conn = mysqli_connect("localhost","root","");
            $db=mysqli_select_db($conn,"tokohp");

            $query = mysqli_query($conn, "SELECT * FROM log_in WHERE password='$password' AND email='$email'");

            $rows = mysqli_num_rows($query);
            if($rows == 1){
                $_SESSION['User'] = $_POST['email'];
                header("location:admin.php");
            }else{
                echo '<script>alert("Email tidak sesuai!")</script>'; 
            }
        }
    }
?>