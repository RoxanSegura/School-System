-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2020 at 10:04 AM
-- Server version: 10.3.22-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isyccomp_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `assessment_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assessment_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materials_needed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reminders` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sequence` smallint(6) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`assessment_id`, `question`, `skill`, `assessment_type`, `materials_needed`, `reminders`, `category_id`, `sequence`) VALUES
(1, 'What is your name ?', NULL, 'question', NULL, NULL, 1, 1),
(2, 'How old are you ?', NULL, 'question', NULL, NULL, 1, 2),
(3, 'When is your birthday?', NULL, 'question', NULL, NULL, 1, 3),
(4, 'What is your mommy\'s name ?', NULL, 'question', NULL, NULL, 1, 4),
(5, NULL, 'Identifies shapes\r\n -  circle, square, triangle, rectangle', 'activity', NULL, NULL, 3, 1),
(6, NULL, 'Identifies colors\r\n  - red, blue, yellow\r\n  - purple, orange, green\r\n  - pink, white, black, gray', 'activity', NULL, NULL, 3, 2),
(7, NULL, 'Names uppercase and lowercase letters', 'activity', NULL, NULL, 4, 1),
(8, NULL, 'Identifies letter sounds\r\n  a b c d e f g h i j k l m n o p q r s t u v w x y z', 'activity', NULL, NULL, 4, 2),
(9, NULL, 'Reads consonant-vowel / vowel-consonant blends', 'activity', NULL, NULL, 4, 3),
(10, NULL, 'Reads three letter words ( CVC )', 'activity', NULL, NULL, 4, 4),
(11, NULL, 'Spells spoken words', 'activity', NULL, NULL, 4, 5),
(12, NULL, 'Draw basic shapes', 'activity', NULL, NULL, 5, 1),
(13, NULL, 'Print name', 'activity', NULL, NULL, 5, 2),
(14, NULL, 'Write numerals properly', 'activity', NULL, NULL, 5, 3),
(15, NULL, 'Cuts along straight and curve lines', 'activity', NULL, NULL, 5, 4),
(16, NULL, 'Count by rote', 'activity', NULL, NULL, 3, 3),
(17, NULL, 'Gives correct number of objects when asked', 'activity', NULL, NULL, 3, 4),
(18, NULL, 'Name numerals', 'activity', NULL, NULL, 3, 5),
(19, 'What is your name?', NULL, 'question', NULL, NULL, 6, 1),
(20, 'How old are you?', NULL, 'question', NULL, NULL, 6, 2),
(21, 'What is your Mommy\'s name?', NULL, 'question', NULL, NULL, 6, 3),
(22, 'What is your Daddy\'s name?', NULL, 'question', NULL, NULL, 6, 4),
(23, 'Where do you live?', NULL, 'question', NULL, NULL, 6, 5),
(24, NULL, 'Identifies shapes\r\n  - circle, square, triangle, rectangle\r\n  - oval, diamond, heart', 'activity', 'Shape toys that have the same color and size', 'Present each material one at a time.\r\nMark the ones that the child is able to identify.', 7, 1),
(25, NULL, 'Identifies colors\r\n - red, blue, yellow\r\n  - purple, orange, green\r\n  - pink, white, black, gray', 'activity', 'Toys (bears, beads, blocks) that have the same size and form but have different colors', NULL, 7, 2),
(26, NULL, 'Counts by rote', 'activity', 'None', 'No verbal prompts or assistance once the child begins to count.', 7, 3),
(27, NULL, 'Names letters', 'activity', 'Flash cards with mommy and baby letters', 'Present at random.\r\nMark the ones that the child is able to identify.', 7, 4),
(28, NULL, 'Strings beads', 'activity', 'Beads, strings', 'Check how many beads a child can string in two minutes. Take note of the way the child holds the bead and how s/he puts the string in the hole.', 8, 1),
(29, NULL, 'Cuts random snips', 'activity', 'Scissors, papers', 'Take note of how the pair of scissors is held as well as the length of the snips.', 8, 2),
(30, NULL, 'Draws circles and straight lines', 'activity', 'Paper, marker', 'Take note of the scribbles and the way the marker is held.', 8, 3),
(31, NULL, 'Forms 2- to 4-piece puzzles', 'activity', 'Puzzles', 'Give more puzzles if possible.', 8, 4),
(32, 'What is your name ?', NULL, 'question', NULL, NULL, 9, 1),
(33, 'How old are you?', NULL, 'question', NULL, NULL, 9, 2),
(34, 'When is your birthday?', NULL, 'question', NULL, NULL, 9, 3),
(35, 'What is your mommy’s name?', NULL, 'question', NULL, NULL, 9, 4),
(36, 'Do you have brothers/sisters?', NULL, 'question', NULL, NULL, 9, 5),
(37, 'What are their names?', NULL, 'question', NULL, NULL, 9, 6),
(38, 'Where do you live?', NULL, 'question', NULL, NULL, 9, 7),
(39, NULL, 'Identifies shapes\r\n- circle, square, triangle, rectangle\r\n- oval, diamond, heart', 'activity', NULL, NULL, 14, 1),
(40, NULL, 'Identifies colors\r\n- red, blue, yellow\r\n- purple, orange, green\r\n- pink, white, black, gray', 'activity', NULL, NULL, 14, 2),
(41, NULL, 'Counts by rote', 'activity', NULL, NULL, 15, 1),
(42, NULL, 'Gives correct number of objects when asked', 'activity', NULL, NULL, 15, 2),
(43, NULL, 'Names numerals', 'activity', NULL, NULL, 15, 3),
(44, NULL, 'Identifies number the comes before and after', 'activity', NULL, NULL, 15, 4),
(45, NULL, 'Performs simple addition', 'activity', NULL, NULL, 15, 5),
(46, NULL, 'Performs simple subtraction', 'activity', NULL, NULL, 15, 6),
(47, NULL, 'Names uppercase and lowercase letters', 'activity', NULL, NULL, 12, 1),
(48, NULL, 'Identifies letter sounds\r\n   a   b   c   d   e   f   g   h    i     j    k   l   m  \r\n   n   o   p   q   r     s   t   u    v   w   x   y   z', 'activity', NULL, NULL, 12, 2),
(49, NULL, 'Reads three letter words (CVC)', 'activity', NULL, NULL, 12, 3),
(50, NULL, 'Reads high-frequency words', 'activity', NULL, NULL, 12, 4),
(51, NULL, 'Reads words with consonant blends', 'activity', NULL, NULL, 12, 5),
(52, NULL, 'Reads words with digraphs', 'activity', NULL, NULL, 12, 6),
(53, NULL, 'Reads words with long vowel sounds', 'activity', NULL, NULL, 12, 7),
(54, NULL, 'Spells spoken words', 'activity', NULL, NULL, 12, 8),
(55, NULL, 'Prints name', 'activity', NULL, NULL, 13, 1),
(56, NULL, 'Prints numerals', 'activity', NULL, NULL, 13, 2),
(57, NULL, 'Draws basic shapes', 'activity', NULL, NULL, 13, 3),
(58, NULL, 'Cuts along straight, curved and zigzag lines', 'activity', NULL, NULL, 13, 4),
(59, 'What is your name?', NULL, 'question', NULL, NULL, 16, 1),
(60, 'How old are you?', NULL, 'question', NULL, NULL, 16, 2),
(61, 'Are you a boy or a girl?', NULL, 'question', NULL, NULL, 16, 3),
(62, NULL, 'Identifies shapes\r\n - circle, square, triangle, rectangle\r\n - oval, diamond, heart', 'activity', 'Shape toys that have the same color and size.', 'Present each material one at a time.\r\nMark the ones that the child is able to identify.', 21, 1),
(63, NULL, 'Identifies colors\r\n- red, blue, yellow\r\n- purple, orange, green\r\n- pink, white, black, gray', 'activity', 'Toys (bears, beads, blocks) that have the same size and form but have different colors.', 'Present each material one at a time.\r\nMark the ones that the child is able to identify.', 21, 2),
(64, NULL, 'Differentiates big from small', 'activity', '3 sets of any pair of toys or materials that have the same color and form but have different sizes', 'Present the materials one pair at a time. \r\nThe child should be given three trials unless he gets the first two correctly. \r\nBe aware of the gestures or facial expressions that may unconsciously prompt or affect the child’s answer.', 21, 3),
(65, NULL, 'Differentiates long from short', 'activity', '3 sets of any pair of toy or material that have the same color and form but have different lengths', 'Present the materials one pair at a time. \r\nThe child should be given three trials unless s/he gets the first two correctly. \r\nBe aware of the gestures or facial expressions that may unconsciously prompt or affect the child’s answer.', 21, 4),
(66, NULL, 'Counts by rote', 'activity', 'None', 'No verbal prompts or assistance once the child begins to count.', 22, 1),
(67, NULL, 'Shows one-to-one correspondence when counting', 'activity', 'Counting bears', 'Teacher will line up 10 bears in front of the child. Ask the child to count them. Number of bears can be lessened depending on the ability of the child.', 22, 2),
(68, NULL, 'Names numerals', 'activity', 'Cards', 'Present one card at a time and ask the child to name each numeral.', 22, 3),
(69, NULL, 'Differentiates many from few', 'activity', '3 sets of any material or toy', 'Make two different sets of same materials (one with many elements and the other few) and place them on opposite sides. Ask the child which one has many objects or toys and which one has few or little. The words “many” and “few” may be translated in Filipino if necessary.', 22, 4),
(70, NULL, 'Letter and letter sound identification', 'activity', '2 different sets of flashcards (uppercase and lowercase)', 'Present at random.\r\nMark the ones that the child is able to identify.', 20, 1),
(71, NULL, 'Strings beads', 'activity', 'Beads, strings', 'Check how many beads a child can string in two minutes. Take note of the way the child holds the bead and how s/he puts the string in the hole.', 18, 1),
(72, NULL, 'Cuts along straight lines', 'activity', 'Scissors, paper with a straight line', 'Take note of how the pair of scissors is held as well as if the child is able to follow the line.', 18, 2),
(73, NULL, 'Prints name', 'activity', 'Paper, marker', 'Take note of the way the marker is held.\r\nModels or copies may be provided if needed.', 18, 3),
(74, NULL, 'Writes I,      , /, \\, X, C', 'activity', 'Paper, marker', 'Take note of the way the marker is held.\r\nModels or copies may be provided if needed.', 18, 4),
(75, NULL, 'Draws basic shapes', 'activity', 'Paper, marker', 'Take note of the way the marker is held.\r\nModels or copies may be provided if needed.', 18, 5),
(76, NULL, 'Forms 6- to 9-piece puzzles', 'activity', 'Puzzles', 'Give more puzzles if possible.', 18, 6);

-- --------------------------------------------------------

--
-- Table structure for table `assessment_categories`
--

CREATE TABLE `assessment_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `level_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessment_categories`
--

