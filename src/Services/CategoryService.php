<?php

namespace App\Services;

use App\Modules\Database;
use App\Repositories\CategoryRepository;

class CategoryService
{
    private readonly CategoryRepository $categoryRepository;

    public function __construct()
    {
        $this->categoryRepository = new CategoryRepository(Database::getConnection());
    }

    public function getHomePageData(int $postsPerCategory = 3): array
    {
        return [
            'categories' => $this->categoryRepository->getCategoriesWithLatestPosts($postsPerCategory),
            'currentYear' => date('Y'),
        ];
    }
}
