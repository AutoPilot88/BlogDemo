ALTER TABLE `post_categories` DROP INDEX `category_uuid_index`;
ALTER TABLE `post_categories` DROP INDEX `post_uuid_index`;

DROP TABLE `post_categories`;


ALTER TABLE `post_texts` DROP INDEX `post_uuid_index`;

DROP TABLE `post_texts`;


ALTER TABLE `post_descriptions` DROP INDEX `post_uuid_index`;

DROP TABLE `post_descriptions`;


ALTER TABLE `post_images` DROP INDEX `post_uuid_index`;

DROP TABLE `post_images`;


ALTER TABLE `posts` DROP INDEX `created_at_index`;
ALTER TABLE `posts` DROP INDEX `views_index`;

DROP TABLE `posts`;


ALTER TABLE `category_descriptions` DROP INDEX `category_uuid_index`;

DROP TABLE `category_descriptions`;


DROP TABLE `categories`;
