
<?php
session_start();
$db = mysqli_connect("localhost","root","","new");

if (isset($_post['login_btn'])){
$username = mysql_real_escape_string($_post['username']);
$password = mysql_real_escape_string($_post['password'])
#$password= md5($password);
$sql="SELECT * FROM  login_info WHERE userName=$username AND 	password=$password";
$result= mysqli_query($db,$sql);
if(mysqli_num_row($result)==1){
	$_SESSION['message']="you are now logged in"
	$_SESSION['username']=$usernam;
header('location:index.php');

}
else {
	$_SESSION['message']="name or password error"


}
}
 ?>
<!DOCTYPE html>
<html>
<head>
<title>Registeration  </title>
</head>

<body>

<form method="post" action="login.php" >
<table>
<tr>
<td>Username:</td>
<td><input type="text"  name="username" class="textInput"> </td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password"  name="password" class="textInput"> </td>
</tr>
<tr>
<td></td>
<td><input type="submit"  name="login_btn" value="Login"> </td>
</tr>


</table>
</form>
</body>
</html>