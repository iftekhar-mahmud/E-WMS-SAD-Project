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
				<h1><a href="WholeSaler-Login.php">WholeSaler</a></h1>

				<h2>The Complete Info</h2>

			</header>
			
			<nav id="mainnav">
  				<ul>
                            		<li> <a href="WholeSaler-Login.php">Home</a></li>
																<li> <a href="Add _Transaction.php">New Transaction</a></li>
																<li> <a href="AllTransactions.php">All Transactions</a></li>
																<li class="selected-item" > <a href="Defaulters_Table.php">Defaulters Table</a></li>
                            		<li> <a href="Update_Stocks.php">Updating Stocks</a></li>
                            		<li> <a href="Add_Suppliers.php">Add Supplier</a></li>
																<li> <a href="Logout.php">Logout</a></li>
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
				<legend><h3>Defaulters Table</h3></legend>
				<table>
					<tr>
						<th>CustomerID</th>
						<th>Name</th>
						<th>Address</th>
						<th>LoginID</th>
						<th>Password</th>
					</tr>
					<?php
						$conn = mysqli_connect("localhost","student","student","ewm");
						$sql = "SELECT * FROM Customer_information
						WHERE CustomerID IN (SELECT customerID FROM transaction_information
						WHERE TransactionID IN (SELECT TransactionID FROM payments
						WHERE Amount_Left NOT 0 AND (SYSDATE - Transaction_Date)>15))";
						$result = mysqli_query($conn,$sql);

						$row = mysqli_fetch_assoc($result);
						do { ?>


					<tr>
						<td><?php echo $row['Customer_ID']; ?></td>
						<td><?php echo $row['Name']; ?></td>
						<td><?php echo $row['Address']; ?></td>
						<td><?php echo $row['Login_ID']; ?></td>
						<td><?php echo $row['Password']; ?></td>
					</tr>
					<?php } while($row = mysqli_fetch_assoc($result)) ?>
					<tr>
				</table>
		</fieldset>
				<p>&nbsp;</p>

		</article>


</p>
			<footer class="clear">
				<p>&copy; WholeSale Project</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>


</body>
</html>
