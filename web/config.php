<?php

return [
    'settings' => [
        'displayErrorDetails' => true, // set to false in production
        'addContentLengthHeader' => false, // Allow the web server to send the content-length header
         // Database connection settings
        'db' => [
            'host' => 'localhost',
            'dbname' => 'fullstack2019; charset=UTF8',
            'user' => 'root',
            'pass' => '12345678'
        ],
    ],
];


$container = $app->getContainer();
// PDO database library 
$container['db'] = function ($c) {
    $settings = $c->get('settings')['db'];
    $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',);
    $pdo = new PDO("mysql:host=localhost;dbname=fullstack2019; charset=UTF8,root, 12345678");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $pdo;
};