<?php
	session_start();

    include ('dbh.php');

	if(isset($_POST['login'])) {
		$name = $_POST['name'];
		$pass = $_POST['pass'];
		
        $sql = "SELECT * FROM patient WHERE p_name ='$name' AND password = '$pass'";
		
		$result =mysqli_query($conn,$sql);
		 
		 if(! $row=mysqli_fetch_assoc($result))
		 {
			echo "ur name is incorrect";
		 }
		 else
		 {
           $_SESSION['patient'] =$row ;
		  // print_r($_SESSION);
		   if($_SESSION['patient']['patient_id'] == 0)
	      {
			//echo $_SESSION['id'];
			header("Location: ../Login/admin/index3.php");	
		  }
		   else
		   {
			//echo $_SESSION['id'];
			header("Location: ../Login/patient/index.php");	
		   }
		  

		 }
		//echo $result;
	}



?>