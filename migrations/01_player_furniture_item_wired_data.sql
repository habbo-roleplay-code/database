CREATE TABLE `player_furniture_item_wired_data` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `placement_data_id` bigint(20) unsigned NOT NULL,
    `message` varchar(255) NULL,
    `delay` int(11) unsigned NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    PRIMARY KEY (`id`),
    KEY `pfiwd_placement_data_id_foreign` (`placement_data_id`),
    CONSTRAINT `pfiwd_placement_data_id_foreign` FOREIGN KEY (
        `placement_data_id`
    ) REFERENCES `player_furniture_item_placement_data` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;