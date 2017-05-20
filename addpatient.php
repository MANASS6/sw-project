<?php
 	session_start();
    include ('dbh.php');

	if(isset($_POST['submit'])) {
		$name = $_POST['name'];
		$email = $_POST['email'];
		$pass = $_POST['pass'];
		$tele = $_POST['tele'];
        $age = $_POST['age'];
        $adress = $_POST['adress'];
        $gender = $_POST['gender'];
        $pb = $_POST['pb'];
		$hgb = $_POST['hgb'];
		$bg = $_POST['bg'];
		$rr = $_POST['rr'];
        $xr = $_POST['xr'];
        $dseases = $_POST['dseases'];
        $notes = $_POST['notes'];
		
        $sql0 = "INSERT INTO patient (p_name,password,e_mail,phone,age,adress,gender)
		VALUES ('$name','$pass','$email','$tele','$age','$adress','$gender')";
		
		$result =mysqli_query($conn,$sql0);
		
		//get patient id inserted
		$sql1 = "SELECT patient_id FROM patient WHERE p_name ='$name' AND password = '$pass'";
		$result =mysqli_query($conn,$sql1);
		$row=mysqli_fetch_assoc($result);
        $p_id = $row['patient_id'];
		
		 $sql2 = "INSERT INTO  `medical_history` (`pb`,`hgp`, `Blood_Glucose`,`Radiation_result`,
		 `patient_id`)   VALUES ('$pb','$hgb','$bg','$rr','$p_id')";
		 
		 //update database
		 mysqli_query($conn,$sql2);
		
		
		$sql3 = "SELECT medical_history_id FROM medical_history WHERE patient_id = '$p_id'";
       
       //update database
       $result =mysqli_query($conn,$sql3);
       //get MH_id
       $row=mysqli_fetch_assoc($result);
       $m_id = $row['medical_history_id'];
       
       
       $sql4 = "INSERT INTO x_rays (x_ray,MH_id) VALUES ('$xr','$m_id')";
       //update xray
       mysqli_query($conn,$sql4);
       
       $sql5 = "INSERT INTO diseases (diseases,MH_id) VALUES ('$dseases','$m_id')";
       //update diseases
       mysqli_query($conn,$sql5);
       
       $sql6 = "INSERT INTO notes (notes,MH_id) VALUES ('$notes','$m_id')";
       //update diseases
       mysqli_query($conn,$sql6);
     
       $sql7 = "INSERT INTO procuder (procuder_name,price,date,time,patient_id)
       VALUES ('$proc','$price','$date','$time','$p_id')";
     
       //update diseases
       mysqli_query($conn,$sql7);
      
	  header("Location: ../Login/admin/Thanks%20for%20adding.php");
		
     }



?>