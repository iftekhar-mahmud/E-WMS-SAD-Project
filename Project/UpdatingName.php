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
<title>WholeSaler-Login</title>
<link rel="stylesheet" href="WholeSaler/styles.css" type="text/css" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>

<body>

		<section id="body" class="width">
			<aside id="sidebar" class="column-left">

			<header>
				<h1><a href="#">WholeSaler</a></h1>

				<h2>The Complete Info</h2>

			</header>
			
			<nav id="mainnav">
  				<ul>
                            		<li> <a href="#">UpadateName</a></li>

          </ul>
			</nav>



			</aside>

		<section id="content" class="column-right">

	    <article>

      <blockquote style="visibility: hidden;"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitationullamco</p></blockquote>
		<p>&nbsp;</p>

		<a href="#" class="button">Read more</a>
			<a href="#" class="button button-reversed">Comments</a> 
		
		<fieldset>
				<legend><h3>Update Name</h3></legend>
        <form method="post" action="UpdatingName.php">

          <p><label for="Stock-ID">ProductID:</label>
          <input type="text" name="Stock-ID" id="Stock-ID" value=""  /><br /></p>

          <p><label for="Name">ProductName:</label>
          <input type="text" name="Name" id="Name" value=""  /><br /></p>

          <p><input type="submit" name="UpdateName" class="formbutton" value="Update" /></p>

        </form>

		</fieldset>
				<p>&nbsp;</p>

        <?php if(isset($_POST['UpdateName']))
        {
          $StockID    = $_POST['Stock-ID'];
          $name = $_POST['Name'];
          echo $StockID."<br>";
          echo $name;
          $conn = mysqli_connect("localhost","student","student","ewm");

          $sql  = "UPDATE product
                    SET Pname = '$name'
                    WHERE ProductID = '$StockID' ";


                $result = mysqli_query($conn,"UPDATE product SET Pname = '$name'  WHERE ProductID = '$StockID' ");
            if(mysqli_query($conn,$sql)){
              echo "Record Updated";
            }
            else {
              echo "Error". mysqli_error($conn);
            }

             ;

            header("Location:Update_Stocks.php");

        }?>

		</article>


</p>
<br><br><br><br><br><br><br><br>
			<footer class="clear">
				<p>&copy; WholeSale Project</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>


</body>
</html>
