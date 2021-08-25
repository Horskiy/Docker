<?php


echo '<p>CPU load!</p>';
$file='test_cpu.txt';
//echo cat $file | sed -n 3p
//echo cat $file | sed -n 4p 
include($file);
?>


<?php

        phpinfo();

?>
