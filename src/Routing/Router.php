<?php

namespace App\Routing;

class Router
{
    private array $routes = [];

    public function get(string $path, array $action): void
    {
        $this->addRoute('GET', $path, $action);
    }

    public function post(string $path, array $action): void
    {
        $this->addRoute('POST', $path, $action);
    }

    private function addRoute(string $method, string $path, array $action): void
    {
        $this->routes[] = [
            'method' => $method,
            'path' => $path,
            'action' => $action,
        ];
    }

    public function dispatch(string $method, string $uri): Response
    {
        $path = rtrim((string) parse_url($uri, PHP_URL_PATH), '/') ?: '/';

        foreach ($this->routes as $route) {
            if ($route['method'] !== $method) {
                continue;
            }

            $params = $this->matchPath($route['path'], $path);
            if ($params === null) {
                continue;
            }

            [$controllerClass, $action] = $route['action'];
            $controller = new $controllerClass();

            return $controller->$action(new Request($params, $_GET));
        }

        return Response::notFound();
    }

    private function matchPath(string $routePath, string $requestPath): ?array
    {
        $routePath = rtrim($routePath, '/') ?: '/';
        $pattern = preg_replace('#\{(\w+)\}#', '(?P<$1>[^/]+)', $routePath);

        if (!preg_match('#^' . $pattern . '$#', $requestPath, $matches)) {
            return null;
        }

        return array_filter($matches, fn ($key) => !is_int($key), ARRAY_FILTER_USE_KEY);
    }
}
