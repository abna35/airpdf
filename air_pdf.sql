-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2025 at 11:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `air_pdf`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_id` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `sharing_token` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `file_id`, `file_name`, `file_size`, `user_id`, `created_at`, `updated_at`, `file_path`, `sharing_token`, `is_public`) VALUES
(4, 'file-QaB1s5Q5a6DrQu3ozkVZLG', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 03:24:13', '2025-10-27 03:24:13', 'documents/1761555253_it_act_2000_updated.pdf', NULL, 0),
(5, 'file-5EA4u2kMuAs8ZxnefR915f', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 03:29:51', '2025-10-27 03:29:51', 'documents/1761555590_it_act_2000_updated.pdf', NULL, 0),
(6, 'file-WUzMrvh9eiLEAfiZCDDwgs', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 03:32:13', '2025-10-27 03:32:13', 'documents/1761555733_it_act_2000_updated.pdf', NULL, 0),
(7, 'file-1mNFoNmPosGpaBoG3jhPLn', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 04:13:59', '2025-10-27 04:13:59', 'documents/1761558238_it_act_2000_updated.pdf', NULL, 0),
(8, 'file-6jjcfKB6HAJ76yYpFHqG6y', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 04:15:33', '2025-10-27 04:15:33', 'documents/1761558332_it_act_2000_updated.pdf', NULL, 0),
(9, 'file-RLTm8a7gQY2SkvpKsShKWx', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 04:27:09', '2025-10-27 04:27:09', 'documents/1761559028_it_act_2000_updated.pdf', NULL, 0),
(10, 'file-GrNXfEsxN5Kkax3CHm3rKH', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 06:34:31', '2025-10-27 06:34:31', 'documents/1761566671_it_act_2000_updated.pdf', NULL, 0),
(11, 'file-4kXvyvwC8M71fFFyHXLMsN', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 15:44:21', '2025-10-27 15:44:21', 'documents/1761599660_it_act_2000_updated.pdf', NULL, 0),
(12, 'file-TXgETw53NFue7vfwAbsNm6', 'it_act_2000_updated.pdf', 832355, 2, '2025-10-27 15:59:18', '2025-10-27 15:59:18', 'documents/1761600557_it_act_2000_updated.pdf', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('user','assistant') NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `thread_id`, `role`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'user', 'what is in this document', '2025-10-27 03:35:37', '2025-10-27 03:35:37'),
(2, 1, 'assistant', '', '2025-10-27 03:35:37', '2025-10-27 03:35:37'),
(3, 2, 'user', 'what is in this pdf', '2025-10-27 06:26:40', '2025-10-27 06:26:40'),
(4, 2, 'assistant', '', '2025-10-27 06:26:40', '2025-10-27 06:26:40'),
(5, 2, 'user', 'what is in this pdf', '2025-10-27 06:26:58', '2025-10-27 06:26:58'),
(6, 2, 'assistant', '', '2025-10-27 06:26:58', '2025-10-27 06:26:58'),
(7, 2, 'user', 'what is in this pdf', '2025-10-27 06:31:11', '2025-10-27 06:31:11'),
(8, 2, 'assistant', '', '2025-10-27 06:31:11', '2025-10-27 06:31:11'),
(9, 3, 'user', 'SUMMARISE THIS', '2025-10-27 06:35:00', '2025-10-27 06:35:00'),
(10, 3, 'assistant', '', '2025-10-27 06:35:00', '2025-10-27 06:35:00'),
(11, 3, 'user', 'SUMMARISE THIS', '2025-10-27 06:35:36', '2025-10-27 06:35:36'),
(12, 3, 'assistant', '', '2025-10-27 06:35:36', '2025-10-27 06:35:36'),
(13, 2, 'user', 'SUMMARISE THIS', '2025-10-27 06:37:59', '2025-10-27 06:37:59'),
(14, 2, 'assistant', '', '2025-10-27 06:37:59', '2025-10-27 06:37:59'),
(15, 2, 'user', 'SUMMARISE THIS', '2025-10-27 06:44:15', '2025-10-27 06:44:15'),
(16, 2, 'assistant', '', '2025-10-27 06:44:15', '2025-10-27 06:44:15'),
(17, 4, 'user', 'summarise trhis', '2025-10-27 15:44:44', '2025-10-27 15:44:44'),
(18, 4, 'assistant', '', '2025-10-27 15:44:44', '2025-10-27 15:44:44'),
(19, 4, 'user', 'summarise this', '2025-10-27 15:45:55', '2025-10-27 15:45:55'),
(20, 4, 'assistant', '', '2025-10-27 15:45:55', '2025-10-27 15:45:55'),
(21, 4, 'user', 'summarise this', '2025-10-27 15:48:10', '2025-10-27 15:48:10'),
(22, 4, 'assistant', '', '2025-10-27 15:48:10', '2025-10-27 15:48:10'),
(23, 4, 'user', 'summarise this', '2025-10-27 15:48:58', '2025-10-27 15:48:58'),
(24, 4, 'assistant', '', '2025-10-27 15:48:58', '2025-10-27 15:48:58'),
(25, 4, 'user', 'summarise this', '2025-10-27 15:52:27', '2025-10-27 15:52:27'),
(26, 4, 'assistant', '', '2025-10-27 15:52:27', '2025-10-27 15:52:27'),
(27, 5, 'user', 'summarise this', '2025-10-27 15:59:40', '2025-10-27 15:59:40'),
(28, 5, 'assistant', 'The document is a comprehensive summary of the Information Technology Act, 2000 of India, which was established to provide legal recognition for electronic records and transactions. The Act aims to facilitate e-commerce and govern the use of digital signatures and electronic communication.\n\nHere are the main points covered:\n\n1. **Legal Framework**: The Act legalizes electronic methods of communication and storage, allowing electronic documents to hold the same validity as paper-based documents.\n\n2. **Definitions**: Key terms related to electronic records, digital signatures, and electronic governance are clearly defined, establishing the foundation for understanding the legal context.\n\n3. **Digital Signatures**: The Act recognizes digital signatures, establishing their legal validity and defining the roles of certifying authorities that issue Digital Signature Certificates.\n\n4. **Attribution and Acknowledgment**: It elaborates on how electronic records can be attributed to their originators and outlines the processes for acknowledgment of electronic communications.\n\n5. **Security Procedures**: The Act mandates the establishment of security procedures to ensure the integrity and confidentiality of electronic records.\n\n6. **Duties and Responsibilities**: It sets out the responsibilities of subscribers and certifying authorities in terms of generating and managing digital signatures.\n\n7. **Regulation and Governance**: The Act provides for the appointment of a Controller who oversees certifying authorities and ensures compliance with the Act.\n\n8. **Offences and Penalties**: There are provisions for identifying and penalizing breaches of the Act, protecting against misuse of electronic signatures and records.\n\n9. **Miscellaneous Provisions**: Various sections address the powers of government authorities, including law enforcement, to investigate and act against violations.\n\nThe Act is aimed at promoting and regulating the use of electronic transactions to ensure reliability and security in the digital realm.', '2025-10-27 15:59:40', '2025-10-27 15:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_14_133111_create_documents_table', 1),
(5, '2024_05_18_142119_add_file_path_to_documents_table', 1),
(6, '2024_08_03_055618_create_openai_assistant_tables', 1),
(7, '2024_08_30_032345_create_pulse_tables', 1),
(8, '2024_09_09_212613_add_title_to_threads_table', 1),
(9, '2024_11_13_131904_add_google_id_in_users_table', 1),
(10, '2024_11_18_040219_add_sharing_token_to_documents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('abina35@gmail.com', '$2y$12$2U8vnoOoWANdlo/YBfDlWeIz0oiAljm87m8KMkhT72kuoYf00zKwe', '2025-10-27 02:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `pulse_aggregates`
--

CREATE TABLE `pulse_aggregates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bucket` int(10) UNSIGNED NOT NULL,
  `period` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `aggregate` varchar(255) NOT NULL,
  `value` decimal(20,2) NOT NULL,
  `count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_aggregates`
--

INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(1, 1761551880, 60, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'count', 1.00, NULL),
(2, 1761551640, 360, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'count', 1.00, NULL),
(3, 1761550560, 1440, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'count', 1.00, NULL),
(4, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'count', 1.00, NULL),
(5, 1761551880, 60, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'max', 1761551916.00, NULL),
(6, 1761551640, 360, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'max', 1761551916.00, NULL),
(7, 1761550560, 1440, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'max', 1761551916.00, NULL),
(8, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 'max', 1761551916.00, NULL),
(9, 1761552600, 60, 'user_request', '2', 'count', 5.00, NULL),
(10, 1761552360, 360, 'user_request', '2', 'count', 6.00, NULL),
(11, 1761552000, 1440, 'user_request', '2', 'count', 28.00, NULL),
(12, 1761550560, 10080, 'user_request', '2', 'count', 105.00, NULL),
(21, 1761552600, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(22, 1761552360, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 2.00, NULL),
(23, 1761552000, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 4.00, NULL),
(24, 1761550560, 10080, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 10.00, NULL),
(25, 1761552600, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(26, 1761552360, 360, 'slow_user_request', '2', 'count', 2.00, NULL),
(27, 1761552000, 1440, 'slow_user_request', '2', 'count', 4.00, NULL),
(28, 1761550560, 10080, 'slow_user_request', '2', 'count', 11.00, NULL),
(33, 1761552600, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1529.00, NULL),
(34, 1761552360, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1552.00, NULL),
(35, 1761552000, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2491.00, NULL),
(36, 1761550560, 10080, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2785.00, NULL),
(41, 1761552660, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(42, 1761552660, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(43, 1761552660, 60, 'user_request', '2', 'count', 1.00, NULL),
(53, 1761552660, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1552.00, NULL),
(57, 1761552900, 60, 'user_request', '2', 'count', 5.00, NULL),
(58, 1761552720, 360, 'user_request', '2', 'count', 8.00, NULL),
(65, 1761552900, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(66, 1761552720, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(67, 1761552900, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(68, 1761552720, 360, 'slow_user_request', '2', 'count', 1.00, NULL),
(77, 1761552900, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1350.00, NULL),
(78, 1761552720, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1350.00, NULL),
(85, 1761552900, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'count', 1.00, NULL),
(86, 1761552720, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'count', 1.00, NULL),
(87, 1761552000, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'count', 1.00, NULL),
(88, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'count', 1.00, NULL),
(93, 1761552900, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'max', 1761552932.00, NULL),
(94, 1761552720, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'max', 1761552932.00, NULL),
(95, 1761552000, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'max', 1761552932.00, NULL),
(96, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 'max', 1761552932.00, NULL),
(97, 1761553020, 60, 'user_request', '2', 'count', 3.00, NULL),
(101, 1761553020, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'count', 1.00, NULL),
(102, 1761552720, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'count', 1.00, NULL),
(103, 1761552000, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'count', 1.00, NULL),
(104, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'count', 1.00, NULL),
(109, 1761553020, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'max', 1761553044.00, NULL),
(110, 1761552720, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'max', 1761553044.00, NULL),
(111, 1761552000, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'max', 1761553044.00, NULL),
(112, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 'max', 1761553044.00, NULL),
(113, 1761553020, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(114, 1761552720, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(115, 1761552000, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(116, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 10.00, NULL),
(121, 1761553020, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761553072.00, NULL),
(122, 1761552720, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761553072.00, NULL),
(123, 1761552000, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761553072.00, NULL),
(124, 1761550560, 10080, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558500.00, NULL),
(125, 1761553080, 60, 'user_request', '2', 'count', 4.00, NULL),
(126, 1761553080, 360, 'user_request', '2', 'count', 14.00, NULL),
(127, 1761553080, 60, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'count', 2.00, NULL),
(128, 1761553080, 360, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'count', 2.00, NULL),
(129, 1761552000, 1440, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'count', 2.00, NULL),
(130, 1761550560, 10080, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'count', 2.00, NULL),
(133, 1761553080, 60, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'max', 1761553112.00, NULL),
(134, 1761553080, 360, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'max', 1761553112.00, NULL),
(135, 1761552000, 1440, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'max', 1761553112.00, NULL),
(136, 1761550560, 10080, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 'max', 1761553112.00, NULL),
(157, 1761553260, 60, 'user_request', '2', 'count', 10.00, NULL),
(173, 1761553260, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(174, 1761553080, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(175, 1761553260, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(176, 1761553080, 360, 'slow_user_request', '2', 'count', 1.00, NULL),
(185, 1761553260, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2491.00, NULL),
(186, 1761553080, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2491.00, NULL),
(209, 1761555000, 60, 'user_request', '2', 'count', 9.00, NULL),
(210, 1761554880, 360, 'user_request', '2', 'count', 16.00, NULL),
(211, 1761554880, 1440, 'user_request', '2', 'count', 52.00, NULL),
(233, 1761555000, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(234, 1761554880, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(235, 1761554880, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 4.00, NULL),
(236, 1761555000, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(237, 1761554880, 360, 'slow_user_request', '2', 'count', 1.00, NULL),
(238, 1761554880, 1440, 'slow_user_request', '2', 'count', 5.00, NULL),
(245, 1761555000, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2298.00, NULL),
(246, 1761554880, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2298.00, NULL),
(247, 1761554880, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2785.00, NULL),
(257, 1761555060, 60, 'user_request', '2', 'count', 7.00, NULL),
(285, 1761555240, 60, 'user_request', '2', 'count', 4.00, NULL),
(286, 1761555240, 360, 'user_request', '2', 'count', 11.00, NULL),
(289, 1761555240, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(290, 1761555240, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 2.00, NULL),
(291, 1761555240, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(292, 1761555240, 360, 'slow_user_request', '2', 'count', 2.00, NULL),
(301, 1761555240, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2785.00, NULL),
(302, 1761555240, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2785.00, NULL),
(313, 1761555540, 60, 'user_request', '2', 'count', 7.00, NULL),
(329, 1761555540, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(330, 1761555540, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(341, 1761555540, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1782.00, NULL),
(353, 1761555720, 60, 'user_request', '2', 'count', 8.00, NULL),
(354, 1761555600, 360, 'user_request', '2', 'count', 15.00, NULL),
(365, 1761555720, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(366, 1761555600, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(367, 1761555720, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(368, 1761555600, 360, 'slow_user_request', '2', 'count', 2.00, NULL),
(377, 1761555720, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2550.00, NULL),
(378, 1761555600, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2550.00, NULL),
(397, 1761555900, 60, 'user_request', '2', 'count', 7.00, NULL),
(421, 1761555900, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(422, 1761555600, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(423, 1761554880, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(424, 1761550560, 10080, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(425, 1761555900, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(426, 1761555900, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(427, 1761555600, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(428, 1761554880, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(429, 1761550560, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(437, 1761555900, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 11816.00, NULL),
(438, 1761555600, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 11816.00, NULL),
(439, 1761554880, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 11816.00, NULL),
(440, 1761550560, 10080, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 11816.00, NULL),
(441, 1761555900, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761555937.00, NULL),
(442, 1761555600, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761555937.00, NULL),
(443, 1761554880, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761555937.00, NULL),
(444, 1761550560, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761555937.00, NULL),
(445, 1761556020, 60, 'user_request', '2', 'count', 5.00, NULL),
(446, 1761555960, 360, 'user_request', '2', 'count', 10.00, NULL),
(465, 1761556080, 60, 'user_request', '2', 'count', 1.00, NULL),
(469, 1761556140, 60, 'user_request', '2', 'count', 4.00, NULL),
(481, 1761556140, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(482, 1761555960, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(483, 1761554880, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(489, 1761556140, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761556169.00, NULL),
(490, 1761555960, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761556169.00, NULL),
(491, 1761554880, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761556169.00, NULL),
(493, 1761558120, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'count', 2.00, NULL),
(494, 1761558120, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'count', 2.00, NULL),
(495, 1761557760, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'count', 2.00, NULL),
(496, 1761550560, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'count', 2.00, NULL),
(497, 1761558120, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'max', 1761558140.00, NULL),
(498, 1761558120, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'max', 1761558140.00, NULL),
(499, 1761557760, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'max', 1761558140.00, NULL),
(500, 1761550560, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 'max', 1761558140.00, NULL),
(501, 1761558180, 60, 'user_request', '2', 'count', 5.00, NULL),
(502, 1761558120, 360, 'user_request', '2', 'count', 14.00, NULL),
(503, 1761557760, 1440, 'user_request', '2', 'count', 25.00, NULL),
(504, 1761558180, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(505, 1761558120, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 7.00, NULL),
(506, 1761557760, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 8.00, NULL),
(509, 1761558180, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558229.00, NULL),
(510, 1761558120, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558435.00, NULL),
(511, 1761557760, 1440, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558500.00, NULL),
(521, 1761558180, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(522, 1761558120, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 2.00, NULL),
(523, 1761557760, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 2.00, NULL),
(524, 1761558180, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(525, 1761558120, 360, 'slow_user_request', '2', 'count', 2.00, NULL),
(526, 1761557760, 1440, 'slow_user_request', '2', 'count', 2.00, NULL),
(533, 1761558180, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1448.00, NULL),
(534, 1761558120, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2637.00, NULL),
(535, 1761557760, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2637.00, NULL),
(541, 1761558240, 60, 'user_request', '2', 'count', 1.00, NULL),
(542, 1761558240, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(549, 1761558240, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558240.00, NULL),
(553, 1761558300, 60, 'user_request', '2', 'count', 5.00, NULL),
(554, 1761558300, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 2.00, NULL),
(561, 1761558300, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558334.00, NULL),
(569, 1761558300, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(570, 1761558300, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(581, 1761558300, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 2637.00, NULL),
(601, 1761558360, 60, 'user_request', '2', 'count', 1.00, NULL),
(602, 1761558360, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(609, 1761558360, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558411.00, NULL),
(613, 1761558420, 60, 'user_request', '2', 'count', 2.00, NULL),
(614, 1761558420, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 2.00, NULL),
(621, 1761558420, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558435.00, NULL),
(637, 1761558480, 60, 'user_request', '2', 'count', 1.00, NULL),
(638, 1761558480, 360, 'user_request', '2', 'count', 5.00, NULL),
(639, 1761558480, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(640, 1761558480, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'count', 1.00, NULL),
(645, 1761558480, 60, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558500.00, NULL),
(646, 1761558480, 360, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 'max', 1761558500.00, NULL),
(649, 1761558600, 60, 'user_request', '2', 'count', 4.00, NULL),
(665, 1761558840, 60, 'user_request', '2', 'count', 6.00, NULL),
(666, 1761558840, 360, 'user_request', '2', 'count', 6.00, NULL),
(686, 1761565980, 60, 'user_request', '2', 'count', 4.00, NULL),
(687, 1761565680, 360, 'user_request', '2', 'count', 4.00, NULL),
(688, 1761564960, 1440, 'user_request', '2', 'count', 13.00, NULL),
(689, 1761560640, 10080, 'user_request', '2', 'count', 33.00, NULL),
(702, 1761566040, 60, 'user_request', '2', 'count', 4.00, NULL),
(703, 1761566040, 360, 'user_request', '2', 'count', 9.00, NULL),
(715, 1761566160, 60, 'user_request', '2', 'count', 5.00, NULL),
(723, 1761566160, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 2.00, NULL),
(724, 1761566040, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 2.00, NULL),
(725, 1761564960, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 2.00, NULL),
(726, 1761560640, 10080, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 7.00, NULL),
(727, 1761566160, 60, 'slow_user_request', '2', 'count', 2.00, NULL),
(728, 1761566040, 360, 'slow_user_request', '2', 'count', 2.00, NULL),
(729, 1761564960, 1440, 'slow_user_request', '2', 'count', 2.00, NULL),
(730, 1761560640, 10080, 'slow_user_request', '2', 'count', 8.00, NULL),
(731, 1761566160, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 2.00, NULL),
(732, 1761566040, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 2.00, NULL),
(733, 1761564960, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 2.00, NULL),
(734, 1761560640, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 7.00, NULL),
(739, 1761566160, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 14255.00, NULL),
(740, 1761566040, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 14255.00, NULL),
(741, 1761564960, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 14255.00, NULL),
(742, 1761560640, 10080, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 15116.00, NULL),
(743, 1761566160, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566219.00, NULL),
(744, 1761566040, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566219.00, NULL),
(745, 1761564960, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566219.00, NULL),
(746, 1761560640, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761567256.00, NULL),
(775, 1761566400, 60, 'user_request', '2', 'count', 1.00, NULL),
(776, 1761566400, 360, 'user_request', '2', 'count', 13.00, NULL),
(777, 1761566400, 1440, 'user_request', '2', 'count', 19.00, NULL),
(779, 1761566460, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(780, 1761566400, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 3.00, NULL),
(781, 1761566400, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 5.00, NULL),
(782, 1761566460, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(783, 1761566400, 360, 'slow_user_request', '2', 'count', 4.00, NULL),
(784, 1761566400, 1440, 'slow_user_request', '2', 'count', 6.00, NULL),
(785, 1761566460, 60, 'user_request', '2', 'count', 1.00, NULL),
(786, 1761566460, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(787, 1761566400, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 3.00, NULL),
(788, 1761566400, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 5.00, NULL),
(795, 1761566460, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 10445.00, NULL),
(796, 1761566400, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 15116.00, NULL),
(797, 1761566400, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 15116.00, NULL),
(798, 1761566460, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566471.00, NULL),
(799, 1761566400, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566737.00, NULL),
(800, 1761566400, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761567256.00, NULL),
(803, 1761566520, 60, 'user_request', '2', 'count', 3.00, NULL),
(815, 1761566640, 60, 'user_request', '2', 'count', 6.00, NULL),
(823, 1761566640, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(824, 1761566400, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(825, 1761566400, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(826, 1761560640, 10080, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(827, 1761566640, 60, 'slow_user_request', '2', 'count', 2.00, NULL),
(835, 1761566640, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1600.00, NULL),
(836, 1761566400, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1600.00, NULL),
(837, 1761566400, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1600.00, NULL),
(838, 1761560640, 10080, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 1600.00, NULL),
(847, 1761566640, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(848, 1761566700, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 2.00, NULL),
(863, 1761566640, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 15116.00, NULL),
(864, 1761566700, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566737.00, NULL),
(871, 1761566700, 60, 'user_request', '2', 'count', 2.00, NULL),
(875, 1761566700, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(876, 1761566700, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(891, 1761566700, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 8775.00, NULL),
(899, 1761566820, 60, 'user_request', '2', 'count', 4.00, NULL),
(900, 1761566760, 360, 'user_request', '2', 'count', 4.00, NULL),
(911, 1761566820, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(912, 1761566760, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(913, 1761566820, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(914, 1761566760, 360, 'slow_user_request', '2', 'count', 1.00, NULL),
(915, 1761566880, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(916, 1761566760, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(927, 1761566820, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 8374.00, NULL),
(928, 1761566760, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 8374.00, NULL),
(929, 1761566880, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566880.00, NULL),
(930, 1761566760, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761566880.00, NULL),
(935, 1761567180, 60, 'user_request', '2', 'count', 1.00, NULL),
(936, 1761567120, 360, 'user_request', '2', 'count', 2.00, NULL),
(939, 1761567240, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(940, 1761567120, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(941, 1761567240, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(942, 1761567120, 360, 'slow_user_request', '2', 'count', 1.00, NULL),
(943, 1761567240, 60, 'user_request', '2', 'count', 1.00, NULL),
(944, 1761567240, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(945, 1761567120, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(955, 1761567240, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 9701.00, NULL),
(956, 1761567120, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 9701.00, NULL),
(957, 1761567240, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761567256.00, NULL),
(958, 1761567120, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761567256.00, NULL),
(963, 1761568560, 60, 'user_request', '2', 'count', 1.00, NULL),
(964, 1761568560, 360, 'user_request', '2', 'count', 1.00, NULL),
(965, 1761567840, 1440, 'user_request', '2', 'count', 1.00, NULL),
(967, 1761599640, 60, 'user_request', '2', 'count', 8.00, NULL),
(968, 1761599520, 360, 'user_request', '2', 'count', 11.00, NULL),
(969, 1761599520, 1440, 'user_request', '2', 'count', 35.00, NULL),
(970, 1761590880, 10080, 'user_request', '2', 'count', 35.00, NULL),
(975, 1761599640, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(976, 1761599520, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(977, 1761599520, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 2.00, NULL),
(978, 1761590880, 10080, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 2.00, NULL),
(979, 1761599640, 60, 'slow_user_request', '2', 'count', 2.00, NULL),
(980, 1761599520, 360, 'slow_user_request', '2', 'count', 3.00, NULL),
(981, 1761599520, 1440, 'slow_user_request', '2', 'count', 8.00, NULL),
(982, 1761590880, 10080, 'slow_user_request', '2', 'count', 8.00, NULL),
(987, 1761599640, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 3931.00, NULL),
(988, 1761599520, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 3931.00, NULL),
(989, 1761599520, 1440, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 3931.00, NULL),
(990, 1761590880, 10080, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 3931.00, NULL),
(999, 1761599640, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(1000, 1761599520, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 2.00, NULL),
(1001, 1761599520, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 6.00, NULL),
(1002, 1761590880, 10080, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 6.00, NULL),
(1003, 1761599640, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(1004, 1761599520, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 2.00, NULL),
(1005, 1761599520, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 5.00, NULL),
(1006, 1761590880, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 5.00, NULL),
(1015, 1761599640, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 13447.00, NULL),
(1016, 1761599520, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 13447.00, NULL),
(1017, 1761599520, 1440, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 18614.00, NULL),
(1018, 1761590880, 10080, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 18614.00, NULL),
(1019, 1761599640, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761599685.00, NULL),
(1020, 1761599520, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761599756.00, NULL),
(1021, 1761599520, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761600148.00, NULL),
(1022, 1761590880, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761600148.00, NULL),
(1031, 1761599700, 60, 'user_request', '2', 'count', 2.00, NULL),
(1035, 1761599700, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(1036, 1761599700, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(1037, 1761599700, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(1051, 1761599700, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 9966.00, NULL),
(1052, 1761599700, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761599756.00, NULL),
(1059, 1761599820, 60, 'user_request', '2', 'count', 1.00, NULL),
(1063, 1761599880, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 2.00, NULL),
(1064, 1761599880, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 3.00, NULL),
(1065, 1761599880, 60, 'slow_user_request', '2', 'count', 2.00, NULL),
(1066, 1761599880, 360, 'slow_user_request', '2', 'count', 3.00, NULL),
(1067, 1761599880, 60, 'user_request', '2', 'count', 3.00, NULL),
(1068, 1761599880, 360, 'user_request', '2', 'count', 5.00, NULL),
(1069, 1761599880, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 2.00, NULL),
(1070, 1761599880, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 3.00, NULL),
(1079, 1761599880, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 10380.00, NULL),
(1080, 1761599880, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 10380.00, NULL),
(1081, 1761599880, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761599938.00, NULL),
(1082, 1761599880, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761600148.00, NULL),
(1115, 1761600120, 60, 'user_request', '2', 'count', 2.00, NULL),
(1119, 1761600120, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(1120, 1761600120, 60, 'slow_user_request', '2', 'count', 1.00, NULL),
(1121, 1761600120, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'count', 1.00, NULL),
(1135, 1761600120, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 9091.00, NULL),
(1136, 1761600120, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 'max', 1761600148.00, NULL),
(1143, 1761600480, 60, 'user_request', '2', 'count', 2.00, NULL),
(1144, 1761600240, 360, 'user_request', '2', 'count', 9.00, NULL),
(1147, 1761600480, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'count', 1.00, NULL),
(1148, 1761600240, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'count', 1.00, NULL),
(1149, 1761599520, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'count', 1.00, NULL),
(1150, 1761590880, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'count', 1.00, NULL),
(1155, 1761600480, 60, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'max', 1761600529.00, NULL),
(1156, 1761600240, 360, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'max', 1761600529.00, NULL),
(1157, 1761599520, 1440, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'max', 1761600529.00, NULL),
(1158, 1761590880, 10080, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 'max', 1761600529.00, NULL),
(1159, 1761600540, 60, 'user_request', '2', 'count', 7.00, NULL),
(1167, 1761600540, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(1168, 1761600240, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'count', 1.00, NULL),
(1169, 1761600540, 60, 'slow_user_request', '2', 'count', 2.00, NULL),
(1170, 1761600240, 360, 'slow_user_request', '2', 'count', 2.00, NULL),
(1179, 1761600540, 60, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 3322.00, NULL),
(1180, 1761600240, 360, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 'max', 3322.00, NULL),
(1191, 1761600540, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(1192, 1761600240, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'count', 1.00, NULL),
(1203, 1761600540, 60, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 18614.00, NULL),
(1204, 1761600240, 360, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 'max', 18614.00, NULL),
(1211, 1761600600, 60, 'user_request', '2', 'count', 1.00, NULL),
(1212, 1761600600, 360, 'user_request', '2', 'count', 10.00, NULL),
(1215, 1761600660, 60, 'user_request', '2', 'count', 6.00, NULL),
(1239, 1761600780, 60, 'user_request', '2', 'count', 3.00, NULL),
(1251, 1761600960, 60, 'user_request', '2', 'count', 3.00, NULL),
(1252, 1761600960, 360, 'user_request', '2', 'count', 3.00, NULL),
(1253, 1761600960, 1440, 'user_request', '2', 'count', 14.00, NULL),
(1254, 1761600960, 10080, 'user_request', '2', 'count', 14.00, NULL),
(1263, 1761601680, 60, 'user_request', '2', 'count', 6.00, NULL),
(1264, 1761601680, 360, 'user_request', '2', 'count', 11.00, NULL),
(1287, 1761601740, 60, 'user_request', '2', 'count', 3.00, NULL),
(1299, 1761601800, 60, 'user_request', '2', 'count', 2.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_entries`
--

