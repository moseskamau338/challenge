-- Adminer 4.7.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'Home',	'2021-07-29 17:55:43',	'2021-07-29 17:55:43'),
(2,	'Pet supplies',	'2021-07-29 17:57:50',	'2021-07-29 17:57:50'),
(3,	'Sports',	'2021-07-29 17:58:16',	'2021-07-29 17:58:16'),
(4,	'Fashion',	'2021-07-29 17:58:30',	'2021-07-29 17:58:30'),
(5,	'Office',	'2021-07-29 17:58:58',	'2021-07-29 17:58:58');

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10,	'2014_10_12_000000_create_users_table',	1),
(11,	'2014_10_12_100000_create_password_resets_table',	1),
(12,	'2019_08_19_000000_create_failed_jobs_table',	1),
(13,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(14,	'2021_09_15_084054_add_name_index_to_products',	1);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `available` bit(1) NOT NULL DEFAULT b'1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_fk` (`category_id`),
  KEY `products_name_index` (`name`),
  CONSTRAINT `products_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `products` (`id`, `name`, `price`, `description`, `category_id`, `available`, `created_at`, `updated_at`) VALUES
(1,	'commodi',	35.73,	'Consequatur non asperiores quisquam atque ipsam accusantium. Est repellendus eius voluptates sapiente in. Cum quam voluptatum recusandae ullam. Et provident dolorum delectus commodi.',	1,	CONV('1', 2, 10) + 0,	'2015-10-15 16:28:33',	'2002-10-17 18:29:12'),
(2,	'dolores',	91.31,	'Dolorem eveniet labore aliquam distinctio. Ea esse voluptas quas. Aut soluta autem unde hic nam. Deserunt eveniet sed autem voluptas amet asperiores vero. Sunt suscipit eaque quidem.',	2,	CONV('1', 2, 10) + 0,	'2006-07-01 00:59:39',	'1977-05-14 08:45:18'),
(3,	'accusantium',	58.37,	'Impedit a est sint enim atque saepe quos. Omnis et possimus itaque quasi libero voluptas sequi. Iusto similique porro non quo temporibus molestias dolores sed. Et rerum aperiam similique esse impedit dolorem eum.',	3,	CONV('1', 2, 10) + 0,	'1990-04-29 02:19:43',	'2008-03-26 19:52:38'),
(4,	'quisquam',	57.89,	'Nulla accusantium et suscipit excepturi. Qui aspernatur provident ipsa recusandae qui. Quae quo occaecati est sapiente et nisi autem occaecati.',	4,	CONV('1', 2, 10) + 0,	'1975-09-22 20:25:36',	'2018-06-22 02:05:04'),
(5,	'et',	20.59,	'Est qui et impedit sunt ducimus nulla sit. Ipsa magnam sequi soluta quia sed dolor qui. Amet facere vero perferendis eos voluptatibus aut error nihil.',	5,	CONV('1', 2, 10) + 0,	'2012-12-14 15:05:58',	'2020-06-03 21:46:44'),
(6,	'et',	68.89,	'Consectetur dolores natus esse consequuntur. Quo et eius perferendis porro. Facilis sint beatae inventore ipsa officia aspernatur quasi. Ut recusandae dignissimos nemo dicta quia non magnam qui.',	1,	CONV('1', 2, 10) + 0,	'1978-07-10 21:26:57',	'2001-05-28 05:44:50'),
(7,	'et',	19.37,	'Porro placeat molestiae quo quia. Sed esse numquam aspernatur ut animi delectus ut. Omnis molestiae est voluptates non. Et hic eaque eum autem id.',	2,	CONV('1', 2, 10) + 0,	'1978-05-10 04:52:16',	'2019-06-21 03:49:58'),
(8,	'rerum',	44.84,	'Sint reprehenderit omnis et corrupti. Deleniti ullam facere eveniet aut aut minus laudantium. Dolor sint modi nemo culpa velit.',	3,	CONV('1', 2, 10) + 0,	'1971-08-18 09:09:04',	'1977-06-29 14:44:38'),
(9,	'aut',	46.98,	'Officia perspiciatis optio aut perspiciatis aut quis commodi. Possimus consequatur optio aut mollitia.',	4,	CONV('1', 2, 10) + 0,	'2013-09-06 21:13:14',	'1990-09-09 11:58:21'),
(10,	'nobis',	65.46,	'Accusamus officiis laboriosam voluptas. Explicabo aut rerum qui qui ipsa.',	5,	CONV('1', 2, 10) + 0,	'2012-11-20 08:06:30',	'1998-10-22 05:00:40'),
(11,	'dolore',	38.97,	'Nihil ut fuga eos quo cupiditate quia voluptatum. Vitae natus inventore ea minima corporis omnis.',	1,	CONV('1', 2, 10) + 0,	'1978-05-03 23:01:37',	'2012-02-03 09:56:24'),
(12,	'odit',	32.6,	'Cupiditate laboriosam consequatur non laborum in. Ab harum vero perspiciatis nulla saepe. Rerum inventore rerum possimus et. Et et maxime mollitia ullam asperiores.',	2,	CONV('1', 2, 10) + 0,	'1980-06-11 21:48:37',	'1971-04-27 14:51:15'),
(13,	'tempore',	29.8,	'Alias qui voluptatem placeat harum. Ratione sint occaecati recusandae voluptatem ut. Ex mollitia assumenda rerum fuga repellat quia. Ex eius assumenda nesciunt fugit sed.',	3,	CONV('1', 2, 10) + 0,	'2017-11-03 06:37:00',	'1977-01-27 10:39:57'),
(14,	'modi',	31.51,	'Ut quo eum dolores ipsum et modi. Ut aut fugiat repudiandae voluptates. Reiciendis eligendi quia dolore minus. Aspernatur fuga voluptates animi.',	4,	CONV('1', 2, 10) + 0,	'1999-03-08 23:09:30',	'2006-01-31 02:51:16'),
(15,	'distinctio',	60.31,	'Iusto nemo quis dicta ea. Saepe officia quibusdam blanditiis consequatur.',	5,	CONV('1', 2, 10) + 0,	'1989-04-07 03:13:53',	'2005-01-17 01:25:07'),
(16,	'natus',	62.67,	'Aut voluptas enim ea nihil. Aut velit provident maxime quos sunt. Ut sit voluptas et tenetur vel doloremque unde. Repellat et ratione nihil et id velit possimus.',	1,	CONV('1', 2, 10) + 0,	'1987-01-28 19:58:41',	'2016-07-14 21:06:07'),
(17,	'rerum',	54.62,	'Porro omnis nihil laboriosam ullam rem ab beatae. Ut tempora officiis iure magni molestiae qui. Aspernatur sunt eum incidunt temporibus ipsam autem et. Quo et dolor unde dolore sapiente animi.',	2,	CONV('1', 2, 10) + 0,	'2001-08-05 19:44:32',	'1993-12-11 19:37:18'),
(18,	'aut',	22.51,	'Accusamus possimus quae voluptatum et. Error quod qui dicta impedit cupiditate debitis nemo distinctio. Sint iste eveniet placeat laboriosam ut itaque. Aperiam culpa quidem magni ut autem.',	3,	CONV('1', 2, 10) + 0,	'2002-02-09 16:38:38',	'2018-02-23 14:49:58'),
(19,	'doloribus',	26.63,	'Sunt voluptas commodi facilis quis explicabo voluptas consequuntur voluptatum. Enim similique non harum doloribus. Non consequatur iste et.',	4,	CONV('1', 2, 10) + 0,	'1971-09-05 09:50:46',	'1987-12-06 14:08:23'),
(20,	'provident',	57.16,	'Eaque rerum beatae non minima cum ipsa neque. Eveniet qui voluptatum reiciendis ratione voluptas sed impedit. Doloremque velit corrupti veritatis ad architecto.',	5,	CONV('1', 2, 10) + 0,	'2019-12-03 20:05:37',	'1990-02-22 17:36:31'),
(21,	'rerum',	82.44,	'Molestiae sed enim reiciendis quia. Autem assumenda veniam omnis aut aliquam dolores exercitationem. Repellat dolores exercitationem in facilis. Et similique occaecati id perferendis qui quia.',	1,	CONV('1', 2, 10) + 0,	'2019-11-30 12:22:16',	'2017-03-07 03:45:35'),
(22,	'temporibus',	88,	'Suscipit quam incidunt enim consequatur deleniti vero enim sint. Quia magnam non eaque ex non. Id consequuntur officia suscipit eum ipsa atque ut. Ut provident quam aut est amet qui.',	2,	CONV('1', 2, 10) + 0,	'1971-04-18 12:32:11',	'2014-07-02 01:33:25'),
(23,	'enim',	73.6,	'Quia ea velit aut sint. Libero sunt qui ut temporibus aut et dolores hic. Qui ad officiis voluptas nulla ipsam et.',	3,	CONV('1', 2, 10) + 0,	'2001-07-29 02:09:28',	'2012-07-29 08:18:36'),
(24,	'non',	67.76,	'Necessitatibus sed alias dolorum quos exercitationem dicta. Aut pariatur magni temporibus dolores sunt aspernatur ut nihil. Magnam optio mollitia ipsam deserunt.',	4,	CONV('1', 2, 10) + 0,	'2017-06-16 20:09:37',	'2009-08-10 06:03:35'),
(25,	'ea',	27.79,	'Sunt et aperiam voluptatem facilis ad explicabo. Qui ut et qui voluptatum. Facilis vel tenetur ut nihil.',	5,	CONV('1', 2, 10) + 0,	'1993-11-21 12:46:58',	'1999-06-28 22:17:28'),
(26,	'saepe',	29.27,	'Culpa accusamus repudiandae doloremque ex. Distinctio corporis ratione velit consequatur maxime. Quo nobis libero nobis excepturi dolores. Voluptatem voluptas amet impedit sit.',	1,	CONV('1', 2, 10) + 0,	'2001-11-07 05:10:35',	'2012-06-11 03:22:44'),
(27,	'sapiente',	38.92,	'Laborum aperiam eum porro quaerat. Odit et dolor id facere asperiores maxime eos. Illum fuga delectus hic sit.',	2,	CONV('1', 2, 10) + 0,	'2002-03-31 02:09:51',	'1986-01-02 00:48:57'),
(28,	'qui',	42.46,	'Possimus eius commodi hic non facere. Officia dolorum dolorem a exercitationem minima libero at quam. Tempora vel enim vitae consequuntur explicabo ex nulla.',	3,	CONV('1', 2, 10) + 0,	'2002-11-24 06:11:00',	'2010-08-23 04:27:52'),
(29,	'sed',	86.29,	'Consequatur exercitationem eos quaerat ipsum dolores. Quod ut quo quisquam vero. Ut qui voluptas autem non est.',	4,	CONV('1', 2, 10) + 0,	'2008-01-31 02:48:19',	'2010-10-14 03:21:40'),
(30,	'vel',	31.74,	'Sit praesentium ut consequatur quia reprehenderit. Placeat unde doloremque ullam molestiae blanditiis et placeat in. Ducimus ut dolores aperiam. Dolorum eligendi ut a architecto et. Iusto velit velit omnis atque vel eaque soluta in.',	5,	CONV('1', 2, 10) + 0,	'1986-10-14 00:00:35',	'2005-10-12 12:20:04'),
(31,	'perspiciatis',	39.05,	'Ea repudiandae odio iste sint ut. Rerum ratione non ea molestias est voluptates. Dolore qui quam quam et temporibus velit laudantium.',	1,	CONV('1', 2, 10) + 0,	'1987-03-09 10:26:51',	'2005-04-26 04:02:11'),
(32,	'esse',	19.98,	'Fugiat magni animi quas ea sit aut numquam. Nulla assumenda voluptatum quia animi et nisi.',	2,	CONV('1', 2, 10) + 0,	'2011-10-28 06:54:04',	'2007-12-08 03:37:57'),
(33,	'accusamus',	43.92,	'Incidunt velit modi aut dignissimos placeat. Voluptatem atque et in sed iure ea. Repellendus recusandae soluta eos voluptas magni perferendis dolores ipsam.',	3,	CONV('1', 2, 10) + 0,	'2018-03-27 13:09:57',	'1980-11-23 04:26:39'),
(34,	'modi',	40.87,	'Eaque voluptatem aut harum cupiditate tempore minus temporibus. Voluptatum consequatur velit modi minima consequatur cupiditate. Nulla deserunt quae quia.',	4,	CONV('1', 2, 10) + 0,	'2008-01-21 01:47:32',	'1980-08-26 07:51:05'),
(35,	'dolor',	3.51,	'Temporibus soluta quo quia. Ut ipsum alias eos expedita voluptatem ipsum quia. Veniam consectetur est assumenda harum illo autem.',	5,	CONV('1', 2, 10) + 0,	'1974-04-09 07:18:16',	'2021-01-23 14:34:42'),
(36,	'molestiae',	42.96,	'Minus cupiditate veritatis quia architecto suscipit aperiam dolor provident. Repellat dolore ratione quam eum recusandae beatae vel cupiditate. Autem quibusdam omnis et sed sunt.',	1,	CONV('1', 2, 10) + 0,	'2016-06-14 17:44:41',	'2021-04-20 12:56:09'),
(37,	'magni',	22.73,	'Debitis rerum fuga a totam aut ut minus non. Deserunt neque odit quia est quo aut. Amet dolores odio molestiae occaecati eaque sit. Illo aut nesciunt aut ad.',	2,	CONV('1', 2, 10) + 0,	'2005-11-10 21:09:51',	'2014-11-09 20:58:58'),
(38,	'itaque',	42.78,	'Animi tempora et officiis et nostrum. Inventore labore consequatur debitis vitae tenetur aspernatur dolorem. Cupiditate odit consequatur occaecati rerum voluptatem. Voluptatibus accusantium velit libero corporis iure soluta eos aut.',	3,	CONV('1', 2, 10) + 0,	'1990-10-23 14:26:36',	'1985-10-14 08:23:15'),
(39,	'non',	9.25,	'Quaerat et facilis eum sit laudantium aut. Officiis rerum ut fuga qui. Maiores neque eveniet itaque labore aliquam eos.',	4,	CONV('1', 2, 10) + 0,	'2012-06-16 05:59:34',	'1999-11-03 22:48:11'),
(40,	'hic',	42.78,	'Ut exercitationem quia tempore distinctio natus animi cupiditate. Pariatur ut quam est sed. Asperiores natus error et sunt ut dolorem quisquam.',	5,	CONV('1', 2, 10) + 0,	'2016-09-17 16:00:02',	'2015-06-20 14:01:34'),
(41,	'occaecati',	44.24,	'Numquam aut error delectus alias non. Ut quia velit iste non. Architecto cumque consectetur perferendis ratione. Mollitia expedita enim sapiente et.',	1,	CONV('1', 2, 10) + 0,	'1971-01-10 10:08:40',	'1983-03-28 11:11:22'),
(42,	'ex',	93.92,	'Architecto omnis autem nihil. Repellendus sint in cupiditate. Quia eius nisi vel illum non corporis quia.',	2,	CONV('1', 2, 10) + 0,	'2011-10-24 20:58:12',	'2019-10-23 15:50:42'),
(43,	'dolores',	63.39,	'Qui aut nobis voluptas quasi accusamus dolores deleniti. Vel natus deleniti ipsam aperiam laboriosam aliquid tempora.',	3,	CONV('1', 2, 10) + 0,	'1970-12-24 01:04:08',	'1994-12-01 23:51:21'),
(44,	'dignissimos',	31.14,	'Voluptate perferendis ad dolor non porro labore. Perspiciatis et nam harum dolorem nihil ut quam. Nam minima consequatur ullam cum. Hic quia qui voluptatum maxime impedit.',	4,	CONV('1', 2, 10) + 0,	'2013-02-14 02:05:07',	'1980-02-29 11:58:11'),
(45,	'praesentium',	76.16,	'Et ut est qui dolores. Laudantium velit itaque accusantium soluta voluptas. Modi et quod sit eum nobis. Minima incidunt voluptatem neque ut quo aut.',	5,	CONV('1', 2, 10) + 0,	'1975-12-15 09:46:47',	'2012-09-17 08:33:14'),
(46,	'id',	52.06,	'Et culpa fuga reprehenderit doloribus asperiores aspernatur odit. Dolore nisi aut earum et. At ut qui laborum. Et non similique et. Ea ex autem ea esse quia doloribus excepturi vel.',	1,	CONV('1', 2, 10) + 0,	'2016-05-02 21:14:04',	'1984-06-19 19:25:56'),
(47,	'consectetur',	27.47,	'Ex corporis ea quia recusandae ex. Placeat omnis omnis eveniet qui ab non. In iusto omnis odit est ullam commodi est.',	2,	CONV('1', 2, 10) + 0,	'2021-07-02 17:32:39',	'1973-09-17 10:17:26'),
(48,	'fugit',	59.86,	'Autem dolor incidunt aspernatur reprehenderit minus. Recusandae repudiandae dolor accusamus perferendis aut est. Qui doloremque et asperiores. Velit at aut magni quaerat sit id quae voluptatem.',	3,	CONV('1', 2, 10) + 0,	'2016-11-29 21:56:22',	'2002-03-09 23:44:44'),
(49,	'nihil',	48.8,	'Et velit adipisci consequuntur blanditiis soluta cum. Eius placeat consequatur et quo nihil. Nihil in minima architecto nihil sunt aliquam. Eum ratione rem fugiat et et et eos.',	4,	CONV('1', 2, 10) + 0,	'1992-01-10 05:31:49',	'2012-09-10 09:42:48'),
(50,	'inventore',	5.55,	'Asperiores est blanditiis aut neque non. Fuga ea est quo sint. Quo rem ut omnis voluptas. Ut quaerat velit perspiciatis omnis occaecati nostrum.',	5,	CONV('1', 2, 10) + 0,	'1982-01-05 21:58:51',	'1981-03-26 12:03:11'),
(51,	'deserunt',	21.29,	'Similique blanditiis blanditiis voluptatem aliquam dolorem. Ipsa voluptatem cumque sed et qui aut.',	1,	CONV('1', 2, 10) + 0,	'1970-03-02 16:35:09',	'1995-06-15 17:07:52'),
(52,	'enim',	91.12,	'Qui sit facere excepturi facere ipsa voluptatum maxime. Eos quo eligendi voluptatem. Iure deserunt et nam quo laudantium et.',	2,	CONV('1', 2, 10) + 0,	'1977-01-26 19:45:06',	'1975-01-20 13:51:15'),
(53,	'soluta',	3.77,	'Ut cupiditate laudantium sit ad et fugit. Fuga non ea qui quia nam voluptatem aliquam. Illo enim et voluptatem perferendis dignissimos est. Ut asperiores neque ex.',	3,	CONV('1', 2, 10) + 0,	'1975-09-20 09:07:54',	'1971-09-08 23:28:47'),
(54,	'velit',	60.87,	'Quod quia facere repellat deserunt quia molestias laborum occaecati. Expedita reiciendis iure est dolore cupiditate facilis. Commodi sit velit omnis cumque. Nesciunt quas sequi in itaque possimus qui maxime.',	4,	CONV('1', 2, 10) + 0,	'1997-07-19 04:23:05',	'1989-04-15 01:35:02'),
(55,	'voluptates',	3.36,	'Quia illo voluptatem facilis pariatur ut nihil nulla ea. Rerum atque qui saepe hic quia ratione veniam. Dolores sunt provident veniam esse.',	5,	CONV('1', 2, 10) + 0,	'2020-01-03 05:16:24',	'1986-05-29 13:57:33'),
(56,	'optio',	54.95,	'Velit pariatur et et quia. Incidunt ea quas velit unde error. Rerum provident quasi pariatur molestias sint laboriosam aut dolorem.',	1,	CONV('1', 2, 10) + 0,	'2009-05-22 04:11:15',	'1989-01-13 16:23:31'),
(57,	'labore',	61.75,	'Corporis eaque eos ut esse voluptatum debitis. Ea ut unde consequatur et quia ducimus. Perspiciatis officia dolorem exercitationem ex aut. Aut fugit sit autem pariatur nisi quisquam.',	2,	CONV('1', 2, 10) + 0,	'1975-11-01 06:19:56',	'1971-05-15 15:28:49'),
(58,	'ut',	90.75,	'Accusamus ipsam voluptatum qui dolorem aliquid suscipit quia ipsum. Autem quos quam accusamus quis totam excepturi. Vitae iusto ut et nihil.',	3,	CONV('1', 2, 10) + 0,	'2014-06-29 05:06:29',	'2019-04-15 18:03:18'),
(59,	'eveniet',	15.17,	'Reiciendis soluta in alias distinctio quos qui aliquid. Fugit accusantium sunt repellat non itaque. Et suscipit sint maiores perferendis. Ipsam recusandae aut eum.',	4,	CONV('1', 2, 10) + 0,	'1995-01-15 19:10:30',	'2014-12-31 23:27:05'),
(60,	'beatae',	30.61,	'Sed nulla quo magnam illo consequatur praesentium. Consequuntur ratione possimus eum eos modi. Eligendi commodi incidunt enim nihil voluptatum. Possimus rerum ab corporis sed nobis vel.',	5,	CONV('1', 2, 10) + 0,	'1993-08-19 02:18:34',	'2014-04-11 07:07:00'),
(61,	'sit',	53.44,	'Et minima omnis est nisi consequatur labore sit. Corporis quia rerum accusamus a minima nesciunt nemo.',	1,	CONV('1', 2, 10) + 0,	'1984-11-30 14:35:49',	'2003-12-12 19:07:23'),
(62,	'consequatur',	51.31,	'Perferendis facere dolores quidem qui. Totam soluta quis vitae omnis id amet illum. Omnis quasi voluptates nulla molestiae. Ut et rerum quo.',	2,	CONV('1', 2, 10) + 0,	'2020-12-04 01:24:13',	'1993-10-14 23:50:42'),
(63,	'rerum',	68.15,	'Et sequi omnis consequatur. Dolore id nulla labore perspiciatis. Aspernatur quo maxime odit. Quo soluta voluptates maiores suscipit ut earum ea. Facere natus dolorum molestiae iusto eaque eveniet.',	3,	CONV('1', 2, 10) + 0,	'1999-12-01 14:43:26',	'1983-10-21 15:55:55'),
(64,	'illum',	53.79,	'Cum illum fuga explicabo natus quisquam ut. Vero doloremque consectetur pariatur sint. Sunt et nobis vel ut aut. Voluptas sed et possimus et ut.',	4,	CONV('1', 2, 10) + 0,	'1974-06-17 14:59:28',	'1989-04-27 02:49:49'),
(65,	'rerum',	26.15,	'Praesentium eligendi perferendis quo temporibus ut incidunt est. Soluta omnis eveniet in similique. Laboriosam quidem vel quisquam ea voluptas mollitia molestiae. Dignissimos eius voluptatem assumenda ullam.',	5,	CONV('1', 2, 10) + 0,	'1975-05-16 12:42:12',	'2014-02-28 09:40:17'),
(66,	'ut',	43.59,	'Natus laudantium eum voluptates beatae facilis fugiat incidunt sed. Qui eius voluptas dolores fugit ipsa temporibus. Quam esse atque sit eum incidunt aliquid quo est.',	1,	CONV('1', 2, 10) + 0,	'2005-12-23 07:06:58',	'1993-05-18 18:43:33'),
(67,	'nobis',	71.1,	'Et magni ipsum nam. Aspernatur debitis voluptatibus laudantium quo at amet praesentium. Sint in et minima illo nesciunt natus eius eligendi. Voluptas libero accusamus dolorem aut.',	2,	CONV('1', 2, 10) + 0,	'2007-07-31 14:08:05',	'1983-10-04 00:51:12'),
(68,	'reiciendis',	6.47,	'Et et veritatis magni ut cupiditate assumenda sapiente. Harum ab architecto omnis eum consequatur quo. Fuga tempora reprehenderit et consequatur aliquam sint hic.',	3,	CONV('1', 2, 10) + 0,	'1982-08-31 06:09:50',	'2012-06-23 05:03:28'),
(69,	'aut',	48.57,	'Voluptas vitae totam quo at. Qui doloremque natus ut iusto sunt perspiciatis sapiente. Facilis et minus eligendi ut eos vero provident architecto.',	4,	CONV('1', 2, 10) + 0,	'1971-09-18 05:08:01',	'1973-10-11 07:16:16'),
(70,	'rerum',	7.02,	'Cum minima veritatis ut molestiae. Quas laboriosam adipisci distinctio molestias.',	5,	CONV('1', 2, 10) + 0,	'2000-01-21 18:44:15',	'2004-07-07 09:25:39'),
(71,	'iure',	2.7,	'Et et sit expedita ea. Sequi libero quis reprehenderit quo exercitationem iusto esse. Blanditiis veniam dicta et et tenetur inventore. Omnis nulla natus quisquam voluptatem non sit aut.',	1,	CONV('1', 2, 10) + 0,	'1994-12-21 17:11:00',	'1971-04-13 12:48:19'),
(72,	'sed',	89.79,	'Perferendis ut temporibus voluptatibus inventore omnis. Minima quia delectus sit dolores dolores. Nobis nemo voluptatem at nulla ea. Quis veniam deleniti quis iure.',	2,	CONV('1', 2, 10) + 0,	'2015-10-19 19:21:00',	'2007-12-06 11:47:12'),
(73,	'et',	73.34,	'Voluptatem facere consequuntur possimus blanditiis sit in voluptas est. Quos saepe cupiditate quaerat nisi. Voluptatem minima qui tenetur cum temporibus.',	3,	CONV('1', 2, 10) + 0,	'1980-02-29 01:26:36',	'2006-06-24 19:20:16'),
(74,	'quisquam',	84.29,	'Dolor ex sed beatae incidunt. Totam sit dolor ipsa. Nisi perferendis rem rerum veritatis consequatur.',	4,	CONV('1', 2, 10) + 0,	'1984-05-12 02:16:37',	'2001-08-24 05:05:50'),
(75,	'illum',	44.73,	'Est est maiores qui alias. Facilis ab aliquam explicabo aut saepe dicta voluptatem. Blanditiis dolore itaque quibusdam modi in sed expedita autem. Est qui asperiores enim inventore sunt.',	5,	CONV('1', 2, 10) + 0,	'1974-04-18 15:19:52',	'1988-03-23 01:51:27'),
(76,	'temporibus',	16.67,	'Dolorum similique officia libero assumenda impedit vero. Quam vel pariatur alias quae. Mollitia et vitae dicta vero autem. Accusamus sit voluptas nostrum culpa.',	1,	CONV('1', 2, 10) + 0,	'1970-01-15 07:50:17',	'2018-08-03 17:02:37'),
(77,	'vero',	69.79,	'Omnis perferendis occaecati fugit aperiam ratione numquam. Cumque qui dolore voluptas assumenda a ullam. Sit eos repellat fugit reiciendis rerum laboriosam odit. Quas provident nihil est quaerat et quas.',	2,	CONV('1', 2, 10) + 0,	'1990-05-14 22:56:39',	'2005-03-07 10:13:09'),
(78,	'ducimus',	41.12,	'Porro earum eum nostrum dolor facere pariatur. Iure aliquid eius fuga est cumque eveniet. Iure voluptatem doloremque itaque officiis odio et optio pariatur.',	3,	CONV('1', 2, 10) + 0,	'1988-08-09 17:33:13',	'2014-03-11 14:40:45'),
(79,	'ipsa',	83.32,	'Quod in quas non quibusdam laboriosam facilis deserunt. Odio et explicabo incidunt. Minima et voluptatem qui aut sequi laborum architecto.',	4,	CONV('1', 2, 10) + 0,	'1982-08-24 06:46:37',	'1978-01-16 02:05:13'),
(80,	'et',	83.55,	'Dicta odio repellat ut sint omnis sit. Maiores et dignissimos illo mollitia sapiente eligendi. Est minima deleniti deleniti culpa libero quisquam et. In maxime vero sapiente et dolor quia minus.',	5,	CONV('1', 2, 10) + 0,	'1984-04-23 04:55:22',	'1992-08-17 17:23:14'),
(81,	'aut',	70.42,	'Dolorem consequatur veniam quisquam nihil expedita autem. Sit corrupti reprehenderit dignissimos ipsum dolores velit. Repellat et nam assumenda exercitationem.',	1,	CONV('1', 2, 10) + 0,	'1971-05-18 10:32:57',	'2004-10-09 21:35:53'),
(82,	'nisi',	25.02,	'Esse nesciunt sint cupiditate quia veniam tempora dolorem. Dolorum unde incidunt quam error qui accusantium. Eos dolor dolores rerum quidem voluptatibus. Repudiandae rem unde dolorum provident esse.',	2,	CONV('1', 2, 10) + 0,	'1980-10-15 11:36:43',	'2021-03-12 16:59:31'),
(83,	'inventore',	34.87,	'Et sed error et totam earum. Culpa et alias beatae maxime. Rerum mollitia ipsum voluptas. Occaecati saepe aut et id est aliquid. Quaerat omnis nisi maxime eos.',	3,	CONV('1', 2, 10) + 0,	'1992-11-20 17:07:35',	'2004-12-24 22:37:39'),
(84,	'consectetur',	35.83,	'Eum voluptas libero porro qui. Asperiores doloremque sunt est dolore porro ut sunt. Autem recusandae qui voluptatum et quisquam inventore. Blanditiis ea maiores et.',	4,	CONV('1', 2, 10) + 0,	'1992-07-03 07:54:44',	'2001-12-31 19:18:15'),
(85,	'quia',	2.15,	'Cupiditate qui et fugit aliquid qui. Minus voluptatem vero sed omnis hic reiciendis. Magnam facilis autem perferendis repudiandae odio.',	5,	CONV('1', 2, 10) + 0,	'1970-02-19 07:42:04',	'2009-05-24 06:39:28'),
(86,	'nemo',	83.62,	'Voluptatum omnis maiores omnis dolore nihil similique molestias. Eum quas iste aspernatur voluptas ducimus. Vero est dolores molestias magnam perspiciatis similique.',	1,	CONV('1', 2, 10) + 0,	'2017-04-12 07:56:02',	'1986-03-02 09:24:29'),
(87,	'enim',	86.74,	'Voluptas impedit officia sit ea dignissimos. Ducimus ab id accusamus ex qui quae autem. Perferendis earum quam pariatur. Sit illum mollitia quod eius ut.',	2,	CONV('1', 2, 10) + 0,	'1973-05-04 08:41:25',	'1977-03-01 15:44:53'),
(88,	'tempore',	50.18,	'Et et repudiandae repellendus et voluptas similique. Quam illo provident et.',	3,	CONV('1', 2, 10) + 0,	'2015-09-29 11:09:15',	'1989-09-07 13:44:01'),
(89,	'et',	35.46,	'Modi corrupti voluptatem soluta assumenda fugit. Assumenda adipisci labore sunt est ipsum corporis. Nulla doloribus voluptatibus minima aut.',	4,	CONV('1', 2, 10) + 0,	'2017-05-02 13:00:13',	'1981-06-02 04:06:32'),
(90,	'earum',	2.28,	'Sed autem est error rem et blanditiis. Unde dicta maxime repellat laboriosam. Asperiores repellat repellendus autem ut. Suscipit omnis ipsa sequi dolorum.',	5,	CONV('1', 2, 10) + 0,	'1974-05-28 23:04:14',	'1976-05-14 01:01:44'),
(91,	'temporibus',	6.57,	'Magni totam ipsum ut reprehenderit vel dolor ipsam. Et sunt aliquid saepe aperiam aliquam. Incidunt veniam dolorum velit ipsum quas. Dolorum praesentium reprehenderit doloremque omnis in eligendi.',	1,	CONV('1', 2, 10) + 0,	'2016-07-31 02:02:00',	'2013-07-11 04:15:03'),
(92,	'laborum',	59.48,	'Cupiditate temporibus iusto quasi hic necessitatibus sunt et dolorem. Eum ut cumque et nemo laudantium sapiente. Nihil laborum praesentium adipisci eos iure facilis.',	2,	CONV('1', 2, 10) + 0,	'1981-06-13 01:48:20',	'2012-05-05 03:57:56'),
(93,	'aut',	19.92,	'Officia nihil doloribus cupiditate nobis quis sequi soluta. Autem aliquid similique vel amet dolor. Beatae quasi et magnam accusantium ut dolore officiis.',	3,	CONV('1', 2, 10) + 0,	'2019-01-07 13:18:47',	'2012-07-23 15:29:15'),
(94,	'id',	39.18,	'Est incidunt sed dicta quo qui. Dicta laboriosam delectus ex magni facilis. Iste aliquam qui reprehenderit non.',	4,	CONV('1', 2, 10) + 0,	'2020-06-04 05:35:57',	'1974-02-07 07:14:02'),
(95,	'est',	72.88,	'Eos facere ut quo exercitationem deserunt. Error ex sint doloribus fugiat optio repellendus nisi ut. Nesciunt explicabo officiis pariatur sed iste aut dolor.',	5,	CONV('1', 2, 10) + 0,	'2016-01-20 12:41:23',	'2007-07-08 22:43:05'),
(96,	'consectetur',	51.71,	'Sunt a repellendus ut iusto velit. Dolor saepe debitis sint quo. Qui nisi ullam magnam quo porro expedita voluptas voluptas. Perspiciatis maiores sit labore quae necessitatibus voluptatum maxime laboriosam.',	1,	CONV('1', 2, 10) + 0,	'2014-10-09 18:17:26',	'1977-12-25 03:36:26'),
(97,	'pariatur',	66.38,	'Corrupti non doloribus cumque nulla quidem dolores corrupti. Odit et error debitis commodi quod distinctio. Ut laboriosam porro iure sed natus tenetur. Dolor officiis ex saepe quaerat consectetur ut.',	2,	CONV('1', 2, 10) + 0,	'2005-04-10 00:54:21',	'1986-01-22 19:47:56'),
(98,	'autem',	97.4,	'Autem natus eaque distinctio doloremque. Tenetur est minus itaque quidem aut. Quam optio debitis et et. Quo pariatur commodi reiciendis cupiditate nemo.',	3,	CONV('1', 2, 10) + 0,	'2010-11-24 21:00:24',	'2020-02-18 19:11:49'),
(99,	'quae',	44.34,	'Sit voluptatum quia et ad. Excepturi necessitatibus molestias qui qui eos aspernatur ratione.',	4,	CONV('1', 2, 10) + 0,	'1980-10-15 16:51:07',	'1995-08-17 13:35:32'),
(100,	'ratione',	34.15,	'Ea in ipsum odio vero. Adipisci excepturi rerum repellendus amet eligendi nam autem. Ea sequi aut modi voluptatum.',	5,	CONV('1', 2, 10) + 0,	'1986-05-13 15:51:30',	'2002-03-10 01:43:07');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2021-09-15 12:30:50
