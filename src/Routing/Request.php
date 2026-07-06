<?php

namespace App\Routing;

class Request
{
    public function __construct(
        private readonly array $params = [],
        private readonly array $query = [],
    ) {
    }

    public function param(string $key, mixed $default = null): mixed
    {
        return $this->params[$key] ?? $default;
    }

    public function query(string $key, mixed $default = null): mixed
    {
        return $this->query[$key] ?? $default;
    }
}
