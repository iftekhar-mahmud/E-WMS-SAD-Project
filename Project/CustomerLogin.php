<?php
session_start();
if($_SESSION['Login']!="Active")
{
   header("location:loginPage.php");
}
?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Customer-Login</title>
<link rel="stylesheet" href="WholeSaler/styles.css" type="text/css" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>

<body>

		<section id="body" class="width">
			<aside id="sidebar" class="column-left">

			<header>
				<h1><a href="CustomerLogin.php">Customer</a></h1>

				<h2>The Complete Info</h2>

			</header>
			
			<nav id="mainnav">
  				<ul>
                            		<li class="selected-item"><a href="CustomerLogin.php">Home</a></li>
									              <li><a href="catag.php">Category</a></li>
									              <li><a href="cus_Transations.php">Transactions</a></li>
                                <li><a href="Logout.php">Logout</a></li>
          </ul>
			</nav>



			</aside>

		<section id="content" class="column-right">

	    <article>

	    <blockquote style="visibility: hidden;"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitationullamco</p></blockquote>
		<p>&nbsp;</p>

			
			 
		
    <?php
    $ci = $_SESSION['CID'];

    $conn = mysqli_connect("localhost","student","student","ewm");
    $sql = "SELECT Name  FROM customer_information
    WHERE  CustomerID = '$ci' ";
    $result = mysqli_query($conn,$sql);

    $row1 = mysqli_fetch_assoc($result);

 ?>
<fieldset>
		<legend><h3>Welcome <?php echo $row1['Name']; ?>  </h3></legend>
  </fieldset>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br> <br><br>
		</article>




			<footer class="clear">
				<p>&copy; WholeSale Project </p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>


</body>
</html>