<?php
// DIC configuration

$container = $app->getContainer();

// PDO database library
$container['db'] = function ($c) {
    $settings = $c->get('settings')['db'];
    $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',);
    $pdo = new PDO("mysql:host=" . $settings['host'] . ";dbname=" . $settings['dbname'],
    $settings['user'], $settings['pass']);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,     PDO::FETCH_ASSOC);
    return $pdo;
};