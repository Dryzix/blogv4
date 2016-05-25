<?php


include "vendor/autoload.php";

use PHX\Core\Motor;
use PHX\Core\Router\Router;

$test = new PHX\Core\Motor();
$confSitePath = realpath(__DIR__ . '/conf/global.json');

$page = Motor::run($confSitePath);

echo $page;