<?php
require __DIR__ . '/../vendor/autoload.php';

session_start();

// Instantiate the app


$settings = require __DIR__ . '/../src/settings.php';
$app = new \Slim\App($settings);

require 'endpoints/app.php';
require __DIR__ . '/../src/dependencies.php';

$app->run();
