<?php

require __DIR__ . '/../vendor/autoload.php';

use App\Routes\Web;
use App\Routing\Router;

$router = new Router();
Web::register($router);

$response = $router->dispatch($_SERVER['REQUEST_METHOD'], $_SERVER['REQUEST_URI']);
$response->send();
