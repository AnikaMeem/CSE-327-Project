

<?php
    /*error_reporting(E_ALL);
    ini_set('display_errors', 1);*/
    //$cenname=$_POST["cenname"];

    include "../header/header.html";
    session_start();
    $curdir=getcwd();

    $name=$_POST["name"];
    $age=$_POST["age"];
    $height=$_POST["height"];
    $father=$_POST["father"];
    $mother=$_POST["mother"];
    $lostdt=$_POST["lostdt"];
    $lostlocation=$_POST["lostlocation"];
    $color=$_POST["color"];
    $wearing=$_POST["wearing"];
    $contact=$_POST["contact"];
    $address=$_POST["address"];
    $other=$_POST["other"];
    $user_id=$_SESSION['id'];
    $image_lost=$_POST["image_lost"];
//$param_password = password_hash($password, PASSWORD_DEFAULT);
if( !empty($name) || !empty($father) || !empty($mother) || !empty($lostdt) || !empty($color) || !empty($contact))
{
    $host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbname = "a";
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if(mysqli_connect_error())
    {
    	die('Connect Error('. mysqli_connect_errno(). ')' . mysqli_connect_error());
    }
    else
    {
    	//$SELECT = "SELECT email from user_info where email = ? Limit 1";
      //  $SELECT= "SELECT username from user where username = ? Limit 1";
        //$password = password_hash($password, PASSWORD_DEFAULT);
       	$INSERT = "INSERT into lost (name, age, height, father, mother, lostdt, lostlocation, color, wearing, contact, address, other, user_id) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    	/*$stmt = $conn->prepare($SELECT);
    	$stmt->bind_param("s", $email);
    	$stmt->execute();
    	$stmt->bind_result($email);
    	$stmt->store_result();
    	$rnum = $stmt->num_rows;*/

    		$stmt = $conn->prepare($INSERT);
    		$stmt->bind_param("sssssssssssss", $name, $age, $height, $father, $mother, $lostdt, $lostlocation, $color, $wearing, $contact, $address, $other, $user_id);

           // $param_GuardianUsername = $GuardianUsername;

        $stmt-> execute();
       
    		//echo "New Record inserted successfully";
    	}

    	$stmt->close();
    	$conn->close();
    }

    if(mkdir($curdir."/faceRecogv4Lost/labeled_images/".$name, 0777))
    {
      echo "successfull..";
    }
  else
    {
      echo "!Successfull..";
    }
  header('Location: profile.php');

?>
