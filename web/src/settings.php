<?php
return [
    'settings' => [
        'displayErrorDetails' => true, // set to false in production
        'addContentLengthHeader' => false, // Allow the web server to send the content-length header
        'determineRouteBeforeAppMiddleware'=> true,
         // Database connection settings
        'db' => [
            'host' => 'mysql.classiradar.com.br',
            'dbname' => 'config; charset=UTF8',
            'user' => 'root',
            'pass' => 'classiradaradmin123!'
        ],
    ],
];
