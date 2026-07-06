-- Создаем таблицу категорий
CREATE TABLE IF NOT EXISTS `categories` (
                                       `uuid` varchar(36) NOT NULL,
    `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`uuid`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Создаем таблицу описаний категорий
CREATE TABLE IF NOT EXISTS `category_descriptions` (
                                            `id` int(11) NOT NULL AUTO_INCREMENT,
    `category_uuid` varchar(36) NOT NULL,
    `description` TEXT NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE INDEX `category_uuid_index` ON `category_descriptions` (`category_uuid`);


-- Создаем таблицу публикаций
CREATE TABLE IF NOT EXISTS `posts` (
                                       `uuid` varchar(36) NOT NULL,
    `name` varchar(128) NOT NULL,
    `views` int(4) NOT NULL DEFAULT '0',
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`uuid`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE INDEX `views_index` ON `posts` (`views`);
CREATE INDEX `created_at_index` ON `posts` (`created_at`);


-- Создаем таблицу изображений публикаций
CREATE TABLE IF NOT EXISTS `post_images` (
                                             `uuid` varchar(36) NOT NULL,
    `name` varchar(64) NOT NULL,
    `path` varchar(512) NOT NULL,
    `post_uuid` varchar(36) NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`uuid`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE INDEX `post_uuid_index` ON `post_images` (`post_uuid`);


-- Создаем таблицу описаний публикаций
CREATE TABLE IF NOT EXISTS `post_descriptions` (
                                             `id` int(11) NOT NULL AUTO_INCREMENT,
    `post_uuid` varchar(36) NOT NULL,
    `description` TEXT NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE INDEX `post_uuid_index` ON `post_descriptions` (`post_uuid`);


-- Создаем таблицу текстов публикаций
CREATE TABLE IF NOT EXISTS `post_texts` (
                                                   `id` int(11) NOT NULL AUTO_INCREMENT,
    `post_uuid` varchar(36) NOT NULL,
    `text` TEXT NOT NULL,
    `created_at` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE INDEX `post_uuid_index` ON `post_texts` (`post_uuid`);

-- Создаем таблицу текстов публикаций
CREATE TABLE IF NOT EXISTS `post_categories` (
                                            `id` int(11) NOT NULL AUTO_INCREMENT,
    `post_uuid` varchar(36) NOT NULL,
    `category_uuid` varchar(36) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE INDEX `post_uuid_index` ON `post_categories` (`post_uuid`);
CREATE INDEX `category_uuid_index` ON `post_categories` (`category_uuid`);
