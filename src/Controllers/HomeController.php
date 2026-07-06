<?php

namespace App\Controllers;

use App\Routing\Request;
use App\Routing\Response;
use App\Services\CategoryService;
use App\View\View;

class HomeController
{
    private readonly CategoryService $categoryService;

    public function __construct()
    {
        $this->categoryService = new CategoryService();
    }

    public function index(Request $request): Response
    {
        $postsPerCategory = (int) $request->query('posts_per_category', 3);

        if ($postsPerCategory < 1 || $postsPerCategory > 10) {
            $postsPerCategory = 3;
        }

        $data = $this->categoryService->getHomePageData($postsPerCategory);

        return new Response(View::render('home.tpl', $data));
    }
}
