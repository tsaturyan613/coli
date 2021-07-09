-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 03:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colibrilab_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(4) NOT NULL,
  `login` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(4) NOT NULL,
  `patasxan` varchar(150) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `harc_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `patasxan`, `type`, `harc_id`) VALUES
(17, 'Facebook', 'radio', 56),
(18, 'Instagram', 'radio', 56),
(19, 'Linkedin', 'radio', 56),
(20, 'Twitter', 'radio', 56),
(21, 'Ô¿Õ¡ÕµÖ„Õ«Ö', 'radio', 56),
(22, 'Ô¸Õ¶Õ¯Õ¥Ö€Õ¶Õ¥Ö€, Õ®Õ¡Õ¶Õ¸Õ©Õ¶Õ¥Ö€', 'radio', 56),
(23, 'Ô±ÕµÕ¬', 'radio', 56),
(44, 'HTML, CSS, Bootstrap', 'checkbox', 59),
(46, 'React, Redux', 'checkbox', 59),
(47, 'PHP, OOP, MVC', 'checkbox', 59),
(48, 'Ô¸Õ¶Õ¤Õ°Õ¡Õ¶Ö€Õ¡ÕºÕ¥Õ½ Õ¹Õ¥Õ´ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬', 'radio', 63),
(49, 'Õ„Õ¡Õ½Õ¡Õ´Õ¢ Õ¹Õ¥Õ´ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬', 'radio', 63),
(50, 'Õ‰Õ¥Õ´ Õ¯Õ¡Ö€Õ¸Õ² Õ¡Õ½Õ¥Õ¬', 'radio', 63),
(51, 'Õ„Õ¡Õ½Õ¡Õ´Õ¢ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬ Õ¥Õ´', 'radio', 63),
(52, 'Ô¼Õ«Õ¸Õ¾Õ«Õ¶ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬ Õ¥Õ´', 'radio', 63),
(54, 'Ô¸Õ¶Õ¤Õ°Õ¡Õ¶Ö€Õ¡ÕºÕ¥Õ½ Õ¹Õ¥Õ´ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬', 'radio', 64),
(55, 'Õ„Õ¡Õ½Õ¡Õ´Õ¢ Õ¹Õ¥Õ´ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬', 'radio', 64),
(56, 'Õ‰Õ¥Õ´ Õ¯Õ¡Ö€Õ¸Õ² Õ¡Õ½Õ¥Õ¬', 'radio', 64),
(57, 'Õ„Õ¡Õ½Õ¡Õ´Õ¢ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬ Õ¥Õ´', 'radio', 64),
(58, 'Ô¼Õ«Õ¸Õ¾Õ«Õ¶ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬ Õ¥Õ´', 'radio', 64),
(63, '', 'select', 65),
(67, 'Ô¸Õ¶Õ¤Õ°Õ¡Õ¶Ö€Õ¡ÕºÕ¥Õ½ Õ¢Õ¡Õ¾Õ¡Ö€Õ¡Ö€Õ¾Õ¡Õ® Õ¹Õ¥Õ´', 'radio', 66),
(68, 'Õ€Õ«Õ´Õ¶Õ¡Õ¯Õ¡Õ¶Õ¸Ö‚Õ´ Õ¢Õ¡Õ¾Õ¡Ö€Õ¡Ö€Õ¾Õ¡Õ® Õ¹Õ¥Õ´', 'radio', 66),
(69, 'Õ„Õ¡Õ½Õ¡Õ´Õ¢ Õ¢Õ¡Õ¾Õ¡Ö€Õ¡Ö€Õ¾Õ¡Õ® Õ¥Õ´', 'radio', 66),
(70, 'Ô¼Õ«Õ¸Õ¾Õ«Õ¶ Õ¢Õ¡Õ¾Õ¡Ö€Õ¡Ö€Õ¾Õ¡Õ® Õ¥Õ´', 'radio', 66),
(71, 'Ô±ÕµÕ¸, Õ­Õ¸Ö€Õ°Õ¸Ö‚Ö€Õ¤ Õ¯Õ¿Õ¡ÕµÕ«', 'radio', 67),
(72, 'ÕˆÕ¹, Õ­Õ¸Ö€Õ°Õ¸Ö‚Ö€Õ¤ Õ¹Õ§Õ« Õ¿Õ¡', 'radio', 67),
(73, 'Õ‰Õ£Õ«Õ¿Õ¥Õ´', 'radio', 67),
(74, '1', 'radio', 68),
(75, '2', 'radio', 68),
(76, '3', 'radio', 68),
(77, '4', 'radio', 68),
(78, '5', 'radio', 68),
(81, '', 'input', 69),
(83, 'barrrrrrrev', 'radio', 2);

-- --------------------------------------------------------

--
-- Table structure for table `answers_no`
--

CREATE TABLE `answers_no` (
  `id` int(4) NOT NULL,
  `patasxan` varchar(500) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `harc_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers_no`
--

INSERT INTO `answers_no` (`id`, `patasxan`, `type`, `harc_id`) VALUES
(4, 'Ô¾Ö€Õ¡Õ£Ö€Õ¡Õ¾Õ¸Ö€Õ´Õ¡Õ¶ Õ¶Õ¸Ö€ Õ¬Õ¥Õ¦Õ¸Ö‚Õ¶Õ¥Ö€Õ¨', 'radio', 1),
(5, 'Õ€Õ¡Õ¾Õ¥Õ¬ÕµÕ¡Õ¬ Õ¦Õ¥Õ²Õ¹Õ¥Ö€Õ¨', 'radio', 1),
(6, 'ÕŠÕ¡Ö€Õ¿Õ¡Õ¤Õ«Ö€ ÕºÖ€Õ¡Õ¯Õ¿Õ«Õ¯Õ¡ÕµÕ« Õ°Õ¶Õ¡Ö€Õ¡Õ¾Õ¸Ö€Õ¸Ö‚Õ©ÕµÕ¸Ö‚Õ¶Õ¨', 'radio', 1),
(7, '', 'input', 2),
(8, '', 'input', 3);

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` int(4) NOT NULL,
  `cv_students_id` int(5) NOT NULL,
  `facebook` varchar(80) NOT NULL,
  `linkedIn` varchar(80) NOT NULL,
  `twitter` varchar(80) NOT NULL,
  `dribble` varchar(80) NOT NULL,
  `github` varchar(80) NOT NULL,
  `behance` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `cv_students_id`, `facebook`, `linkedIn`, `twitter`, `dribble`, `github`, `behance`) VALUES
