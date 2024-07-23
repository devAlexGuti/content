-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2024 a las 16:10:45
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alex_crud`
--
CREATE DATABASE IF NOT EXISTS `alex_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alex_crud`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellidos`, `correo`, `celular`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Marco', 'Guti', 'agb@gmail.com', '923945432', '', '2022-02-19 03:05:36', '2022-02-19 03:05:36'),
(4, 'carlos', 'flores', 'cflores@gmail.com', '934203563', '', '2022-02-19 03:10:24', '2022-02-19 03:10:24'),
(5, 'juan', 'Prez', 'perezw@gmail.com', '034567345', '', '2022-02-19 03:13:18', '2022-02-19 03:13:18'),
(6, 'tarma', 'slug', 'slug@gmail.com', '345675675', '', '2022-02-19 03:19:08', '2022-02-19 03:19:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `frutas`
--

CREATE TABLE `frutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fruta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fruta_codigo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fruta_precio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fruta_cantidad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fruta_impuesto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `frutas`
--

INSERT INTO `frutas` (`id`, `fruta`, `fruta_codigo`, `fruta_precio`, `fruta_cantidad`, `fruta_impuesto`, `fecha`, `created_at`, `updated_at`) VALUES
(23, 'mango', 'hola', 'alex', 'hola', 'hola', 'lenovo', '2022-02-24 08:18:30', '2022-02-24 08:18:30'),
(24, 'sandia', 'hola', 'guti', 'hola', 'arroz', 'motorola', '2022-02-24 08:18:30', '2022-02-24 08:18:30'),
(25, 'papaya', 'hola', 'ejemplo', 'ejemplo', 'route', 'nokia', '2022-02-24 08:18:30', '2022-02-24 08:18:30'),
(26, 'platano', 'surf', 'futbol', 'italia', 'ipod', 'sony', '2022-02-24 08:18:30', '2022-02-24 08:18:30'),
(27, 'sandia', 'hola', 'guti', 'hola', 'arroz', 'LG', '2022-02-24 08:18:30', '2022-02-24 08:18:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_02_18_171959_create_estudiantes_table', 2),
(5, '2022_02_23_053546_create_frutas_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'admin@gmail.com', NULL, '$2y$10$6qKLKSBZpCYeACzGbvV6FOAblL85ygTRxglpJxFxiCaBk7/MzquNi', NULL, '2022-02-18 22:04:11', '2022-02-18 22:04:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `frutas`
--
ALTER TABLE `frutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `frutas`
--
ALTER TABLE `frutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `apivue`
--
CREATE DATABASE IF NOT EXISTS `apivue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apivue`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `descripcion`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Willy O\'Reilly', 'Quia ipsum dolore veritatis aut ut debitis. Laboriosam ea ad autem ut aut. Velit corporis corporis sint sunt omnis doloribus ut. Voluptatum itaque voluptates voluptatum error accusamus. Modi non sit quidem.', '864', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(2, 'Brown Jakubowski MD', 'Ut corrupti ea ut eaque ut ut est. Magnam in cupiditate aut cumque eum corrupti. Harum maiores aliquid voluptatem enim. Eum quos dignissimos dicta expedita mollitia.', '652', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(3, 'Gay Jenkins', 'Vitae aut esse alias qui architecto et neque. Consequatur cupiditate et voluptatem asperiores. Provident nulla maxime sed id suscipit. Minima laboriosam perferendis eum eaque. Quaerat libero numquam ex nostrum autem.', '469', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(4, 'Prof. Lupe Champlin', 'Et enim molestiae aliquid voluptate aspernatur. Est aperiam aliquam voluptate ex.', '710', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(5, 'Ramiro Ondricka Jr.', 'Atque et provident et officiis. Quas velit tempore ullam cupiditate consequatur quia provident. Et ut qui distinctio maiores. Odio voluptatibus error velit odit nisi architecto.', '623', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(6, 'Mrs. Vicenta Konopelski', 'Voluptatum laboriosam et est sit. Molestiae dolorem saepe magni minus. Rem corrupti et vitae et.', '634', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(7, 'Freda Howe', 'Perspiciatis nesciunt aut dolor cumque. Eligendi modi reprehenderit aut labore. Aliquid voluptatum ut necessitatibus velit nostrum enim eos.', '316', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(8, 'Ms. Dandre Wuckert DDS', 'Temporibus illum nesciunt et quibusdam deleniti ut quo aliquam. Veritatis tenetur est corrupti et aspernatur sint. Sed omnis sed expedita numquam magnam quibusdam. Aliquam dolores deserunt reprehenderit sit eius.', '200', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(9, 'Bennie Jacobson', 'Dolor atque dolor sunt expedita et vel exercitationem. Esse enim officia dolor recusandae aperiam non aspernatur. Consequatur atque deleniti nostrum aperiam. Debitis aliquid eum quia ut laborum ad eaque facere.', '220', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(10, 'Mr. Terrell Trantow MD', 'A possimus omnis ea nobis reprehenderit fuga. Voluptatem qui veritatis modi distinctio sapiente maxime. Et animi sit eum voluptatem. Et quo voluptates sunt id nemo quas illum.', '478', '2022-01-31 10:41:46', '2022-01-31 10:41:46'),
(11, 'Rossie Hilpert', 'In debitis ut illum nostrum. Nemo et atque distinctio eos velit repellat voluptate.', '115', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(12, 'Keith Herman III', 'Iure quisquam odit corrupti autem dolores. Porro molestiae fugiat ea sunt.', '456', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(13, 'Emmett Gorczany', 'Cupiditate modi veniam qui illum sed dolores. Assumenda ut impedit magni dignissimos et omnis. Animi ea omnis reiciendis ut quibusdam tenetur eos. Sunt eveniet vitae ea rerum sunt.', '868', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(14, 'Verla Strosin', 'Earum ut perspiciatis illum autem maiores facere in. Quae veniam itaque ipsam mollitia et quisquam. Expedita sint ut fugit. Aperiam eius voluptatem facere porro.', '561', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(15, 'Dr. Sigrid Herman', 'Quasi harum dolor temporibus voluptatum beatae debitis vero. Et hic dolorem neque. Voluptate ipsa numquam qui nulla accusantium ut.', '240', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(16, 'Percival Legros', 'Porro velit et ut ducimus. Amet atque accusantium dolore nihil. Dolor magnam sequi sint et exercitationem praesentium sint.', '48', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(17, 'Gregg Jacobi', 'Qui neque aspernatur aliquid sed. Nemo vel vero enim harum cum sed. Iure fuga totam aut suscipit sed dolores modi tenetur. At ut aut qui enim nesciunt.', '750', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(18, 'Mr. Jesus O\'Hara III', 'Aut laborum ut ex modi. Id unde et sint minima. Consectetur exercitationem animi nobis fuga quia rem.', '646', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(19, 'Clinton Upton MD', 'Sequi veritatis ut suscipit quam minima aut. Ut qui sed doloremque cumque. Dolor ab et pariatur numquam. Dolores beatae voluptatem recusandae sed.', '636', '2022-01-31 10:41:47', '2022-01-31 10:41:47'),
(20, 'Carleton Collier', 'Officiis ad assumenda magni ut doloribus qui non. Non quidem iste et accusantium deleniti similique excepturi. Adipisci saepe sit minima earum facere debitis. Cum est magnam ut nulla dolores commodi eveniet. Numquam itaque eligendi totam eos eos omnis.', '842', '2022-01-31 10:41:47', '2022-01-31 10:41:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_31_051849_create_articulos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `api_laravel`
--
CREATE DATABASE IF NOT EXISTS `api_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api_laravel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombres`, `apellidos`, `domicilio`, `dni`, `created_at`, `updated_at`) VALUES
(1, 'Alex G', 'Gutierrez', 'Av. los metales 333', '12345678', '2023-05-23 22:00:52', '2023-05-23 22:00:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(33, '2023_05_11_051554_create_empleados_table', 1),
(34, '2023_05_23_153536_create_roles_table', 1),
(36, '2023_05_23_165549_create_rols_table', 1),
(37, '2023_05_23_171815_create_roles_asignados_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'alex@gmail.com', '9ea6569f6b5253ba42970dc1dca6a6bda267cedc8ed62af49abd6e9f8a0dc0dd', '[\"*\"]', NULL, '2023-05-23 22:08:34', '2023-05-23 22:08:34'),
(2, 'App\\Models\\User', 1, 'alex@gmail.com', '6e7b80235f12a796afb3d6a5c1dd1d707fb47c316bacde520afe403d0d514534', '[\"*\"]', NULL, '2023-05-23 22:20:29', '2023-05-23 22:20:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_asignados`
--

CREATE TABLE `roles_asignados` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles_asignados`
--

INSERT INTO `roles_asignados` (`user_id`, `rol_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'administrador de toda la web', NULL, NULL),
(2, 'mod', 'moderador', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SEIYA', 'alex@gmail.com', NULL, '$2y$10$.uouOUup3oiTFxS/.7JE/e23I5SgVVdjPUhPatdkKFsmxmanRiFIy', NULL, '2023-05-23 22:01:06', '2023-05-23 22:01:06'),
(2, 'alex', 'alexg@gmail.com', NULL, '$2y$10$X9IfHRw5O.q/hnAlty6LJOuxZYfmBmGnQfIZXv1dLWiotqlsm/oP6', NULL, '2023-05-27 05:57:51', '2023-05-27 05:57:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empleados_dni_unique` (`dni`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rols_nombre_unique` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `bdtienda_sc`
--
CREATE DATABASE IF NOT EXISTS `bdtienda_sc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdtienda_sc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_01_04_015655_create_pelicula_table', 1),
(5, '2022_01_04_022814_create_pelicula_table', 2),
(6, '2022_01_04_054659_create_turno_table', 3),
(10, '2024_06_24_053948_create_permission_tables', 4),
(11, '2024_07_01_223543_add_rol_id_to_users_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `nombre`, `fecha_publicacion`, `imagen`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'SPIDERMAN 3', '2022-01-23', 'images/administracion/imagen/1641267872-Programar-en-IDE.jpg', '0', '2022-01-04 08:44:32', '2022-01-05 05:36:22'),
(3, 'VENON 9900', '2022-01-31', 'images/administracion/imagen/1641355708-CxUctwq.jpeg', '1', '2022-01-05 05:42:45', '2022-01-05 09:08:28'),
(5, 'GUTI', '2022-01-28', 'images/administracion/imagen/1641352472-244874402_882216986019253_270095589848687028_n.jpg', '1', '2022-01-05 08:14:32', '2022-01-05 08:14:32'),
(6, 'capitan america 2', '2022-01-21', 'images/administracion/imagen/1641352545-vector-gift-voucher-template-golden-260nw-1539358370.jpg', '1', '2022-01-05 08:15:45', '2022-01-05 08:15:45'),
(7, 'TERMINATOR', '2022-01-18', 'images/administracion/imagen/1641352629-RgJKbQq.jpeg', '1', '2022-01-05 08:17:09', '2022-01-05 08:17:09'),
(8, 'VENON ULTIMO', '2022-01-19', 'images/administracion/imagen/1641352821-VENON ULTIMO.jpg', '1', '2022-01-05 08:20:21', '2022-01-05 08:20:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create users', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50'),
(2, 'update users', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50'),
(3, 'delete users', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50'),
(4, 'asign rol', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50'),
(5, 'view users', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrador', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50'),
(2, 'trabajador', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50'),
(3, 'vendedor', 'web', '2024-06-27 11:44:50', '2024-06-27 11:44:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hora` time NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id`, `hora`, `estado`, `created_at`, `updated_at`) VALUES
(10, '13:51:00', '0', '2022-01-05 07:46:25', '2022-01-05 08:29:09'),
(11, '12:53:00', '1', '2022-01-05 07:50:30', '2022-01-05 07:50:30'),
(12, '13:30:00', '1', '2022-01-05 08:30:58', '2022-01-05 08:30:58'),
(13, '13:40:00', '1', '2022-01-05 08:38:03', '2022-01-05 08:38:03'),
(14, '15:45:00', '1', '2022-01-05 08:44:46', '2022-01-05 08:44:46'),
(15, '13:18:00', '1', '2022-01-05 08:47:06', '2022-01-05 08:47:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rol_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 1, 'Alex', 'administrador@gmail.com', NULL, '$2y$10$aBvaHZD.c4YFgQdoixf8suhuVONv0Qw.RqA2sFSI/vhMSJ6KimByO', NULL, '2022-01-04 07:05:39', '2022-01-04 07:05:39'),
(3, 2, 'JAMES', 'trabajador@gmail.com', NULL, '$2y$10$QbGTWoagWcnjepbRdNXEmeFxMRNNYldjcfZnKsY1IWPi/Bzc0rBQO', NULL, '2024-06-24 11:49:44', '2024-06-24 11:49:44'),
(4, 3, 'Guti', 'hola@gmail.com', NULL, '$2y$10$VgAAuFeI82OLralX/yGiUuZH5HCxrXB1P8ufkA6GEBUTLFNElpNAi', NULL, '2024-06-24 11:50:40', '2024-07-02 10:17:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rol_id_foreign` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
--
-- Base de datos: `bd_facturacion_laravel8_angular15`
--
CREATE DATABASE IF NOT EXISTS `bd_facturacion_laravel8_angular15` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_facturacion_laravel8_angular15`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave_sol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_sol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificado_pem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `llave_privada` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `razon_social`, `ruc`, `clave_sol`, `usuario_sol`, `certificado_pem`, `llave_privada`, `created_at`, `updated_at`) VALUES
(1, 'COMIDA SAC', '15456788991', '12345678', 'usuario1234', '-----BEGIN CERTIFICATE-----\r\nMIIDOTCCAiGgAwIBAgIUOW5YW0MGIdqq3UT263LmSMbrikcwDQYJKoZIhvcNAQEL\r\nBQAwRTELMAkGA1UEBhMCQVUxEzARBgNVBAgMClNvbWUtU3RhdGUxITAfBgNVBAoM\r\nGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZDAeFw0yNDA2MTUxOTU1MTVaFw0yNTA2\r\nMTUxOTU1MTVaMEUxCzAJBgNVBAYTAkFVMRMwEQYDVQQIDApTb21lLVN0YXRlMSEw\r\nHwYDVQQKDBhJbnRlcm5ldCBXaWRnaXRzIFB0eSBMdGQwggEiMA0GCSqGSIb3DQEB\r\nAQUAA4IBDwAwggEKAoIBAQCdSVFMlbxGv1WabBeJzQmrIjXJzVLp4kFRE6ajGMZq\r\n92vI6fkC8KpAGL3fwnNrfIrwqVC7t0WKoeWJtEKIVVGaFIn2vwNQEgXwguBUtyLc\r\ncpRI4rUVDYEkwGwltrr/fH1SE188nTYDRjVPBpGN+2mdRMh11syzFaQvfsDxCVdm\r\ngjQpuqVVqJQ9cOne4QdhETECdwzGEb5LUle5cPGRXqh/ob6PLgJDC+uFi1xxVHz1\r\n05eytD0Wv75s4HHFyH+3I+mtHlfrRH85k9VavFv0UMKCutKBuEixkYeoxRlsMiYg\r\ner9Z5rVSqKLlp9Usglro8hTBa2vm6iPRtNE2VhSPSuPtAgMBAAGjITAfMB0GA1Ud\r\nDgQWBBQg4Qe1PyfpXJRbmMpDUeYDAeEXGTANBgkqhkiG9w0BAQsFAAOCAQEAHtL7\r\nPOz5z3/e3L06WtnWoE+aDb95ujliECxSSyHTrR2WUnl6kgShHMwYLFJVreJngtID\r\nGZkH7vYbuEdrkcrBC0TROGQs7rtN97qP1D29DQ+lx1coz+VMJzBAaKhd4aueAQ6J\r\nPPkzlAYLPkwGVRXZhsSGeWDjUxw/bYsJ95KZl6C6X9eCdRiGCfBuV7OyWeCS5tKA\r\nxnChR3LoFpCYiZG3x6flnw71WbPuGqX/uySBWZqWRIuY14G0VYOW4K+GRM2UTe+g\r\nSjrbo6HI8u1u4DnHkhdEyBtBFHCxtfFu8UQZ7TiLv00I3UrgafnQ4U0wecsBSOs6\r\nnFaxqWb+sqFUKF67fg==\r\n-----END CERTIFICATE-----\r\n', '-----BEGIN ENCRYPTED PRIVATE KEY-----\r\nMIIFNTBfBgkqhkiG9w0BBQ0wUjAxBgkqhkiG9w0BBQwwJAQQTAAonFqicmJ5t4aJ\r\npJ7gxgICCAAwDAYIKoZIhvcNAgkFADAdBglghkgBZQMEASoEEFoXYJwsd6hvwPWd\r\neUM064cEggTQXDF0Swh2fs2HjDB5jVwrMJb4d2JF8f7jEcyOBw6DF0hgxNAt4M5/\r\nf2Wgk4WevSz+pRRbVU22ueRjDAY7zsTAybbxGF82laZ5CRzt1pawp3m5HDpic+8Q\r\n7surViScAeWUB6ySBOm9+e6n9c0lU+D+owJ4PdJsJIa8DGc6XwG13+H0HAVa3F9c\r\nvZDI4P3GTnEJ/lSrHEmpzfOCb4Sg4zaBUJ1F1ZB2H9blDXhJgKpqTdRfmUrUxHAA\r\nKjsZ1la8aXY+9nXxtJwqyXdVd7Ih9tfK0m8z7zyaLHBjy2UgnOj9ghdFJ2w/lJOF\r\nB2UFmwj6y3oTinIv8tXVUuUHqe2aQy5cVp5ZWGuaGd4vDmaLaNxP+/cg8pX5pANO\r\n6/B5q+FCMyeTSV9X0thDPVmf8piPaIm7qJjv0V4sZi5FNnL8teGqiOGwTaf5nuFu\r\nnaE/WHmXgGPgQOunw4j14RRyI/lEbfarHWT3JODsIlwNE14zbPSpkBkxB/ZWGsa+\r\nu4Mt0iEXEdKOeX0OMecb6BA1xwO/w6OlB9chrof4BD1rvQdTZxBbbXS857agrQIG\r\nYoDXV8XxsCfLvHlnBEVkFXGKNJBEBsueCIefMf0zBO7ynBoav2u3Nx+rbwXQdV4o\r\nzmOD93oZLuGjuq+Sy5rxo9e2tVb5jNpXk+zjI+oz6nBjGZSvBcR1BHDK+LFQJX/D\r\n6ovdrgA3OGhCPd6VtX3icx/6dWqGG8RWue5J2Ei+LbmPwzivqnQSX4I/w41rjDoZ\r\n6cUmP/if7u6xXi/4WEabnng9ry3wQIFsqCDvigldO4A+IZseIo8/jcbFxKxhoakA\r\nm83iIXF6iEqEPi4PJbIBWwz8dYrm2TCu+ozlRG2LLqSVz/f6dI9h5FiKr30KTzr9\r\n8IITD5izVqyq8ZA57ZN5z6nOBwQGdqHLl53EobAIMtEbrGUj7Ar5VfeMKuXGAt8K\r\n5FEv645/y4uIO/GV9Q74KBjed/wy+8l7P30kqirJoQGBiY9zIUGbJSV0vlbUHaIB\r\nOeHfaOTDgjBrid9VMkLN7YCJRsO4g/+dmQPOuJYWCqwcZSbFSOV2SaJVe5/E/VFc\r\nFPIXZdvDhCAOxWIMwQCjpm2K8q1vfT9fljHhvo4yxmrP2Pbxd6kdSX/1xfLCMN6q\r\nQ8TFQJ0ratKh2e5YgxFpxtSIQ1f6bqykpAguNuED0RG9w+mFydrzFRYgX7MTCSOk\r\nhqxdwE84X/u+f6EzG4SMaPG3anOnTPzMUUtL/9kplKhK3cTxKRoe2ilnaSyXm2MI\r\nCIF9YZTH7xFJr1AFiutgpLHseLeUvXb8mDqLwnN1FjYUrM284DYzIEyO731rB9jx\r\n74rq82bvbbMKMOXMlC5FYilkApcy56Ti+3Icw0FpVYat1e10CYFjCROryRGOH+tS\r\nsAOvW7Oyc6WYgSz7ujnZRzsqRSq1wl7vC9q9RNebPqlgnUXpz4favr0hnisik+4e\r\nF64ea1H8xIRQI7b8IvmNHwjKl/QmuVCjuIMhMlcACkAM56wGmMheiswKqMqXvuf9\r\nNtEXXl/7JtwrJhoYyEBBUxxC2yReb6FTr5AVQhNdfvCIk1HL7f1BkbQSSdfxxZEy\r\n5kzyFnJkXSwsRFWubUoEhEtuzUMEIiMU2ZUchSJLwaw6OoLxe1uY7CE=\r\n-----END ENCRYPTED PRIVATE KEY-----\r\n', '2024-06-13 05:56:49', '2024-06-13 05:56:49'),
(2, 'Empresa 2', '12345678913', 'clave123', 'usuario123', '-----BEGIN CERTIFICATE-----...-----END CERTIFICATE-----', '-----BEGIN PRIVATE KEY-----...-----END PRIVATE KEY-----', '2024-06-13 11:12:42', '2024-06-13 11:12:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `cliente_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_factura` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado_sunat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respuesta_sunat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `empresa_id`, `cliente_ruc`, `monto_total`, `numero_factura`, `fecha`, `estado_sunat`, `respuesta_sunat`, `created_at`, `updated_at`) VALUES
(27, 1, '12345678912', '200.3', 'F001-00001', '2024-06-12', 'Pendiente', NULL, '2024-06-19 03:12:10', '2024-06-19 03:12:10'),
(28, 1, '12345678912', '200.3', 'F001-00001', '2024-06-12', 'Pendiente', NULL, '2024-06-19 03:16:38', '2024-06-19 03:16:38'),
(29, 1, '12345678912', '200.3', 'F001-00001', '2024-06-12', 'Error', 'El archivo ZIP no contiene comprobantes - Detalle: xxx.xxx.xxx value=\'ticket: 1718748376670 error: Validation File count error\'', '2024-06-19 03:19:04', '2024-06-19 03:19:08'),
(30, 1, '12345678912', '205.3', 'F001-00001', '2024-06-12', 'Pendiente', NULL, '2024-06-19 03:28:24', '2024-06-19 03:28:24'),
(31, 1, '12345678912', '205.3', 'F001-00001', '2024-06-12', 'Pendiente', NULL, '2024-06-19 03:33:26', '2024-06-19 03:33:26'),
(32, 1, '12345678912', '205.3', 'F001-00001', '2024-06-12', 'Pendiente', NULL, '2024-06-19 03:36:49', '2024-06-19 03:36:49'),
(33, 1, '12345678912', '205.3', 'F001-00001', '2024-06-12', 'Error', 'El archivo ZIP no contiene comprobantes - Detalle: xxx.xxx.xxx value=\'ticket: 1718749838958 error: Validation File count error\'', '2024-06-19 03:43:30', '2024-06-19 03:43:30'),
(34, 1, '12345678912', '205.3', 'F001-00001', '2024-06-12', 'Error', 'El archivo ZIP no contiene comprobantes - Detalle: xxx.xxx.xxx value=\'ticket: 1718749854707 error: Validation File count error\'', '2024-06-19 03:43:46', '2024-06-19 03:43:46'),
(35, 1, '12345678912', '205.3', 'F001-00001', '2024-06-12', 'Error', 'El archivo ZIP no contiene comprobantes - Detalle: xxx.xxx.xxx value=\'ticket: 1718749859850 error: Validation File count error\'', '2024-06-19 03:43:51', '2024-06-19 03:43:51'),
(36, 1, '15456788991', '205.3', 'F001-00001', '2024-06-12', 'Pendiente', NULL, '2024-06-19 03:45:44', '2024-06-19 03:45:44'),
(37, 1, '12345678912', '205.3', 'F001-00001', '2024-06-12', 'Pendiente', NULL, '2024-06-19 03:45:52', '2024-06-19 03:45:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_detalles`
--

CREATE TABLE `factura_detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `factura_id` bigint(20) UNSIGNED NOT NULL,
  `codigo_producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_unitario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2024_06_12_214530_create_empresas_table', 2),
(5, '2024_06_12_222336_create_facturas_table', 3),
(6, '2024_06_12_222943_create_factura_detalles_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empresas_razon_social_unique` (`razon_social`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturas_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `factura_detalles`
--
ALTER TABLE `factura_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factura_detalles_factura_id_foreign` (`factura_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `factura_detalles`
--
ALTER TABLE `factura_detalles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `factura_detalles`
--
ALTER TABLE `factura_detalles`
  ADD CONSTRAINT `factura_detalles_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `dbapirestv8`
--
CREATE DATABASE IF NOT EXISTS `dbapirestv8` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbapirestv8`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `age`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'alexmggg@gmail.com', '909090990', '23', '2024-05-23 01:42:15', '2024-05-23 01:42:15'),
(2, 'manuel', 'manueasa@gmail.com', '32323232', '23', '2024-05-27 04:36:05', '2024-05-27 04:36:05'),
(6, 'guapa', 'qwq@gmail.com', '213456789', '22', '2024-07-14 03:51:12', '2024-07-14 04:33:10'),
(7, 'aleminaer', 'aq@gmail.com', '123456786', '33', '2024-07-14 03:51:45', '2024-07-14 04:32:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2024_05_27_014005_create_contact_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `dbapirestv10`
--
CREATE DATABASE IF NOT EXISTS `dbapirestv10` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbapirestv10`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `age`, `created_at`, `updated_at`) VALUES
(2, 'Alex', 'Alex@gmail.com', '23232', '33', '2024-05-23 12:06:23', '2024-05-23 12:06:23'),
(3, 'Raquel', 'guapa@gmail.com', '232323', '36', '2024-05-23 22:29:02', '2024-05-23 22:29:02'),
(4, 'guapa', 'guapa334@gmail.com', '232323', '44', '2024-05-23 22:36:37', '2024-05-23 22:36:37'),
(5, 'gutierrez blancawww', 'guti@gmail.com', '988383834', '38', '2024-05-23 22:37:01', '2024-05-24 01:35:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_23_060715_create_contact_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `dbcolegio`
--
CREATE DATABASE IF NOT EXISTS `dbcolegio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbcolegio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rendimiento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beca` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel_economico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problema_psicologico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellido`, `dni`, `sexo`, `edad`, `rendimiento`, `celular`, `beca`, `padre`, `nivel_economico`, `direccion`, `problema_psicologico`, `grado`, `created_at`, `updated_at`) VALUES
(1, 'LUCIO HIPOLITO', 'FOX MEDINA', '45674678', 'M', '15', '14', '999777888', 'No', 'JULIO FLORES', 'Medio', 'AV. LOS NOGALES 345', 'No', '1RO. \"C\"', NULL, NULL),
(2, 'FULGENCIO', 'ESCOBAR BELITO', NULL, 'M', '17', 'No', NULL, '14', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(3, 'JESUS ALBERTO', 'SALAS CAMARGO', NULL, 'M', '17', '16', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(4, 'HECTOR AMADOR', 'BERRUSCO QUISPE', NULL, 'M', '17', '18', NULL, 'Si', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(5, 'ANGEL ALFONSO', 'MALCA TORRES', NULL, 'M', '14', '10', NULL, 'No', NULL, 'Bajo', NULL, 'Si', NULL, NULL, NULL),
(6, 'FIORELA ROSA', 'ROMANI RIOS', NULL, 'F', '17', '13', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(7, 'MANOLO CLEMENTE', 'FERNANDEZ DIAZ', NULL, 'M', '17', '13', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(8, 'ELOY', 'CONISLLA HUAROTO', NULL, 'M', '17', '8', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(9, 'CARLOS ERNESTO', 'GARCIA CUCHO', NULL, 'M', '14', '13', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(10, 'VIRGINIA PATRICIA', 'TATAJE MARTINEZ', NULL, 'F', '17', '13', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(11, 'SERGIO', 'MARCOS TOVAR', NULL, 'M', '15', '16', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(12, 'LUIS', 'LAFORA SENDER', NULL, 'M', '14', '13', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(13, 'JULIA MARIA', 'VARGAS CASTILLO', NULL, 'F', '14', '15', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(14, 'HUBERT YVAN', 'BELLEZA QUISPE', NULL, 'M', '17', '16', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(15, 'GREGORIO', 'NIEVES QUINONES', NULL, 'M', '15', '13', NULL, 'No', NULL, 'Medio', NULL, 'Si', NULL, NULL, NULL),
(16, 'HERMENEGILDO MAXIMO', 'VILLEGAS ROCA', NULL, 'M', '17', '11', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(17, 'CESAR', 'TORRES SARAVIA', NULL, 'M', '17', '12', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(18, 'MARCO ANTONIO', 'MANERO GUTIERREZ', NULL, 'M', '15', '12', NULL, 'No', NULL, 'Medio', NULL, 'Si', NULL, NULL, NULL),
(19, 'FIDEL HUMBERTO', 'SOTELO APOLAYA', NULL, 'M', '15', '12', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(20, 'FAUSTINA ESTHER', 'GUERREROS CORTEZ ', NULL, 'F', '16', '18', NULL, 'Si', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(21, 'DANIEL ALFREDO', 'ABREGU HURTADO', NULL, 'M', '17', '10', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(22, 'EFRAIN ATILIO', 'PENA CASTILLON ', NULL, 'M', '14', '13', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(23, 'SANTOS SEVERINO', 'LOPEZ RUIZ', NULL, 'M', '15', '13', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(24, 'GRACIELA PAULINA', 'CARDENAS GARAYAR', NULL, 'F', '16', '14', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(25, 'MIGUEL ANGEL', 'TASAYCO VASQUEZ', NULL, 'M', '17', '14', NULL, 'No', NULL, 'Bajo', NULL, 'Si', NULL, NULL, NULL),
(26, 'WALTER MARTIN', 'MORALES ARANA', NULL, 'M', '16', '15', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(27, 'GLADYS JUANA', 'YALLE SANCHEZ ', NULL, 'F', '14', '14', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(28, 'EDGAR HUMBERTO', 'MORENO VIGIL', NULL, 'M', '14', '17', NULL, 'Si', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(29, 'ROSSANA VIOLETA', 'AVILES SOTO', NULL, 'F', '17', '13', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(30, 'PATROCINIO', 'CANTORAL QUISPE', NULL, 'M', '14', '12', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(31, 'WALTER MARTIN', 'MORALES ARANA', NULL, 'M', '16', '12', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(32, 'LILIANA DEL PILAR ', 'LLANOS HERRERA', NULL, 'F', '14', '11', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(33, 'LUIS ANTONIO', 'LUNA VILLARREAL', NULL, 'M', '15', '11', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(34, 'ALICIA NORA', 'SUAREZ COSME', NULL, 'F', '17', '16', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(35, 'ROSA JULIA', 'LAU ESPEJO', NULL, 'F', '17', '15', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(36, 'CESAR', 'TORRES SARAVIA', NULL, 'M', '17', '10', NULL, 'No', NULL, 'Medio', NULL, 'Si', NULL, NULL, NULL),
(37, 'ROBERTO', 'CONDOR CONDOR', NULL, 'M', '15', '11', NULL, 'No', NULL, 'Medio', NULL, 'Si', NULL, NULL, NULL),
(38, 'JANET AVELINA', 'MGUTIERREZ GODOY', NULL, 'F', '16', '13', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(39, 'ALEXANDRO FERNANDO', 'ROCCA CASOS', NULL, 'M', '14', '8', NULL, 'No', NULL, 'Alto', NULL, 'Si', NULL, NULL, NULL),
(40, 'ALEX ANTONIO', 'ARIAS OBREGON', NULL, 'M', '17', '14', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(41, 'HECTOR HUMBERTO', 'NOVOA VILLA', NULL, 'M', '16', '15', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(42, 'DIANA', 'TORRES MEZA', NULL, 'F', '15', '9', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(43, 'ALEX ANIBAL', 'LINARES LA ROSA', NULL, 'M', '16', '10', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(44, 'MARIA ELENA', 'DIAZ RUIZ', NULL, 'F', '15', '12', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(45, 'SARA MERCEDES', 'CANCINO CARRION', NULL, 'F', '16', '11', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(46, 'BRISAIDA', 'QUISPE BUSTAMANTE', NULL, 'F', '15', '15', NULL, 'Si', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(47, 'DELIA MAGALIN', 'OSORIO FIGUEROA', NULL, 'F', '16', '13', NULL, 'No', NULL, 'Alto', NULL, 'Si', NULL, NULL, NULL),
(48, 'EDISON MARTIN', 'ALCAS ÑOPO', NULL, 'M', '17', '16', NULL, 'Si', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(49, 'EDDING RODOLFO', 'VILLON CADILLO', NULL, 'M', '15', '14', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(50, 'RUTH MARIA FATIMA', 'BARRIENTOS AGUILAR', NULL, 'F', '16', '13', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(51, 'JOSE ABRAHAM', 'OLARTE MACHUCA', NULL, 'M', '15', '13', NULL, 'No', NULL, 'Bajo', NULL, 'Si', NULL, NULL, NULL),
(52, 'JAVIER RODOLFO', 'POLO MENDOZA', NULL, 'M', '15', '19', NULL, 'Si', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(53, 'DELFINA', 'PACHECO TELLO', NULL, 'F', '14', '13', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(54, 'RAFAEL RICARDO', 'OLIVA SANTILLAN', NULL, 'M', '17', '14', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(55, 'SARA MONICA', 'TORRES RAVANAL', NULL, 'F', '16', '8', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(56, 'HAYDEE MARILU', 'REGALADO MAGUIÑA', NULL, 'F', '14', '9', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(57, 'RONALD EFRAIN', 'OSORIO FIGUEROA', NULL, 'M', '15', '8', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(58, 'ESTEFANI FRANCISCA', 'TAIPE QUISPE', NULL, 'F', '14', '10', NULL, 'No', NULL, 'Bajo', NULL, 'Si', NULL, NULL, NULL),
(59, 'MARINO YSMAEL', 'CHAVEZ TEVES', NULL, 'M', '16', '15', NULL, 'Si', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(60, 'ESTHER ERICA', 'DURAN HUAMANI', NULL, 'F', '15', '10', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(61, 'ROSA NERYDA', 'ROSALES VALENZUELA', NULL, 'F', '17', '14', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(62, 'ALEXIS ALBERTO', 'MADRID GONZALES', NULL, 'M', '15', '11', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(63, 'DIDICACION', 'ANCALLE PALACIOS', NULL, 'F', '13', '15', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(64, 'MIGUEL RAFAEL', 'CARDENAS CALDERON', NULL, 'M', '16', '11', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(65, 'THALIA KATIUSHKA', 'BERECHE PAREDES', NULL, 'F', '15', '15', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(66, 'OSCAR', 'MIRAVITO CCASANI', NULL, 'M', '15', '10', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(67, 'CARLOS ENRIQUE', 'ASTORGA DELGADILLO', NULL, 'M', '14', '14', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(68, 'ROBERTO CARLOS', 'BOJORQUEZ PADILLA', NULL, 'M', '15', '9', NULL, 'No', NULL, 'Bajo', NULL, 'Si', NULL, NULL, NULL),
(69, 'ELIZABETH', 'CHAVEZ GAVILAN', NULL, 'M', '17', '11', NULL, 'No', NULL, 'Bajo', NULL, 'Si', NULL, NULL, NULL),
(70, 'WILDOR ROSELI', 'AMAYA TANTALEAN', NULL, 'M', '17', '5', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(71, 'JUAN ANTONIO', 'GILVONIO GARCIA', NULL, 'M', '17', '11', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(72, 'JAIME ARMANDO', 'GARCIA DIAZ', NULL, 'M', '14', '18', NULL, 'Si', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(73, 'ROMINA IVONNE', 'REGALADO MEJIA', NULL, 'F', '17', '11', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(74, 'EDWIN MIGUEL', 'PINEDO CORDOVA', NULL, 'M', '16', '9', NULL, 'No', NULL, 'Bajo', NULL, 'Si', NULL, NULL, NULL),
(75, 'JOSE', 'COZ HUAPAYA', NULL, 'M', '14', '11', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(76, 'JOE JOFRE', 'COZ CASTRO', NULL, 'M', '16', '16', NULL, 'Si', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(77, 'JUDITH ELIANA', 'HUARANGA JUNCO', NULL, 'F', '13', '9', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(78, 'MARCO LEONIDAS', 'VILCA SANGAY', NULL, 'M', '14', '11', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(79, 'LEONIDAS', 'NARVARTE VILLAR', NULL, 'M', '13', '9', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(80, 'EDDING RODOLFO', 'VILLON CADILLO', NULL, 'M', '13', '9', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(81, 'ROMMEL NILO', 'RIOS ALCANTARA', NULL, 'M', '16', '13', NULL, 'No', NULL, 'Medio', NULL, 'Si', NULL, NULL, NULL),
(82, 'ROXANA ELENA', 'PASTOR MONZON', NULL, 'F', '16', '19', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(83, 'ELI', 'HIDALGO RAMIREZ', NULL, 'F', '13', '8', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(84, 'ZENAIDA JUDITH', 'MATTOS ARELLANO', NULL, 'F', '16', '17', NULL, 'Si', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(85, 'WILDOR ALBERTO', 'ALVA AZULA', NULL, 'M', '15', '11', NULL, 'No', NULL, 'Medio', NULL, 'Si', NULL, NULL, NULL),
(86, 'SILVIA AMPARO', 'REBAZA ARAUJO', NULL, 'F', '17', '17', NULL, 'No', NULL, 'Medio', NULL, 'Si', NULL, NULL, NULL),
(87, 'JHONATAN', 'QUISPE VILCA', NULL, 'M', '17', '19', NULL, 'Si', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(88, 'JUAN ANTONIO', 'TELLO CESPEDES', NULL, 'M', '16', '13', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(89, 'CESAR AUGUSTO', 'VALDEZ CENTY', NULL, 'M', '16', '11', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(90, 'CARLOS ENRIQUE', 'ASTORGA DELGADILLO', NULL, 'M', '17', '16', NULL, 'Si', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(91, 'JUAN FREDY', 'GUTIERREZ SANCHEZ', NULL, 'M', '14', '11', NULL, 'No', NULL, 'Alto', NULL, 'Si', NULL, NULL, NULL),
(92, 'VICTOR SILVIO', 'NARVAEZ OSORIO', NULL, 'M', '17', '15', NULL, 'No', NULL, 'Alto', NULL, 'No', NULL, NULL, NULL),
(93, 'TEODULIA', 'MEDRANO DE VIGO', NULL, 'F', '15', '13', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(94, 'MARIELLA DEL CARMEN', 'CHUNG PALMER', NULL, 'F', '15', '13', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(95, 'MAGNO DANIEL', 'CASTRO MENDEZ', NULL, 'M', '17', '11', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(96, 'DORIS VALIA', 'RUBIO MEDINA', NULL, 'F', '13', '12', NULL, 'No', NULL, 'Medio', NULL, 'No', NULL, NULL, NULL),
(97, 'SILVIA ELIZABETH', 'CASTRO GARCIA', NULL, 'F', '16', '11', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(98, 'OSCAR FERNANDO', 'SAM CHU', NULL, 'M', '15', '12', NULL, 'No', NULL, 'Bajo', NULL, 'No', NULL, NULL, NULL),
(100, 'CARLOS MANUEL', 'GONZALES', '2323233232', 'M', '13', NULL, '34343434343', NULL, 'CARLOS GONZALES', NULL, 'ASS', NULL, '5TO. C', '2023-07-15 01:43:14', '2023-07-15 01:43:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `becas`
--

CREATE TABLE `becas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `becas`
--

INSERT INTO `becas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Si', '2023-07-13 11:40:32', '2023-07-13 11:40:32'),
(2, 'No', '2023-07-13 11:40:32', '2023-07-13 11:40:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2023_06_18_202024_create_alumnos_table', 4),
(20, '2014_10_12_000000_create_users_table', 5),
(21, '2014_10_12_100000_create_password_resets_table', 5),
(22, '2019_08_19_000000_create_failed_jobs_table', 5),
(23, '2023_06_18_153513_create_becas_table', 5),
(24, '2023_06_18_153850_create_nivel_economicos_table', 5),
(25, '2023_06_18_153959_create_problemas_psicologicos_table', 5),
(26, '2023_06_18_201737_create_sexos_table', 5),
(27, '2023_06_19_011302_create_alumno_table', 5),
(28, '2023_07_12_232117_create_permission_tables', 5),
(29, '2023_07_13_234902_create_profesor_table', 6),
(30, '2023_07_14_180341_add_fields_to_alumno_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_economicos`
--

CREATE TABLE `nivel_economicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nivel_economicos`
--

INSERT INTO `nivel_economicos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Bajo', '2023-07-13 11:40:31', '2023-07-13 11:40:31'),
(2, 'Medio', '2023-07-13 11:40:31', '2023-07-13 11:40:31'),
(3, 'Alto', '2023-07-13 11:40:31', '2023-07-13 11:40:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'home', 'web', '2023-07-13 11:40:29', '2023-07-13 11:40:29'),
(2, 'admin.alumnos', 'web', '2023-07-13 11:40:30', '2023-07-13 11:40:30'),
(3, 'admin.alumno.registro', 'web', '2023-07-13 11:40:30', '2023-07-13 11:40:30'),
(4, 'admin.alumno.actualizar', 'web', '2023-07-13 11:40:30', '2023-07-13 11:40:30'),
(5, 'admin.alumno.eliminar', 'web', '2023-07-13 11:40:30', '2023-07-13 11:40:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problemas_psicologicos`
--

CREATE TABLE `problemas_psicologicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `problemas_psicologicos`
--

INSERT INTO `problemas_psicologicos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Si', '2023-07-13 11:40:32', '2023-07-13 11:40:32'),
(2, 'No', '2023-07-13 11:40:32', '2023-07-13 11:40:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `apellido`, `dni`, `sexo`, `celular`, `correo`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Hugo s', 'Alvarez s', '232324531', 'M', '981234345', 'HUGO234@GMAIL.COM', NULL, NULL, '2023-07-14 22:50:51'),
(2, 'Roberto Carlosq', 'Diazq', '34567894', 'M', '986566781', 'robertodq@gmail.com', NULL, '2023-07-15 01:13:50', '2023-07-15 01:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-07-13 11:40:29', '2023-07-13 11:40:29'),
(2, 'Alumno', 'web', '2023-07-13 11:40:29', '2023-07-13 11:40:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--

CREATE TABLE `sexos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sexo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sexos`
--

INSERT INTO `sexos` (`id`, `sexo`, `created_at`, `updated_at`) VALUES
(1, 'Masculino', '2023-07-13 11:40:31', '2023-07-13 11:40:31'),
(2, 'Femenino', '2023-07-13 11:40:31', '2023-07-13 11:40:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alex', 'admin@gmail.com', NULL, '$2y$10$F03ZywpO45pSJoeeH.OR7e6M3gpDR6k5MwG9xT86OhqFzRKGm5jU6', NULL, '2023-07-13 11:40:31', '2023-07-13 11:40:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `becas`
--
ALTER TABLE `becas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `nivel_economicos`
--
ALTER TABLE `nivel_economicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `problemas_psicologicos`
--
ALTER TABLE `problemas_psicologicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `becas`
--
ALTER TABLE `becas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `nivel_economicos`
--
ALTER TABLE `nivel_economicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `problemas_psicologicos`
--
ALTER TABLE `problemas_psicologicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `dbdatacont`
--
CREATE DATABASE IF NOT EXISTS `dbdatacont` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbdatacont`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `editorial` varchar(255) DEFAULT NULL,
  `pagina` int(11) DEFAULT NULL,
  `anio_edicion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `book`
--

INSERT INTO `book` (`id`, `titulo`, `autor`, `editorial`, `pagina`, `anio_edicion`) VALUES
(1, 'resident evil 1', 'milla jovocihi', 'san accion', 314, 2000),
(2, 'resident evil 2', 'milla jovocihi', 'san accion', 311, 2002),
(3, 'resident evil 3', 'milla jovocihi', 'san accion', 345, 2003),
(4, 'resident evil 4', 'milla jovocihi', 'san accion', 754, 2004),
(5, 'resident evil 5', 'milla jovocihi', 'san accion', 777, 2005),
(6, 'resident evil 5', 'milla jovocihi', 'san accion', 785, 2009),
(7, 'rapido y furioso 2', 'vin iesel', 'san veloz', 282, 2002),
(8, 'resident evil 1', 'milla jovocihi', 'san accion', 314, 2000),
(9, 'rapido y furioso 4', 'vin iesel', 'san veloz', 580, 2006),
(10, 'rapido y furioso 10', 'vin iesel', 'san veloz', 870, 2008),
(11, 'rapido y furioso 5', 'vin iesel', 'san veloz', 670, 2008),
(12, 'chucky', 'george thomas', 'san todo', 470, 2010),
(13, 'evil dead', 'george thomas', 'san todo', 770, 2012),
(14, 'evil dead 2', 'george thomas', 'san todo', 760, 2014),
(15, 'evil dead 3', 'george thomas', 'san todo', 230, 2016),
(16, 'star wars', 'george lucas', 'san ficcion', 330, 2000),
(17, 'star wars 2', 'george lucas', 'san ficcion', 630, 2002),
(18, 'star wars 3', 'george lucas', 'san ficcion', 430, 2001),
(19, 'star wars 4', 'george lucas', 'san ficcion', 480, 2009),
(20, 'la mujer hermosa', 'raquel sanmiguel', 'san celestial', 880, 2021);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Base de datos: `dbejemplo`
--
CREATE DATABASE IF NOT EXISTS `dbejemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbejemplo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `name`, `telefono`) VALUES
(1, 'ALEX', '1234567');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `dbfutbol`
--
CREATE DATABASE IF NOT EXISTS `dbfutbol` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbfutbol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2024_05_18_043444_create_players_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `name`, `year`, `club`, `created_at`, `updated_at`) VALUES
(7, 'CARLOS ZAMBRANO', '24', 'alianza lima campeon', '2024-05-19 09:37:37', '2024-06-23 08:05:17'),
(29, 'paolo guerrero', '12', 'PSV', '2024-06-21 02:52:41', '2024-06-23 07:47:02'),
(33, 'hola mi amor raquel', '40', 'atletico bucaramanga', '2024-06-21 04:07:41', '2024-06-21 04:07:41'),
(34, 'hola mi amor raquel', '40', 'atletico bucaramanga', '2024-06-21 04:09:02', '2024-06-21 04:09:02'),
(50, 'neyma jr', '24', 'BARCELONA', '2024-06-22 00:01:02', '2024-06-22 00:01:02'),
(51, 'neyma jr', '24', 'PSV', '2024-06-23 06:50:53', '2024-06-23 06:50:53'),
(52, 'neyma jr', '22', 'alianza lima', '2024-06-23 06:58:25', '2024-06-23 06:58:25'),
(53, 'ARREGUI', '23', 'BAYERBN', '2024-06-23 07:11:33', '2024-06-23 07:11:33'),
(54, 'luis', '23', 'alianza lima', '2024-06-23 07:26:45', '2024-06-23 07:26:45'),
(55, 'JAMES', '23', 'COLOMBIA', '2024-06-23 08:10:26', '2024-06-23 08:10:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'alex@gmail.com', NULL, '$2y$10$QQOoKVD5/LrtYBA3i6EXx.5hvqd9uvpcmnoIB6hj.uRzjl8Dtz4Y.', NULL, '2024-05-17 11:11:55', '2024-05-17 11:11:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `dbgm`
--
CREATE DATABASE IF NOT EXISTS `dbgm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbgm`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'computo', 'Productos de calidad', NULL, NULL),
(2, 'accesorios de computo', 'producto grande', '2023-04-18 22:27:04', '2023-04-18 22:27:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_04_164808_create_product_table', 1),
(6, '2023_04_04_170314_create_category_table', 2),
(7, '2023_04_04_172008_add_fk_to_product_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precie` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `precie`, `stock`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'mouse', '23.00', 100, 1, NULL, NULL),
(2, 'teclado', '44.00', 99, 1, '2023-04-17 07:28:00', '2023-04-19 07:28:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'aguti@gmail.com', NULL, '$2y$10$TjNupceOBAzzxItZH2W0ke73bSw2Fn0whO4UFuR0nbMOJ3gP54xqi', NULL, '2023-04-05 11:27:37', '2023-04-05 11:27:37'),
(2, 'manu', 'aguti1@gmail.com', NULL, '$2y$10$eFwDLTohM57R9Jyvu.4Y..60eE2IZuOAo3Tf5vKwmKHotf3y8UnAG', NULL, '2023-04-05 11:43:58', '2023-04-05 11:43:58'),
(3, 'alex1', 'aguti2@gmail.com', NULL, '$2y$10$cFR2k9.j/xuA3JOaQPddeOBx4WS6tiNFJ6iZyZxvKKJx7sf.hUWkW', NULL, '2023-04-05 11:49:44', '2023-04-05 11:49:44'),
(4, 'alex3', 'aguti3@gmail.com', NULL, '$2y$10$rvyig86GdP4RY3Ap4Uh8CejsQTZok65vozmfR41fQvUuhwWYg4VaS', NULL, '2023-04-05 11:52:35', '2023-04-05 11:52:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product` (`id`);
--
-- Base de datos: `dbgreenter`
--
CREATE DATABASE IF NOT EXISTS `dbgreenter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbgreenter`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sol_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sol_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cert_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `production` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `razon_social`, `ruc`, `direccion`, `logo_path`, `sol_user`, `sol_pass`, `cert_path`, `client_id`, `client_secret`, `production`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'comida sac', '20345678901', 'Av. Principal 123, Lima, Perú', 'logos/WDAknHM2p6u91B77pmgm7CV3sOx6wIvX91gQBz6L.jpg', 'prueba', 'prueba', 'certs/i8W0MX8Iw5iQj4O5rD8HPQa8q7skDN30xkOCoRbP.txt', 'null', 'null', 0, 1, '2024-07-20 09:41:14', '2024-07-20 10:32:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_16_231133_create_companies_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'guti', 'guti@gmail.com', NULL, '$2y$10$/xjWV5JiC2m8sfyijfdcHOQwkqHlkI1Bwh4559wmAvr.Al3gSXD12', NULL, '2024-07-17 22:33:41', '2024-07-17 22:33:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `dbimoney`
--
CREATE DATABASE IF NOT EXISTS `dbimoney` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbimoney`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BCP', '2021-04-17 19:37:21', '2021-04-17 19:37:21'),
(2, 'Interbank', '2021-04-17 19:37:21', '2021-04-17 19:37:21'),
(3, 'Pichincha', '2021-04-17 19:37:21', '2021-04-17 19:37:21'),
(4, 'BIF', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(5, 'BBVA', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(6, 'Scotiabank', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(7, 'MiBanco', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(8, 'GNB', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(9, 'Banco de la nacion', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(10, 'Caja Cusco', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(11, 'Caja Tacna', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(12, 'Caja Arequipa', '2021-04-17 19:37:22', '2021-04-17 19:37:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_cuenta`
--

CREATE TABLE `categoria_cuenta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_cuenta`
--

INSERT INTO `categoria_cuenta` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ahorros', '2021-04-21 20:05:07', '2021-04-21 20:05:07'),
(2, 'Corriente', '2021-04-21 20:05:07', '2021-04-21 20:05:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_bancarias`
--

CREATE TABLE `cuenta_bancarias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `banco_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_cuenta` bigint(20) UNSIGNED NOT NULL,
  `categoria_cuenta_id` bigint(20) UNSIGNED NOT NULL,
  `numero_cuenta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuenta_bancarias`
--

INSERT INTO `cuenta_bancarias` (`id`, `user_id`, `banco_id`, `tipo_cuenta`, `categoria_cuenta_id`, `numero_cuenta`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 2, 1, '165654511102', '2021-04-21 22:14:29', '2021-04-21 22:14:29'),
(2, 3, 4, 2, 2, '123456799100', '2021-04-21 22:23:54', '2021-04-21 22:23:54'),
(3, 6, 1, 2, 1, '19300000000999999', '2021-04-28 15:31:48', '2021-04-28 15:31:48'),
(4, 6, 1, 1, 1, '3232323232323', '2021-04-28 15:38:22', '2021-04-28 15:38:22'),
(5, 6, 4, 1, 1, '1933454564', '2021-04-28 21:20:34', '2021-04-28 21:20:34'),
(6, 6, 4, 2, 1, '1932222000333', '2021-04-29 21:14:13', '2021-04-29 21:14:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad_economica` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_economico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_fijo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_fiscal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrito` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ficha_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_operacion`
--

CREATE TABLE `estado_operacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estado_operacion`
--

INSERT INTO `estado_operacion` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pendiente de enviar Nro Operacion', '2021-04-24 15:40:23', '2021-04-24 15:40:23'),
(2, 'Envió Nro Operacion', '2021-04-24 15:40:52', '2021-04-24 15:40:36'),
(3, 'Transferencia enviada', '2021-04-24 15:41:22', '2021-04-24 15:41:26'),
(4, 'Operacion no concretada', '2021-04-26 05:19:55', '2021-04-26 05:19:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `inversionista`
--

CREATE TABLE `inversionista` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_28_113219_create_roles_table', 1),
(2, '2021_04_05_192108_create_users_table', 2),
(3, '2014_10_12_100000_create_password_resets_table', 3),
(4, '2019_08_19_000000_create_failed_jobs_table', 3),
(5, '2021_03_13_180649_create_usuarios_table', 3),
(7, '2021_03_21_200606_create_tipo_cuentas_table', 3),
(8, '2021_03_21_201126_create_bancos_table', 3),
(10, '2021_03_22_193629_update_users_table', 3),
(11, '2021_03_24_180435_create_empresa_table', 3),
(12, '2021_03_25_004010_create_inversionista_table', 3),
(13, '2021_03_25_182833_create_representante_legals_table', 3),
(14, '2021_03_25_182857_create_persona_operaciones_table', 3),
(16, '2021_03_14_211013_create_tipo_cambios_table', 4),
(19, '2021_04_21_145845_create_categoria_cuenta', 6),
(20, '2021_03_21_202040_create_cuenta_bancarias_table', 7),
(22, '2021_04_24_103211_create_estado_operacion_table', 9),
(29, '2021_04_24_103722_create_status_nro_operacion_table', 12),
(31, '2021_04_14_121019_create_operacion_table', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

CREATE TABLE `operacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nro_orden` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `banco_origen_id` bigint(20) UNSIGNED NOT NULL,
  `descripcionMontoA` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montoA` decimal(8,2) NOT NULL,
  `descripcionMontoB` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montoB` decimal(8,2) NOT NULL,
  `banco_destino_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_cuenta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `operacion`
--

INSERT INTO `operacion` (`id`, `nro_orden`, `user_id`, `banco_origen_id`, `descripcionMontoA`, `montoA`, `descripcionMontoB`, `montoB`, `banco_destino_id`, `tipo_cuenta`, `estado_id`, `created_at`, `updated_at`) VALUES
(9, '99AMFN', 3, 1, 'Soles', '40.00', 'Dolares', '10.39', 1, '2', 3, '2021-04-26 04:19:21', '2021-04-26 05:17:40'),
(10, 'STXBYO', 3, 3, 'Soles', '100.00', 'Dolares', '25.97', 1, '2', 3, '2021-04-26 04:20:17', '2021-04-26 05:17:25'),
(11, 'GBZNNI', 3, 4, 'Soles', '600.00', 'Dolares', '155.80', 1, '2', 4, '2021-04-26 04:53:06', '2021-04-26 05:42:31'),
(12, 'V1UPK9', 3, 1, 'Soles', '555.00', 'Dolares', '144.12', 2, '2', 2, '2021-04-27 17:00:40', '2021-04-27 17:01:08'),
(13, '8L692W', 3, 1, 'Soles', '55.00', 'Dolares', '14.28', 2, '2', 3, '2021-04-27 17:13:42', '2021-04-27 17:16:26'),
(14, 'TAOJDJ', 3, 1, 'Soles', '33.00', 'Dolares', '8.57', 1, '2', 1, '2021-04-27 17:17:45', '2021-04-27 17:17:45'),
(15, 'VCZ4XH', 3, 1, 'Soles', '55.00', 'Dolares', '14.28', 2, '2', 2, '2021-04-27 18:03:25', '2021-04-27 18:10:29'),
(16, 'DGRC5P', 6, 1, 'Soles', '555.00', 'Dolares', '144.12', 3, '2', 2, '2021-04-28 15:32:08', '2021-04-28 15:34:21'),
(17, 'LIKFYX', 6, 1, 'Dolares', '60.00', 'Soles', '209.76', 4, '1', 2, '2021-04-28 15:39:44', '2021-04-28 15:39:58'),
(18, '38FORG', 6, 1, 'Dolares', '600.00', 'Soles', '2097.60', 4, '1', 3, '2021-04-28 15:51:31', '2021-04-28 16:07:54'),
(19, 'BR4STH', 6, 1, 'Soles', '1000.00', 'Dolares', '259.67', 3, '2', 3, '2021-04-28 20:58:35', '2021-04-28 21:00:21'),
(20, '3GGRUJ', 6, 4, 'Dolares', '1000.00', 'Soles', '3496.00', 5, '1', 3, '2021-04-28 21:22:24', '2021-04-28 21:29:52'),
(21, '84M583', 6, 1, 'Soles', '6.00', 'Dolares', '1.56', 3, '2', 2, '2021-04-28 22:33:57', '2021-04-28 22:34:10'),
(22, '22YDRT', 6, 1, 'Soles', '77.00', 'Dolares', '19.99', 3, '2', 1, '2021-04-29 15:33:58', '2021-04-29 15:33:58'),
(23, '4CPFNJ', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', 1, '2021-04-29 21:16:35', '2021-04-29 21:16:35'),
(24, 'UMFXU6', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', 1, '2021-04-29 21:16:36', '2021-04-29 21:16:36'),
(25, 'APKC2E', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', 1, '2021-04-29 21:16:37', '2021-04-29 21:16:37'),
(26, 'LTWT47', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', 3, '2021-04-29 21:16:38', '2021-04-29 21:18:55'),
(27, 'ZUN7NC', 6, 1, 'Soles', '50.00', 'Dolares', '12.98', 6, '2', 2, '2021-04-29 21:37:31', '2021-04-29 21:37:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_operaciones`
--

CREATE TABLE `persona_operaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representante_legals`
--

CREATE TABLE `representante_legals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `archivo_vigencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2021-04-17 19:35:25', '2021-04-17 19:35:25'),
(2, 'Persona Natural', '2021-04-17 19:35:25', '2021-04-17 19:35:25'),
(3, 'Representante Legal', '2021-04-17 19:35:25', '2021-04-17 19:35:25'),
(4, 'Operador', '2021-04-17 19:35:25', '2021-04-17 19:35:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_nro_operacion`
--

CREATE TABLE `status_nro_operacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operacion_id` bigint(20) UNSIGNED NOT NULL,
  `nro_operacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_operacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `status_nro_operacion`
--

INSERT INTO `status_nro_operacion` (`id`, `operacion_id`, `nro_operacion`, `voucher_operacion`, `created_at`, `updated_at`) VALUES
(6, 9, '1234567820', NULL, '2021-04-26 04:19:43', '2021-04-26 04:19:43'),
(7, 10, NULL, 'images/voucher/1619412179-voucher.jpg', '2021-04-26 04:42:59', '2021-04-26 04:42:59'),
(8, 11, '11000', NULL, '2021-04-26 05:18:32', '2021-04-26 05:18:32'),
(9, 12, 'V1UPK9', NULL, '2021-04-27 17:01:08', '2021-04-27 17:01:08'),
(10, 13, '432432432432', NULL, '2021-04-27 17:14:15', '2021-04-27 17:14:15'),
(11, 15, '23232323232', NULL, '2021-04-27 18:10:29', '2021-04-27 18:10:29'),
(12, 16, '232232323', NULL, '2021-04-28 15:32:55', '2021-04-28 15:32:55'),
(13, 16, NULL, 'images/voucher/1619624061-152461779_747051816206548_5562818862943999941_n (1).jpg', '2021-04-28 15:34:21', '2021-04-28 15:34:21'),
(14, 17, '1234567890', NULL, '2021-04-28 15:39:58', '2021-04-28 15:39:58'),
(15, 18, NULL, 'images/voucher/1619625106-152461779_747051816206548_5562818862943999941_n (1).jpg', '2021-04-28 15:51:46', '2021-04-28 15:51:46'),
(16, 19, '45564', NULL, '2021-04-28 20:58:47', '2021-04-28 20:58:47'),
(17, 20, NULL, 'images/voucher/1619645049-CERRAR SESION (1).png', '2021-04-28 21:24:09', '2021-04-28 21:24:09'),
(18, 21, '555', NULL, '2021-04-28 22:34:10', '2021-04-28 22:34:10'),
(19, 26, NULL, 'images/voucher/1619731019-CERRAR SESION (1).png', '2021-04-29 21:16:59', '2021-04-29 21:16:59'),
(20, 27, '990909', NULL, '2021-04-29 21:37:42', '2021-04-29 21:37:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cambios`
--

CREATE TABLE `tipo_cambios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `compra` decimal(8,3) NOT NULL,
  `venta` decimal(8,3) NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_cambios`
--

INSERT INTO `tipo_cambios` (`id`, `compra`, `venta`, `estado`, `created_at`, `updated_at`) VALUES
(1, '3.496', '3.851', '1', '2021-04-17 19:39:16', '2021-04-23 21:26:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuentas`
--

CREATE TABLE `tipo_cuentas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_cuentas`
--

INSERT INTO `tipo_cuentas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Soles', '2021-04-17 20:47:42', '2021-04-17 20:47:42'),
(2, 'Dolares', '2021-04-17 20:47:42', '2021-04-17 20:47:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `politico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_id` bigint(20) UNSIGNED NOT NULL,
  `archivo_dni_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo_dni_atras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `apellidos`, `email`, `email_verified_at`, `dni`, `celular`, `domicilio`, `nacionalidad`, `ocupacion`, `politico`, `cargo`, `empresa`, `password`, `tipo_id`, `archivo_dni_front`, `archivo_dni_atras`, `verification_code`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '74208144', '940979490', 'Av. Urubamba 378', 'Peruano', 'Administrador', '0', NULL, NULL, '$2y$10$i4rx4NsbMp75zlhR8M17dOOCnvSgD4Fqt/zjO3Ss34QCT4TWVLxLG', 1, NULL, NULL, NULL, 1, '2021-04-17 19:35:30', '2021-04-17 19:35:30'),
(3, 'Brian', 'Huamani', 'brian125865@gmail.com', NULL, '74208144', '940979490', 'Av. Los heroes', 'Peruano', 'Lima', '0', NULL, NULL, '$2y$10$ndOlACv9utIf98TwbTi7Wu9y2S6ntga4gzAQTOVslxl95NLSr.lAy', 2, 'images/dni/1618688503-dni.jpg', 'images/dni/1618688503-nuevodni.jpg', '314126dcca09bc76d4c0c4d249e1aa0d21cb2c96', 1, '2021-04-17 19:41:43', '2021-04-23 20:50:53'),
(6, 'Alex', 'Gutierrez', 'alexfus8@gmail.com', NULL, '3443434343', '9999900009', 'av mi casa', 'peruano', 'web', '1', 'programador', 'IBM', '$2y$10$Y2iZw6kxYoiuoYSGnV2AB.rm5/z.K9/YCzSCDuBni/7aJSx.sEOlm', 2, 'images/dni/1619623653-156065131_247377146995129_2920617676245044628_n.jpg', 'images/dni/1619623653-148872865_732586220956803_6211931604409770046_o.jpg', '0aff0384df937464f7e840085b21c0999349db79', 1, '2021-04-28 15:27:34', '2021-04-28 15:30:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_cuenta`
--
ALTER TABLE `categoria_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuenta_bancarias`
--
ALTER TABLE `cuenta_bancarias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuenta_bancarias_user_id_foreign` (`user_id`),
  ADD KEY `cuenta_bancarias_banco_id_foreign` (`banco_id`),
  ADD KEY `cuenta_bancarias_tipo_cuenta_foreign` (`tipo_cuenta`),
  ADD KEY `cuenta_bancarias_categoria_cuenta_id_foreign` (`categoria_cuenta_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_operacion`
--
ALTER TABLE `estado_operacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `inversionista`
--
ALTER TABLE `inversionista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operacion`
--
ALTER TABLE `operacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operacion_user_id_foreign` (`user_id`),
  ADD KEY `operacion_banco_origen_id_foreign` (`banco_origen_id`),
  ADD KEY `operacion_banco_destino_id_foreign` (`banco_destino_id`),
  ADD KEY `operacion_estado_id_foreign` (`estado_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `persona_operaciones`
--
ALTER TABLE `persona_operaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_operaciones_user_id_foreign` (`user_id`),
  ADD KEY `persona_operaciones_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `representante_legals`
--
ALTER TABLE `representante_legals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `representante_legals_user_id_foreign` (`user_id`),
  ADD KEY `representante_legals_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_nro_operacion`
--
ALTER TABLE `status_nro_operacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_nro_operacion_operacion_id_foreign` (`operacion_id`);

--
-- Indices de la tabla `tipo_cambios`
--
ALTER TABLE `tipo_cambios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_cuentas`
--
ALTER TABLE `tipo_cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_tipo_id_foreign` (`tipo_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categoria_cuenta`
--
ALTER TABLE `categoria_cuenta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cuenta_bancarias`
--
ALTER TABLE `cuenta_bancarias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_operacion`
--
ALTER TABLE `estado_operacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inversionista`
--
ALTER TABLE `inversionista`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `operacion`
--
ALTER TABLE `operacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `persona_operaciones`
--
ALTER TABLE `persona_operaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `representante_legals`
--
ALTER TABLE `representante_legals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `status_nro_operacion`
--
ALTER TABLE `status_nro_operacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tipo_cambios`
--
ALTER TABLE `tipo_cambios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_cuentas`
--
ALTER TABLE `tipo_cuentas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta_bancarias`
--
ALTER TABLE `cuenta_bancarias`
  ADD CONSTRAINT `cuenta_bancarias_banco_id_foreign` FOREIGN KEY (`banco_id`) REFERENCES `bancos` (`id`),
  ADD CONSTRAINT `cuenta_bancarias_categoria_cuenta_id_foreign` FOREIGN KEY (`categoria_cuenta_id`) REFERENCES `categoria_cuenta` (`id`),
  ADD CONSTRAINT `cuenta_bancarias_tipo_cuenta_foreign` FOREIGN KEY (`tipo_cuenta`) REFERENCES `tipo_cuentas` (`id`),
  ADD CONSTRAINT `cuenta_bancarias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `operacion`
--
ALTER TABLE `operacion`
  ADD CONSTRAINT `operacion_banco_destino_id_foreign` FOREIGN KEY (`banco_destino_id`) REFERENCES `cuenta_bancarias` (`id`),
  ADD CONSTRAINT `operacion_banco_origen_id_foreign` FOREIGN KEY (`banco_origen_id`) REFERENCES `bancos` (`id`),
  ADD CONSTRAINT `operacion_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estado_operacion` (`id`),
  ADD CONSTRAINT `operacion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `persona_operaciones`
--
ALTER TABLE `persona_operaciones`
  ADD CONSTRAINT `persona_operaciones_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `persona_operaciones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `representante_legals`
--
ALTER TABLE `representante_legals`
  ADD CONSTRAINT `representante_legals_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `representante_legals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `status_nro_operacion`
--
ALTER TABLE `status_nro_operacion`
  ADD CONSTRAINT `status_nro_operacion_operacion_id_foreign` FOREIGN KEY (`operacion_id`) REFERENCES `operacion` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `roles` (`id`);
--
-- Base de datos: `dbjapam`
--
CREATE DATABASE IF NOT EXISTS `dbjapam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbjapam`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_08_02_212755_create_students_table', 2),
(5, '2023_08_04_044242_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proxy_parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `name`, `last_name`, `dni`, `age`, `gender`, `address`, `proxy_parent`, `created_at`, `updated_at`) VALUES
(1, 'Alex', 'Gutierrez', '23232344', '16', 'M', 'AV,', 'ALEJANSRO', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alext', 'admin@gmail.com', NULL, '$2y$10$fJwDxlkXttFoBHfmU/x9M.wZpfy3K2hjGteAXmbasR4OCftvf4EQu', NULL, '2023-08-03 03:06:26', '2023-08-04 10:40:13'),
(2, 'Raquel', 'raquelguapa@gmail.com', NULL, '$2y$10$iREnfxrW1ma9ZnoogaMgKeQ0AFyHPzRdXKZegG4CUWByiUG6ZCwF6', NULL, '2023-08-04 10:23:14', '2023-08-04 10:23:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `dblibreria`
--
CREATE DATABASE IF NOT EXISTS `dblibreria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblibreria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add libro', 7, 'add_libro'),
(26, 'Can change libro', 7, 'change_libro'),
(27, 'Can delete libro', 7, 'delete_libro'),
(28, 'Can view libro', 7, 'view_libro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$ncqfe1l4Uh8tbULfxRo5RC$wM5y1VtNQohpyAn4lpMdByNHCnVigj6fwWA22IOkUAo=', '2024-04-07 23:06:13.098111', 1, 'alex', '', '', 'agutierrezblancas@gmail.com', 1, 1, '2024-04-06 22:25:11.046232');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-07 23:09:25.671439', '1', 'libros los mejores celulares', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-08 22:10:29.040146', '1', 'Titulo: libros los mejores celulares - Descripcion: Hola', 3, '', 7, 1),
(3, '2024-04-09 04:32:07.955164', '2', 'Titulo: lo mejor en teconlogia - Descripcion: hola', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'libreria', 'libro'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-06 21:51:39.559263'),
(2, 'auth', '0001_initial', '2024-04-06 21:51:51.847435'),
(3, 'admin', '0001_initial', '2024-04-06 21:51:53.671725'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-06 21:51:53.815729'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-06 21:51:53.887731'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-06 21:51:55.484422'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-06 21:51:58.307194'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-06 21:51:58.532671'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-06 21:51:58.630425'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-06 21:51:59.509944'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-06 21:51:59.541194'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-06 21:51:59.615795'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-06 21:51:59.803738'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-06 21:51:59.965579'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-06 21:52:00.141573'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-06 21:52:00.242748'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-06 21:52:00.544987'),
(18, 'sessions', '0001_initial', '2024-04-06 21:52:02.045901'),
(19, 'libreria', '0001_initial', '2024-04-06 22:00:35.684809');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4ztp0lb1lwrmy18mrvjdg6zmrswos4co', '.eJxVjMEOwiAQRP-FsyFACxWP3v0GsssuUjWQlPZk_Hdp0oPeJm_ezFsE2NYctsZLmElchBanX4YQn1z2gh5Q7lXGWtZlRrkr8mibvFXi1_Vw_w4ytNzXIxttkzUJgVjHcWDiM-rBacAJnELkyLYD37Pxhhyx9y5NyjselBefLwWlOF4:1rtbaX:6JTeC2lBlJsuE4gTzjbc60sLEKUd_FB5fjONilcWxpA', '2024-04-21 23:06:13.166186');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_libro`
--

CREATE TABLE `libreria_libro` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libreria_libro`
--

INSERT INTO `libreria_libro` (`id`, `titulo`, `imagen`, `descripcion`) VALUES
(1, 'lo mejor en tecnologia', 'imagenes/sony-ericsson-w580-1958-g-alt.jpg', 'hola e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `libreria_libro`
--
ALTER TABLE `libreria_libro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `libreria_libro`
--
ALTER TABLE `libreria_libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de datos: `dbpos`
--
CREATE DATABASE IF NOT EXISTS `dbpos` DEFAULT CHARACTER SET utf32 COLLATE utf32_spanish2_ci;
USE `dbpos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_07_20_163039_create_pos_clients_table', 3),
(8, '2024_07_20_163338_create_pos_books_table', 4),
(9, '2024_07_20_164619_create_pos_orders_table', 5),
(10, '2024_07_20_170451_create_pos_order_details_table', 6),
(12, '2024_07_21_215806_add_payment_status_to_pos_order_table', 7),
(13, '2024_07_22_024337_add_image_to_pos_book_table', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `pos_book`
--

CREATE TABLE `pos_book` (
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `isbn` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `current_price` decimal(10,2) DEFAULT NULL,
  `image_book` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pos_book`
--

INSERT INTO `pos_book` (`book_id`, `isbn`, `name`, `stock`, `current_price`, `image_book`, `created_at`, `updated_at`) VALUES
(1, '1234567891023', 'el caballero', 14, '15.00', 'images/books/1721618105-libro2.jpg', '2024-07-21 08:50:03', '2024-07-22 03:34:31'),
(3, '1234567891039', 'el oscuro 4', 18, '14.99', 'images/books/1721618105-libro2.jpg', '2024-07-21 08:54:09', '2024-07-22 10:06:59'),
(4, '3334567891039', 'metamorfosis', 34, '17.99', 'images/books/1721618105-libro1.jpg', '2024-07-22 08:15:05', '2024-07-23 08:31:32'),
(5, '1231231231231', 'motrola', 23, '19.99', 'images/books/1721686140-motorola.jpg', '2024-07-23 03:09:00', '2024-07-23 03:09:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pos_client`
--

CREATE TABLE `pos_client` (
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `doc_type` tinyint(4) DEFAULT NULL,
  `doc_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pos_client`
--

INSERT INTO `pos_client` (`client_id`, `doc_type`, `doc_number`, `first_name`, `last_name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, '92345679', 'holawe', 'floreeeq', '919999777', 'qwe@gmail.com', '2024-07-21 02:54:35', '2024-07-22 11:12:23'),
(2, 2, '20345678222', 'holawe', 'floreee', '919999777', 'e@gmail.com', '2024-07-21 02:55:28', '2024-07-21 02:55:28'),
(4, 3, '12212', 'holawe', 'floreee', '919999777', 'e2@gmail.com', '2024-07-21 02:56:18', '2024-07-21 02:56:18'),
(10, 3, '252345678', 'holawe', 'floreee', '919999777', 'ewqwq@gmail.com', '2024-07-21 03:21:09', '2024-07-21 03:21:09'),
(11, 1, '92345629', 'holawe', 'floreee', '919999737', 'qwqe@gmail.com', '2024-07-21 11:02:41', '2024-07-21 11:02:41'),
(12, 1, '12345231', 'Metal', 'slug', '983456342', 'm@gmail.com', '2024-07-22 20:41:47', '2024-07-22 20:41:47'),
(13, 1, '23456678', 'Brisa', 'Flores', '987343454', 'awq@gmail.com', '2024-07-22 21:54:32', '2024-07-22 21:54:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pos_order`
--

CREATE TABLE `pos_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `doc_type` tinyint(4) DEFAULT NULL,
  `doc_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pos_order`
--

INSERT INTO `pos_order` (`order_id`, `client_id`, `total`, `doc_type`, `doc_number`, `last_name`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, '45.00', 1, '92345679', 'floreee', 'paid', '2024-07-22 03:28:08', '2024-07-22 03:35:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pos_order_detail`
--

CREATE TABLE `pos_order_detail` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `detail_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pos_order_detail`
--

INSERT INTO `pos_order_detail` (`order_detail_id`, `order_id`, `book_id`, `detail_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '15.00', 3, '2024-07-22 03:33:56', '2024-07-22 03:34:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `pos_book`
--
ALTER TABLE `pos_book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `pos_book_isbn_unique` (`isbn`);

--
-- Indices de la tabla `pos_client`
--
ALTER TABLE `pos_client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `pos_client_doc_number_unique` (`doc_number`),
  ADD UNIQUE KEY `pos_client_email_unique` (`email`);

--
-- Indices de la tabla `pos_order`
--
ALTER TABLE `pos_order`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `pos_order_client_id_unique` (`client_id`);

--
-- Indices de la tabla `pos_order_detail`
--
ALTER TABLE `pos_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `pos_order_detail_order_id_foreign` (`order_id`),
  ADD KEY `pos_order_detail_book_id_foreign` (`book_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pos_book`
--
ALTER TABLE `pos_book`
  MODIFY `book_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pos_client`
--
ALTER TABLE `pos_client`
  MODIFY `client_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pos_order`
--
ALTER TABLE `pos_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pos_order_detail`
--
ALTER TABLE `pos_order_detail`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pos_order`
--
ALTER TABLE `pos_order`
  ADD CONSTRAINT `pos_order_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `pos_client` (`client_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pos_order_detail`
--
ALTER TABLE `pos_order_detail`
  ADD CONSTRAINT `pos_order_detail_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `pos_book` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pos_order_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `pos_order` (`order_id`) ON DELETE CASCADE;
--
-- Base de datos: `dbsisinventario`
--
CREATE DATABASE IF NOT EXISTS `dbsisinventario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbsisinventario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 'Foto y video', NULL, 1, '2020-04-25 15:20:47', '2019-12-02 03:10:21'),
(2, 'Ordenadores y periféricos', NULL, 1, '2020-04-25 16:34:41', '2019-12-02 03:10:46'),
(3, 'accesorios para laptop', NULL, 1, '2020-07-03 01:36:07', '2020-07-03 01:36:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo`
--

CREATE TABLE `codigo` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpedido` int(10) UNSIGNED NOT NULL,
  `numcodigo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `codigo`
--

INSERT INTO `codigo` (`id`, `idpedido`, `numcodigo`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 1, '158785468259', 0, '2020-04-25 15:44:42', '2020-04-25 15:44:42'),
(2, 2, '158785559845', 0, '2020-04-25 15:59:58', '2020-04-25 15:59:58'),
(3, 3, '158785597020', 0, '2020-04-25 16:06:10', '2020-04-25 16:06:10'),
(4, 4, '158785646743', 0, '2020-04-25 16:14:27', '2020-04-25 16:14:27'),
(5, 6, '158786020187', 0, '2020-04-25 17:16:41', '2020-04-25 17:16:41'),
(6, 5, '158786025532', 0, '2020-04-25 17:17:35', '2020-04-25 17:17:35'),
(7, 7, '159093752239', 0, '2020-05-31 15:05:22', '2020-05-31 15:05:22'),
(8, 8, '159124664721', 0, '2020-06-04 04:57:27', '2020-06-04 04:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `idproveedor` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(1, 15, 1, 'FACTURA', '0001', '00001', '2020-06-30 16:48:18', '0.18', '20.00', 'Anulado', '2020-06-30 21:48:18', '2020-06-30 21:56:28'),
(2, 15, 1, 'FACTURA', '0001', '00001', '2020-06-30 16:48:30', '0.18', '20.00', 'Registrado', '2020-06-30 21:48:30', '2020-06-30 21:48:30'),
(3, 15, 1, 'FACTURA', '0001', '00002', '2020-06-30 16:55:31', '0.18', '100.00', 'Registrado', '2020-06-30 21:55:31', '2020-06-30 21:55:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despacho`
--

CREATE TABLE `despacho` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpedido` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `idvehiculo` int(10) UNSIGNED NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `despacho`
--

INSERT INTO `despacho` (`id`, `idpedido`, `idusuario`, `idvehiculo`, `estado`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 1, 'Entregado', 'NIGUNA', '2020-04-25 15:44:42', '2020-04-25 15:50:13'),
(2, 3, 14, 2, 'Entregado', NULL, '2020-04-25 16:06:10', '2020-04-25 16:08:17'),
(3, 4, 13, 1, 'Entregado', 'NINGUNA', '2020-04-25 16:14:30', '2020-04-25 16:15:19'),
(4, 6, 14, 2, 'Pendiente', NULL, '2020-04-25 17:16:41', '2020-04-25 17:16:41'),
(5, 5, 14, 1, 'Pendiente', NULL, '2020-04-25 17:17:35', '2020-04-25 17:17:35'),
(6, 7, 14, 2, 'Pendiente', NULL, '2020-05-31 15:05:29', '2020-05-31 15:05:29'),
(7, 8, 13, 1, 'Pendiente', 'xd', '2020-06-04 04:57:27', '2020-06-04 04:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcompra` int(10) UNSIGNED NOT NULL,
  `idproducto` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`id`, `idcompra`, `idproducto`, `cantidad`, `precio`) VALUES
(1, 1, 3, 1, '20.00'),
(2, 2, 3, 1, '20.00'),
(3, 3, 3, 5, '20.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idventa` int(10) UNSIGNED NOT NULL,
  `idproducto` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `idventa`, `idproducto`, `cantidad`, `precio`, `descuento`) VALUES
(1, 1, 3, 1, '18.00', '0.00'),
(2, 2, 1, 1, '15.00', '0.00'),
(3, 3, 1, 1, '15.00', '0.00'),
(4, 4, 2, 1, '20.00', '0.00'),
(5, 5, 4, 1, '180.00', '0.00'),
(6, 6, 1, 2, '220.00', '0.00'),
(7, 7, 2, 1, '200.00', '0.00'),
(8, 8, 2, 1, '200.00', '0.00'),
(9, 8, 1, 1, '220.00', '0.00'),
(10, 9, 3, 1, '25.00', '0.00'),
(11, 10, 6, 2, '75.00', '0.00'),
(12, 11, 6, 2, '75.00', '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddespacho` int(10) UNSIGNED NOT NULL,
  `PEP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrega`
--

INSERT INTO `entrega` (`id`, `iddespacho`, `PEP`, `estado`, `motivo`, `created_at`, `updated_at`) VALUES
(1, 1, 'no', 'Entregado', 'no me llego mis productos', '2020-04-25 15:50:13', '2020-04-25 15:50:13'),
(2, 2, 'no', 'Entregado', 'PRUEBA', '2020-04-25 16:08:17', '2020-04-25 16:08:17'),
(3, 3, 'no', 'Entregado', 'PROBANDO', '2020-04-25 16:15:20', '2020-04-25 16:15:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega_perfecta_pretest`
--

CREATE TABLE `entrega_perfecta_pretest` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` int(11) NOT NULL,
  `fecha_consulta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ped_ep` int(11) NOT NULL,
  `tot_pe` int(11) NOT NULL,
  `entrega_perfecta_pretest` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrega_perfecta_pretest`
--

INSERT INTO `entrega_perfecta_pretest` (`id`, `item`, `fecha_consulta`, `ped_ep`, `tot_pe`, `entrega_perfecta_pretest`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-02', 5, 7, '71.43', '2020-04-25 17:21:49', '2020-05-27 18:09:35'),
(2, 2, '2020-01-03', 4, 5, '80.00', '2020-05-24 18:17:52', '2020-05-27 18:10:50'),
(3, 3, '2020-01-04', 6, 7, '85.71', '2020-05-24 18:18:51', '2020-05-27 18:11:23'),
(4, 4, '2020-01-06', 4, 5, '80.00', '2020-05-24 18:19:47', '2020-05-27 18:12:17'),
(5, 5, '2020-01-07', 3, 4, '75.00', '2020-05-24 18:20:24', '2020-05-27 18:13:52'),
(6, 6, '2020-01-08', 5, 7, '71.43', '2020-05-24 18:21:23', '2020-05-27 18:14:31'),
(7, 7, '2020-01-09', 4, 6, '66.67', '2020-05-24 18:22:03', '2020-05-27 18:16:07'),
(8, 8, '2020-01-10', 4, 5, '80.00', '2020-05-24 18:22:35', '2020-05-27 18:17:09'),
(9, 9, '2020-01-11', 6, 7, '85.71', '2020-05-24 18:23:21', '2020-05-27 18:19:13'),
(10, 10, '2020-01-13', 5, 6, '83.33', '2020-05-24 18:23:46', '2020-05-27 18:19:58'),
(11, 11, '2020-01-14', 3, 4, '75.00', '2020-05-24 18:24:37', '2020-05-27 18:20:59'),
(12, 12, '2020-01-15', 2, 3, '66.67', '2020-05-24 18:25:14', '2020-05-27 18:21:49'),
(13, 13, '2020-01-16', 5, 6, '83.33', '2020-05-24 18:29:32', '2020-05-27 18:22:46'),
(14, 14, '2020-01-17', 4, 5, '80.00', '2020-05-24 18:30:05', '2020-05-27 18:23:27'),
(15, 15, '2020-01-18', 5, 7, '71.43', '2020-05-24 18:36:43', '2020-05-27 18:24:10'),
(16, 16, '2020-01-20', 5, 6, '83.33', '2020-05-24 18:37:31', '2020-05-27 18:25:04'),
(17, 17, '2020-01-21', 4, 5, '80.00', '2020-05-24 18:39:20', '2020-05-27 18:25:48'),
(18, 18, '2020-01-22', 2, 3, '66.67', '2020-05-24 18:40:04', '2020-05-27 18:26:15'),
(19, 19, '2020-01-23', 5, 8, '62.50', '2020-05-24 18:42:10', '2020-05-27 18:27:10'),
(20, 20, '2020-01-24', 6, 7, '85.71', '2020-05-24 18:42:55', '2020-05-27 18:27:46'),
(21, 21, '2020-01-25', 5, 6, '83.33', '2020-05-24 18:43:18', '2020-05-27 18:28:30'),
(22, 22, '2020-01-27', 4, 5, '80.00', '2020-05-24 18:43:34', '2020-05-27 18:29:07'),
(23, 23, '2020-01-28', 6, 7, '85.71', '2020-05-24 18:44:18', '2020-05-27 18:29:54'),
(24, 24, '2020-01-29', 5, 6, '83.33', '2020-05-24 18:44:46', '2020-05-27 18:30:20'),
(25, 25, '2020-01-30', 4, 5, '80.00', '2020-05-24 18:45:17', '2020-05-27 18:30:51'),
(26, 26, '2020-01-31', 5, 7, '71.43', '2020-05-24 18:45:56', '2020-05-27 18:31:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega_tiempo_pretest`
--

CREATE TABLE `entrega_tiempo_pretest` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` int(11) NOT NULL,
  `fecha_consulta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ped_et` int(11) NOT NULL,
  `tot_pe` int(11) NOT NULL,
  `entrega_tiempo_pretest` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrega_tiempo_pretest`
--

INSERT INTO `entrega_tiempo_pretest` (`id`, `item`, `fecha_consulta`, `ped_et`, `tot_pe`, `entrega_tiempo_pretest`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-02', 6, 7, '85.71', '2020-04-25 17:25:01', '2020-05-27 18:33:54'),
(20, 2, '2020-01-03', 4, 5, '80.00', '2020-05-24 18:55:36', '2020-05-27 18:34:21'),
(21, 3, '2020-01-04', 6, 7, '85.71', '2020-05-24 18:56:05', '2020-05-27 18:35:05'),
(22, 4, '2020-01-06', 4, 5, '80.00', '2020-05-24 18:56:40', '2020-05-27 18:35:28'),
(23, 5, '2020-01-07', 3, 4, '75.00', '2020-05-24 18:57:03', '2020-05-27 18:35:58'),
(24, 6, '2020-01-08', 5, 7, '71.43', '2020-05-24 18:57:34', '2020-05-27 18:36:29'),
(25, 7, '2020-01-09', 4, 6, '66.67', '2020-05-24 18:58:54', '2020-05-27 18:37:02'),
(26, 8, '2020-01-10', 3, 5, '60.00', '2020-05-24 18:59:41', '2020-05-27 18:37:35'),
(27, 9, '2020-01-11', 6, 7, '85.71', '2020-05-24 19:00:22', '2020-05-27 18:38:23'),
(28, 10, '2020-01-13', 5, 6, '83.33', '2020-05-24 19:00:45', '2020-05-27 18:39:08'),
(29, 11, '2020-01-14', 3, 4, '75.00', '2020-05-24 19:01:28', '2020-05-27 18:39:45'),
(30, 12, '2020-01-15', 2, 3, '66.67', '2020-05-24 19:01:54', '2020-05-27 18:40:34'),
(31, 13, '2020-01-16', 5, 6, '83.33', '2020-05-24 19:02:29', '2020-05-27 18:41:17'),
(32, 14, '2020-01-17', 3, 5, '60.00', '2020-05-24 19:02:47', '2020-05-27 18:41:56'),
(33, 15, '2020-01-18', 6, 7, '85.71', '2020-05-24 19:05:00', '2020-05-27 18:42:24'),
(34, 16, '2020-01-20', 4, 6, '66.67', '2020-05-24 19:05:42', '2020-05-27 18:43:13'),
(35, 17, '2020-01-21', 3, 5, '60.00', '2020-05-24 19:06:02', '2020-05-27 18:43:47'),
(36, 18, '2020-01-22', 2, 3, '66.67', '2020-05-24 19:06:38', '2020-05-27 18:44:32'),
(37, 19, '2020-01-23', 6, 8, '75.00', '2020-05-24 19:07:12', '2020-05-27 18:45:05'),
(38, 20, '2020-01-24', 5, 7, '71.43', '2020-05-24 19:07:57', '2020-05-27 18:45:53'),
(39, 21, '2020-01-25', 4, 6, '66.67', '2020-05-24 19:08:33', '2020-05-27 18:46:29'),
(40, 22, '2020-01-27', 3, 5, '60.00', '2020-05-24 19:09:19', '2020-05-27 18:47:01'),
(41, 23, '2020-01-28', 6, 7, '85.71', '2020-05-24 19:10:01', '2020-05-27 18:47:27'),
(42, 24, '2020-01-29', 5, 6, '83.33', '2020-05-24 19:10:25', '2020-05-27 18:47:59'),
(43, 25, '2020-01-30', 4, 5, '80.00', '2020-05-24 19:10:50', '2020-05-27 18:48:25'),
(44, 26, '2020-01-31', 5, 7, '71.43', '2020-05-24 19:11:36', '2020-05-27 18:48:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_03_29_192956_create_unidad_medida_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_01_042911_create_categorias_table', 1),
(4, '2018_10_03_043603_create_productos_table', 1),
(5, '2018_10_03_220449_create_personas_table', 1),
(6, '2018_10_03_233732_create_proveedores_table', 1),
(7, '2018_10_04_021715_create_roles_table', 1),
(8, '2018_10_05_000000_create_users_table', 1),
(9, '2018_10_06_230451_create_compras_table', 1),
(10, '2018_10_06_231439_create_detalle_compras_table', 1),
(11, '2018_10_09_035907_create_ventas_table', 1),
(12, '2018_10_09_040044_create_detalle_ventas_table', 1),
(13, '2018_10_11_193728_create_notifications_table', 1),
(14, '2019_08_30_181020_create_pedido_table', 1),
(15, '2020_03_02_174611_create_codigo_table', 1),
(16, '2020_03_04_154400_create_vehiculo_table', 1),
(17, '2020_03_06_110629_create_despacho_table', 1),
(18, '2020_03_09_114248_create_entrega_table', 1),
(19, '2020_03_11_155112_create_entrega_perfecta_pretest_table', 1),
(20, '2020_03_11_155232_create_entrega_tiempo_pretest_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('05f5d193-4c7b-45c2-9522-69bc13763c6a', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:15', '2020-07-03 01:44:15'),
('0a90867e-8118-4170-9740-5f612fb4c169', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:43:54', '2020-04-25 15:43:54'),
('115de9f2-58f1-48d8-9e90-49e22bb93142', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:10', '2020-06-30 21:48:25', '2020-07-03 01:30:10'),
('14bef197-636e-42f5-85fc-3823eed6eb58', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:55:32', '2020-06-30 21:55:32'),
('165b3908-3053-4129-9125-5efc8491e5ea', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-06-04 04:55:35', '2020-06-04 04:55:35'),
('16c837ed-a4f2-4d45-b26d-9b012a0ebff4', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 17:04:37', '2020-04-27 00:39:41'),
('181c43b7-7019-4408-8b5d-ecc00ecf3c1b', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:09:42', '2020-04-25 17:09:42'),
('18caa7a2-bffe-4873-9928-f32ea550fae7', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:04:38', '2020-04-25 17:04:38'),
('1d7e874f-b6e4-4171-9065-ffb27dc62a3e', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-03 16:59:56', '2020-05-31 15:04:51', '2020-06-03 16:59:56'),
('204fecd0-42da-4966-b496-47f7d8921579', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-06-04 04:55:36', '2020-06-30 21:58:59'),
('21f52881-bfbd-47e0-bc34-e1bb0f61dcf9', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-06-04 04:55:34', '2020-06-30 21:57:31'),
('23632500-75f2-4b0b-bd0c-722e5fa4d5b0', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 17:04:38', '2020-06-30 21:57:31'),
('276e1306-c50f-4522-b5f8-6b092862db76', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-08 21:35:37', '2020-07-03 01:44:16', '2020-07-08 21:35:37'),
('39d64e8a-3d2b-4778-b4ae-9ff41566f7fe', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-05-31 15:04:55', '2020-05-31 15:04:55'),
('3c7d4539-85b5-4ff7-9a4d-220a264f6fe2', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:24', '2020-07-03 01:44:24'),
('3f695d41-dc86-4c42-897c-c6edfe137aa4', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:59:00', '2020-04-25 15:43:54', '2020-06-30 21:59:00'),
('3fd16140-42b8-4c55-86ce-4c774854ab98', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 16:05:45', '2020-04-27 00:39:41'),
('42b2086e-b84e-47c9-b3a1-5f82915013d8', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:21', '2020-07-03 01:44:21'),
('4dfa44f5-1bbc-470a-8cea-929d15c89960', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:07', '2020-06-30 22:04:08', '2020-07-01 07:16:07'),
('4e741617-90cb-4d73-8abe-9aa726b4a677', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 22:04:17', '2020-06-30 22:04:17'),
('4ec614e8-8c99-4440-a180-d5d5ef2aafbd', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 17:09:42', '2020-06-30 21:58:59'),
('5290effa-83f4-4fc7-9a3d-1e4103e45c7e', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 16:13:46', '2020-04-27 00:39:41'),
('5672aeda-aefe-49e8-a17a-c2fee7cec9f3', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:36', '2020-06-30 21:48:36'),
('5fb981fb-76ae-432f-95e5-2518c3eced67', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 15:43:54', '2020-06-30 21:57:31'),
('6e0eff7b-20e8-424a-b5a9-a9ed3eb7768c', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:55:32', '2020-06-30 21:55:32'),
('7243ced1-7840-471e-a208-f48356cd2fc2', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 16:13:47', '2020-06-30 21:57:31'),
('74fdf3bf-d676-4d0b-a5ee-ea5062d02c08', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:21', '2020-07-03 01:44:21'),
('75253544-0fae-4252-a6e4-3d6eb886a2f3', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 16:13:47', '2020-06-30 21:58:59'),
('770d12a6-e20a-401c-aa58-440eafc98a89', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-05-31 15:04:54', '2020-06-30 21:57:31'),
('7cae6367-49dc-43ef-b733-c9db0941e09e', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-09 05:48:23', '2020-07-03 01:44:12', '2020-07-09 05:48:23'),
('80b814c3-bf28-4d85-b237-83dac98b0bc0', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 15:54:57', '2020-04-27 00:39:41'),
('8747f8d9-39a7-498f-a322-9f5ee9093d88', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-05-31 15:04:55', '2020-06-30 21:58:59'),
('874c8bb4-bcda-4450-9983-48eeaf63310a', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:13:47', '2020-04-25 16:13:47'),
('8766ff1f-2421-4576-8cf1-22bb1870a979', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:05:46', '2020-04-25 16:05:46'),
('8977f74e-9c31-459c-8a91-3fb841eeb47c', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 22:04:19', '2020-06-30 22:04:19'),
('8a72c0d4-c314-4207-b2b7-4b6f57093d2d', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-07 07:37:38', '2020-06-04 04:55:28', '2020-06-07 07:37:38'),
('8be437c4-76dc-4ebb-a3e7-f98e33903168', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 22:04:16', '2020-06-30 22:04:16'),
('8f94a7de-331c-48e1-900b-935c384481d6', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 17:04:38', '2020-06-30 21:58:59'),
('8fc69958-7c45-424d-bded-d017fd98a3ee', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:04:38', '2020-04-25 17:04:38'),
('969a2209-63a5-4e4f-b92e-6df70481e338', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 17:09:42', '2020-06-30 21:57:31'),
('984bc330-c800-4d67-87b5-a0f7106661a7', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 17:09:42', '2020-04-27 00:39:41'),
('999ffb96-ccb2-447d-84f1-eea3e76da104', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:55:32', '2020-06-30 21:55:32'),
('a46862ea-bebb-4ceb-84a3-265a9144c662', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:07', '2020-06-30 21:48:30', '2020-07-01 07:16:07'),
('a4c3a4c8-1c4c-45b7-8bef-16d19d61e366', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:29', '2020-06-30 21:48:29'),
('a4fefb86-d181-4217-80d9-2c37b5b2ec11', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-06-04 04:55:35', '2020-06-04 04:55:35'),
('af7e5915-ec17-4b38-8691-91c98a778d23', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 15:54:58', '2020-06-30 21:58:59'),
('afda6fde-f076-4ef8-b2e2-ecccbf5bd9ce', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:13', '2020-07-03 01:44:13'),
('b12a5406-f319-404e-b54f-87fc2d98c82a', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-08 21:35:38', '2020-07-03 01:44:05', '2020-07-08 21:35:38'),
('b90f9fef-715e-43d2-a14e-7ce8e5d3ee79', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:13:47', '2020-04-25 16:13:47'),
('bb7c06a0-9a05-4877-9803-eaaf4e3af139', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 16:05:46', '2020-06-30 21:57:31'),
('c148939b-35f5-44f8-a991-41b9fa088065', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:35', '2020-06-30 21:48:35'),
('c3a54b25-d98a-4739-a083-7946e0cc151a', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:54:58', '2020-04-25 15:54:58'),
('ca552912-f559-4187-9368-17af969b4a85', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:27', '2020-06-30 21:48:27'),
('cd772075-6fd8-4687-a9e9-a4872fcc435f', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:13', '2020-07-03 01:44:13'),
('cf28dc13-c41e-408c-bf5e-4bb2f2d59430', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:08', '2020-06-30 21:48:18', '2020-07-01 07:16:08'),
('d023cd25-4b04-4bcc-91cf-581be579cbbb', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:10', '2020-06-30 21:55:32', '2020-07-03 01:30:10'),
('d3374095-433b-415f-80c0-5fb5564f0d33', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:43:54', '2020-04-25 15:43:54'),
('d87150be-ee49-49a7-b792-35252075acc6', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 16:05:46', '2020-06-30 21:58:59'),
('dfebfdc6-1a4b-4485-9199-5373571cc11b', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:07', '2020-06-30 21:55:31', '2020-07-01 07:16:07'),
('e1b5975e-dbff-4e77-930b-83ee110ce060', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:09:42', '2020-04-25 17:09:42'),
('e3210ab0-4451-49b7-abe9-874b968b7f31', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:05:46', '2020-04-25 16:05:46'),
('e40a9f73-1f45-46d2-b18b-37e7de14dddc', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:54:58', '2020-04-25 15:54:58'),
('e537591d-d86e-4f50-8625-18714acab9b6', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:34', '2020-06-30 21:48:34'),
('eb44cdde-05d9-4707-938e-1e31ed385bf5', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 15:54:57', '2020-06-30 21:57:31'),
('ee3f3748-57ae-4c1c-b57b-4ce97350b6f3', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:27', '2020-06-30 21:48:27'),
('effd134a-19c3-41d1-bf9c-9d49dcbbdc15', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:09', '2020-06-30 22:04:16', '2020-07-03 01:30:09'),
('f3bcccd9-67b1-4a7f-9736-084c74f782da', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:10', '2020-06-30 21:48:33', '2020-07-03 01:30:10'),
('f992e28f-2d87-4276-a125-849faecbebaa', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-05-31 15:04:54', '2020-05-31 15:04:54'),
('f9d1679d-3598-4a91-8823-f85be4d72d52', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 15:43:53', '2020-04-27 00:39:41'),
('faab92b7-57fe-468c-af31-3eae9a83db59', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-09 05:48:23', '2020-07-03 01:44:21', '2020-07-09 05:48:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(10) UNSIGNED NOT NULL,
  `idventa` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `num_pedido` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir_enviar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_enviar` date NOT NULL,
  `hora_enviar` time NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `idventa`, `idusuario`, `num_pedido`, `dir_enviar`, `fecha_enviar`, `hora_enviar`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '00001', 'ATE', '2020-04-25', '18:00:00', NULL, 'Entregado', '2020-04-25 15:43:53', '2020-04-25 15:44:42'),
(3, 3, 1, '00002', 'LORETO', '2020-04-25', '19:00:00', NULL, 'Entregado', '2020-04-25 16:05:45', '2020-04-25 16:06:10'),
(4, 4, 1, '00003', 'SANTA ANITA', '2020-04-25', '19:00:00', NULL, 'Entregado', '2020-04-25 16:13:45', '2020-04-25 16:14:27'),
(5, 5, 1, '00004', 'Av. Los metalicos 655', '2020-01-09', '15:07:00', NULL, 'Entregado', '2020-04-25 17:04:37', '2020-04-25 17:17:35'),
(6, 6, 1, '00005', 'Calle Ayacucho 784', '2020-01-09', '17:45:00', NULL, 'Entregado', '2020-04-25 17:09:42', '2020-04-25 17:16:41'),
(7, 7, 1, '00006', 'mi casa', '2020-05-31', '10:05:00', NULL, 'Entregado', '2020-05-31 15:04:50', '2020-05-31 15:05:29'),
(8, 8, 1, '00007', 'chosica', '2020-06-04', '18:00:00', NULL, 'Entregado', '2020-06-04 04:55:27', '2020-06-04 04:57:27'),
(9, 9, 4, '00008', 'a', '2020-06-30', '18:03:00', NULL, 'Pendiente', '2020-06-30 22:04:08', '2020-06-30 22:04:08'),
(10, 10, 1, '00009', 'AV. LOS NOGALES 333', '2020-07-03', '22:43:00', NULL, 'Pendiente', '2020-07-03 01:44:04', '2020-07-03 01:44:04'),
(11, 11, 1, '00010', 'AV. LOS NOGALES 333', '2020-07-03', '22:43:00', NULL, 'Pendiente', '2020-07-03 01:44:16', '2020-07-03 01:44:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_persona` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brevete` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `brevete`, `created_at`, `updated_at`) VALUES
(1, 'Cliente', 'Alex Gutierrez', 'DNI', '12345678', 'La Molina', '980633655', 'alexfus8@gmail.com', '', NULL, '2020-03-23 03:25:09'),
(2, 'Proveedor', 'IQfarma', 'RUC', '20100287791', 'Avenida Santa Rosa 350  Santa Anita - Lima', '6120707', 'iqfarma@pedidos.com', '', '2019-04-17 01:30:10', '2019-05-03 20:18:38'),
(3, 'Proveedor', 'PROMART', 'RUC', '12345678963', 'LINCE', '99999', 'jhoan@infobox-peru.com', '', '2019-09-23 12:50:22', '2020-02-05 01:54:23'),
(4, 'Usuario', 'vendedor', 'DNI', '12345879', NULL, NULL, NULL, '', '2019-10-09 13:21:32', '2020-02-19 02:16:00'),
(5, 'Cliente', 'Sofia Cardenas', 'DNI', '73682819', 'Av. Argentina 534', '989345677', 'scardenas@gmail.com', '', '2019-10-17 22:00:34', '2020-04-25 16:54:42'),
(7, 'Usuario', 'almacenero', 'DNI', '73682869', 'huaycan', NULL, 'almacenero@gmail.com', NULL, '2019-10-17 22:13:44', '2020-03-26 07:30:15'),
(8, 'Cliente', 'Miguel Flores', 'DNI', '73668281', 'Av. La Mar 753', '989454567', 'mflores@gmail.com', '', '2019-11-28 04:23:08', '2020-04-25 16:53:42'),
(10, 'Cliente', 'Mauricio Gil', 'DNI', '75665665', 'Calle Lima 555', '989434221', 'mgil@gmail.com', '', '2020-02-14 02:30:51', '2019-12-02 03:14:45'),
(11, 'Cliente', 'Ralf Fernandez', 'DNI', '45667767', 'Av. Las Palmeras 333', '985467895', 'rfernandez22@gmail.com', '', '2020-02-19 01:27:23', '2019-12-02 03:13:36'),
(12, 'Cliente', 'Erving Tito', 'DNI', '34231244', 'Av. Los Eucaliptos 222', '984534342', 'etito@gmail.com', '', '2020-02-19 02:09:52', '2019-12-02 03:12:25'),
(13, 'Usuario', 'Lenin William Ordoñez Lozano', 'DNI', '09842063', NULL, NULL, NULL, 'Q09842063', '2020-03-03 22:53:34', '2020-04-25 16:29:27'),
(14, 'Usuario', 'Julio Cóndor', 'DNI', '34562321', NULL, NULL, NULL, 'Q07954456', '2020-04-19 02:41:23', '2020-07-08 21:38:43'),
(15, 'Proveedor', 'RMS Tecnologia S.A.C.', 'RUC', '20601923345', 'Av. Calle El Olimpo 123', '989745453', 'rmstecnologia@gmail.com', NULL, '2019-12-02 03:29:57', '2019-12-02 03:29:57'),
(16, 'Proveedor', 'JTR Repuestos generales S.A.', 'RUC', '20603345556', 'Calle Shell 565', '3680987', 'jtrgenerales@gmail.com', NULL, '2019-12-02 03:32:03', '2019-12-02 03:32:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcategoria` int(10) UNSIGNED NOT NULL,
  `idunidad_medida` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `precio_venta`, `stock`, `descripcion`, `fecha_vencimiento`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '001', 'Flash Canon', '415.00', 10, 'Fotografia', NULL, 1, '2020-04-25 15:31:06', '2019-12-02 03:25:12'),
(2, 2, 1, '002', 'Mouse gamer HP', '55.00', 20, 'Accesorio para computadora', NULL, 1, '2020-04-25 15:31:43', '2019-12-02 03:49:04'),
(3, 2, 1, '003', 'Logitech', '25.00', 30, 'negro', NULL, 1, '2020-04-25 15:37:07', '2020-06-30 21:55:50'),
(4, 2, 1, '004', 'Teclador gamer Halion', '45.00', 20, 'Accesorio para computadora', NULL, 1, '2020-04-25 16:43:53', '2019-12-02 03:19:40'),
(5, 2, 1, '005', 'Audífono HP', '35.00', 10, 'Accesorio para computadora', NULL, 1, '2019-12-02 03:21:55', '2019-12-02 03:22:14'),
(6, 3, 1, '008', 'cooler metalico', '75.00', 22, NULL, NULL, 1, '2020-07-03 01:37:44', '2020-07-03 01:39:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `contacto`, `telefono_contacto`) VALUES
(15, 'Ralf Marticorena', '989456443'),
(16, 'Junior Tabraj', '989645534');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'Administrador', 'Administradores de área', 1),
(2, 'Vendedor', 'Vendedor área venta', 1),
(3, 'Almacenero', 'Almacenero área compras', 1),
(4, 'Transportista', 'Encargado de repartir los productos solicitados', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefijo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id`, `nombre`, `prefijo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Unidad', 'Und', 1, NULL, NULL),
(2, 'Caja', 'Cja', 1, NULL, NULL),
(3, 'Paquete', 'Pqt', 1, NULL, NULL),
(4, 'Ciento', 'Cto', 1, NULL, NULL),
(5, 'Paquete x 100', 'PQ100', 1, NULL, NULL),
(6, 'Kilogramo', 'Kg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `idrol` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `condicion`, `idrol`, `remember_token`) VALUES
(1, 'admin', '$2y$10$X7jXmruxEQ2PTkpeXVb05ew72JDNeyJeeurR9ToksfoWSdmQJ6/2C', 1, 1, 's2DJFzO686UQTIrnEA0j8hvga3SwKhwEfK8eAGJANisQ8BCDK5TD1fsfixaF'),
(7, 'almacenero', '$2y$10$bGyB0NzrxloaOCE9L5l7fuA9hSZS4RUTSMcFW1sCp0Dar08wSdvim', 1, 3, 'RlwkY48DSjI4iMmvy9q2S8xCHltEud8x50LXedWgrNWGLClzmDiXGW8slcaW'),
(13, 'transportista1', '$2y$10$uHp9GPAFBbnwOP4qonbwmOjkAbFsc/2daubRJXFafs9CJrq1ED58q', 1, 4, 'aEkqoa0vOQWfSJVKGhPhHnV7RIOPxCHA0nE0Zar04LqS2mNNpJvUZxcgt7Jy'),
(14, 'transportista2', '$2y$10$bsxJVSkDVavK2knGXWWOhexJPNn1yRZAix8IW5JJN7NdVLw7ALYSW', 1, 4, 'NikpbpticrSxmPiyD4KZXDYswtAnjemlI6iV0LIJtSi5ThyDhE1U1e5UEYZH'),
(4, 'vendedor', '$2y$10$66JQ1l90Q8iBOb7VfD0/s.lZ8ayCGMRAn7uRSQ8k/inhZ5S0ymN5a', 1, 2, 'FsglAMqH4kXRTCToL3IlpP90PA0WBH8LzTL65dULsqNJT8wERNWPc7qegi5l');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` int(10) UNSIGNED NOT NULL,
  `marca` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id`, `marca`, `placa`, `created_at`, `updated_at`) VALUES
(1, 'HYUNDAI', 'QAS706', NULL, NULL),
(2, 'HYUNDAI ROJO', 'TUS705', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcliente` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'BOLETA DE VENTA', '004', '00001', '2020-04-25 17:43:53', '0.00', '18.00', 'Registrado', '2020-04-25 15:43:53', '2020-04-25 15:43:53'),
(3, 5, 1, 'BOLETA DE VENTA', '001', '00002', '2020-04-25 18:05:45', '0.00', '15.00', 'Registrado', '2020-04-25 16:05:45', '2020-04-25 16:05:45'),
(4, 1, 1, 'BOLETA DE VENTA', '001', '00003', '2020-04-25 18:13:45', '0.00', '20.00', 'Registrado', '2020-04-25 16:13:45', '2020-04-25 16:13:45'),
(5, 11, 1, 'BOLETA DE VENTA', '001', '00004', '2020-04-25 19:04:37', '0.00', '180.00', 'Registrado', '2020-04-25 17:04:37', '2020-04-25 17:04:37'),
(6, 10, 1, 'BOLETA DE VENTA', '001', '00005', '2020-04-25 19:09:42', '0.00', '440.00', 'Registrado', '2020-04-25 17:09:42', '2020-04-25 17:09:42'),
(7, 1, 1, 'BOLETA DE VENTA', '001', '00006', '2020-05-31 10:04:50', '0.00', '200.00', 'Registrado', '2020-05-31 15:04:50', '2020-05-31 15:04:50'),
(8, 1, 1, 'BOLETA DE VENTA', '001', '00007', '2020-06-03 23:55:27', '0.00', '420.00', 'Registrado', '2020-06-04 04:55:27', '2020-06-04 04:55:27'),
(9, 1, 4, 'BOLETA DE VENTA', '001', '00008', '2020-06-30 17:04:07', '0.00', '25.00', 'Registrado', '2020-06-30 22:04:07', '2020-06-30 22:04:07'),
(10, 1, 1, 'FACTURA', '001', '00001', '2020-07-02 20:44:04', '0.18', '150.00', 'Registrado', '2020-07-03 01:44:04', '2020-07-03 01:44:04'),
(11, 1, 1, 'FACTURA', '001', '00001', '2020-07-02 20:44:16', '0.18', '150.00', 'Registrado', '2020-07-03 01:44:16', '2020-07-03 01:44:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_nombre_unique` (`nombre`);

--
-- Indices de la tabla `codigo`
--
ALTER TABLE `codigo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo_idpedido_foreign` (`idpedido`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_idproveedor_foreign` (`idproveedor`),
  ADD KEY `compras_idusuario_foreign` (`idusuario`);

--
-- Indices de la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `despacho_idpedido_foreign` (`idpedido`),
  ADD KEY `despacho_idusuario_foreign` (`idusuario`),
  ADD KEY `despacho_idvehiculo_foreign` (`idvehiculo`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_compras_idcompra_foreign` (`idcompra`),
  ADD KEY `detalle_compras_idproducto_foreign` (`idproducto`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_ventas_idventa_foreign` (`idventa`),
  ADD KEY `detalle_ventas_idproducto_foreign` (`idproducto`);

--
-- Indices de la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrega_iddespacho_foreign` (`iddespacho`);

--
-- Indices de la tabla `entrega_perfecta_pretest`
--
ALTER TABLE `entrega_perfecta_pretest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entrega_perfecta_pretest_item_unique` (`item`);

--
-- Indices de la tabla `entrega_tiempo_pretest`
--
ALTER TABLE `entrega_tiempo_pretest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entrega_tiempo_pretest_item_unique` (`item`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_idventa_foreign` (`idventa`),
  ADD KEY `pedido_idusuario_foreign` (`idusuario`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personas_nombre_unique` (`nombre`),
  ADD UNIQUE KEY `personas_num_documento_unique` (`num_documento`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productos_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `productos_nombre_unique` (`nombre`),
  ADD KEY `productos_idcategoria_foreign` (`idcategoria`),
  ADD KEY `productos_idunidad_medida_foreign` (`idunidad_medida`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD KEY `proveedores_id_foreign` (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nombre_unique` (`nombre`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_usuario_unique` (`usuario`),
  ADD KEY `users_id_foreign` (`id`),
  ADD KEY `users_idrol_foreign` (`idrol`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_idcliente_foreign` (`idcliente`),
  ADD KEY `ventas_idusuario_foreign` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `codigo`
--
ALTER TABLE `codigo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `despacho`
--
ALTER TABLE `despacho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `entrega_perfecta_pretest`
--
ALTER TABLE `entrega_perfecta_pretest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `entrega_tiempo_pretest`
--
ALTER TABLE `entrega_tiempo_pretest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_idproveedor_foreign` FOREIGN KEY (`idproveedor`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `compras_idusuario_foreign` FOREIGN KEY (`idusuario`) REFERENCES `users` (`id`);
--
-- Base de datos: `dbsoluflash`
--
CREATE DATABASE IF NOT EXISTS `dbsoluflash` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbsoluflash`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 'Foto y video', NULL, 1, '2020-04-25 15:20:47', '2019-12-02 03:10:21'),
(2, 'Ordenadores y periféricos', NULL, 1, '2020-04-25 16:34:41', '2019-12-02 03:10:46'),
(3, 'accesorios para laptop', NULL, 1, '2020-07-03 01:36:07', '2020-07-03 01:36:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo`
--

CREATE TABLE `codigo` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpedido` int(10) UNSIGNED NOT NULL,
  `numcodigo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `codigo`
--

INSERT INTO `codigo` (`id`, `idpedido`, `numcodigo`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 1, '158785468259', 0, '2020-04-25 15:44:42', '2020-04-25 15:44:42'),
(2, 2, '158785559845', 0, '2020-04-25 15:59:58', '2020-04-25 15:59:58'),
(3, 3, '158785597020', 0, '2020-04-25 16:06:10', '2020-04-25 16:06:10'),
(4, 4, '158785646743', 0, '2020-04-25 16:14:27', '2020-04-25 16:14:27'),
(5, 6, '158786020187', 0, '2020-04-25 17:16:41', '2020-04-25 17:16:41'),
(6, 5, '158786025532', 0, '2020-04-25 17:17:35', '2020-04-25 17:17:35'),
(7, 7, '159093752239', 0, '2020-05-31 15:05:22', '2020-05-31 15:05:22'),
(8, 8, '159124664721', 0, '2020-06-04 04:57:27', '2020-06-04 04:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `idproveedor` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(1, 15, 1, 'FACTURA', '0001', '00001', '2020-06-30 16:48:18', '0.18', '20.00', 'Anulado', '2020-06-30 21:48:18', '2020-06-30 21:56:28'),
(2, 15, 1, 'FACTURA', '0001', '00001', '2020-06-30 16:48:30', '0.18', '20.00', 'Registrado', '2020-06-30 21:48:30', '2020-06-30 21:48:30'),
(3, 15, 1, 'FACTURA', '0001', '00002', '2020-06-30 16:55:31', '0.18', '100.00', 'Registrado', '2020-06-30 21:55:31', '2020-06-30 21:55:31');

--
-- Disparadores `compras`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockCompraAnular` AFTER UPDATE ON `compras` FOR EACH ROW BEGIN
    	UPDATE productos p JOIN detalle_compras dc
	    ON dc.idproducto = p.id
	    AND dc.idcompra = new.id
	    SET p.stock = p.stock - dc.cantidad;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despacho`
--

CREATE TABLE `despacho` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpedido` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `idvehiculo` int(10) UNSIGNED NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `despacho`
--

INSERT INTO `despacho` (`id`, `idpedido`, `idusuario`, `idvehiculo`, `estado`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 1, 'Entregado', 'NIGUNA', '2020-04-25 15:44:42', '2020-04-25 15:50:13'),
(2, 3, 14, 2, 'Entregado', NULL, '2020-04-25 16:06:10', '2020-04-25 16:08:17'),
(3, 4, 13, 1, 'Entregado', 'NINGUNA', '2020-04-25 16:14:30', '2020-04-25 16:15:19'),
(4, 6, 14, 2, 'Pendiente', NULL, '2020-04-25 17:16:41', '2020-04-25 17:16:41'),
(5, 5, 14, 1, 'Pendiente', NULL, '2020-04-25 17:17:35', '2020-04-25 17:17:35'),
(6, 7, 14, 2, 'Pendiente', NULL, '2020-05-31 15:05:29', '2020-05-31 15:05:29'),
(7, 8, 13, 1, 'Pendiente', 'xd', '2020-06-04 04:57:27', '2020-06-04 04:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcompra` int(10) UNSIGNED NOT NULL,
  `idproducto` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`id`, `idcompra`, `idproducto`, `cantidad`, `precio`) VALUES
(1, 1, 3, 1, '20.00'),
(2, 2, 3, 1, '20.00'),
(3, 3, 3, 5, '20.00');

--
-- Disparadores `detalle_compras`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockCompra` AFTER INSERT ON `detalle_compras` FOR EACH ROW BEGIN
		UPDATE productos SET stock = stock + NEW.cantidad
       	WHERE productos.id = NEW.idproducto;
   		END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idventa` int(10) UNSIGNED NOT NULL,
  `idproducto` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `idventa`, `idproducto`, `cantidad`, `precio`, `descuento`) VALUES
(1, 1, 3, 1, '18.00', '0.00'),
(2, 2, 1, 1, '15.00', '0.00'),
(3, 3, 1, 1, '15.00', '0.00'),
(4, 4, 2, 1, '20.00', '0.00'),
(5, 5, 4, 1, '180.00', '0.00'),
(6, 6, 1, 2, '220.00', '0.00'),
(7, 7, 2, 1, '200.00', '0.00'),
(8, 8, 2, 1, '200.00', '0.00'),
(9, 8, 1, 1, '220.00', '0.00'),
(10, 9, 3, 1, '25.00', '0.00'),
(11, 10, 6, 2, '75.00', '0.00'),
(12, 11, 6, 2, '75.00', '0.00');

--
-- Disparadores `detalle_ventas`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVenta` AFTER INSERT ON `detalle_ventas` FOR EACH ROW BEGIN
		UPDATE productos SET stock = stock - NEW.cantidad
       	WHERE productos.id = NEW.idproducto;
    	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddespacho` int(10) UNSIGNED NOT NULL,
  `PEP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrega`
--

INSERT INTO `entrega` (`id`, `iddespacho`, `PEP`, `estado`, `motivo`, `created_at`, `updated_at`) VALUES
(1, 1, 'no', 'Entregado', 'no me llego mis productos', '2020-04-25 15:50:13', '2020-04-25 15:50:13'),
(2, 2, 'no', 'Entregado', 'PRUEBA', '2020-04-25 16:08:17', '2020-04-25 16:08:17'),
(3, 3, 'no', 'Entregado', 'PROBANDO', '2020-04-25 16:15:20', '2020-04-25 16:15:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega_perfecta_pretest`
--

CREATE TABLE `entrega_perfecta_pretest` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` int(11) NOT NULL,
  `fecha_consulta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ped_ep` int(11) NOT NULL,
  `tot_pe` int(11) NOT NULL,
  `entrega_perfecta_pretest` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrega_perfecta_pretest`
--

INSERT INTO `entrega_perfecta_pretest` (`id`, `item`, `fecha_consulta`, `ped_ep`, `tot_pe`, `entrega_perfecta_pretest`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-02', 5, 7, '71.43', '2020-04-25 17:21:49', '2020-05-27 18:09:35'),
(2, 2, '2020-01-03', 4, 5, '80.00', '2020-05-24 18:17:52', '2020-05-27 18:10:50'),
(3, 3, '2020-01-04', 6, 7, '85.71', '2020-05-24 18:18:51', '2020-05-27 18:11:23'),
(4, 4, '2020-01-06', 4, 5, '80.00', '2020-05-24 18:19:47', '2020-05-27 18:12:17'),
(5, 5, '2020-01-07', 3, 4, '75.00', '2020-05-24 18:20:24', '2020-05-27 18:13:52'),
(6, 6, '2020-01-08', 5, 7, '71.43', '2020-05-24 18:21:23', '2020-05-27 18:14:31'),
(7, 7, '2020-01-09', 4, 6, '66.67', '2020-05-24 18:22:03', '2020-05-27 18:16:07'),
(8, 8, '2020-01-10', 4, 5, '80.00', '2020-05-24 18:22:35', '2020-05-27 18:17:09'),
(9, 9, '2020-01-11', 6, 7, '85.71', '2020-05-24 18:23:21', '2020-05-27 18:19:13'),
(10, 10, '2020-01-13', 5, 6, '83.33', '2020-05-24 18:23:46', '2020-05-27 18:19:58'),
(11, 11, '2020-01-14', 3, 4, '75.00', '2020-05-24 18:24:37', '2020-05-27 18:20:59'),
(12, 12, '2020-01-15', 2, 3, '66.67', '2020-05-24 18:25:14', '2020-05-27 18:21:49'),
(13, 13, '2020-01-16', 5, 6, '83.33', '2020-05-24 18:29:32', '2020-05-27 18:22:46'),
(14, 14, '2020-01-17', 4, 5, '80.00', '2020-05-24 18:30:05', '2020-05-27 18:23:27'),
(15, 15, '2020-01-18', 5, 7, '71.43', '2020-05-24 18:36:43', '2020-05-27 18:24:10'),
(16, 16, '2020-01-20', 5, 6, '83.33', '2020-05-24 18:37:31', '2020-05-27 18:25:04'),
(17, 17, '2020-01-21', 4, 5, '80.00', '2020-05-24 18:39:20', '2020-05-27 18:25:48'),
(18, 18, '2020-01-22', 2, 3, '66.67', '2020-05-24 18:40:04', '2020-05-27 18:26:15'),
(19, 19, '2020-01-23', 5, 8, '62.50', '2020-05-24 18:42:10', '2020-05-27 18:27:10'),
(20, 20, '2020-01-24', 6, 7, '85.71', '2020-05-24 18:42:55', '2020-05-27 18:27:46'),
(21, 21, '2020-01-25', 5, 6, '83.33', '2020-05-24 18:43:18', '2020-05-27 18:28:30'),
(22, 22, '2020-01-27', 4, 5, '80.00', '2020-05-24 18:43:34', '2020-05-27 18:29:07'),
(23, 23, '2020-01-28', 6, 7, '85.71', '2020-05-24 18:44:18', '2020-05-27 18:29:54'),
(24, 24, '2020-01-29', 5, 6, '83.33', '2020-05-24 18:44:46', '2020-05-27 18:30:20'),
(25, 25, '2020-01-30', 4, 5, '80.00', '2020-05-24 18:45:17', '2020-05-27 18:30:51'),
(26, 26, '2020-01-31', 5, 7, '71.43', '2020-05-24 18:45:56', '2020-05-27 18:31:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega_tiempo_pretest`
--

CREATE TABLE `entrega_tiempo_pretest` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` int(11) NOT NULL,
  `fecha_consulta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ped_et` int(11) NOT NULL,
  `tot_pe` int(11) NOT NULL,
  `entrega_tiempo_pretest` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entrega_tiempo_pretest`
--

INSERT INTO `entrega_tiempo_pretest` (`id`, `item`, `fecha_consulta`, `ped_et`, `tot_pe`, `entrega_tiempo_pretest`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-02', 6, 7, '85.71', '2020-04-25 17:25:01', '2020-05-27 18:33:54'),
(20, 2, '2020-01-03', 4, 5, '80.00', '2020-05-24 18:55:36', '2020-05-27 18:34:21'),
(21, 3, '2020-01-04', 6, 7, '85.71', '2020-05-24 18:56:05', '2020-05-27 18:35:05'),
(22, 4, '2020-01-06', 4, 5, '80.00', '2020-05-24 18:56:40', '2020-05-27 18:35:28'),
(23, 5, '2020-01-07', 3, 4, '75.00', '2020-05-24 18:57:03', '2020-05-27 18:35:58'),
(24, 6, '2020-01-08', 5, 7, '71.43', '2020-05-24 18:57:34', '2020-05-27 18:36:29'),
(25, 7, '2020-01-09', 4, 6, '66.67', '2020-05-24 18:58:54', '2020-05-27 18:37:02'),
(26, 8, '2020-01-10', 3, 5, '60.00', '2020-05-24 18:59:41', '2020-05-27 18:37:35'),
(27, 9, '2020-01-11', 6, 7, '85.71', '2020-05-24 19:00:22', '2020-05-27 18:38:23'),
(28, 10, '2020-01-13', 5, 6, '83.33', '2020-05-24 19:00:45', '2020-05-27 18:39:08'),
(29, 11, '2020-01-14', 3, 4, '75.00', '2020-05-24 19:01:28', '2020-05-27 18:39:45'),
(30, 12, '2020-01-15', 2, 3, '66.67', '2020-05-24 19:01:54', '2020-05-27 18:40:34'),
(31, 13, '2020-01-16', 5, 6, '83.33', '2020-05-24 19:02:29', '2020-05-27 18:41:17'),
(32, 14, '2020-01-17', 3, 5, '60.00', '2020-05-24 19:02:47', '2020-05-27 18:41:56'),
(33, 15, '2020-01-18', 6, 7, '85.71', '2020-05-24 19:05:00', '2020-05-27 18:42:24'),
(34, 16, '2020-01-20', 4, 6, '66.67', '2020-05-24 19:05:42', '2020-05-27 18:43:13'),
(35, 17, '2020-01-21', 3, 5, '60.00', '2020-05-24 19:06:02', '2020-05-27 18:43:47'),
(36, 18, '2020-01-22', 2, 3, '66.67', '2020-05-24 19:06:38', '2020-05-27 18:44:32'),
(37, 19, '2020-01-23', 6, 8, '75.00', '2020-05-24 19:07:12', '2020-05-27 18:45:05'),
(38, 20, '2020-01-24', 5, 7, '71.43', '2020-05-24 19:07:57', '2020-05-27 18:45:53'),
(39, 21, '2020-01-25', 4, 6, '66.67', '2020-05-24 19:08:33', '2020-05-27 18:46:29'),
(40, 22, '2020-01-27', 3, 5, '60.00', '2020-05-24 19:09:19', '2020-05-27 18:47:01'),
(41, 23, '2020-01-28', 6, 7, '85.71', '2020-05-24 19:10:01', '2020-05-27 18:47:27'),
(42, 24, '2020-01-29', 5, 6, '83.33', '2020-05-24 19:10:25', '2020-05-27 18:47:59'),
(43, 25, '2020-01-30', 4, 5, '80.00', '2020-05-24 19:10:50', '2020-05-27 18:48:25'),
(44, 26, '2020-01-31', 5, 7, '71.43', '2020-05-24 19:11:36', '2020-05-27 18:48:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_03_29_192956_create_unidad_medida_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_01_042911_create_categorias_table', 1),
(4, '2018_10_03_043603_create_productos_table', 1),
(5, '2018_10_03_220449_create_personas_table', 1),
(6, '2018_10_03_233732_create_proveedores_table', 1),
(7, '2018_10_04_021715_create_roles_table', 1),
(8, '2018_10_05_000000_create_users_table', 1),
(9, '2018_10_06_230451_create_compras_table', 1),
(10, '2018_10_06_231439_create_detalle_compras_table', 1),
(11, '2018_10_09_035907_create_ventas_table', 1),
(12, '2018_10_09_040044_create_detalle_ventas_table', 1),
(13, '2018_10_11_193728_create_notifications_table', 1),
(14, '2019_08_30_181020_create_pedido_table', 1),
(15, '2020_03_02_174611_create_codigo_table', 1),
(16, '2020_03_04_154400_create_vehiculo_table', 1),
(17, '2020_03_06_110629_create_despacho_table', 1),
(18, '2020_03_09_114248_create_entrega_table', 1),
(19, '2020_03_11_155112_create_entrega_perfecta_pretest_table', 1),
(20, '2020_03_11_155232_create_entrega_tiempo_pretest_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('05f5d193-4c7b-45c2-9522-69bc13763c6a', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:15', '2020-07-03 01:44:15'),
('0a90867e-8118-4170-9740-5f612fb4c169', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:43:54', '2020-04-25 15:43:54'),
('115de9f2-58f1-48d8-9e90-49e22bb93142', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:10', '2020-06-30 21:48:25', '2020-07-03 01:30:10'),
('14bef197-636e-42f5-85fc-3823eed6eb58', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:55:32', '2020-06-30 21:55:32'),
('165b3908-3053-4129-9125-5efc8491e5ea', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-06-04 04:55:35', '2020-06-04 04:55:35'),
('16c837ed-a4f2-4d45-b26d-9b012a0ebff4', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 17:04:37', '2020-04-27 00:39:41'),
('181c43b7-7019-4408-8b5d-ecc00ecf3c1b', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:09:42', '2020-04-25 17:09:42'),
('18caa7a2-bffe-4873-9928-f32ea550fae7', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:04:38', '2020-04-25 17:04:38'),
('1d7e874f-b6e4-4171-9065-ffb27dc62a3e', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-03 16:59:56', '2020-05-31 15:04:51', '2020-06-03 16:59:56'),
('204fecd0-42da-4966-b496-47f7d8921579', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-06-04 04:55:36', '2020-06-30 21:58:59'),
('21f52881-bfbd-47e0-bc34-e1bb0f61dcf9', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-06-04 04:55:34', '2020-06-30 21:57:31'),
('23632500-75f2-4b0b-bd0c-722e5fa4d5b0', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 17:04:38', '2020-06-30 21:57:31'),
('276e1306-c50f-4522-b5f8-6b092862db76', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-08 21:35:37', '2020-07-03 01:44:16', '2020-07-08 21:35:37'),
('39d64e8a-3d2b-4778-b4ae-9ff41566f7fe', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-05-31 15:04:55', '2020-05-31 15:04:55'),
('3c7d4539-85b5-4ff7-9a4d-220a264f6fe2', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:24', '2020-07-03 01:44:24'),
('3f695d41-dc86-4c42-897c-c6edfe137aa4', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:59:00', '2020-04-25 15:43:54', '2020-06-30 21:59:00'),
('3fd16140-42b8-4c55-86ce-4c774854ab98', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 16:05:45', '2020-04-27 00:39:41'),
('42b2086e-b84e-47c9-b3a1-5f82915013d8', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:21', '2020-07-03 01:44:21'),
('4dfa44f5-1bbc-470a-8cea-929d15c89960', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:07', '2020-06-30 22:04:08', '2020-07-01 07:16:07'),
('4e741617-90cb-4d73-8abe-9aa726b4a677', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 22:04:17', '2020-06-30 22:04:17'),
('4ec614e8-8c99-4440-a180-d5d5ef2aafbd', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 17:09:42', '2020-06-30 21:58:59'),
('5290effa-83f4-4fc7-9a3d-1e4103e45c7e', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 16:13:46', '2020-04-27 00:39:41'),
('5672aeda-aefe-49e8-a17a-c2fee7cec9f3', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:36', '2020-06-30 21:48:36'),
('5fb981fb-76ae-432f-95e5-2518c3eced67', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 15:43:54', '2020-06-30 21:57:31'),
('6e0eff7b-20e8-424a-b5a9-a9ed3eb7768c', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:55:32', '2020-06-30 21:55:32'),
('7243ced1-7840-471e-a208-f48356cd2fc2', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 16:13:47', '2020-06-30 21:57:31'),
('74fdf3bf-d676-4d0b-a5ee-ea5062d02c08', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:21', '2020-07-03 01:44:21'),
('75253544-0fae-4252-a6e4-3d6eb886a2f3', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 16:13:47', '2020-06-30 21:58:59'),
('770d12a6-e20a-401c-aa58-440eafc98a89', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-05-31 15:04:54', '2020-06-30 21:57:31'),
('7cae6367-49dc-43ef-b733-c9db0941e09e', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-09 05:48:23', '2020-07-03 01:44:12', '2020-07-09 05:48:23'),
('80b814c3-bf28-4d85-b237-83dac98b0bc0', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 15:54:57', '2020-04-27 00:39:41'),
('8747f8d9-39a7-498f-a322-9f5ee9093d88', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-05-31 15:04:55', '2020-06-30 21:58:59'),
('874c8bb4-bcda-4450-9983-48eeaf63310a', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:13:47', '2020-04-25 16:13:47'),
('8766ff1f-2421-4576-8cf1-22bb1870a979', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:05:46', '2020-04-25 16:05:46'),
('8977f74e-9c31-459c-8a91-3fb841eeb47c', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 22:04:19', '2020-06-30 22:04:19'),
('8a72c0d4-c314-4207-b2b7-4b6f57093d2d', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-07 07:37:38', '2020-06-04 04:55:28', '2020-06-07 07:37:38'),
('8be437c4-76dc-4ebb-a3e7-f98e33903168', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 22:04:16', '2020-06-30 22:04:16'),
('8f94a7de-331c-48e1-900b-935c384481d6', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 17:04:38', '2020-06-30 21:58:59'),
('8fc69958-7c45-424d-bded-d017fd98a3ee', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":4,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:04:38', '2020-04-25 17:04:38'),
('969a2209-63a5-4e4f-b92e-6df70481e338', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 17:09:42', '2020-06-30 21:57:31'),
('984bc330-c800-4d67-87b5-a0f7106661a7', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 17:09:42', '2020-04-27 00:39:41'),
('999ffb96-ccb2-447d-84f1-eea3e76da104', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:55:32', '2020-06-30 21:55:32'),
('a46862ea-bebb-4ceb-84a3-265a9144c662', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:07', '2020-06-30 21:48:30', '2020-07-01 07:16:07'),
('a4c3a4c8-1c4c-45b7-8bef-16d19d61e366', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:29', '2020-06-30 21:48:29'),
('a4fefb86-d181-4217-80d9-2c37b5b2ec11', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-06-04 04:55:35', '2020-06-04 04:55:35'),
('af7e5915-ec17-4b38-8691-91c98a778d23', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 15:54:58', '2020-06-30 21:58:59'),
('afda6fde-f076-4ef8-b2e2-ecccbf5bd9ce', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:13', '2020-07-03 01:44:13'),
('b12a5406-f319-404e-b54f-87fc2d98c82a', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-08 21:35:38', '2020-07-03 01:44:05', '2020-07-08 21:35:38'),
('b90f9fef-715e-43d2-a14e-7ce8e5d3ee79', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":3,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:13:47', '2020-04-25 16:13:47'),
('bb7c06a0-9a05-4877-9803-eaaf4e3af139', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 16:05:46', '2020-06-30 21:57:31'),
('c148939b-35f5-44f8-a991-41b9fa088065', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:35', '2020-06-30 21:48:35'),
('c3a54b25-d98a-4739-a083-7946e0cc151a', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:54:58', '2020-04-25 15:54:58'),
('ca552912-f559-4187-9368-17af969b4a85', 'App\\Notifications\\NotifyAdmin', 14, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:27', '2020-06-30 21:48:27'),
('cd772075-6fd8-4687-a9e9-a4872fcc435f', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-07-03 01:44:13', '2020-07-03 01:44:13'),
('cf28dc13-c41e-408c-bf5e-4bb2f2d59430', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:08', '2020-06-30 21:48:18', '2020-07-01 07:16:08'),
('d023cd25-4b04-4bcc-91cf-581be579cbbb', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:10', '2020-06-30 21:55:32', '2020-07-03 01:30:10'),
('d3374095-433b-415f-80c0-5fb5564f0d33', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:43:54', '2020-04-25 15:43:54'),
('d87150be-ee49-49a7-b792-35252075acc6', 'App\\Notifications\\NotifyAdmin', 4, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:58:59', '2020-04-25 16:05:46', '2020-06-30 21:58:59'),
('dfebfdc6-1a4b-4485-9199-5373571cc11b', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-01 07:16:07', '2020-06-30 21:55:31', '2020-07-01 07:16:07'),
('e1b5975e-dbff-4e77-930b-83ee110ce060', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":5,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 17:09:42', '2020-04-25 17:09:42'),
('e3210ab0-4451-49b7-abe9-874b968b7f31', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 16:05:46', '2020-04-25 16:05:46'),
('e40a9f73-1f45-46d2-b18b-37e7de14dddc', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-04-25 15:54:58', '2020-04-25 15:54:58'),
('e537591d-d86e-4f50-8625-18714acab9b6', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:34', '2020-06-30 21:48:34'),
('eb44cdde-05d9-4707-938e-1e31ed385bf5', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-06-30 21:57:31', '2020-04-25 15:54:57', '2020-06-30 21:57:31'),
('ee3f3748-57ae-4c1c-b57b-4ce97350b6f3', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":1,\"msj\":\"Compras\"}}}', NULL, '2020-06-30 21:48:27', '2020-06-30 21:48:27'),
('effd134a-19c3-41d1-bf9c-9d49dcbbdc15', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":3,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:09', '2020-06-30 22:04:16', '2020-07-03 01:30:09'),
('f3bcccd9-67b1-4a7f-9736-084c74f782da', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":0,\"msj\":\"ventas\"},\"compras\":{\"numero\":2,\"msj\":\"Compras\"}}}', '2020-07-03 01:30:10', '2020-06-30 21:48:33', '2020-07-03 01:30:10'),
('f992e28f-2d87-4276-a125-849faecbebaa', 'App\\Notifications\\NotifyAdmin', 13, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', NULL, '2020-05-31 15:04:54', '2020-05-31 15:04:54'),
('f9d1679d-3598-4a91-8823-f85be4d72d52', 'App\\Notifications\\NotifyAdmin', 1, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":1,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-04-27 00:39:41', '2020-04-25 15:43:53', '2020-04-27 00:39:41'),
('faab92b7-57fe-468c-af31-3eae9a83db59', 'App\\Notifications\\NotifyAdmin', 7, 'App\\User', '{\"datos\":{\"ventas\":{\"numero\":2,\"msj\":\"Ventas\"},\"compras\":{\"numero\":0,\"msj\":\"Compras\"}}}', '2020-07-09 05:48:23', '2020-07-03 01:44:21', '2020-07-09 05:48:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(10) UNSIGNED NOT NULL,
  `idventa` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `num_pedido` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir_enviar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_enviar` date NOT NULL,
  `hora_enviar` time NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `idventa`, `idusuario`, `num_pedido`, `dir_enviar`, `fecha_enviar`, `hora_enviar`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '00001', 'ATE', '2020-04-25', '18:00:00', NULL, 'Entregado', '2020-04-25 15:43:53', '2020-04-25 15:44:42'),
(3, 3, 1, '00002', 'LORETO', '2020-04-25', '19:00:00', NULL, 'Entregado', '2020-04-25 16:05:45', '2020-04-25 16:06:10'),
(4, 4, 1, '00003', 'SANTA ANITA', '2020-04-25', '19:00:00', NULL, 'Entregado', '2020-04-25 16:13:45', '2020-04-25 16:14:27'),
(5, 5, 1, '00004', 'Av. Los metalicos 655', '2020-01-09', '15:07:00', NULL, 'Entregado', '2020-04-25 17:04:37', '2020-04-25 17:17:35'),
(6, 6, 1, '00005', 'Calle Ayacucho 784', '2020-01-09', '17:45:00', NULL, 'Entregado', '2020-04-25 17:09:42', '2020-04-25 17:16:41'),
(7, 7, 1, '00006', 'mi casa', '2020-05-31', '10:05:00', NULL, 'Entregado', '2020-05-31 15:04:50', '2020-05-31 15:05:29'),
(8, 8, 1, '00007', 'chosica', '2020-06-04', '18:00:00', NULL, 'Entregado', '2020-06-04 04:55:27', '2020-06-04 04:57:27'),
(9, 9, 4, '00008', 'a', '2020-06-30', '18:03:00', NULL, 'Pendiente', '2020-06-30 22:04:08', '2020-06-30 22:04:08'),
(10, 10, 1, '00009', 'AV. LOS NOGALES 333', '2020-07-03', '22:43:00', NULL, 'Pendiente', '2020-07-03 01:44:04', '2020-07-03 01:44:04'),
(11, 11, 1, '00010', 'AV. LOS NOGALES 333', '2020-07-03', '22:43:00', NULL, 'Pendiente', '2020-07-03 01:44:16', '2020-07-03 01:44:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_persona` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brevete` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `brevete`, `created_at`, `updated_at`) VALUES
(1, 'Cliente', 'Alex Gutierrez', 'DNI', '12345678', 'La Molina', '980633655', 'alexfus8@gmail.com', '', NULL, '2020-03-23 03:25:09'),
(2, 'Proveedor', 'IQfarma', 'RUC', '20100287791', 'Avenida Santa Rosa 350  Santa Anita - Lima', '6120707', 'iqfarma@pedidos.com', '', '2019-04-17 01:30:10', '2019-05-03 20:18:38'),
(3, 'Proveedor', 'PROMART', 'RUC', '12345678963', 'LINCE', '99999', 'jhoan@infobox-peru.com', '', '2019-09-23 12:50:22', '2020-02-05 01:54:23'),
(4, 'Usuario', 'vendedor', 'DNI', '12345879', NULL, NULL, NULL, '', '2019-10-09 13:21:32', '2020-02-19 02:16:00'),
(5, 'Cliente', 'Sofia Cardenas', 'DNI', '73682819', 'Av. Argentina 534', '989345677', 'scardenas@gmail.com', '', '2019-10-17 22:00:34', '2020-04-25 16:54:42'),
(7, 'Usuario', 'almacenero', 'DNI', '73682869', 'huaycan', NULL, 'almacenero@gmail.com', NULL, '2019-10-17 22:13:44', '2020-03-26 07:30:15'),
(8, 'Cliente', 'Miguel Flores', 'DNI', '73668281', 'Av. La Mar 753', '989454567', 'mflores@gmail.com', '', '2019-11-28 04:23:08', '2020-04-25 16:53:42'),
(10, 'Cliente', 'Mauricio Gil', 'DNI', '75665665', 'Calle Lima 555', '989434221', 'mgil@gmail.com', '', '2020-02-14 02:30:51', '2019-12-02 03:14:45'),
(11, 'Cliente', 'Ralf Fernandez', 'DNI', '45667767', 'Av. Las Palmeras 333', '985467895', 'rfernandez22@gmail.com', '', '2020-02-19 01:27:23', '2019-12-02 03:13:36'),
(12, 'Cliente', 'Erving Tito', 'DNI', '34231244', 'Av. Los Eucaliptos 222', '984534342', 'etito@gmail.com', '', '2020-02-19 02:09:52', '2019-12-02 03:12:25'),
(13, 'Usuario', 'Lenin William Ordoñez Lozano', 'DNI', '09842063', NULL, NULL, NULL, 'Q09842063', '2020-03-03 22:53:34', '2020-04-25 16:29:27'),
(14, 'Usuario', 'Julio Cóndor', 'DNI', '34562321', NULL, NULL, NULL, 'Q07954456', '2020-04-19 02:41:23', '2020-07-08 21:38:43'),
(15, 'Proveedor', 'RMS Tecnologia S.A.C.', 'RUC', '20601923345', 'Av. Calle El Olimpo 123', '989745453', 'rmstecnologia@gmail.com', NULL, '2019-12-02 03:29:57', '2019-12-02 03:29:57'),
(16, 'Proveedor', 'JTR Repuestos generales S.A.', 'RUC', '20603345556', 'Calle Shell 565', '3680987', 'jtrgenerales@gmail.com', NULL, '2019-12-02 03:32:03', '2019-12-02 03:32:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcategoria` int(10) UNSIGNED NOT NULL,
  `idunidad_medida` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `idcategoria`, `idunidad_medida`, `codigo`, `nombre`, `precio_venta`, `stock`, `descripcion`, `fecha_vencimiento`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '001', 'Flash Canon', '415.00', 10, 'Fotografia', NULL, 1, '2020-04-25 15:31:06', '2019-12-02 03:25:12'),
(2, 2, 1, '002', 'Mouse gamer HP', '55.00', 20, 'Accesorio para computadora', NULL, 1, '2020-04-25 15:31:43', '2019-12-02 03:49:04'),
(3, 2, 1, '003', 'Logitech', '25.00', 30, 'negro', NULL, 1, '2020-04-25 15:37:07', '2020-06-30 21:55:50'),
(4, 2, 1, '004', 'Teclador gamer Halion', '45.00', 20, 'Accesorio para computadora', NULL, 1, '2020-04-25 16:43:53', '2019-12-02 03:19:40'),
(5, 2, 1, '005', 'Audífono HP', '35.00', 10, 'Accesorio para computadora', NULL, 1, '2019-12-02 03:21:55', '2019-12-02 03:22:14'),
(6, 3, 1, '008', 'cooler metalico', '75.00', 22, NULL, NULL, 1, '2020-07-03 01:37:44', '2020-07-03 01:39:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `contacto`, `telefono_contacto`) VALUES
(15, 'Ralf Marticorena', '989456443'),
(16, 'Junior Tabraj', '989645534');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'Administrador', 'Administradores de área', 1),
(2, 'Vendedor', 'Vendedor área venta', 1),
(3, 'Almacenero', 'Almacenero área compras', 1),
(4, 'Transportista', 'Encargado de repartir los productos solicitados', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefijo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id`, `nombre`, `prefijo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Unidad', 'Und', 1, NULL, NULL),
(2, 'Caja', 'Cja', 1, NULL, NULL),
(3, 'Paquete', 'Pqt', 1, NULL, NULL),
(4, 'Ciento', 'Cto', 1, NULL, NULL),
(5, 'Paquete x 100', 'PQ100', 1, NULL, NULL),
(6, 'Kilogramo', 'Kg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT 1,
  `idrol` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `condicion`, `idrol`, `remember_token`) VALUES
(1, 'admin', '$2y$10$X7jXmruxEQ2PTkpeXVb05ew72JDNeyJeeurR9ToksfoWSdmQJ6/2C', 1, 1, 's2DJFzO686UQTIrnEA0j8hvga3SwKhwEfK8eAGJANisQ8BCDK5TD1fsfixaF'),
(7, 'almacenero', '$2y$10$bGyB0NzrxloaOCE9L5l7fuA9hSZS4RUTSMcFW1sCp0Dar08wSdvim', 1, 3, 'RlwkY48DSjI4iMmvy9q2S8xCHltEud8x50LXedWgrNWGLClzmDiXGW8slcaW'),
(13, 'transportista1', '$2y$10$uHp9GPAFBbnwOP4qonbwmOjkAbFsc/2daubRJXFafs9CJrq1ED58q', 1, 4, 'aEkqoa0vOQWfSJVKGhPhHnV7RIOPxCHA0nE0Zar04LqS2mNNpJvUZxcgt7Jy'),
(14, 'transportista2', '$2y$10$bsxJVSkDVavK2knGXWWOhexJPNn1yRZAix8IW5JJN7NdVLw7ALYSW', 1, 4, 'NikpbpticrSxmPiyD4KZXDYswtAnjemlI6iV0LIJtSi5ThyDhE1U1e5UEYZH'),
(4, 'vendedor', '$2y$10$66JQ1l90Q8iBOb7VfD0/s.lZ8ayCGMRAn7uRSQ8k/inhZ5S0ymN5a', 1, 2, 'FsglAMqH4kXRTCToL3IlpP90PA0WBH8LzTL65dULsqNJT8wERNWPc7qegi5l');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` int(10) UNSIGNED NOT NULL,
  `marca` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id`, `marca`, `placa`, `created_at`, `updated_at`) VALUES
(1, 'HYUNDAI', 'QAS706', NULL, NULL),
(2, 'HYUNDAI ROJO', 'TUS705', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcliente` int(10) UNSIGNED NOT NULL,
  `idusuario` int(10) UNSIGNED NOT NULL,
  `tipo_comprobante` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie_comprobante` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_comprobante` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total`, `estado`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'BOLETA DE VENTA', '004', '00001', '2020-04-25 17:43:53', '0.00', '18.00', 'Registrado', '2020-04-25 15:43:53', '2020-04-25 15:43:53'),
(3, 5, 1, 'BOLETA DE VENTA', '001', '00002', '2020-04-25 18:05:45', '0.00', '15.00', 'Registrado', '2020-04-25 16:05:45', '2020-04-25 16:05:45'),
(4, 1, 1, 'BOLETA DE VENTA', '001', '00003', '2020-04-25 18:13:45', '0.00', '20.00', 'Registrado', '2020-04-25 16:13:45', '2020-04-25 16:13:45'),
(5, 11, 1, 'BOLETA DE VENTA', '001', '00004', '2020-04-25 19:04:37', '0.00', '180.00', 'Registrado', '2020-04-25 17:04:37', '2020-04-25 17:04:37'),
(6, 10, 1, 'BOLETA DE VENTA', '001', '00005', '2020-04-25 19:09:42', '0.00', '440.00', 'Registrado', '2020-04-25 17:09:42', '2020-04-25 17:09:42'),
(7, 1, 1, 'BOLETA DE VENTA', '001', '00006', '2020-05-31 10:04:50', '0.00', '200.00', 'Registrado', '2020-05-31 15:04:50', '2020-05-31 15:04:50'),
(8, 1, 1, 'BOLETA DE VENTA', '001', '00007', '2020-06-03 23:55:27', '0.00', '420.00', 'Registrado', '2020-06-04 04:55:27', '2020-06-04 04:55:27'),
(9, 1, 4, 'BOLETA DE VENTA', '001', '00008', '2020-06-30 17:04:07', '0.00', '25.00', 'Registrado', '2020-06-30 22:04:07', '2020-06-30 22:04:07'),
(10, 1, 1, 'FACTURA', '001', '00001', '2020-07-02 20:44:04', '0.18', '150.00', 'Registrado', '2020-07-03 01:44:04', '2020-07-03 01:44:04'),
(11, 1, 1, 'FACTURA', '001', '00001', '2020-07-02 20:44:16', '0.18', '150.00', 'Registrado', '2020-07-03 01:44:16', '2020-07-03 01:44:16');

--
-- Disparadores `ventas`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockVentaAnular` AFTER UPDATE ON `ventas` FOR EACH ROW BEGIN
		UPDATE productos p JOIN detalle_ventas dv
       	ON dv.idproducto = p.id
       	AND dv.idventa = new.id
       	SET p.stock = p.stock + dv.cantidad;
    	END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_nombre_unique` (`nombre`);

--
-- Indices de la tabla `codigo`
--
ALTER TABLE `codigo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo_idpedido_foreign` (`idpedido`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_idproveedor_foreign` (`idproveedor`),
  ADD KEY `compras_idusuario_foreign` (`idusuario`);

--
-- Indices de la tabla `despacho`
--
ALTER TABLE `despacho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `despacho_idpedido_foreign` (`idpedido`),
  ADD KEY `despacho_idusuario_foreign` (`idusuario`),
  ADD KEY `despacho_idvehiculo_foreign` (`idvehiculo`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_compras_idcompra_foreign` (`idcompra`),
  ADD KEY `detalle_compras_idproducto_foreign` (`idproducto`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_ventas_idventa_foreign` (`idventa`),
  ADD KEY `detalle_ventas_idproducto_foreign` (`idproducto`);

--
-- Indices de la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrega_iddespacho_foreign` (`iddespacho`);

--
-- Indices de la tabla `entrega_perfecta_pretest`
--
ALTER TABLE `entrega_perfecta_pretest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entrega_perfecta_pretest_item_unique` (`item`);

--
-- Indices de la tabla `entrega_tiempo_pretest`
--
ALTER TABLE `entrega_tiempo_pretest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entrega_tiempo_pretest_item_unique` (`item`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_idventa_foreign` (`idventa`),
  ADD KEY `pedido_idusuario_foreign` (`idusuario`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personas_nombre_unique` (`nombre`),
  ADD UNIQUE KEY `personas_num_documento_unique` (`num_documento`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productos_codigo_unique` (`codigo`),
  ADD UNIQUE KEY `productos_nombre_unique` (`nombre`),
  ADD KEY `productos_idcategoria_foreign` (`idcategoria`),
  ADD KEY `productos_idunidad_medida_foreign` (`idunidad_medida`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD KEY `proveedores_id_foreign` (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nombre_unique` (`nombre`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_usuario_unique` (`usuario`),
  ADD KEY `users_id_foreign` (`id`),
  ADD KEY `users_idrol_foreign` (`idrol`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_idcliente_foreign` (`idcliente`),
  ADD KEY `ventas_idusuario_foreign` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `codigo`
--
ALTER TABLE `codigo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `despacho`
--
ALTER TABLE `despacho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `entrega_perfecta_pretest`
--
ALTER TABLE `entrega_perfecta_pretest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `entrega_tiempo_pretest`
--
ALTER TABLE `entrega_tiempo_pretest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_idproveedor_foreign` FOREIGN KEY (`idproveedor`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `compras_idusuario_foreign` FOREIGN KEY (`idusuario`) REFERENCES `users` (`id`);
--
-- Base de datos: `db_laravel8_crud_vue3`
--
CREATE DATABASE IF NOT EXISTS `db_laravel8_crud_vue3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_laravel8_crud_vue3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'TECLADO LENOVO', 'EXCELENTE', '2024-05-31 04:50:40', '2024-06-02 09:35:23'),
(5, 'teclado gamer ahora', '15 pulgadas', '2024-06-01 03:35:30', '2024-06-02 09:37:59'),
(6, 'mesa', 'super grande', '2024-06-01 03:36:01', '2024-06-01 03:36:01'),
(7, 'tv', 'sony', '2024-06-01 03:42:37', '2024-06-01 03:42:37'),
(8, 'holaww', 'EXCELENTE', '2024-06-01 03:51:11', '2024-06-06 03:40:57'),
(9, 'holaww', 'regular', '2024-06-01 03:51:20', '2024-06-06 03:41:14'),
(10, 'super metal', '2h', '2024-06-01 03:56:24', '2024-06-01 03:56:24'),
(11, 'metal slug 5', 'regular', '2024-06-01 03:56:54', '2024-06-06 03:41:43'),
(12, 'KAROL G', 'COLOMBIA', '2024-06-01 04:00:02', '2024-06-01 04:00:02'),
(15, 'cable', 'usb', '2024-06-01 05:50:04', '2024-06-01 05:50:04'),
(17, 'hola', 'regular', '2024-06-01 06:09:08', '2024-06-06 03:41:26'),
(18, 'te amo raquel', 'un amor increible', '2024-06-02 02:11:45', '2024-06-02 02:11:45'),
(20, 'teclado grande', 'con rgb y todo', '2024-06-02 03:40:54', '2024-06-02 03:40:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2024_05_30_234537_create_items_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `empleados`
--
CREATE DATABASE IF NOT EXISTS `empleados` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `empleados`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `correo`) VALUES
(65, 'alex', 'alexguti@gmail.com'),
(68, 'Raquel', 'raquelsan2@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- Base de datos: `imoney`
--
CREATE DATABASE IF NOT EXISTS `imoney` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `imoney`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BCP', '2021-04-17 19:37:21', '2021-04-17 19:37:21'),
(2, 'Interbank', '2021-04-17 19:37:21', '2021-04-17 19:37:21'),
(3, 'Pichincha', '2021-04-17 19:37:21', '2021-04-17 19:37:21'),
(4, 'BIF', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(5, 'BBVA', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(6, 'Scotiabank', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(7, 'MiBanco', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(8, 'GNB', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(9, 'Banco de la nacion', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(10, 'Caja Cusco', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(11, 'Caja Tacna', '2021-04-17 19:37:22', '2021-04-17 19:37:22'),
(12, 'Caja Arequipa', '2021-04-17 19:37:22', '2021-04-17 19:37:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_cuenta`
--

CREATE TABLE `categoria_cuenta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_cuenta`
--

INSERT INTO `categoria_cuenta` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ahorros', '2021-04-21 20:05:07', '2021-04-21 20:05:07'),
(2, 'Corriente', '2021-04-21 20:05:07', '2021-04-21 20:05:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_bancarias`
--

CREATE TABLE `cuenta_bancarias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `banco_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_cuenta` bigint(20) UNSIGNED NOT NULL,
  `categoria_cuenta_id` bigint(20) UNSIGNED NOT NULL,
  `numero_cuenta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuenta_bancarias`
--

INSERT INTO `cuenta_bancarias` (`id`, `user_id`, `banco_id`, `tipo_cuenta`, `categoria_cuenta_id`, `numero_cuenta`, `estado`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 2, 1, '165654511102', '', '2021-04-21 22:14:29', '2021-04-21 22:14:29'),
(2, 3, 4, 2, 2, '123456799100', '', '2021-04-21 22:23:54', '2021-04-21 22:23:54'),
(3, 6, 1, 2, 1, '19300000000999999', '', '2021-04-28 15:31:48', '2021-04-28 15:31:48'),
(4, 6, 1, 1, 1, '3232323232323', '', '2021-04-28 15:38:22', '2021-04-28 15:38:22'),
(5, 6, 4, 1, 1, '1933454564', '', '2021-04-28 21:20:34', '2021-04-28 21:20:34'),
(6, 6, 4, 2, 1, '1932222000333', '', '2021-04-29 21:14:13', '2021-04-29 21:14:13'),
(7, 6, 5, 2, 1, '444444444444444', '1', '2021-07-07 17:49:35', '2021-07-07 17:49:35'),
(8, 6, 1, 1, 1, '22222222222222222', '1', '2021-07-13 16:07:21', '2021-07-13 16:07:21'),
(9, 6, 8, 1, 1, '555555555555', '1', '2021-08-06 17:34:43', '2021-08-06 17:34:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad_economica` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_economico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_fijo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_fiscal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrito` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ficha_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `razon_social`, `numero_ruc`, `actividad_economica`, `grupo`, `grupo_economico`, `telefono_fijo`, `direccion_fiscal`, `departamento`, `provincia`, `distrito`, `ficha_ruc`, `created_at`, `updated_at`) VALUES
(1, 'BACKUS', '21212212112121', 'cerveza', 'alcoho', NULL, '3232323232', 'av. industrial 333', 'lima', 'lima', 'la molina', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_inversiones`
--

CREATE TABLE `empresa_inversiones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_ruc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto_disponible` decimal(8,2) DEFAULT NULL,
  `monto_total` decimal(8,2) DEFAULT NULL,
  `tasa_anual` int(2) NOT NULL,
  `tasa_mensual` decimal(8,4) NOT NULL,
  `fecha_esperada` date DEFAULT NULL,
  `moneda_inversion` bigint(20) DEFAULT NULL,
  `serie_num_comprobante` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresa_inversiones`
--

INSERT INTO `empresa_inversiones` (`id`, `nombre`, `numero_ruc`, `informe`, `logo`, `monto_disponible`, `monto_total`, `tasa_anual`, `tasa_mensual`, `fecha_esperada`, `moneda_inversion`, `serie_num_comprobante`, `created_at`, `updated_at`) VALUES
(5, 'SAN JORGE SAC', '12345678905', 'images/informe/1626191301-HOLA.pdf', 'images/inversiones_logo/1626191301-RgJKbQq.jpeg', '524.00', '900.00', 5, '1.0915', '2021-10-22', 1, 'F001-00000001', '2021-07-13 15:48:21', '2021-09-08 23:52:15'),
(7, 'Bertonatti S.A.', '33030330330', 'images/informe/1626208377-SISTEMA.pdf', 'images/inversiones_logo/1626208377-bertonati.png', '990.00', '1000.00', 7, '1.0306', '2021-10-22', 1, 'F001-00000002', '2021-07-13 20:32:57', '2021-07-26 21:18:17'),
(8, 'El comercio SAC', '12312345671', 'images/informe/1626284387-HOLA.pdf', 'images/inversiones_logo/1626284387-CxUctwq.jpeg', '600.00', '600.00', 10, '1.1519', '2021-08-17', 1, 'F001-00000003', '2021-07-14 17:39:48', '2021-07-15 20:25:50'),
(10, 'NISSAN SAC', '33030330330', 'images/informe/1628024736-HOLA.pdf', 'images/inversiones_logo/1628024736-PANEL DE CONTROL  (7).jpg', '205.00', '9000.00', 8, '1.0306', '2021-08-28', 2, 'F001-00000167', '2021-08-03 21:05:36', '2021-08-09 20:53:43'),
(11, 'INKA KOLA', '20202020220', 'images/informe/1628034966-Ejemplo_explic.pdf', 'images/inversiones_logo/1628034966-Inca_kola_2002.png', '1000.00', '1000.00', 7, '1.0706', '2021-08-28', 2, 'F001-00000367', '2021-08-03 23:56:06', '2021-08-03 23:56:06'),
(12, 'NOKIA', '20202020220', 'images/informe/1628035603-Modulo Empresas.pdf', 'images/inversiones_logo/1628035603-2560px-Pepsi_logo_new.svg.png', '8000.00', '8000.00', 10, '1.0706', '2021-10-20', 2, 'F001-00033067', '2021-08-04 00:06:44', '2021-08-09 21:59:04'),
(14, 'COLOCHA HERMOSA', '2020200202020202', 'images/informe/1676417594-DNI ALEX GUTIERREZ BLANCAS.pdf', 'images/inversiones_logo/1676417594-IMG-20220709-WA0064.jpg', '3000.00', '50000.00', 3, '2.0000', '2023-02-15', 1, '2121212', '2023-02-14 23:33:14', '2023-02-14 23:33:14'),
(15, 'aq', '23232323232324', 'images/informe/1693803000-HOLA1.docx', 'images/inversiones_logo/1693803000-sony-ericsson-w995-651-g-alt.jpeg', '222.00', '2232.00', 2323223, '12.0000', '2023-09-21', 1, 'ddf23232', '2023-09-04 04:50:00', '2023-09-04 04:50:00'),
(16, 'aqwqe', '232323232321', 'images/informe/1693803229-HOLA.xlsx', 'images/inversiones_logo/1693803229-sony-ericsson-w995-651-g-alt.jpeg', '124.00', '2232.00', 13, '11.0000', '2023-09-28', 1, 'ddf23239', '2023-09-04 04:53:49', '2023-09-04 04:53:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cuentas`
--

CREATE TABLE `estado_cuentas` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `edad` varchar(255) NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `numero_ruc` varchar(255) NOT NULL,
  `acciones` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_cuentas`
--

INSERT INTO `estado_cuentas` (`id`, `nombre`, `edad`, `razon_social`, `numero_ruc`, `acciones`, `created_at`, `updated_at`) VALUES
(5, 'alex', '22', 'Coca Cola', '5555', NULL, '2021-07-30 21:54:10', '2021-07-30 21:54:10'),
(6, 'guti', '55', 'inka kola', '88888', NULL, '2021-08-30 20:18:22', '2021-08-30 20:18:22'),
(68, 'METAL', 'QWEWW', 'DSDSDS', 'SDDSDSDS', NULL, '2021-09-20 22:18:33', '2021-09-20 22:18:33'),
(82, 's', 's', 's', 's', NULL, '2021-09-21 21:40:37', '2021-09-21 21:40:37'),
(83, 'j', 'j', 'j', 'j', NULL, '2021-09-21 21:45:48', '2021-09-21 21:45:48'),
(84, 'w', 'w', 'w', 'w', NULL, '2021-09-21 22:14:27', '2021-09-21 22:14:27'),
(85, 'Z', 'Z', 'Z', 'Z', NULL, '2021-09-21 22:29:20', '2021-09-21 22:29:20'),
(86, 'MARIO', 'CESPEDES', '22', 'VALLEJO', NULL, '2021-09-22 01:32:06', '2021-09-22 01:32:06'),
(87, 'MARIO', 'MRTa', 'a', 'a', NULL, '2021-09-23 18:00:05', '2021-09-23 18:00:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_operacion`
--

CREATE TABLE `estado_operacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estado_operacion`
--

INSERT INTO `estado_operacion` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pendiente de enviar Nro Operacion', '2021-04-24 15:40:23', '2021-04-24 15:40:23'),
(2, 'Envió Nro Operacion', '2021-04-24 15:40:52', '2021-04-24 15:40:36'),
(3, 'Transferencia enviada', '2021-04-24 15:41:22', '2021-04-24 15:41:26'),
(4, 'Operacion no concretada', '2021-04-26 05:19:55', '2021-04-26 05:19:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `financiamientos`
--

CREATE TABLE `financiamientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `financiamiento_empresas`
--

CREATE TABLE `financiamiento_empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_financiamiento_id` bigint(30) UNSIGNED NOT NULL,
  `documento_financiamiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `financiamiento_empresas`
--

INSERT INTO `financiamiento_empresas` (`id`, `user_id`, `tipo_financiamiento_id`, `documento_financiamiento`, `created_at`, `updated_at`) VALUES
(17, 6, 1, 'images/financiamientoEmpresa/factura/1629407450-1.pdf', '2021-08-19 21:10:50', '2021-08-19 21:10:50'),
(18, 6, 1, 'images/financiamientoEmpresa/factura/1629419714-Modulo Empresas.pdf', '2021-08-20 00:35:14', '2021-08-20 00:35:14'),
(19, 6, 5, 'images/financiamientoEmpresa/ficha_inmobiliario/1630427573-5.pdf', '2021-08-31 16:32:53', '2021-08-31 16:32:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `financiamiento_persona_naturals`
--

CREATE TABLE `financiamiento_persona_naturals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `establecimiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moneda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_cuota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_perfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `financiamiento_persona_naturals`
--

INSERT INTO `financiamiento_persona_naturals` (`id`, `user_id`, `producto`, `establecimiento`, `moneda`, `monto_total`, `numero_cuota`, `foto_perfil`, `created_at`, `updated_at`) VALUES
(24, 6, 'auto', 'gallo autos', '1', '600.00', '12', 'images/financiamiento_perNatural/foto_perfil/1630364283-Inca_kola_2002.png', '2021-08-30 22:58:03', '2021-08-30 22:58:03'),
(25, 6, 'casa', 'inmobliaria gutierrez sac', '2', '12000.00', '10', 'images/financiamiento_perNatural/foto_perfil/1630364430-fanta-orange-vector-logo-400x400.png', '2021-08-30 23:00:30', '2021-08-30 23:00:30'),
(26, 6, 'saga', 'laptop', '1', '9000.00', '10', 'images/financiamiento_perNatural/foto_perfil/1630385629-2560px-Pepsi_logo_new.svg.png', '2021-08-31 04:53:49', '2021-08-31 04:53:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inversion_empresas`
--

CREATE TABLE `inversion_empresas` (
  `id` bigint(20) NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `numero_ruc` varchar(255) NOT NULL,
  `informe` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `monto_disponible` decimal(8,2) NOT NULL,
  `monto_total` decimal(8,2) NOT NULL,
  `tasa_anual` int(2) NOT NULL,
  `tasa_mensual` decimal(8,4) NOT NULL,
  `fecha_esperada` date NOT NULL,
  `serie_num_comprobante` varchar(13) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inversion_empresas`
--

INSERT INTO `inversion_empresas` (`id`, `razon_social`, `numero_ruc`, `informe`, `logo`, `monto_disponible`, `monto_total`, `tasa_anual`, `tasa_mensual`, `fecha_esperada`, `serie_num_comprobante`, `created_at`, `updated_at`) VALUES
(1, 'pilsen sac', '2020202020202', 'hola', 'todos', '500.00', '500.00', 1, '2.7000', '2021-07-31', 'F01-000234', NULL, NULL),
(2, 'Inka Kola SAC', '33030330330', 'images/informe_repuesto/1627926092-HOLA.pdf', 'images/informe_repuesto/1627926092-Inca_kola_2002.png', '500.00', '500.00', 8, '1.0306', '2021-08-27', 'F001-00000167', '2021-08-02 17:41:32', '2021-08-02 17:41:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inversion_operacion`
--

CREATE TABLE `inversion_operacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nro_orden` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `banco_origen_id` bigint(20) UNSIGNED NOT NULL,
  `monto_inversion` decimal(8,2) NOT NULL,
  `moneda_id` bigint(20) UNSIGNED NOT NULL,
  `banco_destino_id` bigint(20) UNSIGNED NOT NULL,
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cantidad_dias` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto_esperado` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inversion_operacion`
--

INSERT INTO `inversion_operacion` (`id`, `nro_orden`, `user_id`, `empresa_id`, `banco_origen_id`, `monto_inversion`, `moneda_id`, `banco_destino_id`, `estado_id`, `created_at`, `updated_at`, `cantidad_dias`, `monto_esperado`) VALUES
(1, 'PC5JKF', 6, 5, 1, '2.00', 1, 8, 3, '2021-07-13 16:14:34', '2021-07-19 23:48:24', '101', '2.04'),
(2, '83T5B9', 6, 5, 1, '3.00', 1, 8, 3, '2021-07-13 16:22:55', '2021-07-20 00:13:11', '101', '3.07'),
(3, '7RTL2O', 6, 5, 1, '5.00', 1, 8, 3, '2021-07-13 16:50:28', '2021-07-20 00:22:36', '101', '5.11'),
(4, 'WPATRP', 6, 5, 1, '1.00', 1, 8, 3, '2021-07-16 23:11:56', '2021-07-19 23:52:45', '97', '1.02'),
(5, '38HMW5', 6, 5, 1, '1.00', 1, 8, 3, '2021-07-16 23:16:21', '2021-07-19 23:51:43', '97', '1.02'),
(6, '6S3LKS', 6, 5, 3, '1.00', 1, 8, 3, '2021-07-20 00:27:47', '2021-07-20 00:34:58', '94', '1.02'),
(7, '4WE16S', 6, 5, 1, '1.00', 1, 8, 4, '2021-07-20 17:31:35', '2021-07-20 20:51:06', '93', '1.02'),
(8, 'SN5F4W', 6, 5, 1, '1.00', 1, 8, 3, '2021-07-20 20:39:24', '2021-07-20 20:42:51', '93', '1.02'),
(9, '6GOCWG', 6, 5, 1, '1.00', 1, 8, 3, '2021-07-20 23:18:13', '2021-07-20 23:33:22', '93', '1.02'),
(10, 'JXRVMB', 6, 5, 1, '1.00', 1, 8, 4, '2021-07-20 23:21:30', '2021-07-20 23:22:53', '93', '1.02'),
(11, 'CVCS9V', 6, 7, 1, '1.00', 1, 8, 3, '2021-07-21 23:20:03', '2021-07-21 23:21:23', '92', '1.02'),
(12, 'V9VHMP', 6, 7, 1, '2.00', 1, 8, 3, '2021-07-21 23:31:39', '2021-07-21 23:32:34', '92', '2.04'),
(13, '3BI572', 6, 7, 1, '4.00', 1, 8, 4, '2021-07-21 23:37:20', '2021-07-21 23:42:22', '92', '4.08'),
(14, '49VEKO', 6, 5, 1, '1.00', 1, 8, 1, '2021-07-21 23:48:12', '2021-07-21 23:48:12', '92', '1.02'),
(15, 'XUVADO', 6, 5, 1, '1.00', 1, 8, 1, '2021-07-21 23:48:39', '2021-07-21 23:48:39', '92', '1.02'),
(16, 'AKN6DW', 6, 5, 1, '1.00', 1, 8, 2, '2021-07-21 23:49:10', '2021-07-21 23:49:32', '92', '1.02'),
(17, 'LV66PN', 6, 5, 1, '1.00', 1, 8, 1, '2021-07-21 23:57:31', '2021-07-21 23:57:31', '92', '1.02'),
(18, 'BODBLS', 6, 5, 1, '1.00', 1, 8, 1, '2021-07-21 23:58:35', '2021-07-21 23:58:35', '92', '1.02'),
(19, 'G2ZW54', 6, 5, 1, '1.00', 1, 8, 2, '2021-07-21 23:59:58', '2021-07-22 00:00:23', '92', '1.02'),
(20, 'CIQ32T', 6, 5, 1, '4.00', 1, 8, 2, '2021-07-22 00:08:08', '2021-07-22 00:08:27', '92', '4.08'),
(21, '9D7L5S', 6, 5, 1, '2.00', 1, 8, 1, '2021-07-26 21:14:41', '2021-07-26 21:14:41', '87', '2.04'),
(22, 'K3BSXJ', 6, 5, 1, '2.00', 1, 8, 3, '2021-07-26 21:17:04', '2021-07-26 21:19:39', '87', '2.04'),
(23, 'VSLASK', 6, 7, 1, '3.00', 1, 8, 4, '2021-07-26 21:18:03', '2021-07-26 21:19:22', '87', '3.06'),
(24, 'ZFQUTM', 6, 10, 1, '10.00', 1, 8, 1, '2021-08-04 16:50:00', '2021-08-04 16:50:00', '24', '10.05'),
(25, 'TUKYV9', 6, 5, 5, '2.00', 2, 7, 1, '2021-08-04 18:01:56', '2021-08-04 18:01:56', '79', '2.03'),
(26, '23THQZ', 6, 10, 5, '5.00', 2, 7, 1, '2021-08-04 23:51:02', '2021-08-04 23:51:02', '23', '5.02'),
(27, '4I4WZQ', 6, 10, 5, '5.00', 2, 7, 2, '2021-08-04 23:51:07', '2021-08-04 23:51:24', '23', '5.02'),
(28, 'Y3WG16', 6, 10, 5, '234.00', 2, 7, 3, '2021-08-06 17:32:50', '2021-08-06 17:38:34', '21', '235.05'),
(29, 'S89U1N', 6, 5, 1, '334.00', 1, 8, 1, '2021-08-06 17:34:58', '2021-08-06 17:34:58', '76', '339.47'),
(30, 'LA6F4F', 6, 5, 1, '334.00', 1, 8, 3, '2021-08-06 17:35:54', '2021-08-06 17:37:55', '76', '339.47'),
(31, 'MSTLOV', 6, 5, 1, '3.00', 1, 8, 2, '2021-08-09 20:51:32', '2021-08-09 20:51:56', '73', '3.05'),
(32, 'AE9Z1K', 6, 10, 5, '56.00', 2, 7, 3, '2021-08-09 20:53:00', '2021-08-09 22:03:08', '18', '56.22'),
(33, '1JGLM3', 6, 5, 1, '1.00', 1, 8, 2, '2021-08-11 18:36:01', '2021-08-11 18:36:21', '71', '1.02'),
(34, 'D7X9YA', 6, 5, 1, '2.00', 1, 8, 2, '2021-08-11 18:41:38', '2021-08-11 18:41:55', '71', '2.03'),
(35, 'ACVJI7', 6, 5, 1, '3.00', 1, 8, 2, '2021-08-11 18:43:51', '2021-08-11 18:44:07', '71', '3.05'),
(36, '5G988M', 6, 5, 1, '5.00', 1, 8, 2, '2021-08-11 18:45:46', '2021-08-11 18:46:44', '71', '5.08'),
(37, 'DWEPRW', 6, 5, 1, '2.00', 1, 8, 1, '2021-09-01 21:32:55', '2021-09-01 21:32:55', '50', '2.02'),
(38, 'GM34WZ', 6, 5, 1, '1.00', 1, 8, 2, '2021-09-08 23:51:30', '2021-09-08 23:52:15', '43', '1.01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_28_113219_create_roles_table', 1),
(2, '2021_04_05_192108_create_users_table', 2),
(3, '2014_10_12_100000_create_password_resets_table', 3),
(4, '2019_08_19_000000_create_failed_jobs_table', 3),
(5, '2021_03_13_180649_create_usuarios_table', 3),
(7, '2021_03_21_200606_create_tipo_cuentas_table', 3),
(8, '2021_03_21_201126_create_bancos_table', 3),
(10, '2021_03_22_193629_update_users_table', 3),
(11, '2021_03_24_180435_create_empresa_table', 3),
(12, '2021_03_25_004010_create_inversionista_table', 3),
(13, '2021_03_25_182833_create_representante_legals_table', 3),
(14, '2021_03_25_182857_create_persona_operaciones_table', 3),
(16, '2021_03_14_211013_create_tipo_cambios_table', 4),
(19, '2021_04_21_145845_create_categoria_cuenta', 6),
(20, '2021_03_21_202040_create_cuenta_bancarias_table', 7),
(22, '2021_04_24_103211_create_estado_operacion_table', 9),
(29, '2021_04_24_103722_create_status_nro_operacion_table', 12),
(31, '2021_04_14_121019_create_operacion_table', 13),
(32, '0000_00_00_000000_create_websockets_statistics_entries_table', 14),
(33, '2021_05_19_151358_create_inversionista_table', 15),
(34, '2021_05_21_165913_create_empresa_inversiones_table', 15),
(35, '2021_05_27_013039_create_inversion_operacion', 15),
(36, '2021_05_27_200323_status_nro_inversion', 15),
(37, '2021_07_13_161443_create_financiamientos_table', 16),
(38, '2021_07_13_170137_create_financiamiento_cuotas_table', 17),
(39, '2021_07_22_174902_create_financiamiento_persona_naturals_table', 18),
(40, '2021_07_22_175411_create_financiamiento_empresas_table', 18),
(41, '2021_07_22_192314_create_financiamiento_operacion_table', 18),
(42, '2021_08_17_182254_create_tipo_financiamientos_table', 18),
(43, '2021_08_17_182905_create_financiamiento_persona_naturals_table', 19),
(44, '2021_08_18_160922_create_financiamiento_persona_naturals_table', 20),
(45, '2022_01_03_203556_create_pelicula_table', 21),
(46, '2022_01_03_204337_create_pelicula_table', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

CREATE TABLE `operacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nro_orden` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `banco_origen_id` bigint(20) UNSIGNED NOT NULL,
  `descripcionMontoA` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montoA` decimal(8,2) NOT NULL,
  `descripcionMontoB` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montoB` decimal(8,2) NOT NULL,
  `banco_destino_id` bigint(20) UNSIGNED NOT NULL,
  `tipo_cuenta` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_cambio` decimal(8,4) NOT NULL,
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `operacion`
--

INSERT INTO `operacion` (`id`, `nro_orden`, `user_id`, `banco_origen_id`, `descripcionMontoA`, `montoA`, `descripcionMontoB`, `montoB`, `banco_destino_id`, `tipo_cuenta`, `tipo_cambio`, `estado_id`, `created_at`, `updated_at`) VALUES
(9, '99AMFN', 3, 1, 'Soles', '40.00', 'Dolares', '10.39', 1, '2', '0.0000', 3, '2021-04-26 04:19:21', '2021-04-26 05:17:40'),
(10, 'STXBYO', 3, 3, 'Soles', '100.00', 'Dolares', '25.97', 1, '2', '0.0000', 3, '2021-04-26 04:20:17', '2021-04-26 05:17:25'),
(11, 'GBZNNI', 3, 4, 'Soles', '600.00', 'Dolares', '155.80', 1, '2', '0.0000', 4, '2021-04-26 04:53:06', '2021-04-26 05:42:31'),
(12, 'V1UPK9', 3, 1, 'Soles', '555.00', 'Dolares', '144.12', 2, '2', '0.0000', 2, '2021-04-27 17:00:40', '2021-04-27 17:01:08'),
(13, '8L692W', 3, 1, 'Soles', '55.00', 'Dolares', '14.28', 2, '2', '0.0000', 3, '2021-04-27 17:13:42', '2021-04-27 17:16:26'),
(14, 'TAOJDJ', 3, 1, 'Soles', '33.00', 'Dolares', '8.57', 1, '2', '0.0000', 1, '2021-04-27 17:17:45', '2021-04-27 17:17:45'),
(15, 'VCZ4XH', 3, 1, 'Soles', '55.00', 'Dolares', '14.28', 2, '2', '0.0000', 2, '2021-04-27 18:03:25', '2021-04-27 18:10:29'),
(16, 'DGRC5P', 6, 1, 'Soles', '555.00', 'Dolares', '144.12', 3, '2', '0.0000', 2, '2021-04-28 15:32:08', '2021-04-28 15:34:21'),
(17, 'LIKFYX', 6, 1, 'Dolares', '60.00', 'Soles', '209.76', 4, '1', '0.0000', 2, '2021-04-28 15:39:44', '2021-04-28 15:39:58'),
(18, '38FORG', 6, 1, 'Dolares', '600.00', 'Soles', '2097.60', 4, '1', '0.0000', 3, '2021-04-28 15:51:31', '2021-04-28 16:07:54'),
(19, 'BR4STH', 6, 1, 'Soles', '1000.00', 'Dolares', '259.67', 3, '2', '0.0000', 3, '2021-04-28 20:58:35', '2021-04-28 21:00:21'),
(20, '3GGRUJ', 6, 4, 'Dolares', '1000.00', 'Soles', '3496.00', 5, '1', '0.0000', 3, '2021-04-28 21:22:24', '2021-04-28 21:29:52'),
(21, '84M583', 6, 1, 'Soles', '6.00', 'Dolares', '1.56', 3, '2', '0.0000', 2, '2021-04-28 22:33:57', '2021-04-28 22:34:10'),
(22, '22YDRT', 6, 1, 'Soles', '77.00', 'Dolares', '19.99', 3, '2', '0.0000', 1, '2021-04-29 15:33:58', '2021-04-29 15:33:58'),
(23, '4CPFNJ', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', '0.0000', 1, '2021-04-29 21:16:35', '2021-04-29 21:16:35'),
(24, 'UMFXU6', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', '0.0000', 1, '2021-04-29 21:16:36', '2021-04-29 21:16:36'),
(25, 'APKC2E', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', '0.0000', 1, '2021-04-29 21:16:37', '2021-04-29 21:16:37'),
(26, 'LTWT47', 6, 4, 'Soles', '90.00', 'Dolares', '23.37', 6, '2', '0.0000', 3, '2021-04-29 21:16:38', '2021-04-29 21:18:55'),
(27, 'ZUN7NC', 6, 1, 'Soles', '50.00', 'Dolares', '12.98', 6, '2', '0.0000', 2, '2021-04-29 21:37:31', '2021-04-29 21:37:42'),
(28, 'IHMMYM', 6, 5, 'Soles', '567.00', 'Dolares', '144.97', 7, '2', '3.9111', 1, '2021-07-07 17:58:28', '2021-07-07 17:58:28'),
(29, '4K31AC', 6, 5, 'Soles', '567.00', 'Dolares', '144.97', 7, '2', '3.9111', 2, '2021-07-07 18:03:52', '2021-07-07 18:04:07'),
(30, '7334DP', 6, 1, 'Dolares', '122.00', 'Soles', '458.17', 8, '1', '3.7555', 2, '2021-07-14 22:30:07', '2021-07-14 22:30:21'),
(31, '1MKSK3', 6, 5, 'Soles', '455.00', 'Dolares', '116.34', 7, '2', '3.9111', 2, '2021-07-20 17:28:33', '2021-07-20 17:28:47'),
(32, 'QEGEQR', 6, 1, 'Dolares', '120.00', 'Soles', '450.66', 8, '1', '3.7555', 2, '2021-08-11 18:48:03', '2021-08-11 18:48:21'),
(33, 'IUB6MF', 6, 1, 'Dolares', '124.00', 'Soles', '465.68', 8, '1', '3.7555', 2, '2021-08-11 18:50:40', '2021-08-11 18:50:54'),
(34, 'HZ2H4L', 6, 1, 'Dolares', '111.00', 'Soles', '416.86', 8, '1', '3.7555', 2, '2021-08-11 18:54:01', '2021-08-11 18:54:19'),
(35, '6D1HBE', 6, 1, 'Dolares', '122.00', 'Soles', '458.17', 8, '1', '3.7555', 2, '2021-08-11 18:59:02', '2021-08-11 18:59:41'),
(36, 'JEFB39', 6, 1, 'Soles', '444.00', 'Dolares', '113.52', 7, '2', '3.9111', 1, '2021-09-01 21:28:37', '2021-09-01 21:28:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_operaciones`
--

CREATE TABLE `persona_operaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona_operaciones`
--

INSERT INTO `persona_operaciones` (`id`, `user_id`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representante_legals`
--

CREATE TABLE `representante_legals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `archivo_vigencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `representante_legals`
--

INSERT INTO `representante_legals` (`id`, `user_id`, `empresa_id`, `archivo_vigencia`, `created_at`, `updated_at`) VALUES
(1, 9, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2021-04-17 19:35:25', '2021-04-17 19:35:25'),
(2, 'Persona Natural', '2021-04-17 19:35:25', '2021-04-17 19:35:25'),
(3, 'Representante Legal', '2021-04-17 19:35:25', '2021-04-17 19:35:25'),
(4, 'Operador', '2021-04-17 19:35:25', '2021-04-17 19:35:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_nro_inversion`
--

CREATE TABLE `status_nro_inversion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operacion_id` bigint(20) UNSIGNED NOT NULL,
  `nro_operacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_operacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `status_nro_inversion`
--

INSERT INTO `status_nro_inversion` (`id`, `operacion_id`, `nro_operacion`, `voucher_operacion`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'images/voucher/1626192884-RgJKbQq.jpeg', '2021-07-13 16:14:44', '2021-07-13 16:14:44'),
(2, 1, NULL, 'images/voucher/1626193097-CxUctwq.jpeg', '2021-07-13 16:18:17', '2021-07-13 16:18:17'),
(3, 2, NULL, 'images/voucher/1626193385-CxUctwq.jpeg', '2021-07-13 16:23:05', '2021-07-13 16:23:05'),
(4, 3, NULL, 'images/voucher/1626195043-servicios-enviar-vouvher-1.jpg', '2021-07-13 16:50:43', '2021-07-13 16:50:43'),
(5, 4, NULL, 'images/voucher/1626477138-CxUctwq.jpeg', '2021-07-16 23:12:18', '2021-07-16 23:12:18'),
(6, 5, NULL, 'images/voucher/1626477395-vector-gift-voucher-template-golden-260nw-1539358370.jpg', '2021-07-16 23:16:36', '2021-07-16 23:16:36'),
(7, 6, NULL, 'images/voucher/1626740894-RgJKbQq.jpeg', '2021-07-20 00:28:14', '2021-07-20 00:28:14'),
(8, 7, NULL, 'images/voucher/1626802307-CxUctwq.jpeg', '2021-07-20 17:31:47', '2021-07-20 17:31:47'),
(9, 8, NULL, 'images/voucher/1626813599-RgJKbQq.jpeg', '2021-07-20 20:39:59', '2021-07-20 20:39:59'),
(10, 9, NULL, 'images/voucher/1626823109-CxUctwq.jpeg', '2021-07-20 23:18:29', '2021-07-20 23:18:29'),
(11, 10, NULL, 'images/voucher/1626823307-RgJKbQq.jpeg', '2021-07-20 23:21:47', '2021-07-20 23:21:47'),
(12, 11, NULL, 'images/voucher/1626909617-CxUctwq.jpeg', '2021-07-21 23:20:17', '2021-07-21 23:20:17'),
(13, 12, NULL, 'images/voucher/1626910311-RgJKbQq.jpeg', '2021-07-21 23:31:51', '2021-07-21 23:31:51'),
(14, 13, NULL, 'images/voucher/1626910652-RgJKbQq.jpeg', '2021-07-21 23:37:32', '2021-07-21 23:37:32'),
(15, 16, NULL, 'images/voucher/1626911372-vector-gift-voucher-template-golden-260nw-1539358370.jpg', '2021-07-21 23:49:32', '2021-07-21 23:49:32'),
(16, 19, NULL, 'images/voucher/1626912023-servicios-enviar-vouvher-1.jpg', '2021-07-22 00:00:23', '2021-07-22 00:00:23'),
(17, 20, NULL, 'images/voucher/1626912507-servicios-enviar-vouvher-1.jpg', '2021-07-22 00:08:27', '2021-07-22 00:08:27'),
(18, 22, NULL, 'images/voucher/1627334243-RgJKbQq.jpeg', '2021-07-26 21:17:23', '2021-07-26 21:17:23'),
(19, 23, NULL, 'images/voucher/1627334297-RgJKbQq.jpeg', '2021-07-26 21:18:17', '2021-07-26 21:18:17'),
(20, 27, NULL, 'images/voucher/1628121084-RgJKbQq.jpeg', '2021-08-04 23:51:24', '2021-08-04 23:51:24'),
(21, 28, NULL, 'images/voucher/1628271198-PANEL DE CONTROL  (7).jpg', '2021-08-06 17:33:18', '2021-08-06 17:33:18'),
(22, 30, NULL, 'images/voucher/1628271381-ipDNS.jpg', '2021-08-06 17:36:22', '2021-08-06 17:36:22'),
(23, 31, NULL, 'images/voucher/1628542316-PANEL DE CONTROL  (7).jpg', '2021-08-09 20:51:56', '2021-08-09 20:51:56'),
(24, 32, NULL, 'images/voucher/1628542423-RgJKbQq.jpeg', '2021-08-09 20:53:43', '2021-08-09 20:53:43'),
(25, 33, NULL, 'images/voucher/1628706981-ahora.jpg', '2021-08-11 18:36:21', '2021-08-11 18:36:21'),
(26, 34, NULL, 'images/voucher/1628707315-CxUctwq.jpeg', '2021-08-11 18:41:55', '2021-08-11 18:41:55'),
(27, 35, NULL, 'images/voucher/1628707447-CxUctwq.jpeg', '2021-08-11 18:44:08', '2021-08-11 18:44:08'),
(28, 36, NULL, 'images/voucher/1628707604-RgJKbQq.jpeg', '2021-08-11 18:46:44', '2021-08-11 18:46:44'),
(29, 38, NULL, 'images/voucher/1631145135-241013286_3198433970281350_8980221742695519363_n.jpg', '2021-09-08 23:52:15', '2021-09-08 23:52:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_nro_operacion`
--

CREATE TABLE `status_nro_operacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operacion_id` bigint(20) UNSIGNED NOT NULL,
  `nro_operacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_operacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `status_nro_operacion`
--

INSERT INTO `status_nro_operacion` (`id`, `operacion_id`, `nro_operacion`, `voucher_operacion`, `created_at`, `updated_at`) VALUES
(6, 9, '1234567820', NULL, '2021-04-26 04:19:43', '2021-04-26 04:19:43'),
(7, 10, NULL, 'images/voucher/1619412179-voucher.jpg', '2021-04-26 04:42:59', '2021-04-26 04:42:59'),
(8, 11, '11000', NULL, '2021-04-26 05:18:32', '2021-04-26 05:18:32'),
(9, 12, 'V1UPK9', NULL, '2021-04-27 17:01:08', '2021-04-27 17:01:08'),
(10, 13, '432432432432', NULL, '2021-04-27 17:14:15', '2021-04-27 17:14:15'),
(11, 15, '23232323232', NULL, '2021-04-27 18:10:29', '2021-04-27 18:10:29'),
(12, 16, '232232323', NULL, '2021-04-28 15:32:55', '2021-04-28 15:32:55'),
(13, 16, NULL, 'images/voucher/1619624061-152461779_747051816206548_5562818862943999941_n (1).jpg', '2021-04-28 15:34:21', '2021-04-28 15:34:21'),
(14, 17, '1234567890', NULL, '2021-04-28 15:39:58', '2021-04-28 15:39:58'),
(15, 18, NULL, 'images/voucher/1619625106-152461779_747051816206548_5562818862943999941_n (1).jpg', '2021-04-28 15:51:46', '2021-04-28 15:51:46'),
(16, 19, '45564', NULL, '2021-04-28 20:58:47', '2021-04-28 20:58:47'),
(17, 20, NULL, 'images/voucher/1619645049-CERRAR SESION (1).png', '2021-04-28 21:24:09', '2021-04-28 21:24:09'),
(18, 21, '555', NULL, '2021-04-28 22:34:10', '2021-04-28 22:34:10'),
(19, 26, NULL, 'images/voucher/1619731019-CERRAR SESION (1).png', '2021-04-29 21:16:59', '2021-04-29 21:16:59'),
(20, 27, '990909', NULL, '2021-04-29 21:37:42', '2021-04-29 21:37:42'),
(21, 29, NULL, 'images/voucher/1625681047-CxUctwq.jpeg', '2021-07-07 18:04:07', '2021-07-07 18:04:07'),
(22, 30, NULL, 'images/voucher/1626301821-CxUctwq.jpeg', '2021-07-14 22:30:21', '2021-07-14 22:30:21'),
(23, 31, NULL, 'images/voucher/1626802127-CxUctwq.jpeg', '2021-07-20 17:28:47', '2021-07-20 17:28:47'),
(24, 32, NULL, 'images/voucher/1628707701-RgJKbQq.jpeg', '2021-08-11 18:48:22', '2021-08-11 18:48:22'),
(25, 33, NULL, 'images/voucher/1628707854-CxUctwq.jpeg', '2021-08-11 18:50:54', '2021-08-11 18:50:54'),
(26, 34, NULL, 'images/voucher/1628708059-RgJKbQq.jpeg', '2021-08-11 18:54:19', '2021-08-11 18:54:19'),
(27, 35, NULL, 'images/voucher/1628708381-PANEL DE CONTROL  (7).jpg', '2021-08-11 18:59:41', '2021-08-11 18:59:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cambios`
--

CREATE TABLE `tipo_cambios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `compra` decimal(8,4) NOT NULL,
  `venta` decimal(8,4) NOT NULL,
  `estado` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_cambios`
--

INSERT INTO `tipo_cambios` (`id`, `compra`, `venta`, `estado`, `created_at`, `updated_at`) VALUES
(1, '3.7555', '3.9111', '1', '2021-04-17 19:39:16', '2021-07-01 17:25:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuentas`
--

CREATE TABLE `tipo_cuentas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_cuentas`
--

INSERT INTO `tipo_cuentas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Soles', '2021-04-17 20:47:42', '2021-04-17 20:47:42'),
(2, 'Dolares', '2021-04-17 20:47:42', '2021-04-17 20:47:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_financiamientos`
--

CREATE TABLE `tipo_financiamientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_financiamientos`
--

INSERT INTO `tipo_financiamientos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Factoring & Confirming Financiamiento a la Importación', NULL, NULL),
(2, 'Préstamo con garantía inmobiliaria', NULL, NULL),
(3, 'Leasing o Arrendamiento', NULL, NULL),
(4, 'Financiamiento a mis clientes', NULL, NULL),
(5, 'Financiamiento Inmobiliario', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `politico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_id` bigint(20) UNSIGNED NOT NULL,
  `archivo_dni_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo_dni_atras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `apellidos`, `email`, `email_verified_at`, `dni`, `celular`, `domicilio`, `nacionalidad`, `ocupacion`, `politico`, `cargo`, `empresa`, `password`, `tipo_id`, `archivo_dni_front`, `archivo_dni_atras`, `verification_code`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '74208144', '940979490', 'Av. Urubamba 378', 'Peruano', 'Administrador', '0', NULL, NULL, 'qzU1vqjfK4b8L8YiDFKVc8P0WqzzVoVJEZvfZK0Z', 1, NULL, NULL, NULL, 1, '2021-04-17 19:35:30', '2021-04-17 19:35:30'),
(3, 'Brian', 'Huamani', 'brian125865@gmail.com', NULL, '74208144', '940979490', 'Av. Los heroes', 'Peruano', 'Lima', '0', NULL, NULL, '$2y$10$ndOlACv9utIf98TwbTi7Wu9y2S6ntga4gzAQTOVslxl95NLSr.lAy', 2, 'images/dni/1618688503-dni.jpg', 'images/dni/1618688503-nuevodni.jpg', '314126dcca09bc76d4c0c4d249e1aa0d21cb2c96', 1, '2021-04-17 19:41:43', '2021-04-23 20:50:53'),
(6, 'Alex', 'Gutierrez', 'alexfus8@gmail.com', NULL, '3443434343', '9999900009', 'av mi casa', 'peruano', 'web', '1', 'programador', 'IBM', '$2y$10$FIiketIWwTgsA8wCLOlP/ei4gUv/Hse2qkOa3KYlpVD./DUA3ztzq', 2, 'images/dni/1619623653-156065131_247377146995129_2920617676245044628_n.jpg', 'images/dni/1619623653-148872865_732586220956803_6211931604409770046_o.jpg', '0aff0384df937464f7e840085b21c0999349db79', 1, '2021-04-28 15:27:34', '2021-04-28 15:30:55'),
(8, 'carlos', 'flores', 'carlos@gmail', NULL, '2121122112', '2121212121', 'LOS NOGALES 4444', 'PERUANO', 'CONTADOR', '0', 'NULL', 'NULL', '$2y$10$JnUHCOkyP6tz34E.4DHP5.xQTt58xA0ypTSdHKoh2dLH0sDR6vYdu', 4, NULL, NULL, '43bfd8e327d626e914a0e4768d4ee53410e59900', 1, '2021-07-01 16:27:22', '2021-07-02 16:27:32'),
(9, 'manuel', 'guti', 'guti@gmail.com', NULL, '221122121', '4343434343', 'AV. LOS QUIMICOS 333', 'PERUANO', 'CONTADOR', '0', 'NULL', 'NULL', '$2y$10$JnUHCOkyP6tz34E.4DHP5.xQTt58xA0ypTSdHKoh2dLH0sDR6vYdu', 3, NULL, NULL, '43bfd8e327d626e914a0e4768d4ee53410e59900', 1, '2021-07-01 16:27:56', '2021-07-02 16:28:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_cuenta`
--
ALTER TABLE `categoria_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuenta_bancarias`
--
ALTER TABLE `cuenta_bancarias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuenta_bancarias_user_id_foreign` (`user_id`),
  ADD KEY `cuenta_bancarias_banco_id_foreign` (`banco_id`),
  ADD KEY `cuenta_bancarias_tipo_cuenta_foreign` (`tipo_cuenta`),
  ADD KEY `cuenta_bancarias_categoria_cuenta_id_foreign` (`categoria_cuenta_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa_inversiones`
--
ALTER TABLE `empresa_inversiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_inversiones_moneda_inversion_foreign` (`moneda_inversion`) USING BTREE;

--
-- Indices de la tabla `estado_cuentas`
--
ALTER TABLE `estado_cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_operacion`
--
ALTER TABLE `estado_operacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `financiamientos`
--
ALTER TABLE `financiamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `financiamiento_empresas`
--
ALTER TABLE `financiamiento_empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financiamiento_empresas_user_id_foreign` (`user_id`),
  ADD KEY `financiamiento_empresas_tipo_financiamiento_id_foreign` (`tipo_financiamiento_id`) USING BTREE;

--
-- Indices de la tabla `financiamiento_persona_naturals`
--
ALTER TABLE `financiamiento_persona_naturals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financiamiento_persona_naturals_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `inversion_empresas`
--
ALTER TABLE `inversion_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inversion_operacion`
--
ALTER TABLE `inversion_operacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inversion_operacion_user_id_foreign` (`user_id`),
  ADD KEY `inversion_operacion_empresa_id_foreign` (`empresa_id`),
  ADD KEY `inversion_operacion_banco_origen_id_foreign` (`banco_origen_id`),
  ADD KEY `inversion_operacion_moneda_id_foreign` (`moneda_id`),
  ADD KEY `inversion_operacion_banco_destino_id_foreign` (`banco_destino_id`),
  ADD KEY `inversion_operacion_estado_id_foreign` (`estado_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operacion`
--
ALTER TABLE `operacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operacion_user_id_foreign` (`user_id`),
  ADD KEY `operacion_banco_origen_id_foreign` (`banco_origen_id`),
  ADD KEY `operacion_banco_destino_id_foreign` (`banco_destino_id`),
  ADD KEY `operacion_estado_id_foreign` (`estado_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `persona_operaciones`
--
ALTER TABLE `persona_operaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_operaciones_user_id_foreign` (`user_id`),
  ADD KEY `persona_operaciones_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `representante_legals`
--
ALTER TABLE `representante_legals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `representante_legals_user_id_foreign` (`user_id`),
  ADD KEY `representante_legals_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_nro_inversion`
--
ALTER TABLE `status_nro_inversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_nro_inversion_operacion_id_foreign` (`operacion_id`);

--
-- Indices de la tabla `status_nro_operacion`
--
ALTER TABLE `status_nro_operacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_nro_operacion_operacion_id_foreign` (`operacion_id`);

--
-- Indices de la tabla `tipo_cambios`
--
ALTER TABLE `tipo_cambios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_cuentas`
--
ALTER TABLE `tipo_cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_financiamientos`
--
ALTER TABLE `tipo_financiamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_tipo_id_foreign` (`tipo_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categoria_cuenta`
--
ALTER TABLE `categoria_cuenta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cuenta_bancarias`
--
ALTER TABLE `cuenta_bancarias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresa_inversiones`
--
ALTER TABLE `empresa_inversiones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estado_cuentas`
--
ALTER TABLE `estado_cuentas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `estado_operacion`
--
ALTER TABLE `estado_operacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `financiamientos`
--
ALTER TABLE `financiamientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `financiamiento_empresas`
--
ALTER TABLE `financiamiento_empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `financiamiento_persona_naturals`
--
ALTER TABLE `financiamiento_persona_naturals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `inversion_empresas`
--
ALTER TABLE `inversion_empresas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inversion_operacion`
--
ALTER TABLE `inversion_operacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `operacion`
--
ALTER TABLE `operacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `persona_operaciones`
--
ALTER TABLE `persona_operaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `representante_legals`
--
ALTER TABLE `representante_legals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `status_nro_inversion`
--
ALTER TABLE `status_nro_inversion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `status_nro_operacion`
--
ALTER TABLE `status_nro_operacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tipo_cambios`
--
ALTER TABLE `tipo_cambios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_cuentas`
--
ALTER TABLE `tipo_cuentas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_financiamientos`
--
ALTER TABLE `tipo_financiamientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta_bancarias`
--
ALTER TABLE `cuenta_bancarias`
  ADD CONSTRAINT `cuenta_bancarias_banco_id_foreign` FOREIGN KEY (`banco_id`) REFERENCES `bancos` (`id`),
  ADD CONSTRAINT `cuenta_bancarias_categoria_cuenta_id_foreign` FOREIGN KEY (`categoria_cuenta_id`) REFERENCES `categoria_cuenta` (`id`),
  ADD CONSTRAINT `cuenta_bancarias_tipo_cuenta_foreign` FOREIGN KEY (`tipo_cuenta`) REFERENCES `tipo_cuentas` (`id`),
  ADD CONSTRAINT `cuenta_bancarias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `financiamiento_empresas`
--
ALTER TABLE `financiamiento_empresas`
  ADD CONSTRAINT `financiamiento_empresas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `financiamiento_persona_naturals`
--
ALTER TABLE `financiamiento_persona_naturals`
  ADD CONSTRAINT `financiamiento_persona_naturals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `inversion_operacion`
--
ALTER TABLE `inversion_operacion`
  ADD CONSTRAINT `inversion_operacion_banco_destino_id_foreign` FOREIGN KEY (`banco_destino_id`) REFERENCES `cuenta_bancarias` (`id`),
  ADD CONSTRAINT `inversion_operacion_banco_origen_id_foreign` FOREIGN KEY (`banco_origen_id`) REFERENCES `bancos` (`id`),
  ADD CONSTRAINT `inversion_operacion_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa_inversiones` (`id`),
  ADD CONSTRAINT `inversion_operacion_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estado_operacion` (`id`),
  ADD CONSTRAINT `inversion_operacion_moneda_id_foreign` FOREIGN KEY (`moneda_id`) REFERENCES `tipo_cuentas` (`id`),
  ADD CONSTRAINT `inversion_operacion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `operacion`
--
ALTER TABLE `operacion`
  ADD CONSTRAINT `operacion_banco_destino_id_foreign` FOREIGN KEY (`banco_destino_id`) REFERENCES `cuenta_bancarias` (`id`),
  ADD CONSTRAINT `operacion_banco_origen_id_foreign` FOREIGN KEY (`banco_origen_id`) REFERENCES `bancos` (`id`),
  ADD CONSTRAINT `operacion_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estado_operacion` (`id`),
  ADD CONSTRAINT `operacion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `persona_operaciones`
--
ALTER TABLE `persona_operaciones`
  ADD CONSTRAINT `persona_operaciones_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `persona_operaciones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `representante_legals`
--
ALTER TABLE `representante_legals`
  ADD CONSTRAINT `representante_legals_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `representante_legals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `status_nro_inversion`
--
ALTER TABLE `status_nro_inversion`
  ADD CONSTRAINT `status_nro_inversion_operacion_id_foreign` FOREIGN KEY (`operacion_id`) REFERENCES `inversion_operacion` (`id`);

--
-- Filtros para la tabla `status_nro_operacion`
--
ALTER TABLE `status_nro_operacion`
  ADD CONSTRAINT `status_nro_operacion_operacion_id_foreign` FOREIGN KEY (`operacion_id`) REFERENCES `operacion` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `roles` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"imoney\",\"table\":\"users\"},{\"db\":\"imoney\",\"table\":\"tipo_cambios\"},{\"db\":\"imoney\",\"table\":\"bancos\"},{\"db\":\"imoney\",\"table\":\"categoria_cuenta\"},{\"db\":\"imoney\",\"table\":\"cuenta_bancarias\"},{\"db\":\"imoney\",\"table\":\"empresa\"},{\"db\":\"imoney\",\"table\":\"empresa_inversiones\"},{\"db\":\"imoney\",\"table\":\"empresa_inversionista\"},{\"db\":\"imoney\",\"table\":\"estado_operacion\"},{\"db\":\"imoney\",\"table\":\"failed_jobs\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'imoney', 'operacion', '[]', '2021-05-25 21:52:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-06-16 17:59:41', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":234}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_03_205214_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'alexguti@gmail.com', NULL, '$2y$10$F3qakY.a.q/t3SD19y.FnOdATmU5SES1ZsMa1O2GCmRdp/HMyxUBm', NULL, '2021-11-04 10:09:43', '2021-11-04 10:09:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `vuejs_crud`
--
CREATE DATABASE IF NOT EXISTS `vuejs_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vuejs_crud`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `youguti`
--
CREATE DATABASE IF NOT EXISTS `youguti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `youguti`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_06_28_174116_create_categorias_table', 1),
(4, '2021_11_04_055119_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
