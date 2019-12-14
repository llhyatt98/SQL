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

$average = $_POST['average'];

$average = mysqli_real_escape_string($conn, $average);

$query = "SELECT customerID, customerName, AVG(amount) as average_payment FROM dist_base.payments JOIN customers USING(customerID) WHERE customerID = ";
$query = $query.$average.";";

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
    print "$row[customerID] $row[customerName] $row[average_payment]";
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
