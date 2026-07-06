<?php

namespace App\Services;

use App\Modules\Database;
use App\Repositories\CategoryRepository;
use App\Repositories\PostRepository;

class CategoryService
{
    private readonly CategoryRepository $categoryRepository;
    private readonly PostRepository $postRepository;

    public function __construct()
    {
        $pdo = Database::getConnection();
        $this->categoryRepository = new CategoryRepository($pdo);
        $this->postRepository = new PostRepository($pdo);
    }

    public function getHomePageData(int $postsPerCategory = 3): array
    {
        return [
            'categories' => $this->categoryRepository->getCategoriesWithLatestPosts($postsPerCategory),
            'currentYear' => date('Y'),
        ];
    }

    public function getCategoryPageData(
        string $categoryUuid,
        string $sortBy,
        string $sortDirection,
        int $page,
        int $perPage,
    ): ?array {
        $category = $this->categoryRepository->findByUuid($categoryUuid);

        if ($category === null) {
            return null;
        }

        $totalPosts = $this->postRepository->countByCategory($categoryUuid);
        $totalPages = max(1, (int) ceil($totalPosts / $perPage));
        $page = min($page, $totalPages);

        $posts = $this->postRepository->getByCategory($categoryUuid, $sortBy, $sortDirection, $page, $perPage);

        return [
            'category' => $category,
            'posts' => $posts,
            'sort' => $sortBy,
            'dir' => $sortDirection,
            'pagination' => [
                'page' => $page,
                'perPage' => $perPage,
                'totalPosts' => $totalPosts,
                'totalPages' => $totalPages,
                'hasPrevious' => $page > 1,
                'hasNext' => $page < $totalPages,
            ],
            'currentYear' => date('Y'),
        ];
    }
}