INSERT INTO `assessment_categories` (`category_id`, `category`, `parent_id`, `level_id`) VALUES
(1, 'Language Skills', 0, 3),
(2, 'Cognitive Skills', 0, 3),
(3, 'Mathematics', 2, 3),
(4, 'Reading', 2, 3),
(5, 'Fine Motor Skills', 0, 3),
(6, 'Language Skills', 0, 1),
(7, 'Cognitive Skills', 0, 1),
(8, 'Fine Motor Skills', 0, 1),
(9, 'Language Skills', 0, 4),
(10, 'Cognitive Skills', 0, 4),
(11, 'Mathematics', 10, 4),
(12, 'Reading', 10, 4),
(13, 'Fine Motor Skills', 0, 4),
(14, 'Number Readiness', 11, 4),
(15, 'Number Knowledge', 11, 4),
(16, 'Language Skills', 0, 2),
(17, 'Cognitive Skills', 0, 2),
(18, 'Fine Motor Skills', 0, 2),
(19, 'Mathematics', 17, 2),
(20, 'Reading', 17, 2),
(21, 'Number Readiness', 19, 2),
(22, 'Number Knowledge', 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `assessment_registrant`
--

CREATE TABLE `assessment_registrant` (
  `map_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `assessment_id` int(10) UNSIGNED NOT NULL,
  `properly_answered` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assessment_registrant`
--

INSERT INTO `assessment_registrant` (`map_id`, `registration_id`, `assessment_id`, `properly_answered`, `observation`, `comment`, `added_by`, `added_at`) VALUES
(1, 17, 32, 'Yes', NULL, NULL, 0, '2018-03-09 02:30:42'),
(2, 17, 33, 'Yes', NULL, 'held 5 fingers up to signify age', 0, '2018-03-09 02:30:42'),
(3, 17, 34, NULL, NULL, NULL, 0, '2018-03-09 02:30:42'),
(4, 17, 35, NULL, NULL, NULL, 0, '2018-03-09 02:30:42'),
(5, 17, 36, NULL, NULL, NULL, 0, '2018-03-09 02:30:42'),
(6, 17, 37, NULL, NULL, NULL, 0, '2018-03-09 02:30:42'),
(7, 17, 38, NULL, NULL, NULL, 0, '2018-03-09 02:30:42'),
(8, 17, 47, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(9, 17, 48, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(10, 17, 49, NULL, 'with assistance', NULL, 0, '2018-03-09 02:33:58'),
(11, 17, 50, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(12, 17, 51, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(13, 17, 52, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(14, 17, 53, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(15, 17, 54, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(16, 17, 55, NULL, NULL, NULL, 0, '2018-03-09 02:31:49'),
(17, 17, 56, NULL, NULL, NULL, 0, '2018-03-09 02:31:49'),
(18, 17, 57, NULL, NULL, NULL, 0, '2018-03-09 02:31:49'),
(19, 17, 58, NULL, NULL, NULL, 0, '2018-03-09 02:31:49'),
(20, 17, 39, NULL, 'yes', 'but does not know diamond', 0, '2018-03-09 02:33:58'),
(21, 17, 40, NULL, 'yes', 'but does not know gray', 0, '2018-03-09 02:33:58'),
(22, 17, 41, NULL, 'yes', 'up to 200', 0, '2018-03-09 02:33:58'),
(23, 17, 42, NULL, 'yes', 'does one to one correspondence', 0, '2018-03-09 02:33:58'),
(24, 17, 43, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(25, 17, 44, NULL, 'yes', NULL, 0, '2018-03-09 02:33:58'),
(26, 17, 45, NULL, 'yes', 'without regrouping', 0, '2018-03-09 02:33:58'),
(27, 17, 46, NULL, 'yes', 'without regrouping', 0, '2018-03-09 02:33:58'),
(28, 18, 1, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(29, 18, 2, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(30, 18, 3, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(31, 18, 4, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(32, 18, 5, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(33, 18, 6, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(34, 18, 16, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(35, 18, 17, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(36, 18, 18, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(37, 18, 7, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(38, 18, 8, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(39, 18, 9, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(40, 18, 10, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(41, 18, 11, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(42, 18, 12, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(43, 18, 13, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(44, 18, 14, NULL, NULL, NULL, 0, '2018-05-04 00:59:18'),
(45, 18, 15, NULL, NULL, NULL, 0, '2018-05-04 00:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `document_id` int(10) UNSIGNED NOT NULL,
  `sid` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sever` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_at` datetime NOT NULL,
  `uploaded_by` int(10) UNSIGNED NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_grade_level`
--

CREATE TABLE `documents_grade_level` (
  `map_id` int(10) UNSIGNED NOT NULL,
  `dr_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents_grade_level`
--

INSERT INTO `documents_grade_level` (`map_id`, `dr_id`, `level_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `documents_required`
--

CREATE TABLE `documents_required` (
  `dr_id` int(10) UNSIGNED NOT NULL,
  `document_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents_required`
--

INSERT INTO `documents_required` (`dr_id`, `document_name`) VALUES
(1, 'Birth Certificate');

-- --------------------------------------------------------

--
-- Table structure for table `grade_levels`
--

CREATE TABLE `grade_levels` (
  `level_id` int(10) UNSIGNED NOT NULL,
  `grade_level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_level_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade_levels`
--

INSERT INTO `grade_levels` (`level_id`, `grade_level`, `grade_level_group`) VALUES
(1, 'Toddler', 'Pre-school'),
(2, 'Junior Nursery', 'Pre-school'),
(3, 'Senior Nursery', 'Pre-school'),
(4, 'Kindergarten', 'Pre-school');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_17_065836_create_registration_table', 1),
(4, '2017_09_21_100937_add_username_to_users', 1),
(5, '2017_09_22_094327_create_grade_levels_table', 1),
(6, '2017_09_23_000328_add_assessment_categories', 1),
(7, '2017_09_23_080355_create_assessment_table', 1),
(8, '2017_09_27_225001_add_registration_fields', 2),
(9, '2017_09_28_222930_add_grade_level_to_registrations', 2),
(10, '2017_09_29_014828_add_assessment_registrant_table', 2),
(11, '2017_10_03_123758_add_registration_fields_again', 3),
(12, '2017_10_03_220113_create_document_table', 3),
(13, '2017_11_03_071829_create_required_documents_table', 4),
(14, '2017_11_03_071939_create_required_documents_by_grade_level_table', 4),
(15, '2017_11_05_043231_add_document_required', 4),
(16, '2017_11_05_082253_add_url_on_document', 4),
(17, '2017_12_09_091017_create_settings_table', 5),
(18, '2017_12_09_092758_create_school_year_table', 5),
(19, '2017_12_09_100659_create_student_school_year_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `registration_id` int(10) UNSIGNED NOT NULL,
  `sid` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `level_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landline` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_landline` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_landline` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_to_child` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_numbers` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registration_id`, `sid`, `status`, `level_id`, `first_name`, `last_name`, `middle_name`, `street_address`, `barangay`, `city`, `landline`, `mobile`, `religion`, `birthday`, `gender`, `photo_url`, `father_first_name`, `father_last_name`, `father_middle_name`, `father_mobile`, `father_landline`, `father_email`, `father_occupation`, `father_office_address`, `mother_first_name`, `mother_last_name`, `mother_middle_name`, `mother_mobile`, `mother_landline`, `mother_email`, `mother_occupation`, `mother_office_address`, `emergency_contact_first_name`, `emergency_contact_last_name`, `emergency_contact_middle_name`, `relation_to_child`, `emergency_contact_address`, `emergency_contact_numbers`, `created_at`, `updated_at`) VALUES
(17, '2011-001', 'enrolled', 4, 'Michelle Marie', 'Aprecio', 'Castillo', 'Unit 12A04 Emerald Mansion', 'San Antonio', 'Pasig', '3261212', NULL, 'Roman Catholic', '2012-01-10', 'F', NULL, 'Melquiades Jr', 'Castillo', 'Jaucian', '09178992611', '3261212', NULL, 'Civil Engineer', 'Makati City', 'Mariska', 'Castillo', 'Angeles', '09178992611', '3261212', NULL, 'Homemaker', NULL, 'Alvin Peter', 'APRECIO', NULL, 'father', 'Pasig', '09178992611', '2018-03-09 02:28:53', '2018-03-09 02:34:56'),
(18, '2012-003', 'pending', 3, 'Erica Barbara', 'Babad', 'Palmes', 'BLk 3 Lot 8 PLI Homes', 'Mayamot', 'Antipolo', '9972010', NULL, 'Roman Catholic', '2018-12-09', 'F', NULL, 'Alberto', 'Babad', 'Barbarona', '09178268220', '6825424', NULL, 'employee', 'Lamuan Marikina', 'Catalina', 'Babad', 'Palmes', '09178268218', '6825424', NULL, 'employee', 'Pasig City', 'Catalina', 'Babad', NULL, 'Mother', 'Antipolo City', '09178268118', '2018-05-04 00:59:17', '2018-05-04 01:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(10) UNSIGNED NOT NULL,
  `school_year_start` date NOT NULL,
  `school_year_end` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year_start`, `school_year_end`, `description`) VALUES
(2015, '2015-06-01', '2016-03-31', NULL),
(2016, '2016-06-01', '2017-03-31', NULL),
(2017, '2017-03-31', '2018-03-31', NULL),
(2018, '2018-03-31', '2019-03-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(10) UNSIGNED NOT NULL,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `setting`, `value`) VALUES
(1, 'current_school_year', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `student_school_year`
--

CREATE TABLE `student_school_year` (
  `map_id` int(10) UNSIGNED NOT NULL,
  `sid` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_year_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `grade_level_id` int(10) UNSIGNED DEFAULT NULL,
  `suffix_number` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_school_year`
--

INSERT INTO `student_school_year` (`map_id`, `sid`, `school_year_id`, `section_id`, `grade_level_id`, `suffix_number`) VALUES
(1, '2011-001', 2017, NULL, 3, 1),
(2, '2012-003', 2017, NULL, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@isyc.com.ph', '$2y$10$RyiR4JgM3aKWKxHsQH5.bOmKhB4OGzwOj89UlpOLGvRFqLyGgkGke', 'admin', 'zUxzsiQ0VUm7tlWDymn8s2voYxKA74hUR6MWKONhnhMvv6jYvUpuHisM6rFF', '2017-10-05 04:00:00', '2017-10-05 04:00:00'),
(2, 'Registrar', 'register', 'aadd@isyc.com.ph', '$2y$10$RyiR4JgM3aKWKxHsQH5.bOmKhB4OGzwOj89UlpOLGvRFqLyGgkGke', 'register', 'mTia9auQDTy5dJvR4NDgittIbEV4beY57YwKNsfcYQ0MqXlDwPw0swEOTWop', '2017-10-05 04:00:00', '2017-10-05 04:00:00'),
(3, 'Teacher', 'teacher', 'teacher@isyc.com.ph', '$2y$10$RyiR4JgM3aKWKxHsQH5.bOmKhB4OGzwOj89UlpOLGvRFqLyGgkGke', 'teacher', 'cW3najdPb2wte6ee0WMn5FRnt5iroS4QaTDzR26UHdP3Ptzhn6IxQU9AasHM', '2017-10-05 04:00:00', '2017-10-05 04:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`assessment_id`),
  ADD KEY `assessments_category_id_index` (`category_id`);

--
-- Indexes for table `assessment_categories`
--
ALTER TABLE `assessment_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `assessment_registrant`
--
ALTER TABLE `assessment_registrant`
  ADD PRIMARY KEY (`map_id`),
  ADD KEY `assessment_registrant_registration_id_index` (`registration_id`),
  ADD KEY `assessment_registrant_assessment_id_index` (`assessment_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`document_id`),
  ADD KEY `documents_sid_index` (`sid`);

--
-- Indexes for table `documents_grade_level`
--
ALTER TABLE `documents_grade_level`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `documents_required`
--
ALTER TABLE `documents_required`
  ADD PRIMARY KEY (`dr_id`);

--
-- Indexes for table `grade_levels`
--
ALTER TABLE `grade_levels`
  ADD PRIMARY KEY (`level_id`);

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
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`registration_id`),
  ADD KEY `registrations_sid_index` (`sid`);
ALTER TABLE `registrations` ADD FULLTEXT KEY `first_name` (`first_name`,`last_name`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `settings_setting_index` (`setting`);

--
-- Indexes for table `student_school_year`
--
ALTER TABLE `student_school_year`
  ADD PRIMARY KEY (`map_id`),
  ADD KEY `student_school_year_sid_index` (`sid`),
  ADD KEY `student_school_year_school_year_id_index` (`school_year_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `assessment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `assessment_categories`
--
ALTER TABLE `assessment_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `assessment_registrant`
--
ALTER TABLE `assessment_registrant`
  MODIFY `map_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `document_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents_grade_level`
--
ALTER TABLE `documents_grade_level`
  MODIFY `map_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documents_required`
--
ALTER TABLE `documents_required`
  MODIFY `dr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade_levels`
--
ALTER TABLE `grade_levels`
  MODIFY `level_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `registration_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_school_year`
--
ALTER TABLE `student_school_year`
  MODIFY `map_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
