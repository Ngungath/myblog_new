-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2019 at 10:20 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'WordPress', '2018-12-15 07:17:13', '2018-12-15 07:17:13'),
(2, 'Laravel', '2018-12-15 07:17:20', '2018-12-15 07:17:20'),
(3, 'Career', '2018-12-15 07:17:30', '2018-12-15 07:17:30'),
(4, 'Toutorials', '2018-12-15 07:17:39', '2018-12-15 07:17:39'),
(5, 'Code Igniter', '2018-12-15 07:18:06', '2018-12-15 07:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_resets_table', 1),
(52, '2018_12_07_200124_create_posts_table', 1),
(53, '2018_12_07_200357_create_categories_table', 1),
(54, '2018_12_11_121913_create_tags_table', 1),
(55, '2018_12_11_195237_create_post_tag_table', 1),
(56, '2018_12_12_095004_create_profiles_table', 1),
(57, '2018_12_15_022627_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `featured`, `slug`, `category_id`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Working with a lot of effort', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie mi id orci egestas facilisis. Vestibulum id euismod dolor, id hendrerit ligula. Aliquam lobortis malesuada metus. Aliquam erat volutpat. Donec leo massa, suscipit vitae mollis vitae, maximus ut massa. Etiam egestas lobortis vulputate. Phasellus ut sagittis purus. Proin nunc ex, varius ac felis ac, blandit vulputate nibh. Cras eget lacinia erat. Vestibulum convallis odio eu ligula euismod, a fringilla felis mattis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Aliquam non metus accumsan, viverra arcu at, tempor massa. Curabitur in risus mauris. Vivamus vestibulum finibus interdum. In eros tortor, pulvinar ut dignissim nec, fermentum non lorem. Maecenas egestas, orci a ultricies vehicula, sapien augue pharetra turpis, sit amet porta risus urna sit amet lacus. Mauris felis erat, dictum quis massa at, egestas commodo risus. Proin scelerisque lectus id laoreet luctus. Sed lobortis in enim ut ultrices. Praesent mattis venenatis porttitor. Integer laoreet magna consectetur, eleifend nulla in, eleifend lorem. Mauris dapibus diam quis dui convallis, vel malesuada est lacinia. Duis vitae lectus facilisis, facilisis diam ut, vehicula felis. Nam tortor felis, aliquet elementum pulvinar sed, sollicitudin ac ipsum. Mauris ut pharetra odio, ut porttitor metus. Duis blandit orci at fermentum pretium.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Pellentesque odio lectus, sodales eget mollis quis, placerat at enim. Praesent in ullamcorper urna. Curabitur ligula nunc, fringilla sit amet ante vel, tincidunt maximus nulla. Vestibulum euismod, nisl eget malesuada tristique, nisi leo finibus ex, at pharetra dolor lacus vel metus. Suspendisse potenti. Vestibulum id lectus ipsum. Proin vehicula erat sit amet luctus sodales. Ut neque nisl, ultrices ut placerat at, venenatis eget odio. Nulla facilisi. Donec dolor elit, consequat sit amet feugiat tristique, varius pharetra risus. Nulla est tortor, rutrum sed fringilla ut, scelerisque viverra neque. Integer eget aliquet nulla. Vivamus sollicitudin rutrum libero. Morbi ullamcorper orci at quam dictum, et posuere massa imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Donec dapibus venenatis aliquet. In eget blandit ex, ac feugiat tortor. Quisque ultricies enim massa. In ac ipsum magna. Donec sit amet neque sagittis, facilisis purus vel, luctus magna. Donec viverra at ante eget dapibus. Pellentesque non blandit metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas eu est et arcu sagittis rhoncus. Vivamus sed tortor congue, porttitor ex at, mollis ante. Fusce ante nisl, interdum et magna sed, suscipit dictum dolor. Donec placerat sapien eu lacinia semper. Donec pellentesque purus at porttitor scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">In augue enim, lacinia quis est vel, lacinia laoreet odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec nisl ultricies, dapibus erat in, congue metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas eu sem nec felis finibus convallis. Nullam sed lacus accumsan, tincidunt sem quis, hendrerit nisl. Nam efficitur, eros at scelerisque semper, erat elit facilisis leo, vel viverra est nulla ut ligula. In hac habitasse platea dictumst.</p>', 'uploads/posts/15448768026.jpg', 'working-with-a-lot-of-effort', 3, 1, NULL, '2018-12-15 07:27:17', '2018-12-15 09:26:42'),
(2, 'Installing new plugin on laravel', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie mi id orci egestas facilisis. Vestibulum id euismod dolor, id hendrerit ligula. Aliquam lobortis malesuada metus. Aliquam erat volutpat. Donec leo massa, suscipit vitae mollis vitae, maximus ut massa. Etiam egestas lobortis vulputate. Phasellus ut sagittis purus. Proin nunc ex, varius ac felis ac, blandit vulputate nibh. Cras eget lacinia erat. Vestibulum convallis odio eu ligula euismod, a fringilla felis mattis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aliquam non metus accumsan, viverra arcu at, tempor massa. Curabitur in risus mauris. Vivamus vestibulum finibus interdum. In eros tortor, pulvinar ut dignissim nec, fermentum non lorem. Maecenas egestas, orci a ultricies vehicula, sapien augue pharetra turpis, sit amet porta risus urna sit amet lacus. Mauris felis erat, dictum quis massa at, egestas commodo risus. Proin scelerisque lectus id laoreet luctus. Sed lobortis in enim ut ultrices. Praesent mattis venenatis porttitor. Integer laoreet magna consectetur, eleifend nulla in, eleifend lorem. Mauris dapibus diam quis dui convallis, vel malesuada est lacinia. Duis vitae lectus facilisis, facilisis diam ut, vehicula felis. Nam tortor felis, aliquet elementum pulvinar sed, sollicitudin ac ipsum. Mauris ut pharetra odio, ut porttitor metus. Duis blandit orci at fermentum pretium.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pellentesque odio lectus, sodales eget mollis quis, placerat at enim. Praesent in ullamcorper urna. Curabitur ligula nunc, fringilla sit amet ante vel, tincidunt maximus nulla. Vestibulum euismod, nisl eget malesuada tristique, nisi leo finibus ex, at pharetra dolor lacus vel metus. Suspendisse potenti. Vestibulum id lectus ipsum. Proin vehicula erat sit amet luctus sodales. Ut neque nisl, ultrices ut placerat at, venenatis eget odio. Nulla facilisi. Donec dolor elit, consequat sit amet feugiat tristique, varius pharetra risus. Nulla est tortor, rutrum sed fringilla ut, scelerisque viverra neque. Integer eget aliquet nulla. Vivamus sollicitudin rutrum libero. Morbi ullamcorper orci at quam dictum, et posuere massa imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec dapibus venenatis aliquet. In eget blandit ex, ac feugiat tortor. Quisque ultricies enim massa. In ac ipsum magna. Donec sit amet neque sagittis, facilisis purus vel, luctus magna. Donec viverra at ante eget dapibus. Pellentesque non blandit metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas eu est et arcu sagittis rhoncus. Vivamus sed tortor congue, porttitor ex at, mollis ante. Fusce ante nisl, interdum et magna sed, suscipit dictum dolor. Donec placerat sapien eu lacinia semper. Donec pellentesque purus at porttitor scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">In augue enim, lacinia quis est vel, lacinia laoreet odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec nisl ultricies, dapibus erat in, congue metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas eu sem nec felis finibus convallis. Nullam sed lacus accumsan, tincidunt sem quis, hendrerit nisl. Nam efficitur, eros at scelerisque semper, erat elit facilisis leo, vel viverra est nulla ut ligula. In hac habitasse platea dictumst.</p>', 'uploads/posts/15448703891.png', 'installing-new-plugin-on-laravel', 2, 1, NULL, '2018-12-15 07:39:49', '2018-12-15 07:39:49'),
(3, 'Laravel and Vue JS in Action', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie mi id orci egestas facilisis. Vestibulum id euismod dolor, id hendrerit ligula. Aliquam lobortis malesuada metus. Aliquam erat volutpat. Donec leo massa, suscipit vitae mollis vitae, maximus ut massa. Etiam egestas lobortis vulputate. Phasellus ut sagittis purus. Proin nunc ex, varius ac felis ac, blandit vulputate nibh. Cras eget lacinia erat. Vestibulum convallis odio eu ligula euismod, a fringilla felis mattis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aliquam non metus accumsan, viverra arcu at, tempor massa. Curabitur in risus mauris. Vivamus vestibulum finibus interdum. In eros tortor, pulvinar ut dignissim nec, fermentum non lorem. Maecenas egestas, orci a ultricies vehicula, sapien augue pharetra turpis, sit amet porta risus urna sit amet lacus. Mauris felis erat, dictum quis massa at, egestas commodo risus. Proin scelerisque lectus id laoreet luctus. Sed lobortis in enim ut ultrices. Praesent mattis venenatis porttitor. Integer laoreet magna consectetur, eleifend nulla in, eleifend lorem. Mauris dapibus diam quis dui convallis, vel malesuada est lacinia. Duis vitae lectus facilisis, facilisis diam ut, vehicula felis. Nam tortor felis, aliquet elementum pulvinar sed, sollicitudin ac ipsum. Mauris ut pharetra odio, ut porttitor metus. Duis blandit orci at fermentum pretium.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pellentesque odio lectus, sodales eget mollis quis, placerat at enim. Praesent in ullamcorper urna. Curabitur ligula nunc, fringilla sit amet ante vel, tincidunt maximus nulla. Vestibulum euismod, nisl eget malesuada tristique, nisi leo finibus ex, at pharetra dolor lacus vel metus. Suspendisse potenti. Vestibulum id lectus ipsum. Proin vehicula erat sit amet luctus sodales. Ut neque nisl, ultrices ut placerat at, venenatis eget odio. Nulla facilisi. Donec dolor elit, consequat sit amet feugiat tristique, varius pharetra risus. Nulla est tortor, rutrum sed fringilla ut, scelerisque viverra neque. Integer eget aliquet nulla. Vivamus sollicitudin rutrum libero. Morbi ullamcorper orci at quam dictum, et posuere massa imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec dapibus venenatis aliquet. In eget blandit ex, ac feugiat tortor. Quisque ultricies enim massa. In ac ipsum magna. Donec sit amet neque sagittis, facilisis purus vel, luctus magna. Donec viverra at ante eget dapibus. Pellentesque non blandit metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas eu est et arcu sagittis rhoncus. Vivamus sed tortor congue, porttitor ex at, mollis ante. Fusce ante nisl, interdum et magna sed, suscipit dictum dolor. Donec placerat sapien eu lacinia semper. Donec pellentesque purus at porttitor scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">In augue enim, lacinia quis est vel, lacinia laoreet odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec nisl ultricies, dapibus erat in, congue metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas eu sem nec felis finibus convallis. Nullam sed lacus accumsan, tincidunt sem quis, hendrerit nisl. Nam efficitur, eros at scelerisque semper, erat elit facilisis leo, vel viverra est nulla ut ligula. In hac habitasse platea dictumst.</p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><ul><li style=\"margin: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li><li style=\"margin: 0px; padding: 0px;\">Aliquam at leo vestibulum, aliquam lectus feugiat, pharetra erat.</li><li style=\"margin: 0px; padding: 0px;\">Nunc eget libero iaculis, ultrices justo ac, pellentesque sem.</li><li style=\"margin: 0px; padding: 0px;\">Etiam eget felis interdum, pretium enim eget, maximus nunc.</li><li style=\"margin: 0px; padding: 0px;\">Quisque at ex varius, laoreet diam quis, porttitor orci.</li></ul><ul><li style=\"margin: 0px; padding: 0px;\">Quisque in leo euismod, interdum justo nec, molestie sem.</li><li style=\"margin: 0px; padding: 0px;\">Morbi ut arcu nec libero dapibus blandit.</li><li style=\"margin: 0px; padding: 0px;\">Sed quis leo vitae ex faucibus pellentesque nec id erat.</li></ul><ul><li style=\"margin: 0px; padding: 0px;\">Suspendisse vulputate dolor vitae eros vehicula tempus.</li><li style=\"margin: 0px; padding: 0px;\">Fusce tempor nisi eu mi tincidunt ultrices.</li><li style=\"margin: 0px; padding: 0px;\">Suspendisse bibendum turpis eget metus condimentum, in tincidunt turpis aliquet.</li><li style=\"margin: 0px; padding: 0px;\">Quisque id eros in enim feugiat fermentum.</li><li style=\"margin: 0px; padding: 0px;\">Suspendisse auctor sapien non dignissim rhoncus.</li><li style=\"margin: 0px; padding: 0px;\">Mauris eu lorem et mauris porttitor dignissim.</li></ul></ul>', 'uploads/posts/15448744506.jpg', 'laravel-and-vue-js-in-action', 2, 1, NULL, '2018-12-15 08:47:30', '2018-12-15 08:47:30'),
(4, 'Become a Technology Evagelist', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie mi id orci egestas facilisis. Vestibulum id euismod dolor, id hendrerit ligula. Aliquam lobortis malesuada metus. Aliquam erat volutpat. Donec leo massa, suscipit vitae mollis vitae, maximus ut massa. Etiam egestas lobortis vulputate. Phasellus ut sagittis purus. Proin nunc ex, varius ac felis ac, blandit vulputate nibh. Cras eget lacinia erat. Vestibulum convallis odio eu ligula euismod, a fringilla felis mattis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Aliquam non metus accumsan, viverra arcu at, tempor massa. Curabitur in risus mauris. Vivamus vestibulum finibus interdum. In eros tortor, pulvinar ut dignissim nec, fermentum non lorem. Maecenas egestas, orci a ultricies vehicula, sapien augue pharetra turpis, sit amet porta risus urna sit amet lacus. Mauris felis erat, dictum quis massa at, egestas commodo risus. Proin scelerisque lectus id laoreet luctus. Sed lobortis in enim ut ultrices. Praesent mattis venenatis porttitor. Integer laoreet magna consectetur, eleifend nulla in, eleifend lorem. Mauris dapibus diam quis dui convallis, vel malesuada est lacinia. Duis vitae lectus facilisis, facilisis diam ut, vehicula felis. Nam tortor felis, aliquet elementum pulvinar sed, sollicitudin ac ipsum. Mauris ut pharetra odio, ut porttitor metus. Duis blandit orci at fermentum pretium.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Pellentesque odio lectus, sodales eget mollis quis, placerat at enim. Praesent in ullamcorper urna. Curabitur ligula nunc, fringilla sit amet ante vel, tincidunt maximus nulla. Vestibulum euismod, nisl eget malesuada tristique, nisi leo finibus ex, at pharetra dolor lacus vel metus. Suspendisse potenti. Vestibulum id lectus ipsum. Proin vehicula erat sit amet luctus sodales. Ut neque nisl, ultrices ut placerat at, venenatis eget odio. Nulla facilisi. Donec dolor elit, consequat sit amet feugiat tristique, varius pharetra risus. Nulla est tortor, rutrum sed fringilla ut, scelerisque viverra neque. Integer eget aliquet nulla. Vivamus sollicitudin rutrum libero. Morbi ullamcorper orci at quam dictum, et posuere massa imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Donec dapibus venenatis aliquet. In eget blandit ex, ac feugiat tortor. Quisque ultricies enim massa. In ac ipsum magna. Donec sit amet neque sagittis, facilisis purus vel, luctus magna. Donec viverra at ante eget dapibus. Pellentesque non blandit metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas eu est et arcu sagittis rhoncus. Vivamus sed tortor congue, porttitor ex at, mollis ante. Fusce ante nisl, interdum et magna sed, suscipit dictum dolor. Donec placerat sapien eu lacinia semper. Donec pellentesque purus at porttitor scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">In augue enim, lacinia quis est vel, lacinia laoreet odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec nisl ultricies, dapibus erat in, congue metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas eu sem nec felis finibus convallis. Nullam sed lacus accumsan, tincidunt sem quis, hendrerit nisl. Nam efficitur, eros at scelerisque semper, erat elit facilisis leo, vel viverra est nulla ut ligula. In hac habitasse platea dictumst.</p>', 'uploads/posts/15449365695.jpg', 'become-a-technology-evagelist', 3, 1, NULL, '2018-12-16 02:02:49', '2018-12-16 02:02:49'),
(5, 'Maintain Application state in JavaScript', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie mi id orci egestas facilisis. Vestibulum id euismod dolor, id hendrerit ligula. Aliquam lobortis malesuada metus. Aliquam erat volutpat. Donec leo massa, suscipit vitae mollis vitae, maximus ut massa. Etiam egestas lobortis vulputate. Phasellus ut sagittis purus. Proin nunc ex, varius ac felis ac, blandit vulputate nibh. Cras eget lacinia erat. Vestibulum convallis odio eu ligula euismod, a fringilla felis mattis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Aliquam non metus accumsan, viverra arcu at, tempor massa. Curabitur in risus mauris. Vivamus vestibulum finibus interdum. In eros tortor, pulvinar ut dignissim nec, fermentum non lorem. Maecenas egestas, orci a ultricies vehicula, sapien augue pharetra turpis, sit amet porta risus urna sit amet lacus. Mauris felis erat, dictum quis massa at, egestas commodo risus. Proin scelerisque lectus id laoreet luctus. Sed lobortis in enim ut ultrices. Praesent mattis venenatis porttitor. Integer laoreet magna consectetur, eleifend nulla in, eleifend lorem. Mauris dapibus diam quis dui convallis, vel malesuada est lacinia. Duis vitae lectus facilisis, facilisis diam ut, vehicula felis. Nam tortor felis, aliquet elementum pulvinar sed, sollicitudin ac ipsum. Mauris ut pharetra odio, ut porttitor metus. Duis blandit orci at fermentum pretium.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Pellentesque odio lectus, sodales eget mollis quis, placerat at enim. Praesent in ullamcorper urna. Curabitur ligula nunc, fringilla sit amet ante vel, tincidunt maximus nulla. Vestibulum euismod, nisl eget malesuada tristique, nisi leo finibus ex, at pharetra dolor lacus vel metus. Suspendisse potenti. Vestibulum id lectus ipsum. Proin vehicula erat sit amet luctus sodales. Ut neque nisl, ultrices ut placerat at, venenatis eget odio. Nulla facilisi. Donec dolor elit, consequat sit amet feugiat tristique, varius pharetra risus. Nulla est tortor, rutrum sed fringilla ut, scelerisque viverra neque. Integer eget aliquet nulla. Vivamus sollicitudin rutrum libero. Morbi ullamcorper orci at quam dictum, et posuere massa imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Donec dapibus venenatis aliquet. In eget blandit ex, ac feugiat tortor. Quisque ultricies enim massa. In ac ipsum magna. Donec sit amet neque sagittis, facilisis purus vel, luctus magna. Donec viverra at ante eget dapibus. Pellentesque non blandit metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas eu est et arcu sagittis rhoncus. Vivamus sed tortor congue, porttitor ex at, mollis ante. Fusce ante nisl, interdum et magna sed, suscipit dictum dolor. Donec placerat sapien eu lacinia semper. Donec pellentesque purus at porttitor scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">In augue enim, lacinia quis est vel, lacinia laoreet odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec nisl ultricies, dapibus erat in, congue metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas eu sem nec felis finibus convallis. Nullam sed lacus accumsan, tincidunt sem quis, hendrerit nisl. Nam efficitur, eros at scelerisque semper, erat elit facilisis leo, vel viverra est nulla ut ligula. In hac habitasse platea dictumst.</p>', 'uploads/posts/15449367001.png', 'maintain-application-state-in-javascript', 3, 1, NULL, '2018-12-16 02:05:00', '2018-12-16 02:05:00'),
(6, 'Dependency injection in la-ravel', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie mi id orci egestas facilisis. Vestibulum id euismod dolor, id hendrerit ligula. Aliquam lobortis malesuada metus. Aliquam erat volutpat. Donec leo massa, suscipit vitae mollis vitae, maximus ut massa. Etiam egestas lobortis vulputate. Phasellus ut sagittis purus. Proin nunc ex, varius ac felis ac, blandit vulputate nibh. Cras eget lacinia erat. Vestibulum convallis odio eu ligula euismod, a fringilla felis mattis.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Aliquam non metus accumsan, viverra arcu at, tempor massa. Curabitur in risus mauris. Vivamus vestibulum finibus interdum. In eros tortor, pulvinar ut dignissim nec, fermentum non lorem. Maecenas egestas, orci a ultricies vehicula, sapien augue pharetra turpis, sit amet porta risus urna sit amet lacus. Mauris felis erat, dictum quis massa at, egestas commodo risus. Proin scelerisque lectus id laoreet luctus. Sed lobortis in enim ut ultrices. Praesent mattis venenatis porttitor. Integer laoreet magna consectetur, eleifend nulla in, eleifend lorem. Mauris dapibus diam quis dui convallis, vel malesuada est lacinia. Duis vitae lectus facilisis, facilisis diam ut, vehicula felis. Nam tortor felis, aliquet elementum pulvinar sed, sollicitudin ac ipsum. Mauris ut pharetra odio, ut porttitor metus. Duis blandit orci at fermentum pretium.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Pellentesque odio lectus, sodales eget mollis quis, placerat at enim. Praesent in ullamcorper urna. Curabitur ligula nunc, fringilla sit amet ante vel, tincidunt maximus nulla. Vestibulum euismod, nisl eget malesuada tristique, nisi leo finibus ex, at pharetra dolor lacus vel metus. Suspendisse potenti. Vestibulum id lectus ipsum. Proin vehicula erat sit amet luctus sodales. Ut neque nisl, ultrices ut placerat at, venenatis eget odio. Nulla facilisi. Donec dolor elit, consequat sit amet feugiat tristique, varius pharetra risus. Nulla est tortor, rutrum sed fringilla ut, scelerisque viverra neque. Integer eget aliquet nulla. Vivamus sollicitudin rutrum libero. Morbi ullamcorper orci at quam dictum, et posuere massa imperdiet.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">Donec dapibus venenatis aliquet. In eget blandit ex, ac feugiat tortor. Quisque ultricies enim massa. In ac ipsum magna. Donec sit amet neque sagittis, facilisis purus vel, luctus magna. Donec viverra at ante eget dapibus. Pellentesque non blandit metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas eu est et arcu sagittis rhoncus. Vivamus sed tortor congue, porttitor ex at, mollis ante. Fusce ante nisl, interdum et magna sed, suscipit dictum dolor. Donec placerat sapien eu lacinia semper. Donec pellentesque purus at porttitor scelerisque.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\">In augue enim, lacinia quis est vel, lacinia laoreet odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec nisl ultricies, dapibus erat in, congue metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas eu sem nec felis finibus convallis. Nullam sed lacus accumsan, tincidunt sem quis, hendrerit nisl. Nam efficitur, eros at scelerisque semper, erat elit facilisis leo, vel viverra est nulla ut ligula. In hac habitasse platea dictumst.</p>', 'uploads/posts/15449367764.jpg', 'dependency-injection-in-la-ravel', 2, 1, '2018-12-18 08:44:38', '2018-12-16 02:06:16', '2018-12-18 08:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 3, 2, NULL, NULL),
(6, 4, 1, NULL, NULL),
(7, 4, 2, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 6, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `about`, `user_id`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '/uploads/avatar/1.jpg', 'Singer and social star who first became well known for her lorengray musical.ly account where she gained more than 28 million followers. She is also an actress, model and dancer. In March 2018, she signed with Virgin Records and she released her first single \"My Story\" later that year.  ', 1, 'facebook.com', 'youtube.com', '2018-12-15 04:30:30', '2018-12-15 04:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `site_logo`, `created_at`, `updated_at`) VALUES
(1, 'Gulio Tz', '+255754068563', 'daniel2ngungath@gmail.com', '8021 Arusha', '/uploads/site_images/site_logo.png', '2018-12-15 04:30:30', '2018-12-15 04:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Laravel 5.3', '2018-12-15 07:25:20', '2018-12-15 07:25:20'),
(2, 'Coding', '2018-12-15 07:25:33', '2018-12-15 07:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@blog.com', 1, '$2y$10$tVFo9gIYaokMh744wfmdQe454jdLdneyTTSbxXZSVHPifqfUyScwq', NULL, 'YwtlIcuHp9lD8eDkKjdrW0XSIO4JBeduB5ntZjtiFw0EhtJCKrPBt7PEGvFt', '2018-12-15 04:30:30', '2018-12-15 04:30:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
