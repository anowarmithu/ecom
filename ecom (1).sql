-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2021 at 03:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 8.0.1

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
  `status` tinyint(4) NOT NULL DEFAULT 0,
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
(1, 'corporis aliquid', 'corporis-aliquid', NULL, NULL, 0, 0, 'Est ut odio sed officia et.', 'Facere distinctio fugit sapiente aliquam. Eos enim vitae recusandae et.', 'Sint eum blanditiis quisquam nostrum unde.', '2021-09-01 00:47:54', '2021-09-01 00:47:54'),
(2, 'eos dolor', 'eos-dolor', NULL, NULL, 0, 0, 'Repudiandae ad sit qui.', 'Neque illum sequi in non voluptatem. Incidunt adipisci qui temporibus numquam non ut.', 'Eveniet nihil iusto totam quia ratione occaecati.', '2021-09-01 00:47:54', '2021-09-01 00:47:54'),
(3, 'dolor sit', 'dolor-sit', NULL, NULL, 0, 0, 'Totam doloremque voluptate quia earum nam minima.', 'Qui cupiditate qui consequuntur quo. Ipsum quo consequuntur voluptas.', 'In hic voluptas sint odit.', '2021-09-01 00:47:54', '2021-09-01 00:47:54'),
(4, 'corporis incidunt', 'corporis-incidunt', NULL, NULL, 0, 0, 'Corrupti et id enim quia assumenda.', 'Facilis adipisci exercitationem dolores iusto. Modi ab voluptas assumenda sit.', 'Ea voluptatem est beatae magni in cumque.', '2021-09-01 00:47:54', '2021-09-01 00:47:54'),
(5, 'aspernatur eos', 'aspernatur-eos', NULL, NULL, 0, 0, 'Dolorum dolorum corporis et possimus ipsum eos.', 'Consectetur est quia ut modi. Delectus eum dicta qui pariatur sapiente numquam voluptas.', 'Consequatur sit harum sit beatae.', '2021-09-01 00:47:54', '2021-09-01 00:47:54'),
(6, 'ullam voluptates', 'ullam-voluptates', NULL, NULL, 0, 0, 'Iste et nihil reprehenderit ex.', 'Sint ipsa dolorem eius hic. Voluptas praesentium soluta officia laudantium quisquam.', 'Voluptas praesentium unde repellendus.', '2021-09-01 00:47:54', '2021-09-01 00:47:54'),
(12, 'Anowar Hosene  we', 'we e', '1709887676237742.jpg', 'f wwef we', 1, 1, 'we ff', 'wf', 'feew', '2021-09-03 07:32:40', NULL);

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
(1, 'placeat est atque facilis', 'placeat-est-atque-facilis', 'Illum error est possimus explicabo qui non ut. Et omnis eos vel voluptates. Sed et nam ratione quod. Sed ut consectetur consequatur et in animi corrupti.', 'Sit nesciunt inventore enim eum consequatur qui hic. Ducimus rerum sunt quidem quia velit itaque non. Non eligendi est quo doloribus dicta et. Rerum excepturi cum sed libero enim fugit corporis. Est quia occaecati non et magnam. Qui quia repellat ex sint. Asperiores neque minima officia minima exercitationem. Itaque dolor id expedita magnam qui illum dolorum. Cum eveniet tenetur porro sed eos.', '395.00', '350.00', 'DIGI148', 'inStock', 0, 0, 469, 'digital_7.jpg', NULL, 5, 4, 3, 'active', 'At minus est eum debitis quis.', 'Qui at doloremque incidunt consequuntur illo.', 'Cumque animi sequi sed minus magni consequatur. Expedita perspiciatis et ea quos.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(2, 'expedita ut sunt recusandae', 'expedita-ut-sunt-recusandae', 'Consequatur et maxime nemo aut dolorem. Fugit quia cum ex rerum. Et voluptatum consequatur recusandae rerum delectus. At unde nesciunt voluptas animi explicabo est saepe.', 'Exercitationem assumenda neque magnam architecto inventore sint reiciendis. Sapiente enim ex inventore enim et dolores eum. Dolores esse officiis vel rerum blanditiis corporis deleniti ut. Voluptatum ab accusamus omnis qui ut in. Eos repellat ut qui tempore. Dolorem aut cumque aspernatur illum esse. Omnis odio et beatae quod odit dignissimos quis nam. Quo sunt dolorum quidem. Recusandae ea et sequi sit necessitatibus exercitationem velit. Molestiae aut eos optio rem nihil. Ut unde et quia.', '821.00', '800.00', 'DIGI145', 'inStock', 0, 0, 429, 'digital_5.jpg', NULL, 5, 4, 5, 'active', 'Sed similique praesentium voluptate sequi quidem.', 'Fugit inventore officiis quae quasi voluptas recusandae.', 'Iste est officia officiis dicta nostrum eum. Minus impedit velit eos velit corrupti.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(3, 'natus necessitatibus neque excepturi', 'natus-necessitatibus-neque-excepturi', 'Incidunt est qui enim provident. Ratione quia vero excepturi veniam culpa voluptatibus nisi.', 'Necessitatibus explicabo quisquam delectus ipsa ut quis architecto. Illum cumque voluptas quis qui consequatur ut quod. Minima ut et est doloribus omnis. Soluta nulla laboriosam sapiente cum consequuntur. Et aut vel vel et maiores facere qui. Illum hic odio voluptatem nobis voluptas reiciendis possimus. Adipisci cumque nihil velit porro animi numquam. Voluptas error numquam doloremque consequatur.', '822.00', '799.00', 'DIGI159', 'inStock', 0, 0, 322, 'digital_14.jpg', NULL, 1, 4, 4, 'active', 'Laborum omnis ut molestiae sit tempora.', 'Voluptatibus earum impedit nostrum fugiat.', 'Error aut eos et tenetur. Quia modi officiis sequi vel qui tempora.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(4, 'quasi aut molestiae non', 'quasi-aut-molestiae-non', 'Qui saepe cumque fuga expedita. Aut amet voluptatem facere rem nemo nobis. Sunt vel magnam non laudantium. Officia nihil sit ut quisquam voluptatum error.', 'Repellat quam ut ut illum. Voluptatum dolor ex dicta fugiat corrupti est nemo. Fugit qui ut iste velit aliquid. Blanditiis hic commodi in commodi. Quis sunt aut consequuntur error excepturi sunt. Consequuntur at fuga et. Nulla adipisci laborum eaque est sed ipsa est. Illo culpa commodi est doloremque sit sunt. Aut aspernatur ab reprehenderit nam. Sit qui deserunt nam quisquam. Nihil nostrum consequatur fugiat sapiente. Quia eum aspernatur eaque excepturi sit laborum nisi.', '111.00', '100.00', 'DIGI163', 'inStock', 0, 0, 135, 'digital_18.jpg', NULL, 4, 5, 5, 'active', 'Nisi deleniti et et necessitatibus beatae minus.', 'Est ipsa non itaque commodi maiores et.', 'Eius ad quis corrupti. Magni quisquam quia qui architecto. Et exercitationem quae qui.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(5, 'distinctio et vitae beatae', 'distinctio-et-vitae-beatae', 'Et sint magni consequuntur facere pariatur delectus. Velit iste incidunt quidem at qui.', 'Aut suscipit consequuntur accusamus sint cupiditate et nam harum. Et est recusandae laborum unde quia aut libero at. Veritatis impedit voluptas ratione similique. Id est odit doloribus. Qui provident neque ut inventore. Quibusdam enim et dolor quibusdam et quod. Nam totam qui sit aut est. Dolore sed temporibus dolore voluptatem est. Sed numquam facilis sint. Et omnis eum adipisci et.', '773.00', '750.00', 'DIGI127', 'inStock', 0, 0, 183, 'digital_21.jpg', NULL, 1, 5, 3, 'active', 'Vero dolorem eaque aut temporibus consequatur.', 'Illo eveniet accusamus sit. Rem voluptas maiores atque quo quam rerum.', 'Est et facilis dolorum quidem. Ut aspernatur corrupti nostrum soluta aut voluptatem ut.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(6, 'unde voluptas at odio', 'unde-voluptas-at-odio', 'Impedit soluta odio et corrupti libero. Corrupti quo dolor suscipit quos voluptas non porro laborum. Assumenda ab tempore voluptatem mollitia. Aspernatur ipsam itaque incidunt.', 'Eos quisquam culpa non quam. Ea sed qui sunt. Perspiciatis dolor velit cupiditate magnam. Voluptates fugiat similique ducimus quam molestiae accusamus nulla. Excepturi temporibus corrupti nesciunt soluta delectus aut impedit. Eum animi consequatur laborum quidem natus harum aperiam. Vero aut nostrum qui ipsam. Enim dolores quia voluptas neque. Perferendis et rerum rerum tempore dolores modi. Est molestias deleniti omnis illum autem molestias.', '417.00', '400.00', 'DIGI147', 'inStock', 0, 0, 135, 'digital_10.jpg', NULL, 5, 1, 4, 'active', 'Et quisquam et voluptatem voluptate ullam.', 'Tempora maxime occaecati fugit quos soluta aut.', 'Repellat quas sed consectetur. Voluptatem sit culpa illum.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(7, 'possimus modi magnam consequatur', 'possimus-modi-magnam-consequatur', 'Autem exercitationem est et eos distinctio odit. Sit aut eum pariatur rerum. Iure veniam sit id eos repellendus. Expedita aut magni aut aut iste assumenda unde.', 'Atque minus sed sed aut. Id nobis qui facilis praesentium aliquam placeat aut. Excepturi quia pariatur ab nostrum voluptatum id. Adipisci neque impedit debitis nihil perspiciatis minus expedita consequatur. Commodi atque et sequi aperiam pariatur impedit optio facere. Officiis accusamus quia debitis ullam dolorem. Fugiat laudantium fugit porro non eveniet qui est. Aperiam ratione magni quod eveniet nesciunt. Provident ut quas ullam. Omnis est iste ipsam ex.', '164.00', NULL, 'DIGI181', 'inStock', 0, 0, 469, 'digital_11.jpg', NULL, 2, 2, 5, 'active', 'Est laborum odio velit.', 'Quo exercitationem veniam sed placeat qui.', 'Et quo ut id nobis qui eos. Voluptas quo eos consequatur minima. Vero natus ut corporis a.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(8, 'quo non corrupti sint', 'quo-non-corrupti-sint', 'Rerum non adipisci et quo quod ducimus cum. Fuga similique iste beatae qui nobis dolor autem tempora. Eos aliquid tempore excepturi sit ea non qui.', 'Aliquid voluptatem omnis et nihil. Aut eos rerum voluptatum magni consequatur ea. Adipisci dolores voluptatem quos a labore. Suscipit minima voluptates labore consequatur hic. Labore doloremque et sit nostrum et qui. Id ut et ratione enim deserunt perferendis. Possimus accusantium consectetur rem ut dignissimos aut ut officia. Ut repudiandae et officiis optio. Earum non quod in iusto quod. Error dolor ea sapiente et sit aut non dolores. Deserunt enim est earum ullam sed.', '254.00', '245.00', 'DIGI152', 'inStock', 0, 0, 467, 'digital_9.jpg', NULL, 5, 4, 2, 'active', 'Vero est necessitatibus quae mollitia expedita.', 'Eos veniam aut ut voluptatem repellendus aperiam aliquam sint.', 'Blanditiis magnam ipsam eos laudantium ut omnis perferendis. Velit illo dolore sunt quo dolorem.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(9, 'minima cum magni harum', 'minima-cum-magni-harum', 'Autem est dolorem accusamus asperiores eius. Beatae id est omnis veniam quo in quam. Vitae dolorem aut sint maiores est ipsam.', 'Consequatur molestiae alias in alias. Laudantium sint cupiditate perferendis eum alias voluptatem blanditiis repudiandae. Vero enim sint explicabo distinctio sapiente quisquam. In minus eaque necessitatibus dolorem omnis deleniti. Commodi tempore commodi consequatur nisi aspernatur officiis veritatis at. Ipsam vel repellat doloremque consequuntur accusantium facilis quasi aspernatur. Corporis minima assumenda consequatur est. Excepturi dignissimos omnis mollitia maxime ipsum voluptas.', '938.00', '920.00', 'DIGI111', 'inStock', 0, 0, 180, 'digital_22.jpg', NULL, 4, 4, 5, 'active', 'Ut debitis dolorem sequi dolorem.', 'Dolor atque magni et nulla. Earum tenetur quae ipsum sed.', 'Nesciunt ipsam ea quis. Vel voluptatem earum maxime earum. Nisi est atque soluta aut similique.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(10, 'atque hic alias modi', 'atque-hic-alias-modi', 'Aut ipsa molestiae et repellendus voluptatem ut. Delectus omnis eius eos maiores dolorem. Fuga ut dolores omnis velit nihil qui non.', 'Est praesentium praesentium quis. Aut non quia delectus enim aut voluptates et veniam. Totam amet dolores accusantium quia et. Temporibus dolores et et suscipit amet reprehenderit. Et ad optio ut illo sed. Veritatis quisquam voluptatem numquam doloremque minima officia eos quia. Architecto doloribus suscipit error doloribus. Veniam dolor est sed ratione et eum. Odit aut magnam est sit. Eum et deleniti vero officia facilis qui explicabo.', '886.00', '850.00', 'DIGI128', 'inStock', 0, 0, 487, 'digital_8.jpg', NULL, 3, 3, 2, 'active', 'Quam id labore dolor at.', 'Non officia provident corrupti voluptatem. Vel beatae rerum aut inventore.', 'Sit aperiam nemo ipsum aut neque voluptate. Quasi quia voluptas deleniti.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(11, 'aliquam ratione ratione perferendis', 'aliquam-ratione-ratione-perferendis', 'Sit quaerat eligendi reprehenderit rerum numquam molestiae aut. A quo rem est. Odio aperiam aut ipsum aspernatur quas fugit non.', 'Soluta sequi odio nisi dolorem et repellat. Molestiae molestias quos sint repellendus. Voluptate eius accusantium ad facere. Odit sint minima aspernatur. Enim et quaerat assumenda ipsa praesentium dolor praesentium. Libero quos blanditiis expedita quia iste. Mollitia voluptatem qui ut illo ab asperiores. Aliquid non sunt ut quisquam est nihil.', '683.00', NULL, 'DIGI150', 'inStock', 0, 0, 393, 'digital_3.jpg', NULL, 4, 3, 5, 'active', 'Magni minima rerum sapiente suscipit.', 'Nobis eum aliquam provident occaecati consequatur aliquam.', 'Nesciunt saepe ut in temporibus quae necessitatibus natus excepturi. Iste labore officiis et ipsum.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(12, 'ad magni voluptatem omnis', 'ad-magni-voluptatem-omnis', 'Omnis reprehenderit perferendis tempore asperiores veritatis. Eos quia illo ullam facere illum ut voluptatem. Ut nemo neque hic cumque aut. Et sed doloremque doloribus sit ratione repellendus.', 'Nisi eveniet officiis quos vel. Et voluptatem quod quasi illo. Necessitatibus aut doloribus rerum sint sunt ipsa rem. Quia nemo sequi iste accusamus fugiat est praesentium odit. Excepturi qui maxime corporis deleniti. Dolorem nisi illo nam adipisci possimus ut nam. Ut quos rerum ut reiciendis et.', '990.00', NULL, 'DIGI174', 'inStock', 0, 0, 220, 'digital_15.jpg', NULL, 4, 5, 3, 'active', 'Officiis occaecati doloremque praesentium et.', 'Laudantium hic qui placeat corporis. Quidem facilis et qui.', 'Soluta enim doloribus ut quo. Aut occaecati accusamus quia natus est. Quo quibusdam iure nihil qui.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(13, 'non sunt ea magni', 'non-sunt-ea-magni', 'Sed rerum ratione aut recusandae. Sint voluptatem sit pariatur rerum enim qui. Qui aliquam aliquid eaque qui sit odio necessitatibus. Nulla nostrum nam consectetur distinctio voluptas in.', 'Atque et consequuntur voluptas sunt. Laudantium possimus enim qui inventore voluptas expedita ut. Doloremque dolor dolorem minus odio perferendis qui. Enim reprehenderit quaerat occaecati magnam perferendis mollitia. Et sint qui ratione facere et repellendus. Voluptas laudantium sit nesciunt et aut quis. Velit necessitatibus rerum modi in.', '670.00', NULL, 'DIGI116', 'inStock', 0, 0, 175, 'digital_1.jpg', NULL, 1, 3, 1, 'active', 'Natus veniam voluptatem porro veniam.', 'Sed molestiae expedita non velit error quia voluptatem.', 'Fugiat qui sed rerum ut earum. Architecto soluta voluptatem mollitia.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(14, 'ipsum modi eius eaque', 'ipsum-modi-eius-eaque', 'Quaerat itaque placeat iusto eveniet aliquam commodi id alias. Rerum sit non temporibus eum laudantium unde. Optio quod sequi praesentium sed dolorem.', 'Eius voluptate libero officia aspernatur molestiae quas et in. Rerum cumque ut sunt eum. Dolore aut voluptas voluptates. Voluptatibus numquam error non id. Cumque expedita est molestiae excepturi. Perferendis et magnam ea ab similique consectetur. Alias nam cum neque dolor ullam quia aperiam sunt. Optio quasi quia fuga et et. Nulla quis ipsam tempore ducimus perspiciatis.', '749.00', NULL, 'DIGI191', 'inStock', 0, 0, 207, 'digital_13.jpg', NULL, 2, 4, 2, 'active', 'Labore occaecati consectetur mollitia doloremque.', 'Adipisci nam eos libero. Nobis sit unde provident adipisci.', 'Rerum id id voluptate commodi. Sed consequatur fugiat id nesciunt voluptatem.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(15, 'optio provident consequatur dicta', 'optio-provident-consequatur-dicta', 'Omnis voluptatem consequatur deserunt porro ut in. Aut recusandae voluptas ex excepturi molestiae mollitia rem. Non voluptatem rerum labore. Dolorem iusto illum omnis nostrum.', 'Veritatis voluptatem laboriosam exercitationem quia corporis corporis itaque. Laboriosam sequi harum quae. Molestiae est ex provident aut repellat corporis. Perferendis voluptate labore vitae soluta accusamus est aperiam. Debitis eum non deleniti cumque amet illo molestiae. Officiis veniam laboriosam porro porro similique aut culpa. Sapiente occaecati laudantium id non cumque vero magni officiis.', '110.00', '99.00', 'DIGI136', 'inStock', 0, 0, 430, 'digital_16.jpg', NULL, 4, 4, 3, 'active', 'Culpa eligendi totam cupiditate.', 'Voluptatum et at ut facilis voluptate sint.', 'Veritatis dolores eum quia. Tenetur natus non similique maiores non a.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(16, 'blanditiis illo repudiandae velit', 'blanditiis-illo-repudiandae-velit', 'Occaecati nesciunt qui voluptas reprehenderit modi qui et. Eius at qui dignissimos tempora tempore minima. Cupiditate at corrupti accusantium error.', 'Et sunt qui inventore doloribus aperiam nemo eaque. Temporibus qui dolorem harum quidem autem dolorem unde repudiandae. Aut nostrum quasi alias ab. Omnis aut sed est in velit molestiae labore. Sunt similique qui explicabo quidem molestiae fugiat quidem officia. Modi molestiae veniam deserunt non voluptatum consequatur. Corrupti accusantium est cumque aut consectetur eum.', '903.00', '750.00', 'DIGI140', 'inStock', 0, 0, 169, 'digital_19.jpg', NULL, 5, 5, 1, 'active', 'Qui quos pariatur quis porro maiores hic.', 'Et delectus perspiciatis qui sint vero molestiae qui quaerat.', 'Fugit necessitatibus voluptas asperiores cum sit. Velit sint qui nostrum. Et explicabo quod quia.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(17, 'inventore quo a enim', 'inventore-quo-a-enim', 'Qui officiis odit sed quas dolorem est. Nemo explicabo omnis est.', 'Deserunt sit voluptatum illum veritatis laboriosam accusamus et. Adipisci facilis et sed voluptas quidem maxime. Sint architecto delectus qui aut dolorum nemo. Et vel consequatur ea asperiores blanditiis qui accusamus. Dolorem velit sed expedita quidem et. Qui ut eligendi fugit recusandae et. Sunt molestiae pariatur nesciunt quaerat ea similique sint. Ut voluptatem placeat porro recusandae laboriosam maiores. Quod quas tempore hic et. Id dolores ut repellendus autem ut eaque quod quia.', '535.00', '500.00', 'DIGI110', 'inStock', 0, 0, 186, 'digital_2.jpg', NULL, 1, 4, 5, 'active', 'Hic dolorum eligendi commodi laboriosam.', 'Vero dolorum culpa veritatis accusantium tenetur. Unde cum sint dicta dolores.', 'Vitae quis aut sed. Et animi non laudantium eum harum eum.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(18, 'eius cum minima quia', 'eius-cum-minima-quia', 'Qui exercitationem reprehenderit nemo. Est ratione eos provident aut deserunt esse ipsum. Quaerat velit optio voluptatibus et est nemo. Fugiat et asperiores qui non.', 'In eius et voluptatem qui veritatis pariatur quam. Ipsa odio quasi expedita ipsam dolorem deleniti. Perspiciatis nostrum fuga illo autem sint iure doloribus. Dolores eligendi eum fugiat. Nesciunt sit nisi officiis quos officia sint. Quia excepturi accusamus eos molestiae cupiditate. Officiis qui consectetur mollitia debitis excepturi officiis corrupti. Molestiae nisi et doloremque aut et.', '767.00', NULL, 'DIGI200', 'inStock', 0, 0, 174, 'digital_6.jpg', NULL, 1, 2, 4, 'active', 'Ut fugiat assumenda accusamus officiis.', 'Saepe est adipisci occaecati quaerat illo.', 'Illo molestiae qui harum in. Deserunt veritatis aperiam atque rerum blanditiis.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(19, 'deserunt assumenda rerum quo', 'deserunt-assumenda-rerum-quo', 'Doloribus sed et quia rerum amet deleniti voluptates. Aperiam est tempora praesentium alias porro. Est eos sit nisi.', 'Repudiandae iste sunt quasi in id saepe ut. Mollitia earum alias nihil excepturi eaque vitae quia. Sit provident id ullam non ipsa consequatur quae. Ipsum quia dolore vitae ipsa suscipit quas atque. Voluptatem ipsam error nostrum unde unde consequatur nostrum fugiat. Assumenda quos assumenda repellendus in quos et ab et. Nam pariatur sit ipsa aut.', '495.00', '470.00', 'DIGI170', 'inStock', 0, 0, 132, 'digital_4.jpg', NULL, 5, 1, 3, 'active', 'Eos dolores tenetur neque architecto quia.', 'Nemo similique animi qui cupiditate. Rem voluptate et dicta at saepe itaque.', 'Ut ut sed vitae. Sit ut est id accusantium molestiae debitis. Vel iste sit voluptates aliquam.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(20, 'qui sit consequatur fugit', 'qui-sit-consequatur-fugit', 'Id aliquam quidem tenetur rerum ut quas praesentium dolorem. Minus vel et distinctio. Hic et repudiandae ut nam autem repellat aliquid. Ea perspiciatis molestias et veritatis sed nostrum.', 'Sint consequatur voluptatibus cum repellendus sunt exercitationem. Aut dolore quia debitis non modi deserunt minus. Tenetur corporis quia pariatur et. Quam debitis doloribus non veritatis et aut qui. Voluptatem et eius est nobis rerum molestiae laudantium doloremque. Omnis aperiam rerum voluptatem enim aliquam omnis laboriosam. Consectetur possimus ea dolorem. Magni vel laborum et voluptatem quae.', '637.00', '600.00', 'DIGI143', 'inStock', 0, 0, 259, 'digital_20.jpg', NULL, 5, 1, 5, 'active', 'Hic ratione odio doloribus.', 'Voluptatem quo ea repudiandae suscipit veritatis. Nemo quis quis aut.', 'Omnis ex nostrum debitis. Natus temporibus error harum cum. Corporis consequuntur quia ipsa.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(21, 'omnis aut fuga magnam', 'omnis-aut-fuga-magnam', 'Sit nobis quisquam doloribus vel voluptas. Sit sequi facere illum pariatur voluptates. Expedita itaque nihil est qui. Et nam itaque architecto dolor porro. Sed nam suscipit at vero voluptate.', 'Aut praesentium quos voluptatibus nemo nesciunt. At natus similique quod maxime necessitatibus doloremque. Sed reprehenderit et est omnis reiciendis ut. Ut cupiditate qui qui est et. Et sit consequatur autem est. Dolorem eos at eligendi est qui. Nihil omnis at quo dolorem aliquam eius in. Cumque laborum beatae ducimus est quis quas quia. Consequatur autem id voluptates magnam temporibus fugit amet esse. Ea et ad rerum modi.', '670.00', '600.00', 'DIGI193', 'inStock', 0, 0, 435, 'digital_12.jpg', NULL, 3, 4, 3, 'active', 'Beatae velit velit molestias quisquam.', 'Molestiae exercitationem tempore consequatur minus.', 'Expedita vel iusto provident tempore ab dolore. Et iusto voluptates quidem exercitationem itaque.', '2021-09-01 00:58:52', '2021-09-01 00:58:52'),
(22, 'hic eaque excepturi earum', 'hic-eaque-excepturi-earum', 'Quis rerum voluptatem doloribus nihil repellendus officiis. Et itaque dicta soluta repellendus qui natus nihil. Neque repellendus occaecati officia voluptatem.', 'Nihil saepe deleniti est quia sit. Quo quia et repudiandae ut quos qui doloremque quasi. Non odit est delectus culpa. Aperiam necessitatibus occaecati ut omnis ea aliquam atque. Eos qui dolore sit ducimus non eum rerum culpa. Eum qui itaque dolor. Maiores aut repellendus tempore. Pariatur ad ut magni debitis quisquam doloremque iusto. Suscipit dolores dolores fuga officia magni ipsa nostrum.', '884.00', '850.00', 'DIGI141', 'inStock', 0, 0, 334, 'digital_17.jpg', NULL, 1, 4, 5, 'active', 'Quas molestias voluptatem quia.', 'Voluptatum porro ut corporis magnam ut recusandae.', 'Sed ipsam ut iure non. Ducimus sed possimus eos. Perspiciatis quia atque reprehenderit placeat.', '2021-09-01 00:58:52', '2021-09-01 00:58:52');

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
('Sj1FDYQt2iRSWdMdlefAAdiFMC9xZbSjM1xx62Wn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiMXNGQ0pwQmVvTE14c1Y0ZnZic3BGbW5ZZGlCQzN3Q0g0dDZlVDZRZyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL3Byb2R1Y3RzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jYXRlZ29yeS9hZGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidVR5cGUiO3M6MzoiYWRtIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJENHRER3bTJ4bjhwYVpLMnYwa0hmUE8yT0FLQWdnS3NqelRYZThSZU15dEhRQjdNVDllZG5xIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRDR0REd20yeG44cGFaSzJ2MGtIZlBPMk9BS0FnZ0tzanpUWGU4UmVNeXRIUUI3TVQ5ZWRucSI7fQ==', 1630683187);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
