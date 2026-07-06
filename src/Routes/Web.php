<?php

namespace App\Routes;

use App\Controllers\CategoryController;
use App\Controllers\HomeController;
use App\Routing\Router;

class Web
{
    public static function register(Router $router): void
    {
        $router->get('/', [HomeController::class, 'index']);
        $router->get('/category/{uuid}', [CategoryController::class, 'show']);
    }
}