(1, 4, 'https://www.facebook.com/andranik.hoghmrtsyan', 'dddddddddddddddd', 'asd', 'asd', 'asd', 'asd'),
(2, 6, '', '', '', '', '', ''),
(3, 8, 'fghfgh', 'vcbcvb', 'bcvbcvb', '', '', ''),
(4, 10, '', '', '', '', '', ''),
(5, 7, 'sdADAd', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cv_students`
--

CREATE TABLE `cv_students` (
  `id` int(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `profession` varchar(50) NOT NULL,
  `about_me` text NOT NULL,
  `cv_email` varchar(50) NOT NULL,
  `phon` varchar(15) NOT NULL,
  `address` varchar(60) NOT NULL,
  `image` varchar(80) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cv_students`
--

INSERT INTO `cv_students` (`id`, `email`, `password`, `name`, `profession`, `about_me`, `cv_email`, `phon`, `address`, `image`, `published`) VALUES
(1, 'dfdf@kk.lo', '123', NULL, '', '', '', '', '', 'Ars.jpg', 0),
(2, 'dfdf@kk.lo', '123', NULL, '', '', '', '', '', '', 0),
(3, 'dd@kk.op', '123', NULL, '', '', '', '', '', '', 0),
(4, 'aaa@mail.ru', '456', 'aa', 'bb', 'I am junior developer', 'aaa@mail.ru', '094680601', 'Yerevan 28,Abovjan 26', 'news10736-main.jpeg', 1),
(5, 'aaa@mail.ru', '567', NULL, '', '', '', '', '', '', 0),
(6, 'ddd@gggg.ru', '123', 'Armen', '', '', 'ddd@gggg.ru', '', '', '', 1),
(7, 'aaa@yandex.ru', '123', '', '', '', 'aaa@yandex.ru', '', '', '', 1),
(8, 'ddd@mail.ru', '123', 'ghgh', 'ghghg', 'hghgh', 'ddd@mail.ru', '65454', 'fhjfghfg', '', 1),
(9, 'mmm@mail.ru', '123', NULL, '', '', '', '', '', '', 0),
(10, 'nnn@mail.ru', '456', '', '', '', 'nnn@mail.ru', '', '', '', 1),
(11, 'ddd@mail.ru', '456', NULL, '', '', '', '', '', '', 0),
(12, 'kkk@ggg.com', '123', 'ghjghjghj', '', 'ghjghj', 'kkk@ggg.com', '', '', 'fonOnlineShop.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(5) NOT NULL,
  `cv_student_id` int(5) NOT NULL,
  `specialization` varchar(30) NOT NULL,
  `education` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `begin_month` varchar(20) NOT NULL,
  `begin_year` int(4) NOT NULL,
  `end_month` varchar(20) NOT NULL,
  `end_year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `cv_student_id`, `specialization`, `education`, `description`, `begin_month`, `begin_year`, `end_month`, `end_year`) VALUES
(30, 4, 'engineer', 'YGU', 'ok good', 'September', 1979, 'May', 1984),
(36, 4, 'programmer', 'high', 'hello,how are you', 'September', 1988, 'May', 1994),
(37, 8, 'fgfg', 'fgfgfgfgfg', 'lklklkl', 'January', 2021, 'January', 2021),
(38, 10, 'dfd', 'dfsdf', '', 'January', 2021, 'January', 2021),
(39, 4, 'web disign', 'school', 'ccc jjjkjk', 'March', 2008, 'May', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(4) NOT NULL,
  `cv_students_id` int(11) NOT NULL,
  `job_title` varchar(30) NOT NULL,
  `company` varchar(40) NOT NULL,
  `description` varchar(191) NOT NULL,
  `start_month` varchar(20) NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_month` varchar(15) NOT NULL,
  `end_year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `cv_students_id`, `job_title`, `company`, `description`, `start_month`, `start_year`, `end_month`, `end_year`) VALUES
(7, 4, 'title', 'company', 'description', 'February', 2020, 'May', 2015),
(8, 4, 'TITLE', 'COMPANY', 'DESCRIPTION', 'February', 2020, 'December', 1901),
(9, 4, 'TITLE1', 'COMPANY', 'DESCRIPTION', 'February', 2020, 'December', 1901),
(10, 4, '', '', '', 'May', 2012, 'January', 2021),
(11, 8, 'ooo', 'ppppp', 'gg nn', 'January', 2020, 'January', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(4) NOT NULL,
  `cv_students_id` int(5) NOT NULL,
  `language` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `cv_students_id`, `language`) VALUES
(3, 4, 'armenia'),
(4, 8, 'fdfdfdfdf'),
(5, 8, 'bbbb'),
(10, 4, 'g');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(4) NOT NULL,
  `opt` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `opt`) VALUES
(13, 'Ô»Õ·Õ­Õ¡Õ¶'),
(15, 'ÕŽÕ¡Õ¦Õ£Õ¥Õ¶'),
(16, 'Ô¼Ö‡Õ¸Õ¶'),
(17, 'ÕÕµÕ¸Ö‚Õ¦Õ¡Õ¶Õ¶Õ¡'),
(18, 'Ô±Ö€Ö‡Õ«Õ¯'),
(19, 'Ô±Õ¶Õ¤Ö€Õ¡Õ¶Õ«Õ¯');

-- --------------------------------------------------------

--
-- Table structure for table `patasxan`
--

CREATE TABLE `patasxan` (
  `id` int(5) NOT NULL,
  `patasxanner` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patasxan`
--

INSERT INTO `patasxan` (`id`, `patasxanner`) VALUES
(122, 'a:10:{i:0;s:8:\"Linkedin\";i:1;s:6:\"Այո\";i:2;s:13:\"PHP, OOP, MVC\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:50:\"Հիմնականում բավարարված չեմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(123, 'a:10:{i:0;s:8:\"Linkedin\";i:1;s:6:\"Այո\";i:2;s:13:\"PHP, OOP, MVC\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:50:\"Հիմնականում բավարարված չեմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(124, 'a:5:{i:0;s:12:\"Կայքից\";i:1;s:4:\"Ոչ\";i:2;s:50:\"Ծրագրավորման նոր լեզուները\";i:3;s:0:\"\";i:4;s:0:\"\";}'),
(125, 'a:5:{i:0;s:12:\"Կայքից\";i:1;s:4:\"Ոչ\";i:2;s:31:\"Հավելյալ զեղչերը\";i:3;s:0:\"\";i:4;s:0:\"\";}'),
(126, 'a:4:{i:0;s:12:\"Կայքից\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:7:\"Node.js\";i:3;s:4:\"fgdf\";}'),
(127, 'a:4:{i:0;s:12:\"Կայքից\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:7:\"Laravel\";i:3;s:4:\"fgdf\";}'),
(128, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:27:\"Vue.js,React, Redux,Laravel\";i:3;s:4:\"qdwe\";}'),
(129, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:7:\"MongoDB\";i:3;s:0:\"\";}'),
(130, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:7:\"Laravel\";i:3;s:7:\"rtghrtg\";}'),
(131, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:39:\"JavaScript, JQuery,HTML, CSS, Bootstrap\";i:3;s:0:\"\";}'),
(132, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:12:\"React, Redux\";i:3;s:5:\"fgbfg\";}'),
(133, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:7:\"Laravel\";i:3;s:6:\"fgbfgh\";}'),
(134, 'a:10:{i:0;s:7:\"Twitter\";i:1;s:0:\"\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:38:\"Լիովին բավարարված եմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"1\";i:9;s:0:\"\";}'),
(135, 'a:10:{i:0;s:7:\"Twitter\";i:1;s:0:\"\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:38:\"Լիովին բավարարված եմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:3:\"kkk\";}'),
(136, 'a:10:{i:0;s:7:\"Twitter\";i:1;s:0:\"\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:38:\"Լիովին բավարարված եմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(137, 'a:10:{i:0;s:7:\"Twitter\";i:1;s:0:\"\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:38:\"Լիովին բավարարված եմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"3\";i:9;s:0:\"\";}'),
(138, 'a:10:{i:0;s:7:\"Twitter\";i:1;s:0:\"\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:38:\"Լիովին բավարարված եմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"4\";i:9;s:4:\"u9op\";}'),
(139, 'a:10:{i:0;s:7:\"Twitter\";i:1;s:0:\"\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:0:\"\";i:6;s:38:\"Լիովին բավարարված եմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(140, 'a:10:{i:0;s:7:\"Twitter\";i:1;s:0:\"\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:74:\"Սյուզաննա,3,4,5,4,3,2,Լևոն,3,4,5,4,3,2,Արևիկ,2,3,4,5,4,3\";i:6;s:50:\"Ընդհանրապես բավարարված չեմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(142, 'a:10:{i:0;s:9:\"Instagram\";i:1;s:6:\"Այո\";i:2;s:47:\"PHP, OOP, MVC,React, Redux,HTML, CSS, Bootstrap\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:34:\"Մասամբ չեմ հավանել\";i:5;s:43:\"Լևոն,2,3,4,5,4,3,Իշխան,1,3,4,5,4,3\";i:6;s:50:\"Հիմնականում բավարարված չեմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"1\";i:9;s:0:\"\";}'),
(143, 'a:10:{i:0;s:8:\"Linkedin\";i:1;s:6:\"Այո\";i:2;s:26:\"PHP, OOP, MVC,React, Redux\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:32:\"Մասամբ հավանել եմ\";i:5;s:43:\"Լևոն,4,3,2,1,3,4,Արևիկ,4,3,2,1,2,3\";i:6;s:50:\"Հիմնականում բավարարված չեմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(144, 'a:10:{i:0;s:8:\"Linkedin\";i:1;s:6:\"Այո\";i:2;s:13:\"PHP, OOP, MVC\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:26:\"Չեմ կարող ասել\";i:5;s:20:\"Լևոն,3,4,5,4,3,4\";i:6;s:38:\"Մասամբ բավարարված եմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(145, 'a:5:{i:0;s:8:\"Linkedin\";i:1;s:4:\"Ոչ\";i:2;s:70:\"Պարտադիր պրակտիկայի հնարավորությունը\";i:3;s:4:\"gffg\";i:4;s:0:\"\";}'),
(146, 'a:5:{i:0;s:8:\"Linkedin\";i:1;s:4:\"Ոչ\";i:2;s:70:\"Պարտադիր պրակտիկայի հնարավորությունը\";i:3;s:4:\"trtr\";i:4;s:0:\"\";}'),
(147, 'a:5:{i:0;s:8:\"Linkedin\";i:1;s:4:\"Ոչ\";i:2;s:31:\"Հավելյալ զեղչերը\";i:3;s:0:\"\";i:4;s:0:\"\";}'),
(148, 'a:5:{i:0;s:8:\"Linkedin\";i:1;s:4:\"Ոչ\";i:2;s:31:\"Հավելյալ զեղչերը\";i:3;s:1:\"r\";i:4;s:0:\"\";}'),
(149, 'a:5:{i:0;s:8:\"Linkedin\";i:1;s:4:\"Ոչ\";i:2;s:31:\"Հավելյալ զեղչերը\";i:3;s:1:\"e\";i:4;s:0:\"\";}'),
(150, 'a:5:{i:0;s:8:\"Linkedin\";i:1;s:4:\"Ոչ\";i:2;s:31:\"Հավելյալ զեղչերը\";i:3;s:1:\"y\";i:4;s:1:\"t\";}'),
(151, 'a:4:{i:0;s:8:\"Linkedin\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:31:\"React, Redux,JavaScript, JQuery\";i:3;s:1:\"y\";}'),
(152, 'a:10:{i:0;s:8:\"Linkedin\";i:1;s:6:\"Այո\";i:2;s:26:\"React, Redux,PHP, OOP, MVC\";i:3;s:44:\"Ընդհանրապես չեմ հավանել\";i:4;s:34:\"Մասամբ չեմ հավանել\";i:5;s:20:\"Լևոն,3,4,5,4,5,5\";i:6;s:50:\"Ընդհանրապես բավարարված չեմ\";i:7;s:35:\"Այո, խորհուրդ կտայի\";i:8;s:1:\"2\";i:9;s:1:\"f\";}'),
(153, 'a:5:{i:0;s:7:\"Twitter\";i:1;s:4:\"Ոչ\";i:2;s:31:\"Հավելյալ զեղչերը\";i:3;s:1:\"r\";i:4;s:1:\"e\";}'),
(154, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:12:\"React, Redux\";i:3;s:1:\"r\";}'),
(155, 'a:4:{i:0;s:34:\"Ընկերներ, ծանոթներ\";i:1;s:27:\"Պատրաստվում եմ\";i:2;s:7:\"Laravel\";i:3;s:2:\"rr\";}'),
(156, 'a:10:{i:0;s:8:\"Facebook\";i:1;s:6:\"Ô±ÕµÕ¸\";i:2;s:12:\"React, Redux\";i:3;s:44:\"Ô¸Õ¶Õ¤Õ°Õ¡Õ¶Ö€Õ¡ÕºÕ¥Õ½ Õ¹Õ¥Õ´ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬\";i:4;s:32:\"Õ„Õ¡Õ½Õ¡Õ´Õ¢ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬ Õ¥Õ´\";i:5;s:20:\"Ô¼Ö‡Õ¸Õ¶,4,4,4,4,3,2\";i:6;s:50:\"Ô¸Õ¶Õ¤Õ°Õ¡Õ¶Ö€Õ¡ÕºÕ¥Õ½ Õ¢Õ¡Õ¾Õ¡Ö€Õ¡Ö€Õ¾Õ¡Õ® Õ¹Õ¥Õ´\";i:7;s:35:\"Ô±ÕµÕ¸, Õ­Õ¸Ö€Õ°Õ¸Ö‚Ö€Õ¤ Õ¯Õ¿Õ¡ÕµÕ«\";i:8;s:1:\"2\";i:9;s:0:\"\";}'),
(157, 'a:10:{i:0;s:6:\"Ô±ÕµÕ¬\";i:1;s:6:\"Ô±ÕµÕ¸\";i:2;s:52:\"HTML, CSS, Bootstrap,React, Redux,PHP, OOP, MVC,esim\";i:3;s:32:\"Ô¼Õ«Õ¸Õ¾Õ«Õ¶ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬ Õ¥Õ´\";i:4;s:32:\"Ô¼Õ«Õ¸Õ¾Õ«Õ¶ Õ°Õ¡Õ¾Õ¡Õ¶Õ¥Õ¬ Õ¥Õ´\";i:5;s:30:\"ÕÕµÕ¸Ö‚Õ¦Õ¡Õ¶Õ¶Õ¡,5,5,1,3,5,1\";i:6;s:38:\"Ô¼Õ«Õ¸Õ¾Õ«Õ¶ Õ¢Õ¡Õ¾Õ¡Ö€Õ¡Ö€Õ¾Õ¡Õ® Õ¥Õ´\";i:7;s:34:\"ÕˆÕ¹, Õ­Õ¸Ö€Õ°Õ¸Ö‚Ö€Õ¤ Õ¹Õ§Õ« Õ¿Õ¡\";i:8;s:1:\"3\";i:9;s:4:\"esim\";}');

-- --------------------------------------------------------

--
-- Table structure for table `questions_coming`
--

CREATE TABLE `questions_coming` (
  `id` int(4) NOT NULL,
  `question` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions_coming`
--

INSERT INTO `questions_coming` (`id`, `question`) VALUES
(1, '3․ Ո՞ր դասընթացներին եք պատրաստվում մասնակցել'),
(2, '4․ Տիրապետու՞մ եք ծրագրավորման որևէ լեզվի։ Եթե այո, ապա ո՞ր լեզվին/լեզուներին/');

-- --------------------------------------------------------

--
-- Table structure for table `questions_no`
--

CREATE TABLE `questions_no` (
  `id` int(3) NOT NULL,
  `question` varchar(500) DEFAULT NULL,
  `checked` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions_no`
--

INSERT INTO `questions_no` (`id`, `question`, `checked`) VALUES
(1, '3â€¤ Ô»ÕžÕ¶Õ¹Õ¨ Õ¯Õ¶ÕºÕ¡Õ½Õ¿Õ¥Ö€, Õ¸Ö€ Õ´Õ¡Õ½Õ¶Õ¡Õ¯ÖÕ¥Õ«Ö„ Õ´Õ¥Ö€ Õ¤Õ¡Õ½Õ¨Õ¶Õ©Õ¡ÖÕ¶Õ¥Ö€Õ«Õ¶', 'on'),
(2, '4â€¤ Ô¾Ö€Õ¡Õ£Ö€Õ¡Õ¾Õ¸Ö€Õ´Õ¡Õ¶ Õ«ÕžÕ¶Õ¹ Õ°Õ¡Õ¾Õ¥Õ¬ÕµÕ¡Õ¬ Õ¬Õ¥Õ¦Õ¸Ö‚ Õ¯ÖÕ¡Õ¶Õ¯Õ¡Õ¶Õ¡ÕµÕ«Ö„ Õ¿Õ¥Õ½Õ¶Õ¥Õ¬ Õ´Õ¥Ö€ Õ¤Õ¡Õ½Õ¡Õ¾Õ¡Õ¶Õ¤Õ¾Õ¸Õ² Õ¬Õ¥Õ¦Õ¸Ö‚Õ¶Õ¥Ö€Õ« ÖÕ¡Õ¶Õ¯Õ¸Ö‚Õ´', 'off'),
(3, '5â€¤ Ô»ÕžÕ¶Õ¹ Õ¡Õ¼Õ¡Õ»Õ¡Ö€Õ¯Õ¶Õ¥Ö€ Õ¸Ö‚Õ¶Õ¥Ö„', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `questions_yes`
--

CREATE TABLE `questions_yes` (
  `id` int(4) NOT NULL,
  `question` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `checked` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions_yes`
--

INSERT INTO `questions_yes` (`id`, `question`, `checked`) VALUES
(56, '1.Ô»Õ¶Õ¹ÕºÕ¥ÕžÕ½ Õ¥Ö„ Õ¿Õ¥Õ²Õ¥Õ¯Õ¡ÖÕ¥Õ¬ Õ´Õ¥Ö€ Õ¨Õ¶Õ¯Õ¥Ö€Õ¸Ö‚Õ©ÕµÕ¡Õ¶ Õ´Õ¡Õ½Õ«Õ¶', 'on'),
(57, '2â€¤ Õ„Õ¡Õ½Õ¶Õ¡Õ¯ÖÕ¥ÕžÕ¬ Õ¥Ö„ Õ´Õ¥Ö€ Õ¤Õ¡Õ½Õ¨Õ¶Õ©Õ¡ÖÕ¶Õ¥Ö€Õ«Õ¶', 'on'),
(59, '3â€¤ ÕˆÕžÖ€ Õ¤Õ¡Õ½Õ¨Õ¶Õ©Õ¡ÖÕ¶Õ¥Ö€Õ«Õ¶ Õ¥Ö„ Õ´Õ¡Õ½Õ¶Õ¡Õ¯ÖÕ¥Õ¬', 'on'),
(63, '4â€¤ Õ€Õ¡Õ¾Õ¡Õ¶Õ¥ÕžÕ¬ Õ¥Ö„ Õ¤Õ¡Õ½Õ¨Õ¶Õ©Õ¡ÖÕ¨', 'off'),
(64, '5â€¤ Ô»Õ¶Õ¹ÕºÕ¥ÕžÕ½ Õ¯Õ£Õ¶Õ¡Õ°Õ¡Õ¿Õ¥Ö„ Õ´Õ¡Õ¿Õ¸Ö‚ÖÕ¾Õ¸Õ² Õ¶ÕµÕ¸Ö‚Õ©Õ¥Ö€Õ« Õ¢Õ¸Õ¾Õ¡Õ¶Õ¤Õ¡Õ¯Õ¸Ö‚Õ©ÕµÕ¸Ö‚Õ¶Õ¨ Ö‡ Õ¸Ö€Õ¡Õ¯Õ¨', 'on'),
(65, '6â€¤ Ô³Õ¶Õ¡Õ°Õ¡Õ¿Õ¥Ö„ ÕÕ¥Ö€ Õ¤Õ¡Õ½Õ¡Õ­Õ¸Õ½Õ« Õ¤Õ¡Õ½Õ¡Õ¾Õ¡Õ¶Õ¤Õ´Õ¡Õ¶ Õ¸Ö€Õ¡Õ¯Õ¨', 'off'),
(66, '7â€¤ Ô²Õ¡Õ¾Õ¡Ö€Õ¡Ö€Õ¾Õ¡ÕžÕ® Õ¥Õ¶, Õ¡Ö€Õ¤ÕµÕ¸Ö„, ÕÕ¥Ö€ Õ½ÕºÕ¡Õ½Õ¥Õ¬Õ«Ö„Õ¶Õ¥Ö€Õ¨ Õ¤Õ¡Õ½Õ¨Õ¶Õ©Õ¡ÖÕ«Ö', 'on'),
(67, '8â€¤ Ô½Õ¸Ö€Õ°Õ¸Ö‚Ö€Õ¤ Õ¯Õ¿Õ¡ÕµÕ«ÕžÖ„ ÕÕ¥Ö€ Õ´Õ¿Õ¥Ö€Õ«Õ´Õ¶Õ¥Ö€Õ«Õ¶ Õ½Õ¸Õ¾Õ¸Ö€Õ¥Õ¬ Õ´Õ¥Ö€ Õ¸Ö‚Õ½Õ¸Ö‚Õ´Õ¶Õ¡Õ¯Õ¡Õ¶ Õ¯Õ¥Õ¶Õ¿Ö€Õ¸Õ¶Õ¸Ö‚Õ´Â ', 'on'),
(68, '9â€¤ Ô³Õ¶Õ¡Õ°Õ¡Õ¿Õ¥Ö„ Õ¤Õ¡Õ½Õ¨Õ¶Õ©Õ¡ÖÕ« Õ¡Ö€Õ¤ÕµÕ¸Ö‚Õ¶Ö„Õ¸Ö‚Õ´ Õ½Õ¿Õ¡ÖÕ¡Õ® ÕÕ¥Ö€ Õ£Õ«Õ¿Õ¥Õ¬Õ«Ö„Õ¶Õ¥Ö€Õ¨ 1-5 Õ¢Õ¡Õ¬Õ¡ÕµÕ«Õ¶ Õ½Õ¡Õ¶Õ¤Õ²Õ¡Õ¯Õ¸Õ¾', 'on'),
(69, '10â€¤ Ô»ÕžÕ¶Õ¹ Õ¡Õ¼Õ¡Õ»Õ¡Ö€Õ¯Õ¶Õ¥Ö€ Õ¸Ö‚Õ¶Õ¥Ö„Õ Õ¯Õ¡ÕµÖ„Õ« Ö‡ Õ¸Ö‚Õ½Õ¸Ö‚Õ´Õ¶Õ¡Õ¯Õ¡Õ¶ Õ¯Õ¥Õ¶Õ¿Ö€Õ¸Õ¶Õ« Õ°Õ¥Õ¿ Õ¯Õ¡ÕºÕ¾Õ¡Õ®', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(5) NOT NULL,
  `cv_students_id` int(5) NOT NULL,
  `language` int(1) NOT NULL,
  `percent` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `cv_students_id`, `language`, `percent`) VALUES
(29, 8, 1, 50),
(30, 8, 2, 50),
(33, 10, 1, 65),
(34, 10, 2, 65),
(35, 12, 2, 50),
(41, 12, 1, 80),
(127, 4, 2, 50);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(4) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `course_type` varchar(40) NOT NULL,
  `confirm_type` varchar(40) NOT NULL,
  `agree_term` varchar(60) NOT NULL,
  `comment` text NOT NULL,
  `mail_sended` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullname`, `age`, `phone`, `email`, `course_type`, `confirm_type`, `agree_term`, `comment`, `mail_sended`) VALUES
(50, 'Andranik Hoghmrtsyan', 58, '454558', 'hoghmrtsyan.and@mail.ru', 'Full Stack Web Development', 'one', 'a:3:{i:0;s:4:\"true\";i:1;s:4:\"true\";i:2;s:4:\"true\";}', 'comment', 1),
(51, 'aaa bbb', 58, '055369852', 'ddd@mail.ru', 'Front-End React Web Development', '2 Õ¸Ö‚Õ½Õ¡Õ¶Õ¸Õ² 10% Õ¦Õ¥Õ²Õ¹', 'a:3:{i:0;s:4:\"true\";i:1;s:5:\"false\";i:2;s:4:\"true\";}', 'mmmm yjhj', 0),
(52, 'Andranik', 58, '4545', 'hoghmrtsyan.and@mail.ru', 'Front-End React Web Development', '2 Õ¸Ö‚Õ½Õ¡Õ¶Õ¸Õ² 10% Õ¦Õ¥Õ²Õ¹', 'a:3:{i:0;s:4:\"true\";i:1;s:5:\"false\";i:2;s:4:\"true\";}', 'fdgdfg', 0),
(53, 'Andranik', 58, '4545', 'hoghmrtsyan.and@mail.ru', 'Front-End React Web Development', '2 Õ¸Ö‚Õ½Õ¡Õ¶Õ¸Õ² 10% Õ¦Õ¥Õ²Õ¹', 'a:3:{i:0;s:4:\"true\";i:1;s:5:\"false\";i:2;s:5:\"false\";}', 'fdgdfg', 0),
(54, 'Andranik', 58, '4545', 'hoghmrtsyan.and@mail.ru', 'Front-End React Web Development', '2 Õ¸Ö‚Õ½Õ¡Õ¶Õ¸Õ² 10% Õ¦Õ¥Õ²Õ¹', 'a:3:{i:0;s:4:\"true\";i:1;s:5:\"false\";i:2;s:5:\"false\";}', 'fdgdfg', 0),
(55, 'Andranik', 58, '4545', 'hoghmrtsyan.and@mail.ru', 'Front-End React Web Development', '2 Õ¸Ö‚Õ½Õ¡Õ¶Õ¸Õ² 10% Õ¦Õ¥Õ²Õ¹', 'a:3:{i:0;s:4:\"true\";i:1;s:5:\"false\";i:2;s:5:\"false\";}', 'fdgdfg', 0),
(56, 'Andranik', 58, '4545', 'hoghmrtsyan.and@mail.ru', 'Front-End React Web Development', '2 Õ¸Ö‚Õ½Õ¡Õ¶Õ¸Õ² 10% Õ¦Õ¥Õ²Õ¹', 'a:3:{i:0;s:4:\"true\";i:1;s:5:\"false\";i:2;s:5:\"false\";}', 'fdgdfg', 0),
(57, 'Andranik', 58, '4545', 'hoghmrtsyan.and@mail.ru', 'Front-End React Web Development', '2 Õ¸Ö‚Õ½Õ¡Õ¶Õ¸Õ² 10% Õ¦Õ¥Õ²Õ¹', 'a:3:{i:0;s:4:\"true\";i:1;s:5:\"false\";i:2;s:5:\"false\";}', 'fdgdfg', 0),
(58, 'test', 30, '012345678', 'test@mail.ru', 'Full Stack Python Development', '4 students 20% discount', 'true:true:true', '!!!', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_no`
--
ALTER TABLE `answers_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cv_students`
--
ALTER TABLE `cv_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patasxan`
--
ALTER TABLE `patasxan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_coming`
--
ALTER TABLE `questions_coming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_no`
--
ALTER TABLE `questions_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_yes`
--
ALTER TABLE `questions_yes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `answers_no`
--
ALTER TABLE `answers_no`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cv_students`
--
ALTER TABLE `cv_students`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `patasxan`
--
ALTER TABLE `patasxan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `questions_coming`
--
ALTER TABLE `questions_coming`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions_no`
--
ALTER TABLE `questions_no`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions_yes`
--
ALTER TABLE `questions_yes`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
