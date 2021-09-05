-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2021 at 12:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `popular_brand` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `feature_image`, `brand_status`, `popular_brand`, `meta_title`, `meta_description`, `meta_keywords`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 'qui eaque', 'qui-eaque', 'codecanyon.jpg', 'graphicriver.jpg', 'Active', 'Active', NULL, NULL, NULL, 5, '2021-09-01 00:29:51', '2021-09-01 00:29:51'),
(2, 'ipsum aut', 'ipsum-aut', NULL, NULL, 'Active', 'Inactive', NULL, NULL, NULL, 3, '2021-09-01 00:29:51', '2021-09-01 00:29:51'),
(3, 'blanditiis nihil', 'blanditiis-nihil', NULL, NULL, 'Active', 'Inactive', NULL, NULL, NULL, 5, '2021-09-01 00:29:51', '2021-09-01 00:29:51'),
(4, 'autem odit', 'autem-odit', NULL, NULL, 'Active', 'Inactive', NULL, NULL, NULL, 1, '2021-09-01 00:29:51', '2021-09-01 00:29:51'),
(5, 'nisi eligendi', 'nisi-eligendi', NULL, NULL, 'Active', 'Inactive', NULL, NULL, NULL, 3, '2021-09-01 00:29:51', '2021-09-01 00:29:51'),
(6, 'expedita delectus', 'expedita-delectus', NULL, NULL, 'Active', 'Inactive', NULL, NULL, NULL, 3, '2021-09-01 00:29:51', '2021-09-01 00:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `feature_image`, `description`, `status`, `popular`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'toke', 'toke', '1710050520268765.png', 'toke', 0, 0, 'toke', 'toke', 'toke', '2021-09-01 00:47:54', '2021-09-05 02:42:06'),
(2, 'Mobile', 'mobile', '1710050954780455.jpg', 'Mobile Category Description', 1, 0, 'Mobile', 'Best Mobile Category Description', 'Mobile, Smartphone,', '2021-09-05 02:47:55', NULL),
(3, 'Computer', 'computer', '1710051057667384.png', 'scsacsa', 1, 1, 'scscs', 'scsc', 'scsasa', '2021-09-05 02:49:33', NULL),
(4, 'Mobile Accessories', 'Mobile Accessories', '1710051769367289.jpg', 'Mobile Accessories', 1, 0, 'Mobile Accessories', 'Mobile Accessories', 'Mobile Accessories', '2021-09-05 03:00:52', NULL),
(5, 'Computer Accessories', 'Computer Accessories', NULL, 'Computer Accessories', 1, 0, 'Computer Accessories', 'Computer Accessories', 'Computer Accessories', '2021-09-05 03:01:14', NULL),
(6, 'Soudbox & Speakers', 'Soudbox & Speakers', '1710056386760061.jpeg', 'Soudbox & Speakers', 1, 1, 'Soudbox & Speakers', 'Soudbox & Speakers', 'Soudbox & Speakers', '2021-09-05 04:14:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_30_011549_create_sessions_table', 1),
(8, '2021_08_30_071644_create_suppliers_table', 2),
(11, '2021_08_30_071632_create_brands_table', 5),
(12, '2021_08_30_065700_create_categories_table', 6),
(13, '2021_08_30_065822_create_products_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('inStock','OutOfStock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `treanding` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `sku`, `stock_status`, `featured`, `treanding`, `quantity`, `image`, `gallery_images`, `category_id`, `brand_id`, `supplier_id`, `product_status`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'necessitatibus velit magni dolores', 'necessitatibus-velit-magni-dolores', 'Sed repudiandae ut ipsum ipsum dolorum corrupti. Nostrum culpa voluptatem ut aspernatur optio quod nostrum facere. Consequatur officiis esse expedita. Vel quo laudantium molestiae ut qui.', 'Omnis beatae et fugit. Ducimus dolor aperiam beatae deleniti quas qui. Ea amet qui nam cumque iusto maiores inventore. Perferendis doloremque sed voluptatem tempore. Illum voluptatem esse praesentium quae rerum. Ad a corporis illo eaque repellat magnam. Necessitatibus maxime et tenetur id officia eos eos at. Eveniet voluptatem veniam minus aut ut quasi omnis. Repudiandae repellendus qui distinctio sed.', '850.00', '643.00', 'DIGI172', 'inStock', 0, 0, 433, 'digital_19.jpg', NULL, 4, 2, 3, 'active', 'Suscipit a dolore rem quas aliquid commodi.', 'Ut eos nobis delectus. Laborum sint fuga sed qui.', 'Eum omnis non sed voluptatibus quia dolores. Placeat nobis excepturi ipsum ea.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(2, 'facere sapiente sint recusandae', 'facere-sapiente-sint-recusandae', 'Iure odio magnam quia aut aliquid. Nam nihil ea enim eveniet at voluptas ex. Corrupti aspernatur quam tempore.', 'Quos minima voluptatem aspernatur accusantium incidunt alias fugiat. Vel consectetur rerum debitis consequatur. Beatae voluptatem rerum sit voluptatem dolor sapiente quod. Et maiores consequatur voluptatum sed odio alias. Cumque magni sequi nemo. Ea temporibus animi est aut vitae. Ut ex ut sed. Est magni est mollitia neque.', '924.00', '780.00', 'DIGI102', 'inStock', 0, 0, 424, 'digital_13.jpg', NULL, 5, 5, 3, 'active', 'Numquam omnis nulla quidem delectus.', 'Quibusdam non accusantium vero repudiandae asperiores itaque tempora.', 'Voluptas dolor necessitatibus officia ut. Cum aperiam labore labore.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(3, 'quasi fugiat deleniti occaecati', 'quasi-fugiat-deleniti-occaecati', 'Voluptatem aut dolorem esse minus odit sit eveniet. Quia eius velit earum dolorem. Rerum sint repellendus illum porro quia corporis enim suscipit.', 'Modi vel perferendis voluptas sed vel. Sed sint consequatur et autem. Ducimus fugit aspernatur vitae. Illo aut aut ab nesciunt et temporibus. Tenetur consequatur ab adipisci numquam necessitatibus amet voluptate. Occaecati quos necessitatibus voluptatem autem dolor quae occaecati. Et voluptate non facere quidem exercitationem tempora fuga. Aliquid debitis quod corrupti voluptate incidunt.', '918.00', '785.00', 'DIGI185', 'inStock', 0, 0, 220, 'digital_3.jpg', NULL, 5, 2, 4, 'active', 'Sapiente est architecto sed quo rerum quae esse.', 'Perferendis delectus nostrum omnis blanditiis quasi qui dolor.', 'Porro qui sed voluptatem voluptate sunt. Nobis tempora ullam atque vel. Itaque nobis eos quod enim.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(4, 'sed est quasi blanditiis', 'sed-est-quasi-blanditiis', 'Ipsum sunt vitae ut officiis et deserunt. Voluptas pariatur dolores eligendi quia consequatur in.', 'Quia numquam non eum eaque vel voluptatem autem minus. Ut voluptatem fugiat expedita ipsa nostrum iusto consequatur. Ea veniam neque voluptas. Soluta distinctio soluta ut. Et labore non sint dolores at illo. Totam doloremque nesciunt aliquam dolor cumque. Id est quis itaque nobis error. Praesentium aut deleniti sed aspernatur fuga non fuga. Nobis ut et sed nobis sit sapiente. Odit alias ut iusto ex sint. Libero et veritatis facilis nisi dolorem est.', '476.00', '863.00', 'DIGI134', 'inStock', 0, 0, 438, 'digital_12.jpg', NULL, 5, 4, 1, 'active', 'Maiores quaerat enim ut voluptatem.', 'Totam unde quam aut sed praesentium. Consequatur dolor quo dolor qui ea.', 'Aliquid dolores ullam rerum sit. Illo ut alias ullam tempore. Molestiae distinctio libero quod.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(5, 'quisquam occaecati inventore modi', 'quisquam-occaecati-inventore-modi', 'Nostrum commodi occaecati et illo aliquid quas adipisci. Culpa et quasi recusandae sequi eos. Nulla quibusdam quis magni sit consequatur.', 'Ea accusantium eius temporibus eius laborum. Consequatur enim reprehenderit autem doloribus non sit consectetur sapiente. Qui dolorem inventore architecto cumque dolores aperiam vel. Sapiente rerum in qui. Ducimus necessitatibus temporibus maiores alias aut id. Ratione sapiente facilis delectus dolorem tenetur. Recusandae officiis sint molestiae beatae.', '202.00', '831.00', 'DIGI191', 'inStock', 0, 0, 198, 'digital_5.jpg', NULL, 2, 3, 5, 'active', 'In ut incidunt cumque numquam.', 'Velit eos aliquam eius saepe similique mollitia.', 'Nesciunt reprehenderit veritatis ut. Error sed vitae deserunt et a et.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(6, 'eveniet sed eos omnis', 'eveniet-sed-eos-omnis', 'Et sequi nihil cum et eligendi nobis. Non error quae est iusto dolorum veritatis. Magnam distinctio reprehenderit consectetur et provident et et nobis.', 'Deserunt adipisci molestiae doloremque delectus possimus ut. Quia atque quam harum nam sint pariatur dolorem. Rerum suscipit quibusdam placeat molestiae est repudiandae. Qui voluptatum autem eos quod qui beatae quasi. Deserunt consequatur aut voluptatem alias maxime nostrum ut praesentium. Nisi aut voluptatem et. Eos ut ea et dolorem corrupti dolorem fuga. Reprehenderit quasi exercitationem qui nobis ducimus.', '523.00', '484.00', 'DIGI111', 'inStock', 0, 0, 179, 'digital_22.jpg', NULL, 1, 5, 1, 'active', 'Voluptatibus nisi ut sint facere aut.', 'Perspiciatis a facere eius tenetur commodi adipisci error praesentium.', 'Vel culpa quia animi in dolorum omnis ut. Architecto voluptas aspernatur itaque maxime.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(7, 'est hic voluptas praesentium', 'est-hic-voluptas-praesentium', 'Accusamus rem magni possimus deleniti tempore et est. Similique voluptatum eum repellat harum voluptates animi. Ab placeat eos dignissimos deleniti. Corporis et id odit magni.', 'Ad vitae facilis nobis ut reprehenderit reprehenderit. Temporibus consequatur cum pariatur. Quis corporis esse voluptatem alias. Ipsa culpa quo omnis quo consequatur eius. Odio aut sed doloribus sequi at voluptatem et velit. Et rem blanditiis perspiciatis maxime nulla sed explicabo. Temporibus aspernatur sit consectetur reprehenderit provident.', '927.00', '530.00', 'DIGI153', 'inStock', 0, 0, 382, 'digital_6.jpg', NULL, 5, 1, 3, 'active', 'Magnam est sunt quibusdam voluptatum eos.', 'Quia voluptas accusantium eum distinctio nesciunt quia.', 'Ducimus eaque maiores et expedita fugiat est non. Ullam aut debitis dolor.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(8, 'porro asperiores molestiae similique', 'porro-asperiores-molestiae-similique', 'Qui saepe placeat deleniti quae. Id consectetur ullam laborum necessitatibus. Adipisci neque in vel velit aut amet. Exercitationem accusantium minus ea.', 'Ab inventore et atque sit repellendus ut. Reiciendis aut eaque amet. Et quaerat molestiae deleniti ipsa et animi. Adipisci accusamus quidem id atque quis dolor. Velit voluptate voluptatibus voluptas debitis. Ut ut tempora maiores. Culpa qui rerum minus. Qui assumenda recusandae quis temporibus id sed. Accusantium laudantium fugit pariatur voluptatem officiis. Error voluptatem eos et quod accusamus.', '761.00', '684.00', 'DIGI179', 'inStock', 0, 0, 467, 'digital_21.jpg', NULL, 2, 1, 3, 'active', 'Nesciunt saepe rem eius velit corrupti ducimus.', 'Voluptatem necessitatibus dolorum cumque natus omnis similique.', 'Quis vero reprehenderit aut. Qui laudantium dolore neque tempore voluptatem sunt harum laudantium.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(9, 'dolorem dolores distinctio consequatur', 'dolorem-dolores-distinctio-consequatur', 'Laudantium velit autem quibusdam autem sunt nam. Veritatis aut hic quod. Quidem dolorem in velit occaecati omnis.', 'Doloremque vel delectus debitis. Soluta laborum qui ipsa autem. Ex recusandae atque consequatur odit est dolorum deleniti soluta. Repellat facilis perferendis eaque architecto voluptas maiores. Accusamus recusandae optio sint sint velit. Minus mollitia incidunt quis. Et reiciendis error doloribus possimus dolor quis qui. Delectus architecto quibusdam qui perspiciatis.', '671.00', '875.00', 'DIGI133', 'inStock', 0, 0, 423, 'digital_2.jpg', NULL, 4, 4, 2, 'active', 'Vel facere nostrum ipsam aut aut.', 'Aut eveniet odit quasi quisquam ut.', 'Dolores repudiandae itaque illum. Repellendus voluptatem repellendus error facere numquam.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(10, 'rerum ut quasi modi', 'rerum-ut-quasi-modi', 'Alias minus fugit aliquid est magnam. Ipsum incidunt veritatis voluptates natus. Ea vitae quo temporibus et molestiae sed. Possimus voluptas quidem omnis.', 'Voluptatibus repudiandae non voluptatem cum amet quia. Esse aut officiis natus. Sequi fugit temporibus dolor consectetur. Ut ratione mollitia sunt qui sint sint rerum. Voluptas fugiat velit harum. Vero et voluptas magni ipsum possimus. Et quia et nulla omnis quis. Corporis qui culpa dicta provident. Voluptatem porro eum autem non ut est. Et labore voluptas repudiandae eos.', '396.00', '781.00', 'DIGI101', 'inStock', 0, 0, 375, 'digital_16.jpg', NULL, 1, 4, 5, 'active', 'Esse ab facere nisi. Debitis fugiat id fugiat ut.', 'Ea consequatur quis enim ad ut neque.', 'Maiores facere doloribus impedit in quis ab alias. Similique in non nihil in.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(11, 'voluptas nesciunt ut voluptatem', 'voluptas-nesciunt-ut-voluptatem', 'Eaque aliquid praesentium numquam commodi quam. Tenetur nostrum praesentium quo eaque qui ex quas. Corrupti aperiam odio dolorem ut atque. Et officiis omnis et provident architecto sit minima est.', 'Quis omnis aperiam dolores repudiandae facilis voluptatem. Omnis consequuntur deserunt ratione cum quibusdam possimus nihil. Ut ut sint at in eligendi expedita dolorem. Totam rerum numquam iusto. Labore ullam commodi repudiandae eum molestiae. Maxime officiis magni dolorum laboriosam sed. Facilis quis fuga eaque et.', '650.00', '472.00', 'DIGI151', 'inStock', 0, 0, 474, 'digital_20.jpg', NULL, 5, 2, 2, 'active', 'Tempora sint unde commodi est dolor.', 'Magnam nobis quia id est necessitatibus labore voluptatem.', 'Qui ut voluptates sit sunt. A commodi molestias molestiae quo. Possimus adipisci sunt nam.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(12, 'consequatur voluptates nisi voluptatem', 'consequatur-voluptates-nisi-voluptatem', 'Qui dolorum fugiat aut velit. Repudiandae at et ut quia. Esse ratione nihil est repellendus.', 'Molestiae vel enim nobis. Rerum assumenda qui harum quos voluptas minus. Cum sed ut error. Ut est veritatis excepturi qui. Officia iste reiciendis ducimus qui. Expedita provident quidem non optio consequatur atque. Enim modi temporibus aut quia atque quidem aut. Deleniti sed beatae debitis cum atque qui sit. Aspernatur nihil sit vel aspernatur cupiditate. Ex dolorem voluptatem fugit ipsam tempora nihil.', '764.00', '563.00', 'DIGI104', 'inStock', 0, 0, 446, 'digital_10.jpg', NULL, 4, 4, 4, 'active', 'Soluta doloremque sunt ut beatae accusamus illo.', 'Expedita velit natus laborum perferendis quia saepe.', 'Eos dolorem eum sapiente placeat. Ullam in enim fuga ut ducimus dolores suscipit officiis.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(13, 'quam dolorem dolor sit', 'quam-dolorem-dolor-sit', 'Quidem doloremque omnis quis debitis ut. Non culpa nulla alias quo ut adipisci reiciendis. Vitae enim autem est distinctio.', 'Beatae aut quaerat cumque rerum quia. Aspernatur quo et sint ut sint incidunt dolor. Nostrum fugiat quia dolores rem. Et est labore facere suscipit suscipit quos. Et natus et assumenda voluptates possimus voluptas. Officiis dolor quidem quidem aut sit. Accusantium sit provident asperiores magnam molestias neque ut. Dolorum ex vero eos id. Omnis provident velit tempore tempora atque. Nesciunt ab necessitatibus voluptates explicabo labore rerum omnis.', '492.00', '206.00', 'DIGI192', 'inStock', 0, 0, 187, 'digital_1.jpg', NULL, 5, 4, 4, 'active', 'Voluptas est inventore eligendi aut dolor.', 'Culpa possimus sunt asperiores. Eaque adipisci aperiam nisi quia.', 'Non sapiente a dolores et expedita. Ut est voluptatem consequatur hic sed eveniet.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(14, 'ut quos velit aut', 'ut-quos-velit-aut', 'Vel sed officiis asperiores aut alias. Ut ea molestiae vel sequi porro perspiciatis. Fuga autem dignissimos quibusdam nulla est qui. Non reiciendis quidem omnis dolorum ut voluptas et.', 'At reprehenderit dolores modi vero sapiente qui laboriosam qui. Impedit pariatur cumque iure molestiae ut et autem. Soluta eaque eos a ducimus incidunt aspernatur rerum. Laudantium est soluta blanditiis consectetur iste maiores. Ut sint delectus impedit optio ad natus placeat. Numquam iure quia perferendis fugit repellendus. Vel nihil tempore ut quo est est voluptatem. Dolores aut iusto neque sed sint enim. Aspernatur libero et omnis quo architecto. Dolor magni et qui iure omnis enim.', '663.00', '207.00', 'DIGI103', 'inStock', 0, 0, 138, 'digital_7.jpg', NULL, 3, 1, 5, 'active', 'Labore aut corporis dolores est dolor quia ipsam.', 'Odio non reiciendis eaque aut provident ipsa.', 'Quas iure rerum earum. Rerum sint at soluta aspernatur.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(15, 'in impedit sit voluptatem', 'in-impedit-sit-voluptatem', 'Occaecati ut ipsam et sit minima doloribus. Autem aliquam delectus quibusdam deserunt. Voluptatibus tempora dignissimos corporis ea. Quas et qui ea id cupiditate corporis.', 'Quis accusantium esse mollitia quam sequi debitis quia. Praesentium facere reprehenderit voluptates explicabo. Ullam et perspiciatis enim libero recusandae neque odio. Dolor asperiores maxime et qui. Exercitationem quo autem incidunt velit reprehenderit perspiciatis est. Dignissimos esse ut facilis laudantium. Nobis modi excepturi ipsa alias.', '782.00', '812.00', 'DIGI105', 'inStock', 0, 0, 244, 'digital_8.jpg', NULL, 4, 2, 4, 'active', 'Pariatur itaque eveniet aut ut.', 'Molestiae sapiente voluptas est culpa voluptate voluptatem iste.', 'Aperiam est consequatur qui vitae nihil quisquam. Ratione voluptatem earum magni nihil.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(16, 'consectetur commodi corrupti nihil', 'consectetur-commodi-corrupti-nihil', 'Rerum et vel eveniet et. Accusantium libero corporis minima. Sunt consectetur non possimus reiciendis. Itaque enim omnis veritatis tenetur.', 'Sed sed et sit veritatis est modi quia deleniti. Aut consequatur quis nam omnis libero sunt. Et placeat dolorum facilis ut facilis iusto. Et ut eveniet possimus dolorem sit sit aliquid. Vel quas nisi minima ullam. Reiciendis beatae suscipit ullam explicabo. Quasi mollitia omnis sed praesentium rerum id quibusdam animi. Sapiente quod sit inventore qui. Qui quos neque cumque error nihil. Voluptatem aliquid sed pariatur incidunt et dignissimos quia aspernatur.', '281.00', '640.00', 'DIGI139', 'inStock', 0, 0, 428, 'digital_4.jpg', NULL, 3, 2, 5, 'active', 'Asperiores tempora aut ut.', 'Aspernatur quod ex blanditiis praesentium beatae. Eius alias delectus unde.', 'Voluptate vero error eligendi possimus earum. Dolorem magni nemo adipisci ducimus et mollitia.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(17, 'non dolorem assumenda quod', 'non-dolorem-assumenda-quod', 'Aut blanditiis et fugiat autem nisi quis. Facere optio perspiciatis occaecati qui aut assumenda adipisci. Vitae perspiciatis sunt sit cupiditate.', 'Veniam quia ipsam eum laboriosam quaerat voluptatibus. Laudantium nulla qui quia consectetur sint numquam porro provident. Occaecati laudantium ipsam dolorum non et qui vitae consequatur. Aut est molestiae rerum suscipit expedita harum corporis. Natus adipisci omnis aspernatur dolor reprehenderit rem. Corporis facilis aliquid est sed at et suscipit. Id ab molestiae ad eos culpa ullam sint.', '732.00', '458.00', 'DIGI121', 'inStock', 0, 0, 238, 'digital_9.jpg', NULL, 1, 3, 1, 'active', 'Ut sequi maiores sint occaecati asperiores.', 'Vel vel quidem recusandae. Optio dicta similique eos eligendi.', 'Odio ipsa aut ea delectus nemo. Est et quae ipsum laborum. Qui iure est eveniet.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(18, 'veniam ratione provident dolore', 'veniam-ratione-provident-dolore', 'Delectus quam non molestiae. Fugiat earum dolores aspernatur accusantium in quaerat est. Natus temporibus ea earum dolor magni porro iure.', 'Atque nesciunt minus ut aut nostrum rerum. Optio neque qui quia numquam eveniet. Officia odio laudantium qui dolores voluptates id ea. Deleniti qui incidunt dicta reprehenderit occaecati omnis ex est. Rerum vel unde hic qui eos. Distinctio hic et non. Atque possimus saepe nihil eos assumenda error. Porro sapiente praesentium aut enim cumque. Pariatur quia eos delectus laborum asperiores sit necessitatibus qui. Molestiae dolore ut quia blanditiis. Delectus at tempore ratione laboriosam.', '998.00', '894.00', 'DIGI138', 'inStock', 0, 0, 426, 'digital_17.jpg', NULL, 2, 4, 2, 'active', 'Est quidem est expedita mollitia.', 'Explicabo dolores quas laborum sed consequatur et.', 'Vitae quis similique officia. Corporis aspernatur molestias velit deserunt explicabo aut neque.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(19, 'expedita qui architecto eius', 'expedita-qui-architecto-eius', 'Pariatur blanditiis ab eum et. Aut eum excepturi sed et. At magni eos adipisci reiciendis ullam. Maxime dolores quia vel aliquid.', 'Accusantium sint maiores maxime voluptatum. Reprehenderit excepturi dolorem quae. Molestiae aliquam quo ea dolor voluptas esse. Qui sed molestiae omnis facere. Sed tenetur voluptatem nisi neque culpa. Qui esse nam blanditiis reiciendis nihil nam. Eos velit ipsum laboriosam qui ducimus.', '317.00', '808.00', 'DIGI135', 'inStock', 0, 0, 393, 'digital_18.jpg', NULL, 3, 2, 3, 'active', 'Deleniti illum libero ut.', 'Aliquam rerum hic facilis inventore blanditiis.', 'Provident explicabo sunt sed consequatur. Iure maxime id sint nihil temporibus unde.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(20, 'ullam qui quae reiciendis', 'ullam-qui-quae-reiciendis', 'Animi esse impedit qui suscipit ut. Error impedit cumque modi quo vel voluptatum deserunt. Illum eos ut sed pariatur quis. Voluptatem voluptatibus hic deleniti dolorem.', 'Eos aut debitis voluptate excepturi amet perspiciatis. Qui nisi error labore a minus iste. Unde molestiae molestias nemo. Voluptatem sed quis sequi ut totam. Occaecati dolor provident ex in. Et est id ab quam vel. Quas quis ducimus ducimus. Deleniti sed est ut nihil sequi. Dolor est commodi saepe qui. Ducimus optio minus dolore doloribus. Nostrum qui velit et voluptatem accusamus. Ipsa cum sequi sit aut aliquid voluptatibus recusandae.', '829.00', '759.00', 'DIGI157', 'inStock', 0, 0, 405, 'digital_15.jpg', NULL, 3, 5, 2, 'active', 'Non ea ex id eum non qui placeat sit.', 'Pariatur eligendi atque voluptatem quisquam eum.', 'Qui nulla nam harum voluptas sequi sequi cum. Amet laboriosam et molestias.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(21, 'beatae mollitia est minima', 'beatae-mollitia-est-minima', 'Eum molestias necessitatibus minima aut non consequuntur. Animi voluptatem mollitia officiis nihil. Facere ratione voluptatem voluptates est vel et.', 'Pariatur ullam itaque molestiae et consequatur quo eaque. Eum sunt inventore eveniet. Fuga eligendi sint temporibus consequatur voluptatem. Nihil soluta qui officiis dolor. Neque voluptas tenetur aut ut dicta ut debitis. Iste earum consequatur esse deserunt est. Eum tenetur distinctio quas et est. Architecto minima consequatur vero molestias facilis natus. Facilis tenetur nulla qui assumenda aliquam repellat.', '402.00', '278.00', 'DIGI130', 'inStock', 0, 0, 224, 'digital_11.jpg', NULL, 4, 3, 3, 'active', 'Commodi qui facere totam sed ducimus rem at sint.', 'Est et autem tempora beatae.', 'Cupiditate optio aut ducimus voluptatem. Voluptas rerum omnis aut et ipsa.', '2021-09-05 04:18:21', '2021-09-05 04:18:21'),
(22, 'sit nostrum beatae molestiae', 'sit-nostrum-beatae-molestiae', 'Porro quibusdam assumenda et iusto quo. Aut qui cupiditate inventore. Rerum voluptatum delectus ipsam. A qui dicta corporis aliquam. Nulla eius voluptatibus autem exercitationem ut.', 'Doloremque consequatur in est repellat voluptatem ut. Quia maxime officiis laboriosam cupiditate. Delectus alias nobis sit id consectetur laboriosam. Perspiciatis rerum nobis ut nisi. Et praesentium occaecati sed beatae. Nihil velit maxime culpa laudantium voluptatem quas. Vitae aperiam voluptatem nostrum ea qui expedita. Quia ut cumque sed neque ratione magnam cupiditate nemo. Quis consequuntur a id sed sed dignissimos exercitationem. Quasi aut ullam nostrum doloribus quo est rerum.', '975.00', '685.00', 'DIGI168', 'inStock', 0, 0, 144, 'digital_14.jpg', NULL, 1, 3, 5, 'active', 'Beatae iusto molestias suscipit illum.', 'Fugiat necessitatibus dolorem molestias.', 'Doloribus sed impedit omnis et debitis provident vitae ipsum. Et repudiandae reiciendis totam odit.', '2021-09-05 04:18:21', '2021-09-05 04:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('33AlkfPWeGQR7z0YXXg95SmKlOu5oH4R2jA6Uw9g', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQ1dkN0pCMkVJTmZrNG1RY1lpV1VsUnNVWHpYNEtPdXV6NnhnRUFKeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9lZGl0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidVR5cGUiO3M6MzoiYWRtIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJENHRER3bTJ4bjhwYVpLMnYwa0hmUE8yT0FLQWdnS3NqelRYZThSZU15dEhRQjdNVDllZG5xIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRDR0REd20yeG44cGFaSzJ2MGtIZlBPMk9BS0FnZ0tzanpUWGU4UmVNeXRIUUI3TVQ5ZWRucSI7fQ==', 1630825784),
('az4EIGtvzGtOzBwyVblOg5a8zDU8vNtDwaS3EQJL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiQlY5dDNLNjZJYW9XWUtpbVQ2SWlkeWcwdlUzWDhYRTUza2JrMHNVWSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NhdGVnb3J5L2VkaXQvMSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc2hvcD9wYWdlPTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidVR5cGUiO3M6MzoiYWRtIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJENHRER3bTJ4bjhwYVpLMnYwa0hmUE8yT0FLQWdnS3NqelRYZThSZU15dEhRQjdNVDllZG5xIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRDR0REd20yeG44cGFaSzJ2MGtIZlBPMk9BS0FnZ0tzanpUWGU4UmVNeXRIUUI3TVQ5ZWRucSI7fQ==', 1630837044),
('F7Hi9ukZdZa0LkZue3ZxQUTxqUEDOwPSBK4GkbQd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiakduaHNpT3kwYnduNFk1YW5HcVFhWlBiQ2FDNXkyN1JpMUZEcmFFUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9lZGl0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidVR5cGUiO3M6MzoiYWRtIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJENHRER3bTJ4bjhwYVpLMnYwa0hmUE8yT0FLQWdnS3NqelRYZThSZU15dEhRQjdNVDllZG5xIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRDR0REd20yeG44cGFaSzJ2MGtIZlBPMk9BS0FnZ0tzanpUWGU4UmVNeXRIUUI3TVQ5ZWRucSI7fQ==', 1630828377);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile`, `logo`, `feature_image`, `description`, `supplier_status`, `created_at`, `updated_at`) VALUES
(1, 'tempore repellendus sed pariatur architecto', '12345678985', NULL, NULL, 'Totam porro qui qui sit deserunt culpa. Est dolorem sunt laboriosam voluptatum dolores ut qui. Quam vel officiis vel consequuntur eligendi in. Esse error impedit odit velit ex dignissimos. Illum voluptatibus quia mollitia eaque pariatur. Et itaque iure omnis itaque illum molestiae. Eum qui nulla incidunt numquam. Et ipsam aspernatur quis quia eum ea. Saepe reiciendis at dolor voluptas expedita praesentium. Accusamus in illo aspernatur quae et aut. Voluptates unde beatae adipisci doloribus et.', 'Active', '2021-08-30 03:30:43', '2021-08-30 03:30:43'),
(2, 'fuga inventore repudiandae qui molestias', '12345678908', NULL, NULL, 'Iste aliquam qui quaerat soluta quo facilis. Atque modi laudantium doloremque accusantium laborum ut iure. Nihil accusantium recusandae excepturi. Fugiat in eum reprehenderit eum voluptas. Laudantium est consequatur ipsa culpa minus est voluptate. Mollitia nostrum et quis consequuntur repellat voluptas reiciendis. Quibusdam amet labore totam quis maiores. Qui voluptatibus voluptas aperiam ab. Dolor eos delectus ut qui. Dolore molestias quia nemo rerum rerum. Aut magnam et dolores quis tenetur.', 'Active', '2021-08-30 03:30:43', '2021-08-30 03:30:43'),
(3, 'nesciunt dolor eos ut voluptas', '12345678940', NULL, NULL, 'Laudantium et eum iure excepturi aut accusantium autem in. Ut nam eius nesciunt voluptatem excepturi itaque consequatur numquam. Nostrum molestias qui nihil libero provident ea. Voluptatem et id dolore beatae eligendi dignissimos. Amet perferendis dolorem adipisci iste molestiae eum. Voluptatibus consequatur excepturi dolores doloribus sapiente et. Corrupti et reprehenderit sit consequatur qui.', 'Active', '2021-08-30 03:30:43', '2021-08-30 03:30:43'),
(4, 'et perspiciatis suscipit vel aliquam', '12345678967', NULL, NULL, 'Doloremque aut nam eius ratione aspernatur aut. Nostrum nostrum laborum modi. Vitae omnis ducimus in eum. Labore pariatur magni eos dolor. Dicta voluptas ullam aliquid. Doloremque eius aut omnis dolor. Minus voluptatem sunt qui quasi culpa corrupti. Culpa architecto quasi quasi neque voluptatem quo. Aut distinctio maiores corrupti delectus.', 'Active', '2021-08-30 03:30:43', '2021-08-30 03:30:43'),
(5, 'porro facere quidem reiciendis ea', '12345678904', NULL, NULL, 'Pariatur optio veritatis error velit. Est corrupti optio accusantium ipsum voluptatem. Dolore tempore voluptatem quasi distinctio ullam laudantium velit. Deleniti voluptas quia numquam soluta ea ad eaque. Adipisci magni et non. Suscipit quisquam autem repellendus autem et quae. Voluptates nam deleniti est cum. Aspernatur in at ut voluptatibus cum fuga.', 'Active', '2021-08-30 03:30:43', '2021-08-30 03:30:43'),
(6, 'libero maxime explicabo aut vel', '12345678909', NULL, NULL, 'Sint voluptatem nulla omnis id non. Veritatis molestiae nulla delectus amet. Animi odio tempore culpa velit sed. Tempore aut rerum excepturi. Rerum molestiae reiciendis non aliquam sunt voluptatem. Delectus ea delectus ut at aut. Dolore totam iste ea adipisci ullam. Dolores aut est consequatur error. Quidem magnam quod sunt. Quas reprehenderit corporis at quidem libero est labore. Vitae fugiat nisi velit. Et quod omnis veniam qui reprehenderit.', 'Active', '2021-08-30 03:30:43', '2021-08-30 03:30:43'),
(7, 'similique quis ea reprehenderit sunt', '12345678945', NULL, NULL, 'Est alias ipsum molestiae vel. Distinctio inventore illum omnis. Qui dolorem dicta aliquid consequatur. Sit facere ex enim laborum asperiores quo. Autem hic ut aut debitis nam sapiente. Consectetur delectus facilis ipsum similique rem libero. Vero et ut eos est consectetur vel odio. Itaque iure accusantium illo minima aliquam nam consequuntur.', 'Active', '2021-08-30 03:31:41', '2021-08-30 03:31:41'),
(8, 'rerum ipsa consequatur deserunt perspiciatis', '12345678979', NULL, NULL, 'Ab ipsam mollitia quibusdam voluptas possimus ullam sit. Aut dolorem est est quidem qui. Molestias delectus sint rerum repellendus non maxime. Assumenda nostrum sit laborum rerum deleniti. Assumenda quaerat nostrum quod illum consequatur et blanditiis. Architecto cum corrupti qui accusamus enim odit eum amet. Voluptatibus temporibus aperiam vel beatae numquam a et veritatis. Possimus dolor ipsam optio non et omnis iusto vel.', 'Active', '2021-08-30 03:31:41', '2021-08-30 03:31:41'),
(9, 'totam necessitatibus officia provident laborum', '12345678925', NULL, NULL, 'Omnis saepe qui est. Repellendus porro qui eligendi fuga. Ex sint tenetur et reprehenderit quo. Dolorem qui fugiat cupiditate. Deleniti velit est laudantium qui accusamus perspiciatis dolor. Et facere exercitationem suscipit earum distinctio culpa ut quis. Veniam fuga recusandae perferendis consequatur officia quos.', 'Active', '2021-08-30 03:31:41', '2021-08-30 03:31:41'),
(10, 'placeat laborum voluptas et totam', '12345678986', NULL, NULL, 'Dolor culpa est ut cupiditate sit. Assumenda incidunt dolorem quae earum maxime pariatur quos. Veritatis nobis reprehenderit minus dolore a unde. Et id maxime voluptate qui doloribus a quas. Repudiandae unde pariatur facere eos et omnis. Rerum animi est dolorem similique quae. Ea id ut culpa error. Consectetur ut consectetur non deleniti qui doloribus. Necessitatibus voluptas sit eos omnis at iure. Pariatur sed est velit sunt autem. Et similique molestias inventore tempore culpa.', 'Active', '2021-08-30 03:31:41', '2021-08-30 03:31:41'),
(11, 'necessitatibus in et cupiditate quo', '12345678982', NULL, NULL, 'Voluptates unde illo deserunt ab eligendi minus. Veritatis neque sequi voluptatem velit quis est. Sint sit saepe aut quae. Nemo animi aliquam aut voluptatibus earum quia occaecati aut. Consequatur et illo ea dicta voluptatem. Rerum accusantium ipsum amet eum sed. Perspiciatis commodi voluptas asperiores non quasi qui sunt. Et aperiam consectetur optio quia dignissimos.', 'Active', '2021-08-30 03:31:41', '2021-08-30 03:31:41'),
(12, 'aliquam aspernatur vel dolorem magni', '12345678991', NULL, NULL, 'Sunt consequatur ut quasi et nisi. Alias amet nihil quo earum. Ducimus consequatur ullam repellat ut non aut itaque facilis. Minima consequatur est delectus qui officiis perspiciatis. Voluptatem autem dicta quod delectus. Eaque assumenda omnis dolor ullam ea. Doloremque asperiores quia vel. Consequuntur omnis dicta ipsa nemo cum. Aut quia id eligendi beatae suscipit rerum omnis. Maxime error tempora repellat voluptas.', 'Active', '2021-08-30 03:31:41', '2021-08-30 03:31:41'),
(14, 'saepe et ut accusamus itaque', '118811713530', NULL, NULL, 'Voluptatum pariatur incidunt dolorem et ex voluptatem commodi eaque. Odio omnis iusto officiis quasi totam id qui. Dolores error accusamus commodi voluptate vero nobis quo necessitatibus. Et omnis in beatae ipsa sed temporibus. Quas pariatur earum tenetur voluptatem similique nisi fugit. Veritatis dolore magnam eos assumenda consectetur. Et ratione sit quisquam nam hic non. Ex dolore velit voluptatum. Ad sint dolorem eius dolor et consequatur pariatur.', 'Active', '2021-08-30 03:32:24', '2021-08-30 03:32:24'),
(15, 'illo est et mollitia rerum', '76323990734', NULL, NULL, 'Et enim nam iure officiis qui. Sed molestias pariatur dolorum sit quibusdam et. Quas et aliquam facilis aut voluptas quia qui. Consequatur aut eius quisquam voluptates asperiores odio dolorum fugit. Sed dignissimos amet qui sapiente architecto. Minus a soluta illum quam. Quo molestiae voluptatem omnis minus non est nesciunt quaerat. Quae voluptatum ipsam expedita excepturi reiciendis in aspernatur consequatur.', 'Active', '2021-08-30 03:32:24', '2021-08-30 03:32:24'),
(16, 'rem qui nulla placeat laborum', '116462442438', NULL, NULL, 'Quisquam molestiae necessitatibus sequi. Quia quia dignissimos iusto perspiciatis ut animi. Eum doloribus quia enim expedita blanditiis. Vel a in nostrum qui. Ea et ut dignissimos harum nihil architecto. Dolores vitae porro laborum. Id ex velit earum et et. Sit et voluptatum qui sit iste praesentium.', 'Active', '2021-08-30 03:32:24', '2021-08-30 03:32:24'),
(17, 'atque non mollitia consequatur blanditiis', '48586735176', NULL, NULL, 'Magni non qui quisquam esse. Molestias corporis dicta vel. Ut ut ut illum amet. Et quos sed iure. Nihil porro et delectus nam occaecati omnis. Molestiae blanditiis non eum autem voluptas numquam laboriosam incidunt. Dicta autem qui facere aut tenetur officiis debitis. Voluptatibus doloremque eveniet eos atque deleniti. Sunt minus laudantium qui.', 'Active', '2021-08-30 03:32:24', '2021-08-30 03:32:24'),
(18, 'eligendi quod et minima tempore', '31647991776', NULL, NULL, 'Eligendi magni pariatur similique aut quibusdam architecto deserunt numquam. At accusantium iste doloremque deleniti voluptas non. Nesciunt iusto cum eaque cupiditate distinctio architecto exercitationem mollitia. Excepturi est est quos. Vero exercitationem eos eligendi excepturi fuga rerum quo. Voluptas non sed commodi dolore. Aut omnis est eos deserunt. Officiis dignissimos aut maxime aperiam. Nisi ipsa aut quaerat natus. Et qui quo illo voluptatibus illo. Tempora animi nihil provident quod.', 'Active', '2021-08-30 03:32:24', '2021-08-30 03:32:24'),
(19, 'quia et iste error atque', '63237277775', NULL, NULL, 'Perferendis qui eos est. Consequatur officiis cumque dignissimos voluptatem. Id corporis consequatur exercitationem autem iste eos. Officiis et voluptatem expedita tenetur et excepturi odio. Ad dolor sapiente incidunt molestiae maxime molestiae atque. Reprehenderit pariatur labore explicabo quidem. Molestiae hic sit quam a rem aut autem.', 'Active', '2021-08-30 03:32:24', '2021-08-30 03:32:24'),
(20, 'nisi id magnam voluptatum repellendus', '24671752700', NULL, NULL, 'Distinctio molestiae est qui corporis tempore aut ad. Et dolores aut sed dignissimos nihil exercitationem. Quo eligendi sed quam sequi. Similique earum aut vero fuga sunt. Corrupti autem animi qui repellat hic vero eveniet. Explicabo consequatur aperiam incidunt placeat excepturi maxime similique. Sunt est ratione omnis voluptate adipisci.', 'Active', '2021-08-30 03:33:34', '2021-08-30 03:33:34'),
(21, 'soluta facere architecto dolorum et', '119213043084', NULL, NULL, 'Nostrum possimus fugit beatae qui. Non est rem et natus qui voluptate iste esse. Sed sed dolor non impedit expedita illo pariatur. Quo eligendi voluptatem qui quo aspernatur nostrum labore occaecati. Id commodi nemo architecto rerum ut fuga dolor. Reiciendis sunt ratione error dolorum. Sunt animi iste voluptatum dolor labore aperiam laboriosam. Voluptas exercitationem impedit sequi dolores magni dicta.', 'Active', '2021-08-30 03:33:34', '2021-08-30 03:33:34'),
(22, 'dolorem sint autem fugit doloribus', '51696356663', NULL, NULL, 'Vitae quia aliquid non quod exercitationem. Vel odio impedit sed nam illum voluptate. Quasi eaque fugiat sed dolorum voluptatem ut perferendis qui. Temporibus optio et quis officia perspiciatis autem et esse. Impedit non voluptatum cupiditate. Occaecati distinctio ipsam quia exercitationem. Neque possimus aut magni et aliquid eum voluptatem. Pariatur quia vel similique dolores nihil nulla.', 'Active', '2021-08-30 03:33:34', '2021-08-30 03:33:34'),
(23, 'aut et maiores culpa voluptatem', '121733155468', NULL, NULL, 'Molestias et corrupti maiores assumenda ut non. Voluptas dolore debitis molestias voluptatem culpa non odit quia. Consequuntur qui minus odio amet repellat. Assumenda modi non autem ut consequuntur cumque. Sit qui illum eius quod nulla cupiditate autem sed. Corrupti sit laudantium veritatis sunt repellendus labore nam. In voluptatibus ut quia nulla et iste aut. Officiis illum inventore totam nihil. Et repellendus et odit distinctio inventore. Iste dolorum laboriosam aut eius itaque.', 'Active', '2021-08-30 03:33:34', '2021-08-30 03:33:34'),
(24, 'at eum dolores voluptatem laborum', '68885805822', NULL, NULL, 'Perspiciatis quia sunt eveniet impedit sit voluptate. Voluptatem et sed occaecati quasi. Sit numquam et quisquam illo. Ut magnam voluptatem perferendis quod tempora amet. Praesentium sunt et officiis voluptas. Itaque et omnis reprehenderit. Ipsa necessitatibus eos vero voluptate eveniet voluptas. Id recusandae officiis exercitationem nam. Sint hic voluptas nobis autem vitae. Officia mollitia provident quia totam. Esse qui eius laborum nemo id.', 'Active', '2021-08-30 03:33:34', '2021-08-30 03:33:34'),
(25, 'consectetur ducimus cupiditate natus dolorem', '17832981032', NULL, NULL, 'Dicta sit quidem voluptate a cumque. A rem quam voluptatem illum earum praesentium labore. Dolorem quod quas voluptas aut. Voluptas ut eveniet rerum sed neque. Quisquam molestiae minima quae voluptas distinctio est. Corrupti reiciendis molestiae modi sequi eum. Soluta vel qui ea. Autem quo tenetur id fugiat quod cum. Natus suscipit eos minima at. Deleniti sunt aut alias excepturi quo saepe. Quia voluptatem ipsum dolorum qui dolores voluptatem.', 'Active', '2021-08-30 03:33:34', '2021-08-30 03:33:34'),
(26, 'voluptatibus cupiditate soluta ratione ut', '83078004711', NULL, NULL, 'Maiores dolores suscipit magni quis blanditiis. Et commodi quo in autem maxime est. Dignissimos reprehenderit eveniet quis inventore repudiandae deserunt reprehenderit. Praesentium magnam nihil est vero. Beatae vel aut doloribus quasi error consectetur atque. Unde aspernatur adipisci illum eaque eum est. Consequuntur voluptatem quaerat voluptatem ut dolorum perferendis. Est placeat sunt ut quia et beatae assumenda. Consequatur fugit mollitia distinctio est.', 'Active', '2021-08-30 03:47:35', '2021-08-30 03:47:35'),
(27, 'temporibus molestiae non unde dolor', '121317081401', NULL, NULL, 'Dicta sequi illo aut in. Enim ut voluptatem iusto ipsum mollitia deleniti iure enim. Et reiciendis provident dolore. Et sequi quaerat et molestias maiores qui pariatur. Possimus vitae optio facilis tempora voluptatem reprehenderit. Itaque ut nam consequatur blanditiis distinctio. Voluptates qui unde sed expedita illo porro quo. Aperiam qui quia incidunt rerum in quae.', 'Active', '2021-08-30 03:47:35', '2021-08-30 03:47:35'),
(28, 'est qui sed ut quaerat', '83073744686', NULL, NULL, 'Dolores libero earum laboriosam illo aliquid. Praesentium maiores tempore voluptatum laborum non rerum. Libero laudantium aliquid et minus vel. Ut id temporibus sed possimus temporibus. Eum ut velit repudiandae laudantium. Voluptates aut eligendi culpa quo aut inventore quam. Odit sit recusandae id aliquid qui. Non delectus sit eveniet quidem. Quis officia ut dolorem voluptatem quod esse. Nam unde dolore delectus. Aut dolorem pariatur laudantium architecto nostrum ducimus vel.', 'Active', '2021-08-30 03:47:35', '2021-08-30 03:47:35'),
(29, 'cumque sunt inventore quas impedit', '91664926805', NULL, NULL, 'Aut beatae explicabo non velit. At vitae nihil sit debitis magni officia. Architecto sapiente mollitia quisquam laudantium ea magnam impedit. Voluptas soluta possimus exercitationem. Porro ullam nulla enim ex. Et ut nesciunt corrupti ratione iure nesciunt rem. Et voluptatem reprehenderit accusantium. Aut nihil rerum aut error fugit commodi nostrum. Corrupti et explicabo numquam aut consectetur. Corporis vel fugit sit et ut perspiciatis autem voluptas.', 'Active', '2021-08-30 03:47:35', '2021-08-30 03:47:35'),
(30, 'temporibus est qui et odit', '55083422849', NULL, NULL, 'Qui voluptate non dolorum est mollitia sed est. Sunt quia atque qui saepe. Placeat aliquam perferendis minima eum aut dignissimos perspiciatis. Et ullam id doloremque aut. Vel voluptas labore fugiat rerum quo cupiditate. Earum est sint eos debitis. Non reprehenderit labore voluptatem vitae provident laudantium sint. Rerum fuga dolores in qui dolore. Omnis quo alias neque et minima saepe voluptate veniam. Rerum quas error quia ut dolores iure.', 'Active', '2021-08-30 03:47:35', '2021-08-30 03:47:35'),
(31, 'deserunt et eveniet aliquid unde', '123218040644', NULL, NULL, 'Ullam iure qui quas quos. Ut ipsum nobis est aut blanditiis dolorem sunt. Qui voluptas magni excepturi et sit. Nulla doloremque omnis facilis dolorem quia ab. Vel amet doloribus deserunt excepturi officiis voluptates rerum eius. Sit culpa ipsum perferendis sapiente explicabo laboriosam beatae. Dolor temporibus sed rerum qui. Necessitatibus similique ea illum expedita. Et labore officia error ex. Neque vel non a dicta earum quo ut.', 'Active', '2021-08-30 03:47:35', '2021-08-30 03:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usr' COMMENT 'adm fro Admin, usr for user/customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `uType`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$CGDDwm2xn8paZK2v0kHfPO2OAKAggKsjzTXe8ReMytHQB7MT9ednq', NULL, NULL, NULL, NULL, NULL, 'adm', '2021-08-30 02:17:35', '2021-08-30 02:17:35'),
(2, 'user', 'user@user.com', NULL, '$2y$10$vJqH.9mMUMUJaz6YB1NvdeBnf7MjqMlctSTrYNHVf8/Tpjnmk9dZK', NULL, NULL, NULL, NULL, NULL, 'usr', '2021-08-31 22:26:06', '2021-08-31 22:26:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_name_unique` (`name`),
  ADD UNIQUE KEY `suppliers_mobile_unique` (`mobile`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
