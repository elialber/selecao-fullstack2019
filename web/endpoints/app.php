<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app->options('/{routes:.+}', function ($request, $response, $args) {
    return $response;
});

$app->add(function ($req, $res, $next) {
    $response = $next($req, $res);
    return $response
            ->withHeader('Access-Control-Allow-Origin', 'http://localhost:8083')
            ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')
            ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
});

$app->get('/', function (Request $request, Response $response) {

    $data = [
        'app' => 'SimpleVet'
    ];

    return $response->withJson($data, 200);
});

$app->get('/views', function (Request $request, Response $response) {
     $sth = $this->db->prepare("SELECT * FROM vw_animais");
     $sth->execute();
     $todos = $sth->fetchAll();
     return $response->withJson($todos, 200);
});


$app->get('/findone/[{id}]', function (Request $request, Response $response, $args) {
     $sth = $this->db->prepare("SELECT * FROM animais where id = :id");
     $sth->bindParam("id", $args['id']);
     $sth->execute();
     $todos = $sth->fetchAll();
     return $response->withJson($todos, 200);
});

$app->post('/insert', function ($request, $response) {
        $input = $request->getParsedBody();
        
        $sql = "CALL SP_INSERT_ANIMAIS(:nome, :raca, :sexo, :especie, :chip, :data_nascimento);";
        $sth = $this->db->prepare($sql);
        $sth->bindParam("nome", $input['nome']);
        $sth->bindParam("raca", $input['raca']);
        $sth->bindParam("sexo", $input['sexo']);
        $sth->bindParam("especie", $input['especie']);
        $sth->bindParam("chip", $input['chip']);
        $sth->bindParam("data_nascimento", $input['data_nascimento']);
        $sth->execute();
        return $response->withJson('OK');
    });

    $app->post('/update', function ($request, $response) {
        $input = $request->getParsedBody();
        $sql = "CALL SP_UPDATE_ANIMAIS(:id, :nome, :raca, :sexo, :especie, :chip, :data_nascimento, :data_falecimento);";
        $sth = $this->db->prepare($sql);
        $sth->bindParam("id", $input['id']);
        $sth->bindParam("nome", $input['nome']);
        $sth->bindParam("raca", $input['raca']);
        $sth->bindParam("sexo", $input['sexo']);
        $sth->bindParam("especie", $input['especie']);
        $sth->bindParam("chip", $input['chip']);
        $sth->bindParam("data_nascimento", $input['data_nascimento']);
        $sth->bindParam("data_falecimento", $input['data_falecimento']);
        $sth->execute();
        return $response->withJson('OK');
    });

// Catch-all route to serve a 404 Not Found page if none of the routes match
// NOTE: make sure this route is defined last
$app->map(['GET', 'POST', 'PUT', 'DELETE', 'PATCH'], '/{routes:.+}', function($req, $res) {
    $handler = $this->notFoundHandler; // handle using the default Slim page not found handler
    return $handler($req, $res);
});