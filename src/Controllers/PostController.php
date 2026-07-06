<?php

namespace App\Controllers;

use App\Routing\Request;
use App\Routing\Response;
use App\Services\PostService;
use App\View\View;

class PostController
{
    private readonly PostService $postService;

    public function __construct()
    {
        $this->postService = new PostService();
    }

    public function show(Request $request): Response
    {
        $uuid = (string) $request->param('uuid', '');

        if ($uuid === '') {
            return Response::notFound();
        }

        $data = $this->postService->getPostPageData($uuid);

        if ($data === null) {
            return Response::notFound();
        }

        return new Response(View::render('post.tpl', $data));
    }
}