CREATE TABLE `pulse_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_entries`
--

INSERT INTO `pulse_entries` (`id`, `timestamp`, `type`, `key`, `value`) VALUES
(1, 1761551916, 'exception', '[\"RuntimeException\",\"app\\/Livewire\\/Forms\\/LoginForm.php:33\"]', 1761551916),
(2, 1761552636, 'user_request', '2', NULL),
(3, 1761552636, 'user_request', '2', NULL),
(4, 1761552646, 'user_request', '2', NULL),
(5, 1761552653, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 1529),
(6, 1761552653, 'slow_user_request', '2', NULL),
(7, 1761552653, 'user_request', '2', NULL),
(8, 1761552656, 'user_request', '2', NULL),
(9, 1761552674, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 1552),
(10, 1761552674, 'slow_user_request', '2', NULL),
(11, 1761552674, 'user_request', '2', NULL),
(12, 1761552909, 'user_request', '2', NULL),
(13, 1761552909, 'user_request', '2', NULL),
(14, 1761552928, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 1350),
(15, 1761552928, 'slow_user_request', '2', NULL),
(16, 1761552928, 'user_request', '2', NULL),
(17, 1761552930, 'user_request', '2', NULL),
(18, 1761552932, 'user_request', '2', NULL),
(19, 1761552932, 'exception', '[\"RuntimeException\",\"routes\\/web.php:48\"]', 1761552932),
(20, 1761553043, 'user_request', '2', NULL),
(21, 1761553044, 'user_request', '2', NULL),
(22, 1761553044, 'exception', '[\"RuntimeException\",\"routes\\/web.php:60\"]', 1761553044),
(23, 1761553072, 'user_request', '2', NULL),
(24, 1761553072, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761553072),
(25, 1761553105, 'user_request', '2', NULL),
(26, 1761553106, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 1761553106),
(27, 1761553108, 'user_request', '2', NULL),
(28, 1761553110, 'user_request', '2', NULL),
(29, 1761553112, 'user_request', '2', NULL),
(30, 1761553112, 'exception', '[\"InvalidArgumentException\",\"routes\\/web.php:49\"]', 1761553112),
(31, 1761553279, 'user_request', '2', NULL),
(32, 1761553280, 'user_request', '2', NULL),
(33, 1761553282, 'user_request', '2', NULL),
(34, 1761553289, 'user_request', '2', NULL),
(35, 1761553295, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 2491),
(36, 1761553295, 'slow_user_request', '2', NULL),
(37, 1761553295, 'user_request', '2', NULL),
(38, 1761553298, 'user_request', '2', NULL),
(39, 1761553299, 'user_request', '2', NULL),
(40, 1761553306, 'user_request', '2', NULL),
(41, 1761553307, 'user_request', '2', NULL),
(42, 1761553316, 'user_request', '2', NULL),
(43, 1761555025, 'user_request', '2', NULL),
(44, 1761555026, 'user_request', '2', NULL),
(45, 1761555027, 'user_request', '2', NULL),
(46, 1761555038, 'user_request', '2', NULL),
(47, 1761555041, 'user_request', '2', NULL),
(48, 1761555046, 'user_request', '2', NULL),
(49, 1761555053, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 2298),
(50, 1761555053, 'slow_user_request', '2', NULL),
(51, 1761555053, 'user_request', '2', NULL),
(52, 1761555055, 'user_request', '2', NULL),
(53, 1761555057, 'user_request', '2', NULL),
(54, 1761555098, 'user_request', '2', NULL),
(55, 1761555100, 'user_request', '2', NULL),
(56, 1761555100, 'user_request', '2', NULL),
(57, 1761555102, 'user_request', '2', NULL),
(58, 1761555105, 'user_request', '2', NULL),
(59, 1761555107, 'user_request', '2', NULL),
(60, 1761555111, 'user_request', '2', NULL),
(61, 1761555244, 'user_request', '2', NULL),
(62, 1761555251, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 2785),
(63, 1761555251, 'slow_user_request', '2', NULL),
(64, 1761555251, 'user_request', '2', NULL),
(65, 1761555253, 'user_request', '2', NULL),
(66, 1761555255, 'user_request', '2', NULL),
(67, 1761555581, 'user_request', '2', NULL),
(68, 1761555582, 'user_request', '2', NULL),
(69, 1761555583, 'user_request', '2', NULL),
(70, 1761555584, 'user_request', '2', NULL),
(71, 1761555589, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 1782),
(72, 1761555589, 'slow_user_request', '2', NULL),
(73, 1761555589, 'user_request', '2', NULL),
(74, 1761555591, 'user_request', '2', NULL),
(75, 1761555593, 'user_request', '2', NULL),
(76, 1761555721, 'user_request', '2', NULL),
(77, 1761555723, 'user_request', '2', NULL),
(78, 1761555724, 'user_request', '2', NULL),
(79, 1761555730, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 2550),
(80, 1761555730, 'slow_user_request', '2', NULL),
(81, 1761555730, 'user_request', '2', NULL),
(82, 1761555733, 'user_request', '2', NULL),
(83, 1761555734, 'user_request', '2', NULL),
(84, 1761555744, 'user_request', '2', NULL),
(85, 1761555745, 'user_request', '2', NULL),
(86, 1761555908, 'user_request', '2', NULL),
(87, 1761555910, 'user_request', '2', NULL),
(88, 1761555912, 'user_request', '2', NULL),
(89, 1761555913, 'user_request', '2', NULL),
(90, 1761555915, 'user_request', '2', NULL),
(91, 1761555916, 'user_request', '2', NULL),
(92, 1761555926, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 11816),
(93, 1761555926, 'slow_user_request', '2', NULL),
(94, 1761555926, 'user_request', '2', NULL),
(95, 1761555937, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761555937),
(96, 1761556029, 'user_request', '2', NULL),
(97, 1761556033, 'user_request', '2', NULL),
(98, 1761556037, 'user_request', '2', NULL),
(99, 1761556038, 'user_request', '2', NULL),
(100, 1761556077, 'user_request', '2', NULL),
(101, 1761556135, 'user_request', '2', NULL),
(102, 1761556141, 'user_request', '2', NULL),
(103, 1761556142, 'user_request', '2', NULL),
(104, 1761556143, 'user_request', '2', NULL),
(105, 1761556169, 'user_request', '2', NULL),
(106, 1761556169, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761556169),
(107, 1761558140, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 1761558140),
(108, 1761558140, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"vendor\\/symfony\\/console\\/Application.php:726\"]', 1761558140),
(109, 1761558228, 'user_request', '2', NULL),
(110, 1761558229, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558229),
(111, 1761558231, 'user_request', '2', NULL),
(112, 1761558232, 'user_request', '2', NULL),
(113, 1761558237, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 1448),
(114, 1761558237, 'slow_user_request', '2', NULL),
(115, 1761558237, 'user_request', '2', NULL),
(116, 1761558239, 'user_request', '2', NULL),
(117, 1761558240, 'user_request', '2', NULL),
(118, 1761558240, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558240),
(119, 1761558322, 'user_request', '2', NULL),
(120, 1761558322, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558322),
(121, 1761558324, 'user_request', '2', NULL),
(122, 1761558330, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 2637),
(123, 1761558330, 'slow_user_request', '2', NULL),
(124, 1761558330, 'user_request', '2', NULL),
(125, 1761558333, 'user_request', '2', NULL),
(126, 1761558334, 'user_request', '2', NULL),
(127, 1761558334, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558334),
(128, 1761558410, 'user_request', '2', NULL),
(129, 1761558411, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558411),
(130, 1761558433, 'user_request', '2', NULL),
(131, 1761558434, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558434),
(132, 1761558435, 'user_request', '2', NULL),
(133, 1761558435, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558435),
(134, 1761558500, 'user_request', '2', NULL),
(135, 1761558500, 'exception', '[\"RuntimeException\",\"routes\\/web.php:49\"]', 1761558500),
(136, 1761558637, 'user_request', '2', NULL),
(137, 1761558640, 'user_request', '2', NULL),
(138, 1761558643, 'user_request', '2', NULL),
(139, 1761558644, 'user_request', '2', NULL),
(140, 1761558871, 'user_request', '2', NULL),
(141, 1761558875, 'user_request', '2', NULL),
(142, 1761558876, 'user_request', '2', NULL),
(143, 1761558881, 'user_request', '2', NULL),
(144, 1761558883, 'user_request', '2', NULL),
(145, 1761558885, 'user_request', '2', NULL),
(165, 1761566000, 'user_request', '2', NULL),
(166, 1761566001, 'user_request', '2', NULL),
(167, 1761566004, 'user_request', '2', NULL),
(168, 1761566017, 'user_request', '2', NULL),
(169, 1761566076, 'user_request', '2', NULL),
(170, 1761566077, 'user_request', '2', NULL),
(171, 1761566092, 'user_request', '2', NULL),
(172, 1761566094, 'user_request', '2', NULL),
(173, 1761566171, 'user_request', '2', NULL),
(174, 1761566173, 'user_request', '2', NULL),
(175, 1761566187, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 14255),
(176, 1761566187, 'slow_user_request', '2', NULL),
(177, 1761566187, 'user_request', '2', NULL),
(178, 1761566201, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761566201),
(179, 1761566201, 'user_request', '2', NULL),
(180, 1761566210, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 8679),
(181, 1761566210, 'slow_user_request', '2', NULL),
(182, 1761566210, 'user_request', '2', NULL),
(183, 1761566219, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761566219),
(184, 1761566456, 'user_request', '2', NULL),
(185, 1761566461, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 10445),
(186, 1761566461, 'slow_user_request', '2', NULL),
(187, 1761566461, 'user_request', '2', NULL),
(188, 1761566471, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761566471),
(189, 1761566571, 'user_request', '2', NULL),
(190, 1761566574, 'user_request', '2', NULL),
(191, 1761566576, 'user_request', '2', NULL),
(192, 1761566663, 'user_request', '2', NULL),
(193, 1761566665, 'user_request', '2', NULL),
(194, 1761566670, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 1600),
(195, 1761566670, 'slow_user_request', '2', NULL),
(196, 1761566670, 'user_request', '2', NULL),
(197, 1761566671, 'user_request', '2', NULL),
(198, 1761566673, 'user_request', '2', NULL),
(199, 1761566685, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 15116),
(200, 1761566685, 'slow_user_request', '2', NULL),
(201, 1761566685, 'user_request', '2', NULL),
(202, 1761566700, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761566700),
(203, 1761566718, 'user_request', '2', NULL),
(204, 1761566728, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 8775),
(205, 1761566728, 'slow_user_request', '2', NULL),
(206, 1761566728, 'user_request', '2', NULL),
(207, 1761566737, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761566737),
(208, 1761566860, 'user_request', '2', NULL),
(209, 1761566861, 'user_request', '2', NULL),
(210, 1761566864, 'user_request', '2', NULL),
(211, 1761566871, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 8374),
(212, 1761566871, 'slow_user_request', '2', NULL),
(213, 1761566871, 'user_request', '2', NULL),
(214, 1761566880, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761566880),
(215, 1761567239, 'user_request', '2', NULL),
(216, 1761567246, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 9701),
(217, 1761567246, 'slow_user_request', '2', NULL),
(218, 1761567246, 'user_request', '2', NULL),
(219, 1761567256, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761567256),
(220, 1761568597, 'user_request', '2', NULL),
(221, 1761599650, 'user_request', '2', NULL),
(222, 1761599650, 'user_request', '2', NULL),
(223, 1761599657, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 3931),
(224, 1761599657, 'slow_user_request', '2', NULL),
(225, 1761599657, 'user_request', '2', NULL),
(226, 1761599661, 'user_request', '2', NULL),
(227, 1761599663, 'user_request', '2', NULL),
(228, 1761599671, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 13447),
(229, 1761599671, 'slow_user_request', '2', NULL),
(230, 1761599671, 'user_request', '2', NULL),
(231, 1761599685, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761599685),
(232, 1761599695, 'user_request', '2', NULL),
(233, 1761599696, 'user_request', '2', NULL),
(234, 1761599738, 'user_request', '2', NULL),
(235, 1761599746, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 9966),
(236, 1761599746, 'slow_user_request', '2', NULL),
(237, 1761599746, 'user_request', '2', NULL),
(238, 1761599756, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761599756),
(239, 1761599876, 'user_request', '2', NULL),
(240, 1761599882, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 8307),
(241, 1761599882, 'slow_user_request', '2', NULL),
(242, 1761599882, 'user_request', '2', NULL),
(243, 1761599890, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761599890),
(244, 1761599924, 'user_request', '2', NULL),
(245, 1761599928, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 10380),
(246, 1761599928, 'slow_user_request', '2', NULL),
(247, 1761599928, 'user_request', '2', NULL),
(248, 1761599938, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761599938),
(249, 1761600131, 'user_request', '2', NULL),
(250, 1761600139, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 9091),
(251, 1761600139, 'slow_user_request', '2', NULL),
(252, 1761600139, 'user_request', '2', NULL),
(253, 1761600148, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Support\\/TitleGenerator.php:14\"]', 1761600148),
(254, 1761600524, 'user_request', '2', NULL),
(255, 1761600528, 'user_request', '2', NULL),
(256, 1761600529, 'exception', '[\"OpenAI\\\\Exceptions\\\\ErrorException\",\"app\\/Http\\/Controllers\\/ChatController.php:94\"]', 1761600529),
(257, 1761600546, 'user_request', '2', NULL),
(258, 1761600548, 'user_request', '2', NULL),
(259, 1761600554, 'slow_request', '[\"POST\",\"\\/upload-documents\",\"App\\\\Http\\\\Controllers\\\\DocumentController@upload\"]', 3322),
(260, 1761600554, 'slow_user_request', '2', NULL),
(261, 1761600554, 'user_request', '2', NULL),
(262, 1761600558, 'user_request', '2', NULL),
(263, 1761600559, 'user_request', '2', NULL),
(264, 1761600563, 'slow_request', '[\"POST\",\"\\/chat\\/stream\",\"App\\\\Http\\\\Controllers\\\\ChatController@stream\"]', 18614),
(265, 1761600563, 'slow_user_request', '2', NULL),
(266, 1761600563, 'user_request', '2', NULL),
(267, 1761600596, 'user_request', '2', NULL),
(268, 1761600603, 'user_request', '2', NULL),
(269, 1761600701, 'user_request', '2', NULL),
(270, 1761600705, 'user_request', '2', NULL),
(271, 1761600707, 'user_request', '2', NULL),
(272, 1761600708, 'user_request', '2', NULL),
(273, 1761600709, 'user_request', '2', NULL),
(274, 1761600719, 'user_request', '2', NULL),
(275, 1761600811, 'user_request', '2', NULL),
(276, 1761600811, 'user_request', '2', NULL),
(277, 1761600813, 'user_request', '2', NULL),
(278, 1761601013, 'user_request', '2', NULL),
(279, 1761601015, 'user_request', '2', NULL),
(280, 1761601019, 'user_request', '2', NULL),
(281, 1761601690, 'user_request', '2', NULL),
(282, 1761601691, 'user_request', '2', NULL),
(283, 1761601715, 'user_request', '2', NULL),
(284, 1761601725, 'user_request', '2', NULL),
(285, 1761601727, 'user_request', '2', NULL),
(286, 1761601728, 'user_request', '2', NULL),
(287, 1761601751, 'user_request', '2', NULL),
(288, 1761601762, 'user_request', '2', NULL),
(289, 1761601765, 'user_request', '2', NULL),
(290, 1761601835, 'user_request', '2', NULL),
(291, 1761601837, 'user_request', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_values`
--

CREATE TABLE `pulse_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6EC0cBpem0UZTRg3w7fJLvGcNqnDO7XOLvAsqY5B', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjBTb1Y3N1JKTlZJVnVjV1ZSNEI2Qm9ZSFo5RGlGWEdhOG1hVVJ5ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761602080),
('BViDoyMMwfYdDv0ZSjh516UGW1gSIu5MZzYAPW1G', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWVsTFdaZnNMWU00THI3ZlNrMDNnM0tMQVdXWUd5bkJkWTZxdGI1bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1761602061),
('PVmF1LYjHlFwATcwVV85MnDV3wyDaaH7ugWL1OUH', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDFQWGw3MGcwRjBpYUR5TEt1VG5wWEdUQ1NsN1FObVNadE9KUmtQbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761602080);

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `openai_thread_id` varchar(255) NOT NULL,
  `assistant_id` varchar(255) NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Untitled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `openai_thread_id`, `assistant_id`, `document_id`, `created_at`, `updated_at`, `title`) VALUES
(1, 'thread_7BFvqsOiH2DjKyM5Yc735XHc', 'asst_ZoU3N6cU26tzVTC6wzqIeD4X', 6, '2025-10-27 03:35:29', '2025-10-27 03:35:29', 'Untitled'),
(2, 'thread_N3ilM9zcC5CeUau5bF93hoqS', 'asst_eskV4UCBo96RFpDFWzYJY2R6', 9, '2025-10-27 06:26:29', '2025-10-27 06:26:29', 'Untitled'),
(3, 'thread_ZjC6VVsRghomyIYQdMS2OOgb', 'asst_mWvlUl7APUlGRvgQ7SzDPaFU', 10, '2025-10-27 06:34:47', '2025-10-27 06:34:47', 'Untitled'),
(4, 'thread_Wc7JJKJ29HD5ZXxsddodFwQr', 'asst_Or97KJLX3QWBnW5M4379SFCo', 11, '2025-10-27 15:44:34', '2025-10-27 15:44:34', 'Untitled'),
(5, 'thread_h6uRKCdNAZ0xfkNd9xhbeZjL', 'asst_1JFWPiLWrg5pmvzJTlmT27NM', 12, '2025-10-27 15:59:26', '2025-10-27 15:59:42', 'Summary of the Information Technology Act, 2000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`) VALUES
(2, 'Test User', 'test@example.com', '2025-10-27 02:40:15', '$2y$12$dM4CvOevkiq3w/u4uU8oLu.tvrrj3d5JXgtzXiRgZ/7VfceDkiN1a', 'l2D9hWdevEmP49NR9C63ajULXVJ89QeXR51L0ivdxr6lyoW3IiZEzWmO12Be', '2025-10-27 02:40:15', '2025-10-27 02:40:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_sharing_token_unique` (`sharing_token`),
  ADD KEY `documents_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_thread_id_foreign` (`thread_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_aggregates_bucket_period_type_aggregate_key_hash_unique` (`bucket`,`period`,`type`,`aggregate`,`key_hash`),
  ADD KEY `pulse_aggregates_period_bucket_index` (`period`,`bucket`),
  ADD KEY `pulse_aggregates_type_index` (`type`),
  ADD KEY `pulse_aggregates_period_type_aggregate_bucket_index` (`period`,`type`,`aggregate`,`bucket`);

--
-- Indexes for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pulse_entries_timestamp_index` (`timestamp`),
  ADD KEY `pulse_entries_type_index` (`type`),
  ADD KEY `pulse_entries_key_hash_index` (`key_hash`),
  ADD KEY `pulse_entries_timestamp_type_key_hash_value_index` (`timestamp`,`type`,`key_hash`,`value`);

--
-- Indexes for table `pulse_values`
--
ALTER TABLE `pulse_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_values_type_key_hash_unique` (`type`,`key_hash`),
  ADD KEY `pulse_values_timestamp_index` (`timestamp`),
  ADD KEY `pulse_values_type_index` (`type`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `threads_openai_thread_id_unique` (`openai_thread_id`),
  ADD KEY `threads_document_id_foreign` (`document_id`);

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
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1307;

--
-- AUTO_INCREMENT for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `pulse_values`
--
ALTER TABLE `pulse_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
