<?php
    $server= 'sql311.epizy.com';
    $username='epiz_30200622';
    $password="zYeQJ5TUvB6ffx";
    $dbname=  'epiz_30200622_integratedbankingwebsite';
	$conn =  mysqli_connect($server, $username, $password, $dbname);

	if(!$conn){
		die("Could not connect to the database due to the following error --> ".mysqli_connect_error());
	}
 
?>