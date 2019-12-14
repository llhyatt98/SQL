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

$customer = $_POST['customer'];

$customer = mysqli_real_escape_string($conn, $customer);

$query = "SELECT customerName, productName, productDesc FROM dist_base.orders JOIN customers USING(customerID) JOIN orderDetails USING(orderNum) JOIN products USING(productCode) WHERE customerName LIKE ";
$query = $query."'".$customer."';";

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
    print "$row[customerName] $row[productName] $row[productDesc]";
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
