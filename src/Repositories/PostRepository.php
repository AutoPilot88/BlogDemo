<?php

namespace App\Repositories;

use PDO;

class PostRepository
{
    private const SORTABLE_COLUMNS = [
        'views' => 'p.views',
        'date' => 'p.created_at',
    ];

    public function __construct(private readonly PDO $pdo)
    {
    }

    public function countByCategory(string $categoryUuid): int
    {
        $stmt = $this->pdo->prepare(
            'SELECT COUNT(*)
             FROM post_categories
             WHERE category_uuid = :categoryUuid'
        );
        $stmt->bindValue(':categoryUuid', $categoryUuid);
        $stmt->execute();

        return (int) $stmt->fetchColumn();
    }

    public function getByCategory(
        string $categoryUuid,
        string $sortBy,
        string $sortDirection,
        int $page,
        int $perPage,
    ): array {
        $column = self::SORTABLE_COLUMNS[$sortBy] ?? self::SORTABLE_COLUMNS['date'];
        $direction = strtoupper($sortDirection) === 'ASC' ? 'ASC' : 'DESC';
        $offset = ($page - 1) * $perPage;

        $stmt = $this->pdo->prepare(
            "SELECT
                 p.uuid,
                 p.name,
                 p.views,
                 DATE_FORMAT(p.created_at, '%M %e, %Y') AS formatted_date,
                 pi.path AS image_path,
                 pd.description
             FROM posts p
             INNER JOIN post_categories pc ON pc.post_uuid = p.uuid
             LEFT JOIN post_images pi ON pi.post_uuid = p.uuid
             LEFT JOIN post_descriptions pd ON pd.post_uuid = p.uuid
             WHERE pc.category_uuid = :categoryUuid
             ORDER BY {$column} {$direction}
             LIMIT {$perPage} OFFSET {$offset}"
        );
        $stmt->bindValue(':categoryUuid', $categoryUuid);
        $stmt->execute();

        return $stmt->fetchAll();
    }
}
