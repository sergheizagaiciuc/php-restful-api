<?php
namespace PH7\ApiSimpleMenu;

use Whoops\Run as WhoopsRun;
use Whoops\Handler\JsonResponseHandler as WhoopsJsonResponseHandler;

require __DIR__ . '/vendor/autoload.php';

// handle all exceptions and convert them into JSON format
$whoops = new WhoopsRun();
$whoops->pushHandler(new WhoopsJsonResponseHandler);
$whoops->register();
