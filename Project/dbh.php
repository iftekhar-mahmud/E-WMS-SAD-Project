<?php

$conn = mysqli_connect("localhost","student","student","ewm");
echo "Connected to the database of the host...."."<br>";

if (!$conn)
	{
		die("Connection is failed: ".mysqli_connect_error());
	}
?>
