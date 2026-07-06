<?php

namespace App\Controllers;

use App\Routing\Request;
use App\Routing\Response;
use App\Services\CategoryService;
use App\View\View;

class CategoryController
{
    private const MAX_PER_PAGE = 9;
    private const ALLOWED_SORT = ['views', 'date'];
    private const ALLOWED_DIR = ['asc', 'desc'];

    private readonly CategoryService $categoryService;

    public function __construct()
    {
        $this->categoryService = new CategoryService();
    }

    public function show(Request $request): Response
    {
        $uuid = (string) $request->param('uuid', '');

        if ($uuid === '') {
            return Response::notFound();
        }

        $sort = (string) $request->query('sort', 'date');
        if (!in_array($sort, self::ALLOWED_SORT, true)) {
            $sort = 'date';
        }

        $dir = (string) $request->query('dir', 'desc');
        if (!in_array($dir, self::ALLOWED_DIR, true)) {
            $dir = 'desc';
        }

        $page = (int) $request->query('page', 1);
        if ($page < 1) {
            $page = 1;
        }

        $perPage = (int) $request->query('per_page', self::MAX_PER_PAGE);
        if ($perPage < 1 || $perPage > self::MAX_PER_PAGE) {
            $perPage = self::MAX_PER_PAGE;
        }

        $data = $this->categoryService->getCategoryPageData($uuid, $sort, $dir, $page, $perPage);

        if ($data === null) {
            return Response::notFound();
        }

        return new Response(View::render('category.tpl', $data));
    }
}
