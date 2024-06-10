-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 juin 2024 à 00:03
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservations`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste_show`
--

CREATE TABLE `artiste_show` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `show_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artiste_show`
--

INSERT INTO `artiste_show` (`id`, `artist_id`, `show_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 3, NULL, NULL),
(8, 8, 3, NULL, NULL),
(9, 9, 3, NULL, NULL),
(10, 10, 4, NULL, NULL),
(11, 11, 4, NULL, NULL),
(12, 12, 4, NULL, NULL),
(13, 13, 5, NULL, NULL),
(14, 14, 5, NULL, NULL),
(15, 15, 5, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 2, NULL, NULL),
(18, 1, 3, NULL, NULL),
(19, 2, 4, NULL, NULL),
(20, 3, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `artiste_type`
--

CREATE TABLE `artiste_type` (
  `id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `artiste_type`
--

INSERT INTO `artiste_type` (`id`, `artist_id`, `type_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 3, 1),
(7, 4, 2),
(8, 5, 3),
(9, 6, 3),
(10, 7, 3),
(11, 8, 3),
(12, 9, 3),
(13, 10, 1),
(14, 10, 3),
(15, 11, 2),
(16, 12, 1),
(17, 12, 3),
(18, 13, 1),
(19, 13, 3),
(20, 14, 1),
(21, 15, 2),
(22, 16, 3),
(23, 17, 3);

-- --------------------------------------------------------

--
-- Structure de la table `artiste_type_show`
--

CREATE TABLE `artiste_type_show` (
  `id` int(11) NOT NULL,
  `artiste_type_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `artiste_type_show`
--

INSERT INTO `artiste_type_show` (`id`, `artiste_type_id`, `show_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 5, 4),
(21, 20, 5),
(22, 21, 5),
(23, 22, 5),
(24, 23, 5);

-- --------------------------------------------------------

--
-- Structure de la table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `artists`
--

INSERT INTO `artists` (`id`, `firstname`, `lastname`) VALUES
(1, 'Daniel', 'Marcelin'),
(2, 'Philipe', 'Laurent'),
(3, 'Marius', 'Von Mayenburg'),
(4, 'Olivier', 'Boudon'),
(5, 'Anne Marie', 'Loop'),
(6, 'Pietro', 'Varasso'),
(7, 'Laurent', 'Caron'),
(8, 'Élena', 'Perez'),
(9, 'Guillaume', 'Alexandre'),
(10, 'Claude', 'Semal'),
(11, 'Laurence', 'Warin'),
(12, 'Pierre', 'Wayburn'),
(13, 'Gwendoline', 'Gauthier'),
(14, 'Slawomir', 'Mrozek'),
(15, 'Najib', 'Ghallale'),
(16, 'Rachid', 'Benbouchta'),
(17, 'Mohamed', 'Ouachen');

-- --------------------------------------------------------

--
-- Structure de la table `localities`
--

CREATE TABLE `localities` (
  `id` int(11) NOT NULL,
  `postal_code` varchar(6) NOT NULL,
  `locality` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `localities`
--

INSERT INTO `localities` (`id`, `postal_code`, `locality`) VALUES
(1, '1000', 'Bruxelles'),
(2, '1050', 'Ixelles');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `address` varchar(255) NOT NULL,
  `locality_id` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id`, `slug`, `designation`, `address`, `locality_id`, `website`, `phone`) VALUES
(1, 'espace-delvaux', 'Espace Delvaux', 'rue du Port 15', 1, '', ''),
(2, 'dexia-media-center', 'Dexia Media Center', 'avenue des Arts 450', 2, '', ''),
(3, 'la-samaritaine', 'La Samaritaine', '16 rue de la samaritaine', 1, '', ''),
(4, 'espace-magh', 'Espace Magh', '17 rue du Poinçon', 1, 'http://www.espacemagh.be', '+32 (0)2 274 05 10'),
(5, 'centre-culturel-des-riches-claires', 'Centre culturel des Riches-Claires', '24 rue des Riches-Claires', 1, 'http://www.lesrichesclaires.be/', '02/548 25 70');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_05_30_164148_create_users_table', 1),
(2, '2024_05_30_173808_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prices`
--

INSERT INTO `prices` (`id`, `type`, `price`, `start_date`, `end_date`) VALUES
(1, 'Adulte', 24.00, '2020-01-01', '2021-12-31'),
(2, 'Senior', 22.00, '2020-01-01', NULL),
(3, 'Étudiant', 10.00, '2020-01-01', NULL),
(5, 'Adulte', 26.00, '2022-01-01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `representations`
--

CREATE TABLE `representations` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `schedule` datetime NOT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `representations`
--

INSERT INTO `representations` (`id`, `show_id`, `schedule`, `location_id`) VALUES
(1, 1, '2012-10-12 13:30:00', 1),
(2, 1, '2012-10-12 20:30:00', 2),
(4, 2, '2012-10-02 20:30:00', 1),
(5, 2, '2012-10-03 20:30:00', 2),
(6, 2, '2012-10-04 20:30:00', 1),
(7, 2, '2012-10-05 20:30:00', 2),
(8, 2, '2012-10-06 20:30:00', 2),
(9, 2, '2012-10-09 20:30:00', 2),
(10, 2, '2012-10-10 20:30:00', 1),
(11, 2, '2012-10-11 20:30:00', 1),
(12, 2, '2012-10-12 20:30:00', 2),
(13, 2, '2012-10-13 20:30:00', 1),
(14, 3, '2012-10-16 20:30:00', 2),
(15, 3, '2012-10-18 20:30:00', 1),
(16, 3, '2012-10-19 20:30:00', 2),
(17, 3, '2012-10-20 20:30:00', 1),
(18, 3, '2012-10-23 20:30:00', 2),
(19, 3, '2012-10-25 20:30:00', 1),
(20, 3, '2012-10-26 20:30:00', 2),
(21, 3, '2012-10-27 20:30:00', 1),
(22, 4, '2012-01-29 20:30:00', 1),
(23, 4, '2012-01-30 20:30:00', 1),
(24, 4, '2012-01-31 20:30:00', 1),
(25, 4, '2012-02-01 20:30:00', 2),
(26, 4, '2012-02-02 20:30:00', 1),
(27, 4, '2012-02-03 20:30:00', NULL),
(28, 4, '2012-02-04 20:30:00', NULL),
(29, 4, '2012-02-05 20:30:00', NULL),
(30, 4, '2012-02-06 20:30:00', NULL),
(31, 4, '2012-02-07 20:30:00', NULL),
(32, 4, '2012-02-08 20:30:00', NULL),
(33, 4, '2012-02-09 20:30:00', NULL),
(34, 4, '2012-02-10 20:30:00', NULL),
(35, 4, '2012-02-11 20:30:00', NULL),
(36, 4, '2012-02-12 20:30:00', NULL),
(37, 4, '2012-02-13 20:30:00', NULL),
(38, 4, '2012-02-14 20:30:00', NULL),
(39, 4, '2012-02-15 20:30:00', NULL),
(40, 4, '2012-02-16 20:30:00', NULL),
(41, 5, '2012-01-29 20:30:00', NULL),
(42, 5, '2012-01-30 20:30:00', NULL),
(43, 5, '2012-01-31 20:30:00', NULL),
(44, 5, '2012-02-01 20:30:00', NULL),
(45, 5, '2012-02-02 20:30:00', NULL),
(46, 5, '2012-02-03 20:30:00', NULL),
(47, 5, '2012-02-04 20:30:00', NULL),
(48, 5, '2012-02-05 20:30:00', NULL),
(49, 5, '2012-02-06 20:30:00', NULL),
(50, 5, '2012-02-07 20:30:00', NULL),
(51, 5, '2012-02-08 20:30:00', NULL),
(52, 5, '2012-02-09 20:30:00', NULL),
(53, 5, '2012-02-10 20:30:00', NULL),
(54, 5, '2012-02-11 20:30:00', NULL),
(55, 5, '2012-02-12 20:30:00', NULL),
(56, 5, '2012-02-13 20:30:00', NULL),
(57, 5, '2012-02-14 20:30:00', NULL),
(58, 5, '2012-02-15 20:30:00', NULL),
(59, 5, '2012-02-16 20:30:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `representation_reservation`
--

CREATE TABLE `representation_reservation` (
  `id` int(11) NOT NULL,
  `representation_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `representation_reservation`
--

INSERT INTO `representation_reservation` (`id`, `representation_id`, `reservation_id`, `price_id`, `quantity`) VALUES
(2, 5, 1, 1, 2),
(3, 14, 2, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(60) DEFAULT NULL,
  `representation_id` bigint(20) UNSIGNED NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `booking_date`, `status`, `representation_id`, `updated_at`, `created_at`, `quantity`, `price_id`) VALUES
(6, 1, '2024-06-05 00:00:00', 'test', 4, '2024-06-05 18:48:47', '2024-06-05 18:48:47', 3, 1),
(7, 1, '2024-06-05 00:00:00', 'test enfants', 4, '2024-06-05 18:48:58', '2024-06-05 18:48:58', 5, 3),
(8, 1, '2024-06-06 00:00:00', 'eq', 41, '2024-06-05 20:09:23', '2024-06-05 20:09:23', 3, 2),
(9, 1, '2024-06-06 00:00:00', 'hello wolrd', 1, '2024-06-05 20:13:16', '2024-06-05 20:13:16', 3, 3),
(10, 1, '2024-06-06 00:00:00', 'test stripe', 1, '2024-06-05 21:08:09', '2024-06-05 21:08:09', 10, 5),
(11, 5, '2024-06-06 00:00:00', 'test stripe adulte', 2, '2024-06-05 21:09:13', '2024-06-05 21:09:13', 1, 1),
(12, 8, '2024-06-06 00:00:00', 'test justin', 1, '2024-06-05 22:43:26', '2024-06-05 22:43:26', 3, 1),
(13, 8, '2024-06-07 00:00:00', 'test justin', 49, '2024-06-05 23:59:16', '2024-06-05 23:59:16', 2565, 1),
(14, 8, '2024-06-07 00:00:00', 'test justin', 1, '2024-06-06 00:03:02', '2024-06-06 00:03:02', 555, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `stars` tinyint(5) UNSIGNED NOT NULL,
  `validated` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `show_id`, `review`, `stars`, `validated`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Intéressant...', 4, 0, '2023-04-02 02:42:57', '2023-04-02 02:42:57');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'member'),
(3, 'affiliate'),
(4, 'press');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CGCFhuatUBeMz00NZo0aaaVBimUbzrfp5xbrsiXc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3oxbTJIcFlpT3NydjBGR3d3MkxBN1BkaXdHQndhWGVTS01ydVVqMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717711075),
('nCuVj24OJCO0fEQQAi08TKnlGzQsWVZkhKZCv5SX', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUzZabnY2d2MxREhMNkY1REZIZFFselVGdHI0VlBNMUpLb25pRHpmdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXNlcnZhdGlvbnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1717639383);

-- --------------------------------------------------------

--
-- Structure de la table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `title` varchar(255) NOT NULL,
  `poster_url` varchar(255) NOT NULL,
  `duration` smallint(5) UNSIGNED NOT NULL,
  `created_in` year(4) NOT NULL,
  `location_id` int(11) NOT NULL,
  `bookable` tinyint(1) NOT NULL COMMENT 'Réservable?'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `shows`
--

INSERT INTO `shows` (`id`, `slug`, `title`, `poster_url`, `duration`, `created_in`, `location_id`, `bookable`) VALUES
(1, 'ayiti', 'Ayiti', '/shows/ayiti.jpg', 90, '2010', 1, 1),
(2, 'cible-mouvante', 'Cible mouvante', '/shows/cible-mouvante.jpg', 75, '2018', 2, 1),
(3, 'ceci-n-est-pas-un-chanteur-belge', 'Ceci n est pas un chanteur belge', '/shows/pasunchanteurbelge.jpg', 80, '2012', 5, 1),
(4, 'manneke', 'Manneke', '/shows/wayburn-manneke.jpg', 80, '2012', 3, 1),
(5, 'emigres', 'Émigrés', '/shows/emigres.jpg', 90, '2012', 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'auteur'),
(2, 'scénographe'),
(3, 'acteur'),
(4, 'comédien'),
(5, 'artiste');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `langue` varchar(2) NOT NULL DEFAULT 'fr',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `email`, `langue`, `email_verified_at`, `password`, `firstname`, `lastname`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'admin', '', 'admin@example.com', 'en', NULL, '$2y$10$YxoSs42MgzOmPBBKE1cc0.kvWV68V2kNNMzZGf81E9Dmq9CspqfSC', 'Bob', 'Sull', NULL, NULL, NULL, 0),
(2, 'julia', '', 'membre@example.com', 'fr', NULL, '$2y$10$3qmGT/g5Uz3T8mH.un59Uev2exfAbgAbG.HSKl.Gr35FDAMZTA8hq', 'Julia', 'Smith', NULL, NULL, NULL, 0),
(3, 'fred', '', 'fred@sull.com', 'fr', NULL, '$2y$10$3qmGT/g5Uz3T8mH.un59Uev2exfAbgAbG.HSKl.Gr35FDAMZTA8hq', 'Fred', 'Sull', NULL, NULL, NULL, 0),
(4, 'mike', '', 'mike@sull.com', 'fr', NULL, '$2y$10$3qmGT/g5Uz3T8mH.un59Uev2exfAbgAbG.HSKl.Gr35FDAMZTA8hq', 'Mike', 'Sull', NULL, NULL, NULL, 0),
(5, 'jozefsako', NULL, 'jozef.sako@gmail.com', 'fr', NULL, '$2y$12$CK.a4.QRoPnrCFTnal1N.eud4Pmyjd8lfBgwOiikSCFnRpLIkt8dC', 'jozef', 'sako', NULL, '2024-05-30 15:03:33', '2024-05-30 15:03:33', 1),
(6, 'sakojozef', NULL, 'sako.jozef@gmail.com', 'fr', NULL, '$2y$12$/0Df8eDIZwUcEqx3lO.Px.Ti0uVzfn0SLJRQv9frlVuQ.eYBCPoRG', 'jozef', 'sako', NULL, '2024-05-30 16:13:17', '2024-05-30 16:13:17', 0),
(7, 'jojo', NULL, 'jozef.sako2@gmail.com', 'fr', NULL, '$2y$12$yVbSRFREbirK0MohTip6Ie8JM1dtEb2lBn7cLnKvljmbvc5Minjn6', 'jozef sako aka jojo', 'jojo', NULL, '2024-06-04 15:44:43', '2024-06-04 15:44:43', 0),
(8, 'justin', NULL, 'justin.ghatas@gmail.com', 'fr', NULL, '$2y$12$x6BMvlKsXie4Sa7S/zq6aujWl.Lfwet/.bv5sJrGPcCjceo0i7BM6', 'JUSTIN', 'GHATAS', NULL, '2024-06-05 22:15:33', '2024-06-05 22:15:33', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `artiste_show`
--
ALTER TABLE `artiste_show`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `artiste_type`
--
ALTER TABLE `artiste_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Index pour la table `artiste_type_show`
--
ALTER TABLE `artiste_type_show`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_id` (`show_id`),
  ADD KEY `artiste_type_id` (`artiste_type_id`);

--
-- Index pour la table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `localities`
--
ALTER TABLE `localities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_code` (`postal_code`),
  ADD UNIQUE KEY `locality` (`locality`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `localite_id` (`locality_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `representations`
--
ALTER TABLE `representations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Index pour la table `representation_reservation`
--
ALTER TABLE `representation_reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `price_id` (`price_id`),
  ADD KEY `representation_id` (`representation_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `location_id` (`location_id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artiste_show`
--
ALTER TABLE `artiste_show`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `artiste_type`
--
ALTER TABLE `artiste_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `artiste_type_show`
--
ALTER TABLE `artiste_type_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `localities`
--
ALTER TABLE `localities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `representations`
--
ALTER TABLE `representations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
