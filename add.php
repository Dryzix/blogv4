<?php

$dbName = 'blog';
$db = new \PDO('mysql:dbname=' . $dbName . ';host=127.0.0.1', 'root', '');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);


//$req = $db->prepare('INSERT DELAYED INTO test VALUES("", :i)');
//for($i=0;$i<1000000;$i++)
//{
//    $req->execute(['i' => $i]);
//    echo "$i\n";
//}

$time_start = microtime(true);


$req = $db->prepare('EXPLAIN SELECT COUNT(*) FROM test USE INDEX (PRIMARY)');
$req->execute();
$rep = $req->fetch(PDO::FETCH_OBJ);

echo'Nombre de lignes : ' . number_format($rep->rows, 0, '.', ' ');


$time_end = microtime(true);
$execution_time = ($time_end - $time_start);

echo '<hr/><b>Total Execution Time:</b> '.$execution_time.' Sec<hr />';