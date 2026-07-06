<?php

namespace App\Repositories;

use PDO;

class CategoryRepository
{
    public function __construct(private readonly PDO $pdo)
    {
    }

    public function getCategoriesWithLatestPosts(int $postsPerCategory = 3): array
    {
        $categories = $this->pdo->query('SELECT uuid, name FROM categories ORDER BY name')->fetchAll();

        foreach ($categories as &$category) {
            $category['posts'] = $this->getLatestPostsForCategory($category['uuid'], $postsPerCategory);
        }

        return $categories;
    }

    private function getLatestPostsForCategory(string $categoryUuid, int $limit): array
    {
        $stmt = $this->pdo->prepare(
            'SELECT
                 p.uuid,
                 p.name,
                 DATE_FORMAT(p.created_at, "%M %e, %Y") AS formatted_date,
                 pi.path AS image_path,
                 pd.description
             FROM posts p
             INNER JOIN post_categories pc ON pc.post_uuid = p.uuid
             LEFT JOIN post_images pi ON pi.post_uuid = p.uuid
             LEFT JOIN post_descriptions pd ON pd.post_uuid = p.uuid
             WHERE pc.category_uuid = :categoryUuid
             ORDER BY p.created_at DESC
             LIMIT ' . $limit
        );
        $stmt->bindValue(':categoryUuid', $categoryUuid);
        $stmt->execute();

        return $stmt->fetchAll();
    }
}
