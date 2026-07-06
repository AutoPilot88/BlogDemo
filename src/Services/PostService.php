<?php

namespace App\Services;

use App\Modules\Database;
use App\Repositories\PostRepository;

class PostService
{
    private readonly PostRepository $postRepository;

    public function __construct()
    {
        $this->postRepository = new PostRepository(Database::getConnection());
    }

    public function getPostPageData(string $postUuid): ?array
    {
        $post = $this->postRepository->findByUuid($postUuid);

        if ($post === null) {
            return null;
        }

        return [
            'post' => $post,
            'category' => $this->postRepository->findHomeCategory($postUuid),
            'similarPosts' => $this->postRepository->getSimilarPosts($postUuid, 3),
            'currentYear' => date('Y'),
        ];
    }
}
