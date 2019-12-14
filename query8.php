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

$office = $_POST['office'];

$office = mysqli_real_escape_string($conn, $office);

$query = "SELECT city, customerName, customers.state as s FROM dist_base.customers JOIN offices USING(city) WHERE customers.state LIKE '";
$query = $query.$office."';";

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
    print "$row[city] $row[customerName] $row[s]";
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
