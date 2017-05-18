<?php
session_start();
$db = mysqli_connect("localhost","root","","new");
session_start();
if (isset($_post['register_btn'])){
$username = mysql_real_escape_string($_post['username']);
$email = mysql_real_escape_string($_post['email']);
//$password = mysql_real_escape_string($_post['password']);
$sql="INSERT INTO   patient(p_name,e_mail) values($username ,$email) ";
mysqli_query($db,$sql);
$_SESSION['message']="you are logged in";
$_SESSION['username']=$usernam;
header('location:index.php');
}
 ?>
<!DOCTYPE html>
<html>
<head>
<title>Registeration  </title>
</head>

<body>


</body>
</html>