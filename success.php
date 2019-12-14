<?php
include 'header.php';
include "db.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Order Confirmation</title>
</head>
<body bgcolor="#FFFFFF">
 <div class="main main-raised"> 
        
		<div class="section">
			<!-- container -->
			<div class="container">
<?php
	include "db.php";
    if(isset($_SESSION["uid"]))
	{
        $sql = "SELECT first_name FROM orders_info WHERE user_id='$_SESSION[uid]'";
        $query = mysqli_query($con,$sql);
        $row=mysqli_fetch_array($query);
        echo 'Thank You, '.$row["first_name"];
	}
?>
	<br/>
	<p><img src="~/DreamEvents/DreamEvents/img/success-img.png" alt="" /></p>					
	<br/>
<?php
	include "db.php";
    if(isset($_SESSION["uid"]))
	{
        $sql = "SELECT order_id FROM orders_info WHERE user_id='$_SESSION[uid]'";
        $query = mysqli_query($con,$sql);
        $row=mysqli_fetch_array($query);
        echo 'Your Booking # '.$row["trx_id"].' has been confirmed.';
	}
?>
	<p>Thank you for booking your event with Dreamz Event. It is to confirm your bookings has been placed successfully. </p>
	<br/>
	</div>
	</div>
	</div>
</body>
</html>
<?php
include "newslettter.php";
include "footer.php";
?>