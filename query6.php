<?php

include('connect.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>DB Query Program</title>
  </head>
  
  <body bgcolor="#DDDDDD">
  
  
  <hr>
  
  
<?php

$supervisor = $_POST['supervisor'];

$supervisor = mysqli_real_escape_string($conn, $supervisor);

$query = "SELECT customerID, customerName, city, state, country, postalCode FROM dist_base.customers JOIN employees ON repEmployeeID = employeeID WHERE employeeID IN (SELECT employeeID FROM employees WHERE supervisor = ";
$query = $query.$supervisor.");";

?>

<p>
The query:
<p>
<?php
print $query;
?>

<hr>
<p>
Result of query:
<p>



<?php
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

print "<pre>";
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "\n";
    print "$row[customerID] $row[customerName] $row[city] $row[state] $row[country] $row[postalCode]";
  }
print "</pre>";

mysqli_free_result($result);

mysqli_close($conn);
?>

<p>
<hr>
Lucas Hyatt ~  Fall 2019
</p> 
 
</body>
</html>
