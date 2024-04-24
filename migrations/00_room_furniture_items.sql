CREATE TABLE `room_furniture_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `owner_id` bigint(20) unsigned NOT NULL,
  `owner_username` varchar(255) NOT NULL,
  `furniture_item_id` bigint(20) unsigned NOT NULL,
  `position_x` int(11) NOT NULL DEFAULT 0,
  `position_y` int(11) NOT NULL DEFAULT 0,
  `position_z` double NOT NULL DEFAULT 0,
  `wall_position` varchar(255) DEFAULT NULL,
  `direction` int(11) NOT NULL DEFAULT 0,
  `limited_data` varchar(255) NOT NULL DEFAULT '',
  `meta_data` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `room_furniture_items_owner_id_foreign` (`owner_id`),
  KEY `room_furniture_items_room_id_foreign` (`room_id`),
  KEY `room_furniture_items_furniture_item_id_foreign` (`furniture_item_id`),
  CONSTRAINT `room_furniture_items_furniture_item_id_foreign` FOREIGN KEY (`furniture_item_id`) REFERENCES `furniture_items` (`id`),
  CONSTRAINT `room_furniture_items_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `players` (`id`),
  CONSTRAINT `room_furniture_items_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
