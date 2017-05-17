<?php
session_start();
$db = mysqli_connect("localhost","root","","new");
session_start();
if (isset($_post['register_btn']))
$username = mysql_real_escape_string($_post['username']);
$email = mysql_real_escape_string($_post['email'])
$password = mysql_real_escape_string($_post['password'])
$sql="INSERT INTO   patient(p_name,e_mail) values($username ,$email) "
mysqli_query($db,$sql);
$_SESSION['message']="you are logged in";
$_SESSION['username']=$usernam;
header('location:index.php')
 ?>
<!DOCTYPE html>
<html>
<head>
<title>Registeration  </title>
</head>

<body>

<form method="post" action="register.php" >
<table>
<tr>
<td>Username:</td>
<td><input type="text"  name="username" class="textInput"> </td>
</tr>
<tr>
<td>Email:</td>
<td><input type="email"  name="email" class="textInput"> </td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password"  name="password" class="textInput"> </td>
</tr>
<tr>
<td></td>
<td><input type="submit"  name="register_btn" value="register> </td>
</tr>
</table>
</form>

</body>
</html>