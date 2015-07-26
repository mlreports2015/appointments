<?php
		
   // PHP pear DB 
     require_once 'DB.php';

// SQL Connection info

$dsn = array(
    'phptype'  => ,
    'username' => ,
    'password' => ,
    'hostspec' => ,
    'database' => ''
);
	

		
		$options = array(
  		  'debug'       => 2
		);
		
		$db =& DB::connect($dsn,$options);
		
			
			if (PEAR::isError($db)) {
    			die($db->getMessage());
			}

		
	
?>