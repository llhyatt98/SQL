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

$data = $_POST['data'];

$data = mysqli_real_escape_string($conn, $data);

$query = "SELECT * FROM dist_base.products JOIN orderDetails USING(productCode) WHERE quantity > (SELECT AVG(quantity) FROM orderDetails WHERE MSRP > ";
$query = $query.$data.");";

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
    print "$row[productCode] $row[productName] $row[productDesc] $row[MSRP] $row[quantity]";
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
