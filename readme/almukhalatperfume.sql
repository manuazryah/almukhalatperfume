-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2019 at 09:48 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almukhalatperfume`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` mediumtext,
  `detailed_description` longtext,
  `vision` mediumtext,
  `mission` mediumtext,
  `quotation` mediumtext,
  `about_image` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `detailed_description`, `vision`, `mission`, `quotation`, `about_image`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'AL MUKHALAT PERFUME', 'Al Mukhalat perfume was established in 2004, as a retailer and wholesaler of perfumes. Over the years, we have expanded into being the leading supplier of prestige brands of perfumes to customers.\r\n\r\nBased in Dubai, we proudly present a bouquet of the finest contemporary fragrances. Adorn yourself with mesmerizing scents, shining out from within, a reflection of self, a mirror image of you.', '<p>At Al Mukhalat, we confidently carry the widest range of internationally branded perfumes and watches. Some of the famous brands include Chanel, Dior, Givenchy, Giorgio, Armani, Gucci, Tom Ford, Creed, Versace, Lacoste, Dolce and Gabbana, Roberto cavalla.</p>\r\n\r\n<p>We commit to giving uncompromising products at competitive prices, whilst still concentrating on a high level of service. Combining these three factors: Al Mukhalat is always there to understand your preferences. With our expertise in the realm of perfumery, we believe we can create something special for you.</p>\r\n\r\n<p>Being a company that understands customer&rsquo;s pure satisfaction is a real asset to any organization, we endeavor to help you in all possible way through quality products and unparalleled service. The hard work and commitment of our staff and sales team have helped in the expansion and success of the business.</p>\r\n', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with', 'jpg', 1, 1, 2, '2017-09-19', '2019-02-28 05:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_post`
--

CREATE TABLE IF NOT EXISTS `admin_post` (
  `id` int(11) NOT NULL,
  `post_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_post`
--

INSERT INTO `admin_post` (`id`, `post_name`, `admin`, `product`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 'Superadmin', '1', 1, NULL, NULL, NULL, '2018-10-12 10:42:17', 1),
(5, 'Content Writer', '0', 1, 2, 3, '2018-10-12 00:00:00', '2018-10-12 10:45:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `post_id`, `user_name`, `password`, `name`, `email`, `phone`, `address`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(2, 1, 'testing', '$2y$13$exuFl1k5EZGEyEkDjNPsqOhAtgIHP/t1ot6NPtJA5weKW4ffwhryu', 'testing', 'info@alhajis.com', '98745896547', 'Azryah Networks', 1, 1, 1, '2017-03-10 00:00:00', '2019-02-08 10:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE IF NOT EXISTS `banner_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` date NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `title`, `image`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'Product links', 'jpg', 1, 1, 1, '2018-02-21', '2018-02-21 07:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `branch_adress` text,
  `phone` varchar(25) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `map` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `branch_adress`, `phone`, `image`, `map`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'Mizher Mall', 'Mizher Mall,Mizher,Dubai, UAE,', '042875392', 'jpg', '<iframe src="https://www.google.com/maps/embed?pb=" width="600" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>', 1, 1, 2, '2018-08-22', '2019-01-18 05:22:15'),
(2, 'Barsha ', 'Souq Extra,Al Barsha-2,Dubai, UAE,', '04-3958845', 'jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3607.7644212933624!2d55.34412341405841!3d25.27850903460218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f5c92b7a03aad%3A0x3e1ffef5f7856669!2sAl+Hajis+Perfumes+L.L.C%2C+Abuhail!5e0!3m2!1sen!2sin!4v1543564785484', 1, 1, 2, '2018-08-22', '2019-01-18 06:19:20'),
(3, 'Rigga', 'Al Hajis Perfumes L.L.C, Al Rigga17 Al Rigga Road - Dubai', '04-2957916', 'png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3607.7644212933624!2d55.34412341405841!3d25.27850903460218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f5c92b7a03aad%3A0x3e1ffef5f7856669!2sAl+Hajis+Perfumes+L.L.C%2C+Abuhail!5e0!3m2!1sen!2sin!4v1543564785484', 1, 1, 2, '2018-08-22', '2019-01-18 06:29:16'),
(4, 'Satwa', 'Al Hajis Perfumes L.L.C,\r\nAl Satwa13 A St, Al Satwa\r\nRoad, - Dubai', '043290200', 'png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3607.7644212933624!2d55.34412341405841!3d25.27850903460218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f5c92b7a03aad%3A0x3e1ffef5f7856669!2sAl+Hajis+Perfumes+L.L.C%2C+Abuhail!5e0!3m2!1sen!2sin!4v1543564785484', 1, 1, 2, '2018-08-22', '2019-01-18 06:26:13'),
(5, 'Sharjah', 'Sharjah Road,  Centre, 254, Dubai, UAE\r\n', '065218107', 'png', '', 1, 2, 2, '2018-12-31', '2019-01-18 06:22:56'),
(6, 'Ajman', 'Al Hajis Perfumes L.L.C,\r\nAjman, Beirut st - Ajman', '067439557', 'jpg', '', 1, 2, 2, '2018-12-31', '2019-01-18 06:26:46'),
(7, 'Al ain', 'Al Hajis Perfumes L.L.C,\r\nAl Ain127th St, Hamdan\r\nBin Mohammad St, Souq\r\nExtra, Al Ain, - Abu\r\nDhabi', '037673787', 'jpg', '', 1, 2, 2, '2018-12-31', '2019-01-18 06:25:39'),
(8, 'Fujairah', 'Al Hajis Perfumes L.L.C,\r\nFujairah, Murbah Madha\r\nSt, Souq Extra, -\r\nFujairah', '092372875', 'jpg', '', 1, 2, 2, '2018-12-31', '2019-01-18 06:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` date NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `show_menu` int(11) DEFAULT NULL,
  `favourite_brand` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `image`, `CB`, `UB`, `DOC`, `DOU`, `status`, `show_menu`, `favourite_brand`) VALUES
(1, 'Adidas', 'png', 1, 2, '2017-12-04', '2019-01-03 08:01:28', 1, 0, 1),
(2, 'AIGNER', '', 1, 1, '2017-12-04', '2018-10-10 09:14:10', 1, NULL, NULL),
(3, 'AMOUAGE', '', 1, 1, '2017-12-04', '2018-10-10 09:14:10', 1, NULL, NULL),
(4, 'Aramis', '', 1, 1, '2017-12-04', '2018-10-10 09:14:10', 1, NULL, NULL),
(5, 'Azzaro', '', 1, 1, '2017-12-05', '2018-10-10 09:14:10', 1, NULL, NULL),
(6, 'BECKHAM DAVID', '', 1, 1, '2017-12-06', '2018-10-10 09:14:10', 1, NULL, NULL),
(7, 'BENETTON', '', 1, 1, '2017-12-06', '2018-10-10 09:14:10', 1, NULL, NULL),
(8, 'Bentely', '', 1, 1, '2017-12-06', '2018-10-10 09:14:10', 1, NULL, NULL),
(9, 'Chanel', '', 1, 1, '2017-12-06', '2018-10-10 09:14:10', 1, NULL, NULL),
(10, 'Bottega Veneta', '', 1, 1, '2017-12-06', '2018-10-10 09:14:10', 1, NULL, NULL),
(11, 'Britney spears', '', 1, 1, '2017-12-06', '2018-10-10 09:14:10', 1, NULL, NULL),
(14, '24', 'jpg', 1, 2, '2018-02-07', '2018-12-31 12:02:51', 1, 0, NULL),
(15, 'Victoria''s Secret', '', 1, 1, '2018-03-03', '2018-10-10 09:14:10', 1, NULL, NULL),
(17, 'Dior', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(18, 'Armani', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(19, 'Gucci', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(20, 'Burberry', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(21, 'Tom Ford', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(22, 'Lancome', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(23, 'Versace', 'jpg', 1, 2, '2018-03-13', '2019-01-03 08:04:31', 1, 0, 1),
(24, 'Calvin Klein', 'jpg', 1, 2, '2018-03-13', '2018-12-31 12:03:39', 1, 0, NULL),
(25, 'Davidoff', 'jpg', 1, 2, '2018-03-13', '2019-01-03 08:05:07', 1, 0, 0),
(26, 'Lacoste', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(27, 'DKNY', 'jpg', 1, 2, '2018-03-13', '2018-12-31 12:09:53', 1, 0, NULL),
(28, 'Moschino Cheap and Chic', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(29, 'Dolce and Gabbana', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(30, 'Bvlgari', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(31, 'Nikos', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(32, 'Coral Perfumes', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(33, 'Cacharel', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(34, 'Chloe', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(35, 'Clinique', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(36, 'Carrera', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(37, 'Cartier', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(38, 'Chopard', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(39, 'Dunhill', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(40, 'Elie Saab', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(41, 'Fendi', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(42, 'Ferrari', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(43, 'Essenza', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(44, 'Elizabeth Arden', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(45, 'Escada', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(46, 'Givenchy', 'jpg', 1, 2, '2018-03-13', '2019-01-03 08:02:26', 1, 1, 1),
(47, 'Guerlain', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(48, 'Guess', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(49, 'Hugo Boss', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(50, 'Jovan', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(51, 'Kenzo', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(52, 'Kenneth Cole', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(53, 'Jimmy Choo', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(54, 'Jagur', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(55, 'Jennifer Lopez', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(56, 'Joop', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(57, 'John Varvatos', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(59, 'Estee Lauder', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(60, 'Diesel', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(61, 'YSL', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(62, 'valentino', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(63, 'Viktor & Rolf', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(64, 'Victoria Hills', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(65, 'Tawoos', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(66, 'Thierry Mugler', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(67, 'Trussardi', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(68, 'Salvatore Ferragamo', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(69, 'Mercedes Benz', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(70, 'Mont Blanc', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(71, 'Ninna Ricci', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(72, 'Lalique', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(73, 'Lanvin', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(74, 'Olive Perfumes', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(75, 'Arabian Eagle', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(76, 'Roberto Cavalli', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(77, 'Prada', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(78, 'Paco Rabanne', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(79, 'Police', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(80, 'Play Boy', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(81, 'Lady Gaga', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(82, 'Katty Perry', '', 1, 1, '2018-03-13', '2018-10-10 09:14:10', 1, NULL, NULL),
(83, ' GEOFFREY BENNE', '', 1, 1, '2018-04-24', '2018-10-10 09:14:10', 1, NULL, NULL),
(84, 'Carolina Herrera', '', 1, 1, '2018-06-04', '2018-10-10 09:14:10', 1, NULL, NULL),
(85, 'Creed', '', 1, 1, '2018-08-28', '2018-10-10 09:14:10', 1, NULL, NULL),
(86, 'Scent Diffuser', '', 1, 1, '2018-09-03', '2018-10-10 09:14:10', 1, NULL, NULL),
(87, 'Iris Montini', 'png', 2, 2, '2018-10-10', '2019-01-03 08:01:49', 1, 1, 1),
(88, 'ACQUA DI MONACO', '1', 2, 2, '2018-11-28', '0000-00-00 00:00:00', 1, NULL, NULL),
(89, 'Acqua Di Parisis', '1', 2, 2, '2018-11-28', '0000-00-00 00:00:00', 1, NULL, NULL),
(90, 'Angel Schlesser', '1', 2, 2, '2018-11-28', '0000-00-00 00:00:00', 1, NULL, NULL),
(91, 'Antonio Banderas ', '1', 2, 2, '2018-11-28', '0000-00-00 00:00:00', 1, NULL, NULL),
(92, 'Baldessarini', '1', 2, 2, '2018-11-28', '0000-00-00 00:00:00', 1, NULL, NULL),
(93, 'Cerutti ', '1', 2, 2, '2018-11-28', '0000-00-00 00:00:00', 1, NULL, NULL),
(94, 'Meraki', 'png', 2, 2, '2018-12-31', '2019-01-03 08:02:06', 1, 1, 1),
(96, 'Victor Raymond', '1', 2, 2, '2018-12-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(99, 'BRAND NAME', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(100, 'ISSEY MIAKE', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(103, 'ISSEY MIYAKE', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(104, 'FIERCE COLOGNE', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(105, 'NOBLE', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(106, ' AMBRA', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(107, 'COLONIA', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(108, 'ACQUA DI PARMA', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(109, 'AIGNER ETIENNE', '1', 2, 2, '2019-01-31', '0000-00-00 00:00:00', 1, NULL, NULL),
(110, 'ALAIA ', '1', 2, 2, '2019-02-01', '0000-00-00 00:00:00', 1, NULL, NULL),
(111, 'ALEXANDRE', '1', 2, 2, '2019-02-01', '0000-00-00 00:00:00', 1, NULL, NULL),
(112, 'AMORINO', '1', 2, 2, '2019-02-01', '0000-00-00 00:00:00', 1, NULL, NULL),
(113, 'ARMAND BASI', '1', 2, 2, '2019-02-05', '0000-00-00 00:00:00', 1, NULL, NULL),
(114, 'ARMANI EAU ', '1', 2, 2, '2019-02-05', '0000-00-00 00:00:00', 1, NULL, NULL),
(115, 'AROMATICS', '1', 2, 2, '2019-02-05', '0000-00-00 00:00:00', 1, NULL, NULL),
(116, 'ASTEN LAFERIE', '1', 2, 2, '2019-02-05', '0000-00-00 00:00:00', 1, NULL, NULL),
(117, 'ATELIER COLOGNE', '1', 2, 2, '2019-02-05', '0000-00-00 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `options` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `gift_option` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `item_type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `session_id`, `product_id`, `quantity`, `options`, `date`, `gift_option`, `rate`, `item_type`) VALUES
(1, 3, NULL, 11, 0, NULL, '2019-03-29 04:34:05', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `main_category` int(11) NOT NULL DEFAULT '1',
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `main_category`, `category`, `category_code`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 1, 'Women', 'women', 1, 1, '2017-11-29 00:00:00', '2018-02-06 08:54:39', 1),
(2, 2, 'Jeans', 'jeans', 1, 1, '2017-11-29 00:00:00', '2017-11-29 06:30:09', 1),
(3, 3, 'new', 'new', 1, 1, '2017-11-29 00:00:00', '2017-11-29 09:02:50', 1),
(5, 2, 'Adidas', 'adidas', 1, 1, '2017-12-04 00:00:00', '2017-12-04 12:07:27', 1),
(6, 1, 'Men', 'men', 1, 1, '2017-12-04 00:00:00', '2018-02-06 08:54:53', 1),
(7, 1, 'Oriental', 'oriental', 1, 1, '2017-12-04 00:00:00', '2018-02-06 08:55:21', 1),
(8, 2, 'Mens Perfumes', 'mens-perfumes', 1, 1, '2017-12-04 00:00:00', '2017-12-04 13:21:25', 1),
(9, 3, 'Diffuser System', 'diffuser-system', 1, 1, '2018-03-22 00:00:00', '2018-03-22 13:20:54', 1),
(10, 2, 'Burberry', 'burberry', 1, 1, '2018-03-24 00:00:00', '2018-03-24 13:34:28', 1),
(11, 2, 'Mens', 'mens', 1, 1, '2018-05-03 00:00:00', '2018-05-03 15:51:30', 1),
(12, 2, 'WOMEN SET', 'women-set', 1, 1, '2018-05-04 00:00:00', '2018-05-04 09:07:11', 1),
(13, 1, 'UNISEX', 'unisex', 1, 1, '2018-08-05 00:00:00', '2018-08-05 08:51:09', 1),
(14, 4, 'Special Offer', 'special-offer', 1, 1, '2018-08-27 00:00:00', '2018-08-27 08:21:26', 1),
(15, 3, 'Small Area Scent Diffuser', 'small-area-scent-diffuser', 1, 1, '2018-09-03 00:00:00', '2018-09-03 08:03:40', 1),
(16, 3, 'Medium Area Diffuser', 'medium-area-diffuser', 1, 1, '2018-09-03 00:00:00', '2018-09-03 10:56:41', 1),
(17, 3, 'Large Area Scent Diffuser', 'large-area-scent-diffuser', 1, 1, '2018-09-03 00:00:00', '2018-09-03 11:02:05', 1),
(18, 5, 'National Day Offer', 'national-day-offer', 2, 2, '2018-11-30 00:00:00', '2018-11-30 11:28:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_customer`
--

CREATE TABLE IF NOT EXISTS `cms_customer` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `canonical_name` varchar(250) NOT NULL,
  `short_content` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` date NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_customer`
--

INSERT INTO `cms_customer` (`id`, `title`, `canonical_name`, `short_content`, `content`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 'Help With My Orders', 'help-with-my-orders', 'Orders delivery, tracking, payment and more', '<h1 class="head-one">Help With My Orders</h1>\r\n        <div class="cont-box">\r\n            <h2>Items are missing from My Order</h2>\r\n            <p>If you have received an incomplete product or order with missing items or quantity, please thoroughly check the delivery package for the missing item or product or part product. If still not found, you can contact customer care or return the entire order. </p>\r\n            <a href="#" class="link-button">Click here for return your Order</a>\r\n        </div>\r\n\r\n        <div class="cont-box"><h2> I Received a Damaged or a Defective Item</h2>\r\n            <p>If you have received a product in damaged or defective condition, you can request to return the product for a refund within 15 days of its delivery by following the steps mentioned below:</p>\r\n            <ul>\r\n                <li> Log in to your perfumedunia.com account using your registered email address and password</li>\r\n                <li>Go the My Account </li>\r\n                <li>Click on My Orders </li>\r\n                <li>Give the detailed note about the issue </li>\r\n                <li>Click on Return </li>\r\n            </ul>\r\n        </div>\r\n\r\n        <div class="cont-box"><p>Note: Ensure to provide as much information as possible before completing the return as the product you return will be assessed and validated before it is accepted for a refund. If the stated issue is not found in the product you return, the product will be sent back to you and your claim for a refund will be rejected.</p></div>\r\n        <div class="cont-box"><h2>Shipping and Delivery</h2>\r\n            <p>We deliver all across the Emirates except certain areas which are considered as out of service areas. Our courier company delivers orders during working hours from 9:00 am to 6:00 pm Saturday to Thursday.</p>\r\n            <p>Shipping fees depend on the total quantity of items and weight. Therefore, there are no flat shipping charges. The best way to find out the shipping charge applicable to your order is to try placing an order. The last page of the checkout process will provide you with the exact shipping cost. An additional amount of AED4 will be charged per shipment if you choose to pay using Cash on Delivery payment method for your order.</p></div>\r\n        <div class="cont-box"><h2>Non Shipping Areas</h2>\r\n            <a href="https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf" target="_blank" class="link-button">https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf</a></div>\r\n\r\n\r\n\r\n        <div class="cont-box"><h2>How to Know About Upcoming Promotions and Offers?</h2>\r\n            <p>You can subscribe to receive information about upcoming promotions and offers on perfumedunia.com and also control the way these notifications are sent to you.</p></div>\r\n\r\n        <div class="cont-box"><h2>About Coupon Codes</h2>\r\n            <p>Coupon codes are promotional codes that can be used on perfumedunia.com to obtain a discount on your purchase. These coupon codes can be issued by perfumedunia.com</p>\r\n        </div>\r\n        <div class="cont-box"><h2>Cancelling an Order</h2>\r\n            <p>You can cancel your order/item only before it enters the shipping phase. The option to cancel an order/item will cease to appear when the shipment has entered the shipping phase.</p></div>\r\n        <div class="cont-box"><h2>To cancel an item/order:</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Go to My Account Page.</li>\r\n                <li>Click on My Orders.</li>\r\n                <li>Click on Cancel my Order.</li>\r\n                <li>Write a note reason for cancellation </li>\r\n                <li>Click on Complete Cancellation to complete the cancellation request.</li>\r\n            </ul>\r\n            <p>Note: For purchases made with a credit card, the amount will be refunded to the same card within 5 to 7 working days after successful cancellation of the order.</p>\r\n        </div>\r\n        <div class="cont-box"><h2>How to View My Orders?</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Click on your name displaying on top right-hand corner of the page.</li>\r\n                <li>Click the My Orders tab. By default, all orders you have placed in the last 6 months will be displayed.</li>\r\n            </ul>\r\n        </div>\r\n        <div class="cont-box"><h2>Note:</h2>\r\n            <p>To filter your orders on the basis of their status, click the “All” tab and select the required option. Consequently, orders that are “Under Process”, “Cancelled” Or “Returned” will be displayed.</p></div>\r\n        <div class="cont-box"><h2>Accepted Payment Methods</h2>\r\n            <p>Perfumedunia.com accepts payment by credit and debit cards (Visa and MasterCard), Cash on Delivery (COD),</p> </div>\r\n\r\n        <div class="cont-box"><h2>My Credit Card Was Charged but the Order Was Not Placed</h2>\r\n            <p>If your credit card was charged while purchasing on perfumedunia.com without receiving order confirmation, view your perfumedunia.com account summary to find out if the order is not created Kindly contact to customer care.</p> \r\n        </div>\r\n        <div class="cont-box"><h2>How will I Get My Refund?</h2>\r\n            <p>Your method of refund depends on the payment method you used when you purchased the item. For credit card purchases, the payment will be refunded back to the same credit card used.	\r\n                Cancelling Return Request</p>\r\n            <p>If, following your request to return an item, you change your mind and wish to cancel your return request, you have the option to refuse the collection of the item when the courier contacts you to pick up the item.</p>\r\n        </div>', 1, 1, '2018-08-31', '2018-08-31 10:00:19', 1),
(2, 'Returns And Refund', 'returns-and-refund', 'Know how to return an item and get your money back', '<h1 class="head-one">Help With My Orders</h1>\r\n        <div class="cont-box">\r\n            <h2>Items are missing from My Order</h2>\r\n            <p>If you have received an incomplete product or order with missing items or quantity, please thoroughly check the delivery package for the missing item or product or part product. If still not found, you can contact customer care or return the entire order. </p>\r\n            <a href="#" class="link-button">Click here for return your Order</a>\r\n        </div>\r\n\r\n        <div class="cont-box"><h2> I Received a Damaged or a Defective Item</h2>\r\n            <p>If you have received a product in damaged or defective condition, you can request to return the product for a refund within 15 days of its delivery by following the steps mentioned below:</p>\r\n            <ul>\r\n                <li> Log in to your perfumedunia.com account using your registered email address and password</li>\r\n                <li>Go the My Account </li>\r\n                <li>Click on My Orders </li>\r\n                <li>Give the detailed note about the issue </li>\r\n                <li>Click on Return </li>\r\n            </ul>\r\n        </div>\r\n\r\n        <div class="cont-box"><p>Note: Ensure to provide as much information as possible before completing the return as the product you return will be assessed and validated before it is accepted for a refund. If the stated issue is not found in the product you return, the product will be sent back to you and your claim for a refund will be rejected.</p></div>\r\n        <div class="cont-box"><h2>Shipping and Delivery</h2>\r\n            <p>We deliver all across the Emirates except certain areas which are considered as out of service areas. Our courier company delivers orders during working hours from 9:00 am to 6:00 pm Saturday to Thursday.</p>\r\n            <p>Shipping fees depend on the total quantity of items and weight. Therefore, there are no flat shipping charges. The best way to find out the shipping charge applicable to your order is to try placing an order. The last page of the checkout process will provide you with the exact shipping cost. An additional amount of AED4 will be charged per shipment if you choose to pay using Cash on Delivery payment method for your order.</p></div>\r\n        <div class="cont-box"><h2>Non Shipping Areas</h2>\r\n            <a href="https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf" target="_blank" class="link-button">https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf</a></div>\r\n\r\n\r\n\r\n        <div class="cont-box"><h2>How to Know About Upcoming Promotions and Offers?</h2>\r\n            <p>You can subscribe to receive information about upcoming promotions and offers on perfumedunia.com and also control the way these notifications are sent to you.</p></div>\r\n\r\n        <div class="cont-box"><h2>About Coupon Codes</h2>\r\n            <p>Coupon codes are promotional codes that can be used on perfumedunia.com to obtain a discount on your purchase. These coupon codes can be issued by perfumedunia.com</p>\r\n        </div>\r\n        <div class="cont-box"><h2>Cancelling an Order</h2>\r\n            <p>You can cancel your order/item only before it enters the shipping phase. The option to cancel an order/item will cease to appear when the shipment has entered the shipping phase.</p></div>\r\n        <div class="cont-box"><h2>To cancel an item/order:</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Go to My Account Page.</li>\r\n                <li>Click on My Orders.</li>\r\n                <li>Click on Cancel my Order.</li>\r\n                <li>Write a note reason for cancellation </li>\r\n                <li>Click on Complete Cancellation to complete the cancellation request.</li>\r\n            </ul>\r\n            <p>Note: For purchases made with a credit card, the amount will be refunded to the same card within 5 to 7 working days after successful cancellation of the order.</p>\r\n        </div>\r\n        <div class="cont-box"><h2>How to View My Orders?</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Click on your name displaying on top right-hand corner of the page.</li>\r\n                <li>Click the My Orders tab. By default, all orders you have placed in the last 6 months will be displayed.</li>\r\n            </ul>\r\n        </div>\r\n        <div class="cont-box"><h2>Note:</h2>\r\n            <p>To filter your orders on the basis of their status, click the “All” tab and select the required option. Consequently, orders that are “Under Process”, “Cancelled” Or “Returned” will be displayed.</p></div>\r\n        <div class="cont-box"><h2>Accepted Payment Methods</h2>\r\n            <p>Perfumedunia.com accepts payment by credit and debit cards (Visa and MasterCard), Cash on Delivery (COD),</p> </div>\r\n\r\n        <div class="cont-box"><h2>My Credit Card Was Charged but the Order Was Not Placed</h2>\r\n            <p>If your credit card was charged while purchasing on perfumedunia.com without receiving order confirmation, view your perfumedunia.com account summary to find out if the order is not created Kindly contact to customer care.</p> \r\n        </div>\r\n        <div class="cont-box"><h2>How will I Get My Refund?</h2>\r\n            <p>Your method of refund depends on the payment method you used when you purchased the item. For credit card purchases, the payment will be refunded back to the same credit card used.	\r\n                Cancelling Return Request</p>\r\n            <p>If, following your request to return an item, you change your mind and wish to cancel your return request, you have the option to refuse the collection of the item when the courier contacts you to pick up the item.</p>\r\n        </div>', 1, 1, '2018-08-31', '2018-08-31 10:00:33', 1),
(3, 'My Account', 'my-account', 'All account related help, account settings and addresses', '<h1 class="head-one">Help With My Orders</h1>\r\n        <div class="cont-box">\r\n            <h2>Items are missing from My Order</h2>\r\n            <p>If you have received an incomplete product or order with missing items or quantity, please thoroughly check the delivery package for the missing item or product or part product. If still not found, you can contact customer care or return the entire order. </p>\r\n            <a href="#" class="link-button">Click here for return your Order</a>\r\n        </div>\r\n\r\n        <div class="cont-box"><h2> I Received a Damaged or a Defective Item</h2>\r\n            <p>If you have received a product in damaged or defective condition, you can request to return the product for a refund within 15 days of its delivery by following the steps mentioned below:</p>\r\n            <ul>\r\n                <li> Log in to your perfumedunia.com account using your registered email address and password</li>\r\n                <li>Go the My Account </li>\r\n                <li>Click on My Orders </li>\r\n                <li>Give the detailed note about the issue </li>\r\n                <li>Click on Return </li>\r\n            </ul>\r\n        </div>\r\n\r\n        <div class="cont-box"><p>Note: Ensure to provide as much information as possible before completing the return as the product you return will be assessed and validated before it is accepted for a refund. If the stated issue is not found in the product you return, the product will be sent back to you and your claim for a refund will be rejected.</p></div>\r\n        <div class="cont-box"><h2>Shipping and Delivery</h2>\r\n            <p>We deliver all across the Emirates except certain areas which are considered as out of service areas. Our courier company delivers orders during working hours from 9:00 am to 6:00 pm Saturday to Thursday.</p>\r\n            <p>Shipping fees depend on the total quantity of items and weight. Therefore, there are no flat shipping charges. The best way to find out the shipping charge applicable to your order is to try placing an order. The last page of the checkout process will provide you with the exact shipping cost. An additional amount of AED4 will be charged per shipment if you choose to pay using Cash on Delivery payment method for your order.</p></div>\r\n        <div class="cont-box"><h2>Non Shipping Areas</h2>\r\n            <a href="https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf" target="_blank" class="link-button">https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf</a></div>\r\n\r\n\r\n\r\n        <div class="cont-box"><h2>How to Know About Upcoming Promotions and Offers?</h2>\r\n            <p>You can subscribe to receive information about upcoming promotions and offers on perfumedunia.com and also control the way these notifications are sent to you.</p></div>\r\n\r\n        <div class="cont-box"><h2>About Coupon Codes</h2>\r\n            <p>Coupon codes are promotional codes that can be used on perfumedunia.com to obtain a discount on your purchase. These coupon codes can be issued by perfumedunia.com</p>\r\n        </div>\r\n        <div class="cont-box"><h2>Cancelling an Order</h2>\r\n            <p>You can cancel your order/item only before it enters the shipping phase. The option to cancel an order/item will cease to appear when the shipment has entered the shipping phase.</p></div>\r\n        <div class="cont-box"><h2>To cancel an item/order:</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Go to My Account Page.</li>\r\n                <li>Click on My Orders.</li>\r\n                <li>Click on Cancel my Order.</li>\r\n                <li>Write a note reason for cancellation </li>\r\n                <li>Click on Complete Cancellation to complete the cancellation request.</li>\r\n            </ul>\r\n            <p>Note: For purchases made with a credit card, the amount will be refunded to the same card within 5 to 7 working days after successful cancellation of the order.</p>\r\n        </div>\r\n        <div class="cont-box"><h2>How to View My Orders?</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Click on your name displaying on top right-hand corner of the page.</li>\r\n                <li>Click the My Orders tab. By default, all orders you have placed in the last 6 months will be displayed.</li>\r\n            </ul>\r\n        </div>\r\n        <div class="cont-box"><h2>Note:</h2>\r\n            <p>To filter your orders on the basis of their status, click the “All” tab and select the required option. Consequently, orders that are “Under Process”, “Cancelled” Or “Returned” will be displayed.</p></div>\r\n        <div class="cont-box"><h2>Accepted Payment Methods</h2>\r\n            <p>Perfumedunia.com accepts payment by credit and debit cards (Visa and MasterCard), Cash on Delivery (COD),</p> </div>\r\n\r\n        <div class="cont-box"><h2>My Credit Card Was Charged but the Order Was Not Placed</h2>\r\n            <p>If your credit card was charged while purchasing on perfumedunia.com without receiving order confirmation, view your perfumedunia.com account summary to find out if the order is not created Kindly contact to customer care.</p> \r\n        </div>\r\n        <div class="cont-box"><h2>How will I Get My Refund?</h2>\r\n            <p>Your method of refund depends on the payment method you used when you purchased the item. For credit card purchases, the payment will be refunded back to the same credit card used.	\r\n                Cancelling Return Request</p>\r\n            <p>If, following your request to return an item, you change your mind and wish to cancel your return request, you have the option to refuse the collection of the item when the courier contacts you to pick up the item.</p>\r\n        </div>', 1, 1, '2018-08-31', '2018-08-31 10:00:44', 1),
(4, 'Fees, Rules And Policies', 'fees-rules-and-policies', 'Fees, rules & policy', '<h1 class="head-one">Help With My Orders</h1>\r\n        <div class="cont-box">\r\n            <h2>Items are missing from My Order</h2>\r\n            <p>If you have received an incomplete product or order with missing items or quantity, please thoroughly check the delivery package for the missing item or product or part product. If still not found, you can contact customer care or return the entire order. </p>\r\n            <a href="#" class="link-button">Click here for return your Order</a>\r\n        </div>\r\n\r\n        <div class="cont-box"><h2> I Received a Damaged or a Defective Item</h2>\r\n            <p>If you have received a product in damaged or defective condition, you can request to return the product for a refund within 15 days of its delivery by following the steps mentioned below:</p>\r\n            <ul>\r\n                <li> Log in to your perfumedunia.com account using your registered email address and password</li>\r\n                <li>Go the My Account </li>\r\n                <li>Click on My Orders </li>\r\n                <li>Give the detailed note about the issue </li>\r\n                <li>Click on Return </li>\r\n            </ul>\r\n        </div>\r\n\r\n        <div class="cont-box"><p>Note: Ensure to provide as much information as possible before completing the return as the product you return will be assessed and validated before it is accepted for a refund. If the stated issue is not found in the product you return, the product will be sent back to you and your claim for a refund will be rejected.</p></div>\r\n        <div class="cont-box"><h2>Shipping and Delivery</h2>\r\n            <p>We deliver all across the Emirates except certain areas which are considered as out of service areas. Our courier company delivers orders during working hours from 9:00 am to 6:00 pm Saturday to Thursday.</p>\r\n            <p>Shipping fees depend on the total quantity of items and weight. Therefore, there are no flat shipping charges. The best way to find out the shipping charge applicable to your order is to try placing an order. The last page of the checkout process will provide you with the exact shipping cost. An additional amount of AED4 will be charged per shipment if you choose to pay using Cash on Delivery payment method for your order.</p></div>\r\n        <div class="cont-box"><h2>Non Shipping Areas</h2>\r\n            <a href="https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf" target="_blank" class="link-button">https://www.eliteairborne.com/download/Remote_NonServiceable_Areas_in_UAE.pdf</a></div>\r\n\r\n\r\n\r\n        <div class="cont-box"><h2>How to Know About Upcoming Promotions and Offers?</h2>\r\n            <p>You can subscribe to receive information about upcoming promotions and offers on perfumedunia.com and also control the way these notifications are sent to you.</p></div>\r\n\r\n        <div class="cont-box"><h2>About Coupon Codes</h2>\r\n            <p>Coupon codes are promotional codes that can be used on perfumedunia.com to obtain a discount on your purchase. These coupon codes can be issued by perfumedunia.com</p>\r\n        </div>\r\n        <div class="cont-box"><h2>Cancelling an Order</h2>\r\n            <p>You can cancel your order/item only before it enters the shipping phase. The option to cancel an order/item will cease to appear when the shipment has entered the shipping phase.</p></div>\r\n        <div class="cont-box"><h2>To cancel an item/order:</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Go to My Account Page.</li>\r\n                <li>Click on My Orders.</li>\r\n                <li>Click on Cancel my Order.</li>\r\n                <li>Write a note reason for cancellation </li>\r\n                <li>Click on Complete Cancellation to complete the cancellation request.</li>\r\n            </ul>\r\n            <p>Note: For purchases made with a credit card, the amount will be refunded to the same card within 5 to 7 working days after successful cancellation of the order.</p>\r\n        </div>\r\n        <div class="cont-box"><h2>How to View My Orders?</h2>\r\n            <ul>\r\n                <li>Log in to your perfumedunia.com account using your registered email address and password.</li>\r\n                <li>Click on your name displaying on top right-hand corner of the page.</li>\r\n                <li>Click the My Orders tab. By default, all orders you have placed in the last 6 months will be displayed.</li>\r\n            </ul>\r\n        </div>\r\n        <div class="cont-box"><h2>Note:</h2>\r\n            <p>To filter your orders on the basis of their status, click the “All” tab and select the required option. Consequently, orders that are “Under Process”, “Cancelled” Or “Returned” will be displayed.</p></div>\r\n        <div class="cont-box"><h2>Accepted Payment Methods</h2>\r\n            <p>Perfumedunia.com accepts payment by credit and debit cards (Visa and MasterCard), Cash on Delivery (COD),</p> </div>\r\n\r\n        <div class="cont-box"><h2>My Credit Card Was Charged but the Order Was Not Placed</h2>\r\n            <p>If your credit card was charged while purchasing on perfumedunia.com without receiving order confirmation, view your perfumedunia.com account summary to find out if the order is not created Kindly contact to customer care.</p> \r\n        </div>\r\n        <div class="cont-box"><h2>How will I Get My Refund?</h2>\r\n            <p>Your method of refund depends on the payment method you used when you purchased the item. For credit card purchases, the payment will be refunded back to the same credit card used.	\r\n                Cancelling Return Request</p>\r\n            <p>If, following your request to return an item, you change your mind and wish to cancel your return request, you have the option to refuse the collection of the item when the courier contacts you to pick up the item.</p>\r\n        </div>', 1, 1, '2018-08-31', '2018-08-31 10:00:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_meta_tags`
--

CREATE TABLE IF NOT EXISTS `cms_meta_tags` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` longtext,
  `meta_keyword` longtext,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page_title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_meta_tags`
--

INSERT INTO `cms_meta_tags` (`id`, `meta_title`, `meta_description`, `meta_keyword`, `CB`, `UB`, `DOC`, `DOU`, `page_title`) VALUES
(1, 'Al Hajis Perfumes', 'Al Hajis Perfumes', 'Al Hajis Perfumes', NULL, NULL, NULL, '2018-09-12 05:12:40', 'Perfumedunia'),
(2, 'About Us | Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:12:52', 'about '),
(3, ' Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-10-09 09:35:27', 'about '),
(7, 'Contact Us - Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:13:02', 'Contact Details'),
(8, 'Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:13:08', 'FAQ'),
(9, 'Terms & Conditions | Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:13:19', 'Terms And Condition'),
(10, 'Blogs | Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:13:27', 'Blogs'),
(11, 'Privacy Policy | Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:13:34', 'Privacy Policy'),
(12, 'Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:13:39', 'Delivery Information'),
(13, 'Login-Signups | PAl Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:14:40', 'login/signup'),
(14, 'Cart | Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:14:43', 'cart'),
(15, 'Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:14:45', 'Return Policy'),
(16, 'Al Hajis Perfumes', 'Al Hajis Perfumes', 'Al Hajis Perfumes', NULL, NULL, NULL, '2018-09-12 05:15:29', 'Men'),
(17, 'Al Hajis Perfumes', 'Al Hajis Perfumes', 'Al Hajis Perfumes', NULL, NULL, NULL, '2018-09-12 05:15:24', 'Women'),
(18, 'Al Hajis Perfumes', 'Al Hajis Perfumes', 'Al Hajis Perfumes', NULL, NULL, NULL, '2018-09-12 05:15:49', 'Oriental'),
(19, 'Al Hajis Perfumes', 'Al Hajis Perfumes', 'Al Hajis Perfumes', NULL, NULL, NULL, '2018-09-12 05:15:44', 'Brand'),
(20, 'Al Hajis Perfumes', 'Al Hajis Perfumes', 'Al Hajis Perfumes', NULL, NULL, NULL, '2018-09-12 05:15:42', 'Scent Diffuser'),
(21, 'Al Hajis Perfumes', 'Al Hajis Perfumes', 'Al Hajis Perfumes', NULL, NULL, NULL, '2018-09-12 05:15:38', 'Gifts'),
(22, 'Al Hajis Perfumes', 'Al Hajis Perfumes', '', NULL, NULL, NULL, '2018-09-12 05:15:34', 'Special offer');

-- --------------------------------------------------------

--
-- Table structure for table `cms_others`
--

CREATE TABLE IF NOT EXISTS `cms_others` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `common_contents`
--

CREATE TABLE IF NOT EXISTS `common_contents` (
  `id` int(11) NOT NULL,
  `top_left_title` varchar(100) DEFAULT NULL,
  `delivery_information` varchar(255) DEFAULT NULL,
  `offer_image` varchar(15) DEFAULT NULL,
  `offer_link` varchar(255) DEFAULT NULL,
  `title1` varchar(100) DEFAULT NULL,
  `content1` varchar(100) DEFAULT NULL,
  `title2` varchar(100) DEFAULT NULL,
  `content2` varchar(100) DEFAULT NULL,
  `title3` varchar(100) DEFAULT NULL,
  `content3` varchar(100) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `common_contents`
--

INSERT INTO `common_contents` (`id`, `top_left_title`, `delivery_information`, `offer_image`, `offer_link`, `title1`, `content1`, `title2`, `content2`, `title3`, `content3`, `phone_no`, `email`, `status`, `CB`, `UB`, `DOC`, `DOU`, `facebook_link`, `twitter_link`, `linkedin_link`, `instagram_link`) VALUES
(1, 'Best Quality Products Almukhalatperfume', 'FREE UAE DELIVERY + RETURN OVER £85.00 (EXCLUDING HOMEWARE)| FREE UAE COLLECT FROM STORE', 'png', 'http://localhost/almukhalatperfume/', 'Free shipping', 'Free shipping for local customers', 'Money Back Guarantee', 'Refund or change item within 24 hours', '24/7 support', 'Answer all your questions with an hour', '+971 565092957', 'almukhalatperfume@gmail.com', 1, 1, 2, '2019-02-28', '2019-02-28 06:53:40', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_page`
--

CREATE TABLE IF NOT EXISTS `contact_page` (
  `id` int(11) NOT NULL,
  `map` varchar(500) DEFAULT NULL,
  `content` text,
  `accounts_info` text,
  `administration_info` text,
  `marketing_info` text,
  `business_info` text,
  `marketing_address` text,
  `address_1` text,
  `address_2` text,
  `address_3` text,
  `address_4` text,
  `phone_no` varchar(250) DEFAULT NULL,
  `phone_no_1` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `shoroom_content` varchar(500) DEFAULT NULL,
  `date_1` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_page`
--

INSERT INTO `contact_page` (`id`, `map`, `content`, `accounts_info`, `administration_info`, `marketing_info`, `business_info`, `marketing_address`, `address_1`, `address_2`, `address_3`, `address_4`, `phone_no`, `phone_no_1`, `email`, `shoroom_content`, `date_1`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country_code` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `country` varchar(250) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `first_name`, `last_name`, `email`, `country_code`, `mobile_no`, `country`, `reason`, `date`) VALUES
(5, 'ccac', '', 'ascas', NULL, 'asds', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_code`
--

CREATE TABLE IF NOT EXISTS `country_code` (
  `id` int(11) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `country_code` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_code`
--

INSERT INTO `country_code` (`id`, `country_name`, `country_code`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'UAE', '+971', 1, 1, 3, '2017-09-12', '2017-10-03 08:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency_name`, `currency_symbol`, `currency_value`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 'Arab Emirate Dirham', 'AED', NULL, 1, NULL, '2017-08-14 00:00:00', '2017-08-14 09:09:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_reviews`
--

CREATE TABLE IF NOT EXISTS `customer_reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tittle` varchar(100) DEFAULT NULL,
  `description` text,
  `review_date` date DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '''0''=>''Not Appoved'' , ''1'' => ''Appoved,'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emirates`
--

CREATE TABLE IF NOT EXISTS `emirates` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` datetime NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emirates`
--

INSERT INTO `emirates` (`id`, `name`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(2, 'Dubai', 3, 3, '2017-10-03 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Abu Dhabi', 3, 3, '2017-10-03 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'Ras al-Khaimah', 3, 3, '2017-10-03 00:00:00', '0000-00-00 00:00:00', 1),
(5, 'Sharjah', 3, 3, '2017-10-03 00:00:00', '0000-00-00 00:00:00', 1),
(6, 'Umm al-Quwain', 3, 3, '2017-10-03 00:00:00', '0000-00-00 00:00:00', 1),
(7, 'Ajman', 3, 3, '2017-10-03 00:00:00', '0000-00-00 00:00:00', 1),
(8, 'Fujairah', 3, 3, '2017-10-03 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `DOC` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer_content`
--

CREATE TABLE IF NOT EXISTS `footer_content` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `link` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password_tokens`
--

CREATE TABLE IF NOT EXISTS `forgot_password_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `forgot_password_tokens`
--

INSERT INTO `forgot_password_tokens` (`id`, `user_id`, `token`, `date`) VALUES
(2, 9, '2807194653', NULL),
(4, 1, '1739642805', NULL),
(5, 1, '2749351806', NULL),
(7, 9, '2679180435', NULL),
(8, 9, '3980457261', NULL),
(9, 2, '5379281640', NULL),
(10, 2, '0179453862', NULL),
(11, 2, '4719253608', NULL),
(12, 2, '3901762845', NULL),
(13, 2, '5309261784', NULL),
(16, 2, '7841269350', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fregrance`
--

CREATE TABLE IF NOT EXISTS `fregrance` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` date NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fregrance`
--

INSERT INTO `fregrance` (`id`, `name`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 'Eau De Parfum', 1, 3, '2017-09-08', '2017-09-19 11:59:38', 1),
(2, 'Eau De Toilette', 3, 3, '2017-09-13', '0000-00-00 00:00:00', 1),
(3, 'Body Mist', 3, 3, '2017-10-10', '0000-00-00 00:00:00', 1),
(4, 'Eau De Cologne', 2, 2, '2018-10-15', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `from_our_blog`
--

CREATE TABLE IF NOT EXISTS `from_our_blog` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` longtext,
  `meta_keyword` longtext,
  `blog_date` date DEFAULT NULL,
  `content` text,
  `image` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `canonical_name` varchar(100) DEFAULT NULL,
  `img` varchar(15) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`, `canonical_name`, `img`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'Men', 'men', 'png', 1, 1, 3, '2017-09-14', '2019-02-27 06:24:03'),
(2, 'Women', 'women', 'png', 1, 1, 3, '2017-09-14', '2019-02-27 06:24:09'),
(3, 'Unisex', 'unisex', 'png', 1, 1, 3, '2017-09-14', '2019-02-27 06:24:15'),
(4, 'Oriental', 'oriental', 'png', 1, 1, 3, '2017-09-14', '2019-02-27 06:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE IF NOT EXISTS `gifts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` date NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homemanagement_type`
--

CREATE TABLE IF NOT EXISTS `homemanagement_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `form_type` int(11) NOT NULL,
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` date NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homemanagement_type`
--

INSERT INTO `homemanagement_type` (`id`, `type`, `form_type`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 'Single banner', 1, 1, 1, '2018-03-01', '2018-03-01 10:12:04', 1),
(2, 'Double Banner', 1, 1, 1, '2018-03-01', '2018-03-01 10:12:21', 1),
(3, 'Tripple Banner', 1, 1, 1, '2018-03-01', '2018-03-01 10:12:18', 1),
(4, 'Latest product', 2, 1, 1, '2018-03-01', '2018-03-01 10:12:27', 1),
(5, 'New Arrivals', 2, 1, 1, '2018-03-01', '2018-03-01 10:12:30', 1),
(6, 'Todays Exclusive', 2, 1, 1, '2018-03-01', '2018-03-01 10:12:33', 1),
(7, 'Featured Products', 2, 1, 1, '2018-03-01', '2018-03-01 10:12:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_management`
--

CREATE TABLE IF NOT EXISTS `home_management` (
  `id` int(11) NOT NULL,
  `form_type` int(11) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `tittle` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_1` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_2` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_3` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_upload`
--

CREATE TABLE IF NOT EXISTS `image_upload` (
  `id` int(11) NOT NULL,
  `imagefile` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_upload`
--

INSERT INTO `image_upload` (`id`, `imagefile`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE IF NOT EXISTS `main_category` (
  `id` int(11) NOT NULL,
  `main_category` varchar(200) DEFAULT NULL,
  `canonical_name` varchar(255) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`id`, `main_category`, `canonical_name`, `CB`, `UB`, `DOC`, `DOU`, `status`, `sort_order`) VALUES
(1, 'Perfumes', 'perfumes', 1, 1, '2018-09-12 00:00:00', '2019-03-15 10:11:41', 1, 3),
(2, 'Watches', 'watches', 1, 1, '2018-09-12 00:00:00', '2019-03-15 10:11:47', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `map_locations`
--

CREATE TABLE IF NOT EXISTS `map_locations` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `latitude` varchar(500) DEFAULT NULL,
  `longitude` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_searchtag_category`
--

CREATE TABLE IF NOT EXISTS `master_searchtag_category` (
  `id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `search_tags` varchar(250) NOT NULL,
  `CB` int(11) NOT NULL,
  `UB` int(11) NOT NULL,
  `DOC` datetime NOT NULL,
  `DOU` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_search_tag`
--

CREATE TABLE IF NOT EXISTS `master_search_tag` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_search_tag`
--

INSERT INTO `master_search_tag` (`id`, `tag_name`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 'mens', 1, 1, '2017-11-29 00:00:00', '2017-11-29 06:46:28', 1),
(2, 'womens', 1, 1, '2017-11-29 00:00:00', '2017-11-29 06:46:33', 1),
(3, '24', 1, 1, '2018-02-07 00:00:00', '2018-02-07 07:05:09', 1),
(4, 'scentstory', 1, 1, '2018-02-07 00:00:00', '2018-02-07 07:05:37', 1),
(6, 'addidas', 1, 1, '2018-02-07 00:00:00', '2018-02-07 14:00:56', 1),
(7, 'dkny', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:28:54', 1),
(8, 'delicious', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:29:06', 1),
(9, 'Nikos', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:48:22', 1),
(10, 'Calvin Klein for Women', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:49:23', 1),
(11, 'Calvin Klein for Men', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:51:04', 1),
(12, 'ck', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:51:14', 1),
(13, 'Davidoff', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:58:48', 1),
(14, 'latest', 1, 1, '2018-03-13 00:00:00', '2018-03-13 08:59:08', 1),
(15, 'victoria''s secret secret Kiss fragrance mist', 1, 1, '2018-03-13 00:00:00', '2018-03-13 09:02:24', 1),
(16, 'victoria''s secret ', 1, 1, '2018-03-13 00:00:00', '2018-03-13 09:02:35', 1),
(17, ' Kiss fragrance mist', 1, 1, '2018-03-13 00:00:00', '2018-03-13 09:02:43', 1),
(18, 'fragrance mist', 1, 1, '2018-03-13 00:00:00', '2018-03-13 09:02:51', 1),
(19, 'givenchy', 1, 1, '2018-04-14 00:00:00', '2018-04-14 12:14:08', 1),
(20, 'blue label ', 1, 1, '2018-04-14 00:00:00', '2018-04-14 12:14:20', 1),
(21, 'ADIDAS FLORAL DREAM', 1, 1, '2018-04-14 00:00:00', '2018-04-14 12:43:40', 1),
(22, 'lanvin', 1, 1, '2018-04-18 00:00:00', '2018-04-18 13:52:26', 1),
(23, 'Bvlgari', 1, 1, '2018-04-18 00:00:00', '2018-04-18 14:36:45', 1),
(24, 'Omnia Crystalline', 1, 1, '2018-04-18 00:00:00', '2018-04-18 14:36:55', 1),
(25, 'ladies', 1, 1, '2018-04-18 00:00:00', '2018-04-18 14:37:12', 1),
(26, 'Omnia Amethyste', 1, 1, '2018-04-18 00:00:00', '2018-04-18 14:52:43', 1),
(27, 'Omnia Amethyste for Women', 1, 1, '2018-04-18 00:00:00', '2018-04-18 14:53:01', 1),
(28, ' BRIGHT CRYSTAL', 1, 1, '2018-04-18 00:00:00', '2018-04-18 17:00:13', 1),
(29, ' VERSACE FOR WOMEN', 1, 1, '2018-04-18 00:00:00', '2018-04-18 17:00:23', 1),
(30, 'Versace for Men', 1, 1, '2018-04-18 00:00:00', '2018-04-18 17:03:17', 1),
(31, 'Dahlia Noir', 1, 1, '2018-04-19 00:00:00', '2018-04-19 08:45:47', 1),
(32, 'GIVENCHY EAUDEMOISELLE', 1, 1, '2018-04-19 00:00:00', '2018-04-19 08:57:47', 1),
(33, 'EAUDEMOISELLE', 1, 1, '2018-04-19 00:00:00', '2018-04-19 08:57:51', 1),
(34, 'Gentleman by Givenchy for Men', 1, 1, '2018-04-19 00:00:00', '2018-04-19 14:51:07', 1),
(35, 'Givenchy for Men', 1, 1, '2018-04-19 00:00:00', '2018-04-19 14:51:14', 1),
(36, 'Gentleman', 1, 1, '2018-04-19 00:00:00', '2018-04-19 14:51:23', 1),
(37, 'GIVENCHY FOR WOMEN', 1, 1, '2018-04-24 00:00:00', '2018-04-24 08:23:01', 1),
(38, 'GIVENCHY VERY IRRESISTIBLE', 1, 1, '2018-04-24 00:00:00', '2018-04-24 08:23:20', 1),
(39, 'ELECTRIC ROSE FOR WOMEN ', 1, 1, '2018-04-24 00:00:00', '2018-04-24 08:23:32', 1),
(40, 'GUCCI BAMBOO', 1, 1, '2018-04-24 00:00:00', '2018-04-24 14:01:54', 1),
(41, 'GUCCI ', 1, 1, '2018-04-24 00:00:00', '2018-04-24 14:02:01', 1),
(42, 'BAMBOO', 1, 1, '2018-04-24 00:00:00', '2018-04-24 14:02:06', 1),
(43, 'GUCCI ENVY ME', 1, 1, '2018-04-24 00:00:00', '2018-04-24 14:58:41', 1),
(44, 'GUCCI FLORA ', 1, 1, '2018-04-24 00:00:00', '2018-04-24 15:32:51', 1),
(45, 'GUCCI GENEROUS', 1, 1, '2018-04-24 00:00:00', '2018-04-24 15:32:57', 1),
(46, 'GUCCI FLORA BY GUCCI GENEROUS', 1, 1, '2018-04-24 00:00:00', '2018-04-24 15:33:02', 1),
(47, 'GUCCI GORGEOUS GARDENIA', 1, 1, '2018-04-24 00:00:00', '2018-04-24 15:40:17', 1),
(48, 'GUCCI FLORA BY GUCCI  ', 1, 1, '2018-04-24 00:00:00', '2018-04-24 15:50:06', 1),
(49, 'GUCCI GUILTY BLACK', 1, 1, '2018-04-24 00:00:00', '2018-04-24 16:05:45', 1),
(50, 'GUCCI GUILTY BLACK M EDT 50ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 16:19:47', 1),
(51, 'GUCCI GUILTY BLACK FOR MEN', 1, 1, '2018-04-24 00:00:00', '2018-04-24 16:19:58', 1),
(52, 'GUCCI FOR MEN', 1, 1, '2018-04-24 00:00:00', '2018-04-24 16:20:09', 1),
(53, 'GUCCI GUILTY INTENSE L EDP 75ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 16:46:01', 1),
(54, 'GUCCI GUILTY INTENSE FOR MEN', 1, 1, '2018-04-24 00:00:00', '2018-04-24 16:57:44', 1),
(55, 'GUCCI GUILTY FOR WOMEN EDT 75ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 17:09:39', 1),
(56, 'GUCCI GUILTY M EDT 50ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 18:45:03', 1),
(57, 'GUCCI PREMIERE FOR WOMEN EDP 75ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:18:06', 1),
(58, 'GUCCI RUSH FOR WOMEN EDT 75ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:25:17', 1),
(59, 'GUERLAIN HABIT ROUGE FOR MEN EDP 100ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:28:26', 1),
(60, 'GUERLAIN HABIT ROUGE ', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:28:32', 1),
(61, 'GUERLAIN ', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:28:37', 1),
(62, 'GUERLAIN L HOMME IDEAL EDT 100ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:41:01', 1),
(63, 'GUERLAIN L INSTANT DE M EDT 125ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:42:19', 1),
(64, 'GUERLAIN L INSTANT ', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:42:24', 1),
(65, 'GUERLAIN L INSTANT MAGIC L EDP 50ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 19:52:26', 1),
(66, 'GUERLAIN LA PETITE ROBE NOIR COUTURE L EDP 100ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 20:01:17', 1),
(67, 'GUERLAIN LINSTANT DE FOR WOMEN EDP 80ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 20:10:46', 1),
(68, 'GUERLAIN SAMSARA L EDT 100ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 20:18:05', 1),
(69, 'GUERLAIN VETIVER FOR MEN EDT 100ML', 1, 1, '2018-04-24 00:00:00', '2018-04-24 20:40:55', 1),
(70, 'vs', 1, 1, '2018-04-25 00:00:00', '2018-04-25 12:47:45', 1),
(71, 'body mist', 1, 1, '2018-04-25 00:00:00', '2018-04-25 12:47:51', 1),
(72, 'coolwater', 1, 1, '2018-04-25 00:00:00', '2018-04-25 13:00:35', 1),
(73, 'Lacoste', 1, 1, '2018-04-25 00:00:00', '2018-04-25 13:03:17', 1),
(74, 'Lacoste Red ', 1, 1, '2018-04-25 00:00:00', '2018-04-25 13:03:28', 1),
(75, 'Play for men', 1, 1, '2018-04-25 00:00:00', '2018-04-25 13:03:36', 1),
(76, 'colwater for men', 1, 1, '2018-04-25 00:00:00', '2018-04-25 13:05:37', 1),
(77, 'colwater for women', 1, 1, '2018-04-25 00:00:00', '2018-04-25 13:05:46', 1),
(78, 'ENDLESS NIGHT ', 1, 1, '2018-04-26 00:00:00', '2018-04-26 08:19:16', 1),
(79, 'aigner', 1, 1, '2018-04-26 00:00:00', '2018-04-26 10:17:01', 1),
(80, 'love spell', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:05:39', 1),
(81, 'blush', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:06:04', 1),
(82, 'victoria', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:07:57', 1),
(83, 'Conflict Flower mist', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:08:04', 1),
(84, 'Pure Seduction', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:11:22', 1),
(85, 'party kiss', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:13:12', 1),
(86, 'temptation', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:14:47', 1),
(87, 'aqua kiss', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:17:17', 1),
(88, 'kiss', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:17:25', 1),
(89, 'Salvatore Ferragamo Incanto Shine', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:19:16', 1),
(90, ' Incanto Shine', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:19:21', 1),
(91, 'Salvatore Ferragamo', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:19:25', 1),
(92, 'Golden Bloom', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:23:52', 1),
(93, 'Dolce & Gabbana', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:27:20', 1),
(94, 'Dolce & Gabbana for Women', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:27:29', 1),
(95, 'Light Blue', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:27:33', 1),
(96, 'Silver Shadow Altitude', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:33:47', 1),
(97, 'Hot Water by Davidoff for Men', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:34:48', 1),
(98, 'wild vanila', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:37:56', 1),
(99, 'midnight', 1, 1, '2018-04-26 00:00:00', '2018-04-26 11:44:15', 1),
(100, 'CK IN2U ', 1, 1, '2018-04-26 00:00:00', '2018-04-26 13:32:11', 1),
(101, 'chanel', 1, 1, '2018-05-02 00:00:00', '2018-05-02 14:23:00', 1),
(102, 'chanel for men', 1, 1, '2018-05-02 00:00:00', '2018-05-02 14:23:08', 1),
(103, 'mens perfume', 1, 1, '2018-05-02 00:00:00', '2018-05-02 14:24:40', 1),
(104, 'men', 1, 1, '2018-05-03 00:00:00', '2018-05-03 07:24:47', 1),
(105, 'mont blanc', 1, 1, '2018-05-03 00:00:00', '2018-05-03 15:49:15', 1),
(106, 'Gift Set', 1, 1, '2018-05-03 00:00:00', '2018-05-03 15:49:41', 1),
(127, 'Armani', 1, 1, '2018-08-28 00:00:00', '2018-08-28 11:30:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_management`
--

CREATE TABLE IF NOT EXISTS `menu_management` (
  `id` int(11) NOT NULL,
  `type` smallint(6) DEFAULT NULL COMMENT '1->Main,2->Sub,3->child',
  `main_menu_id` int(11) DEFAULT NULL,
  `main_menu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_menu_arabic` int(11) DEFAULT NULL,
  `sub_menu_id` int(11) DEFAULT NULL,
  `sub_menu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_menu_arabic` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_menu_link` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_menu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_menu_arabic` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_menu_link` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_management`
--

INSERT INTO `menu_management` (`id`, `type`, `main_menu_id`, `main_menu`, `main_menu_arabic`, `sub_menu_id`, `sub_menu`, `sub_menu_arabic`, `sub_menu_link`, `child_menu`, `child_menu_arabic`, `child_menu_link`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, NULL, NULL, 'Men', NULL, NULL, NULL, NULL, 'https://www.perfumedunia.com/mens-perfumes', NULL, NULL, NULL, 1, 1, 1, '2018-03-15', '2018-09-06 06:39:42'),
(2, NULL, NULL, 'Women', NULL, NULL, NULL, NULL, 'https://perfumedunia.com/product/index?type=1', NULL, NULL, NULL, 1, 1, 1, '2018-03-15', '2018-08-29 11:19:23'),
(3, NULL, NULL, 'Oriental', NULL, NULL, NULL, NULL, 'https://perfumedunia.com/product/index?type=3', NULL, NULL, NULL, 1, 1, 1, '2018-03-15', '2018-08-29 11:19:31'),
(4, NULL, NULL, 'Body Mist', NULL, NULL, NULL, NULL, 'https://perfumedunia.com/product/index?category=body-mists', NULL, NULL, NULL, 1, 1, 1, '2018-03-16', '2018-08-29 11:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1502097917),
('m130524_201442_init', 1502097921),
('m170807_093108_test', 1502098558),
('m170807_093633_test1', 1502098664),
('m170808_075909_category', 1502179278),
('m170811_045410_product_table', 1503552671);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL,
  `notification_type` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `content` longtext,
  `message` longtext,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

CREATE TABLE IF NOT EXISTS `order_address` (
  `id` int(11) NOT NULL,
  `order_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `landmark` varchar(250) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `emirate` int(11) NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `country_code` varchar(15) DEFAULT NULL,
  `mobile_number` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `order_id`, `name`, `address`, `landmark`, `location`, `emirate`, `post_code`, `country_code`, `mobile_number`) VALUES
(1, '1179', 'Rency Daniel', 'Alzubadi building', 'AL Nadha park', 'Sharjah ', 5, NULL, '+971', 543679876),
(2, '1180', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(3, '1187', 'Manu', 'Manu', 'Chittethukara', 'Kochi', 2, NULL, '+971', 5346578),
(4, '1187', 'Manu', 'Manu', 'Chittethukara', 'Kochi', 2, NULL, '+971', 5346578),
(5, '1195', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(6, '1197', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(7, '1198', 'Manu', 'Azryah Networks', 'Chittethukara', 'kakkanad', 4, NULL, '+971', 5346578),
(8, '1199', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(9, '1202', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(10, '1203', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(11, '1204', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(12, '1205', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(13, '1206', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(14, '1208', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(15, '1209', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(16, '1210', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(17, '1213', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(18, '1215', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(19, '1216', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(20, '1217', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(21, '1218', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(22, '1219', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602),
(23, '1221', 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `order_id` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `rate` decimal(10,2) NOT NULL,
  `item_type` int(11) NOT NULL DEFAULT '0',
  `doc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `master_id`, `order_id`, `product_id`, `quantity`, `amount`, `tax`, `delivered_date`, `rate`, `item_type`, `doc`, `status`) VALUES
(2, 2, '1221', 11, 2, '173.00', '16.48', NULL, '346.00', 0, '2019-03-29 04:35:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE IF NOT EXISTS `order_master` (
  `id` int(11) NOT NULL,
  `order_id` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,3) DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT NULL,
  `net_amount` decimal(10,2) DEFAULT NULL COMMENT 'Including Delivery charge, gift wrap and tax',
  `order_date` datetime NOT NULL,
  `invoice_no` varchar(250) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `user_comment` text,
  `payment_mode` int(11) DEFAULT NULL,
  `admin_comment` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT '0' COMMENT '0=>pending,1=>success,2=>failed,3=>cod',
  `payment_sucess_data` text,
  `payment_ref_number` varchar(100) DEFAULT NULL,
  `admin_status` int(11) DEFAULT '0' COMMENT '0- pending 1- placed 2-packed 3-dispatched 4- delivered 5-cancelled 6- returned',
  `expected_delivery_date` datetime DEFAULT NULL,
  `delivered_date` timestamp NULL DEFAULT NULL,
  `doc` datetime DEFAULT NULL,
  `dou` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `shipping_status` int(11) DEFAULT '0' COMMENT '1-orderplaced 2-dispached 3 delivered',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0->not placed, 1-> checkoutstarted, 2->billingcomplete,3->deliverydetailcoplete, 4->confirmed complete, 5->Cancelled',
  `cancel_reason` text,
  `promotion_id` int(11) DEFAULT NULL,
  `promotion_discount` decimal(10,2) DEFAULT NULL,
  `return_status` int(11) NOT NULL DEFAULT '0' COMMENT '1- returned by user 2- returned by admin',
  `return_reason` text,
  `return_approve` int(11) DEFAULT '0' COMMENT '1=>approved 2=>disapproved ',
  `gift_wrap` int(11) NOT NULL,
  `gift_wrap_value` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `order_id`, `user_id`, `total_amount`, `tax`, `discount_amount`, `tax_amount`, `shipping_charge`, `net_amount`, `order_date`, `invoice_no`, `ship_address_id`, `bill_address_id`, `currency_id`, `user_comment`, `payment_mode`, `admin_comment`, `payment_status`, `payment_sucess_data`, `payment_ref_number`, `admin_status`, `expected_delivery_date`, `delivered_date`, `doc`, `dou`, `shipping_status`, `status`, `cancel_reason`, `promotion_id`, `promotion_discount`, `return_status`, `return_reason`, `return_approve`, `gift_wrap`, `gift_wrap_value`) VALUES
(1, '1220', 3, '0.00', '0.00', NULL, NULL, '15.00', '15.00', '2019-03-29 04:35:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, '2019-03-29 00:00:00', '2019-03-29 04:35:34', 0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, '0'),
(2, '1221', 1, '346.00', '16.48', NULL, NULL, '0.00', '362.48', '2019-03-29 04:35:08', NULL, NULL, 2, NULL, '', 1, NULL, 3, NULL, NULL, 0, NULL, NULL, '2019-03-29 00:00:00', '2019-03-29 04:35:12', 0, 4, NULL, NULL, NULL, 0, NULL, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `order_promotions`
--

CREATE TABLE IF NOT EXISTS `order_promotions` (
  `id` int(11) NOT NULL,
  `order_master_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promotion_discount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_promotions`
--

INSERT INTO `order_promotions` (`id`, `order_master_id`, `promotion_id`, `promotion_discount`) VALUES
(1, 17, 1, '91.50');

-- --------------------------------------------------------

--
-- Table structure for table `our_categories`
--

CREATE TABLE IF NOT EXISTS `our_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(15) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sub_title` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `our_categories`
--

INSERT INTO `our_categories` (`id`, `category`, `image`, `link`, `title`, `sub_title`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'Perfumes', 'jpg', 'http://localhost/almukhalatperfume/', NULL, NULL, 1, NULL, 2, NULL, '2019-03-04 06:50:34'),
(2, 'Watches', 'jpg', 'http://localhost/almukhalatperfume/', NULL, NULL, 1, NULL, 2, NULL, '2019-02-28 06:25:19'),
(3, 'Sale 50% Off', NULL, 'http://localhost/almukhalatperfume/', NULL, NULL, 1, NULL, NULL, NULL, '2019-02-28 06:13:29'),
(4, 'Unisex', 'jpg', 'http://localhost/almukhalatperfume/', NULL, NULL, 1, NULL, 2, NULL, '2019-02-28 06:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `principals`
--

CREATE TABLE IF NOT EXISTS `principals` (
  `id` int(11) NOT NULL,
  `terms_conditions` longtext,
  `privacy_policy` longtext,
  `return_policy` longtext,
  `faq` longtext,
  `payment_policy` text NOT NULL,
  `delivery_information` longtext,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `principals`
--

INSERT INTO `principals` (`id`, `terms_conditions`, `privacy_policy`, `return_policy`, `faq`, `payment_policy`, `delivery_information`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, '<p>You agree to use this website solely for the purposes that are permitted by any applicable law, governmental regulations and this Terms &amp; Condition.</p>\r\n\r\n<p>You agree that you will not attempt to access the perfumedunai.com other than through the interface that is provided by us.</p>\r\n\r\n<p>You agree not to attempt to access the website, or any related webpage by means of automated means, such as scripts or web crawlers.&nbsp;</p>\r\n\r\n<p>You agree that you will not undertake any activity that could disrupts or interferes with the functioning of the website and our business.</p>\r\n\r\n<p>You agree that you will not reproduce, copy, duplicate, trade or resell the information featured on the website or any portion of it for any purpose.</p>\r\n\r\n<p><strong>Intellectual property</strong></p>\r\n\r\n<p>All the content featured on the website such as graphics, text, data, images, logos, music, video, promotional messages, and software is owned property of perfumedunia.com. The content is licensed and is protected by trademark, copyright, patent, and other trade and proprietary rights. The repository, arrangement, and form of all content on the website are the exclusive property of Perfume Dunia and duplication of it will warrant legal actions.</p>\r\n\r\n<p><strong>Legal capacity to avail the services and make agreements</strong></p>\r\n\r\n<p>The customer should be of or above the age of 18 to sign in to our website and avail the services. By agreeing on the terms of legal capacity, an individual confirms his age and we cannot be held accountable for the loss or damage induced by a minor account user. Also, we reserve the right to solicit compensation for such losses or damages caused by the children from their parents or guardian.</p>\r\n\r\n<p><strong><big>PRICES</big></strong></p>\r\n\r\n<p><strong>Base Currency</strong></p>\r\n\r\n<p>All the payments and services charges should be paid in UAE Dirhams (AED)</p>\r\n\r\n<p><strong>Changing of Prices</strong></p>\r\n\r\n<p>We reserve that right to alter the price of the products featured in the website owing to change in demand, price raise by the manufacturers or other market scenario.</p>\r\n\r\n<p><strong>Typographical Errors</strong></p>\r\n\r\n<p>Perfume Dunia website is a massive reserve of data and we strive to keep every bit of it accurate. Due to human error and other determinants, there is a possibility of wrong information being posted on the website and we cannot guarantee that information listed is entirely accurate, current or complete. We encourage customers to cross-check data such as products descriptions, pricing, compatibility references, photographs, hyperlinks, detailed specifications, and other product or brand related information.</p>\r\n\r\n<p><strong><big>ORDERS</big></strong></p>\r\n\r\n<p><strong>Placement of Order</strong></p>\r\n\r\n<p>The placement can be done through the website or the mobile app. To prerequisite for placing an order are an active account, current address and phone number. We encourage customers to proof read the details of the order before confirming it. We are not responsible for the glitches in successful completion and delivery of order owing to wrong information cited by the consumer.</p>\r\n\r\n<p><strong>Processing Time</strong></p>\r\n\r\n<p>Once the order is confirmed, it is processed in approximately 24-48 hours. Delayed payment verification, public holidays, and unavailability of stock might extend the processing time. The status of the processing will be regularly updated on your account.</p>\r\n\r\n<p><strong>Order Acceptance Policy</strong></p>\r\n\r\n<p>The confirmation text message or email does not guarantee our acceptance of your order, we reserve the right to accept or decline your order if we have enough reason.</p>\r\n\r\n<p><strong>Change/ Cancel Orders</strong></p>\r\n\r\n<p>You can alter the specifications of the order before it is charged to your account. You can call our 24/7 customer care to change order details such as address or phone number.</p>\r\n\r\n<p>You can cancel the order altogether before the order is processed and receive a complete refund. You can call the customer care to request a cancellation of order. We encourage you to place a call than any other form of communication as telephonic request allows us to take swift action.</p>\r\n\r\n<p><strong><big>PAYMENT</big></strong></p>\r\n\r\n<p>Perfumedunia.com offers both electronic payment and cash on Delivery (COD). The COD facility is limited to U.A.E; customers residing in other countries can still shop at our website by the means of e-payment. We assure our website visitors a transparent and stress-free e-payment procedure; the website and the payment gateways are heavily protected from outside infiltrators and hackers.</p>\r\n\r\n<p>Perfumedunia.com reserves the right to refuse the processing or delivery of an order on the grounds or partial or no-payment from the customer.</p>\r\n\r\n<p><big><strong>DISPUTES</strong></big></p>\r\n\r\n<p>If any dispute, difference, or controversy arises in connection with this user agreement, such as dissension regarding the scope, formation, performance, existence, termination of agreement, and validity or of this User Agreement, a first attempt will be made to amicably to settle the Dispute through cooperation and negotiations over a period of thirty (30) calendar days.</p>\r\n\r\n<p>In case the dispute goes inextricable after 30 days, the parties hereby agree that the Dispute shall be moved to Dubai Court under the Arbitration Rules.</p>\r\n\r\n<p><big><strong>LIMITATIONS OF LIABILITY</strong></big></p>\r\n\r\n<p>If you are dissatisfied with any content or material featured on the website, the only remedy for the discontentment is to quit using it. All the data presented on the website is published after rigorous deliberation and inspection and we stand by it, if you find it difficult to concur with it, we encourage you to discontinue your use of it.&nbsp;</p>\r\n\r\n<p>In all circumstances, Perfume Dunia&rsquo;s liability is limited to the price of the product sold on the website. We refuse to be held accountable, under any circumstances, for a claim or action in contract, contribution or indemnity, tort, or the claims regarding the products we trade which exceeds the liability limit. We shall not be liable for the malfunction of the produce, claims by the third party, interruption of services, delays, damage, loss, whether or not we have been notified about such claims or damages.</p>\r\n\r\n<p><strong><big>GOVERNING LAW</big></strong></p>\r\n\r\n<p>This User Agreement is construed in accordance with the UAE law and the disputes regarding the agreement will be settled by the Dubai Court.</p>\r\n\r\n<p><strong><big>DELIVERY</big></strong></p>\r\n\r\n<p>The customer can order an already launched product from the website which is eligible for immediate delivery or pre-book a product which is not launched at the time of placing the order and schedule the delivery.</p>\r\n\r\n<p>The pre-ordered products can only be delivered after the launch date or the scheduled date once the payment is initiated and processed. Delivery charges may be levied on the pre-orders unless otherwise stated. The standard time required for processing the order is from the time of payment to the time of product launch; it could be delivered the same day or within next 2 days. Delivery date for the pre-ordered items may change if there is a change in the launch date of the product and the order and the delivery date could be altered without any prior notice or confirmation.</p>\r\n\r\n<p><strong><big>RETURN/ REFUND POLICY</big></strong></p>\r\n\r\n<p>The customer can solicit a refund if he/she receives a product in an unsatisfactory or damaged condition. You can lodge a refund request on the website and quote the reason for requesting a refund. If the reason is found genuine, the refund is initiated within 7 days of purchase in case of damaged or defected products.</p>\r\n\r\n<p>Return is not permitted in case:</p>\r\n\r\n<ol>\r\n	<li>If the product is not returned in its original packaging.</li>\r\n	<li>If the product is in used status.</li>\r\n	<li>If there is a disparity between the quantity of perfume delivered and returned</li>\r\n	<li>If the products are marked as non-returnable or non- refundable.</li>\r\n</ol>\r\n\r\n<p><strong><big>CANCELLATION POLICY</big></strong></p>\r\n\r\n<p>The request to cancel an order is accepted only before product delivery is initiated. Cancellation is not permitted once the delivery is initiated. The customer can lodge a cancellation request via email or telephone, we courage you to cancel via telephone as we can immediately action before the product gets out for delivery; e-mail messages will take time to be noticed and cannot be assured a cancellation.</p>\r\n', '<p>We hold the highest regard for your privacy at perfumedunia.com. To be able to proffer our services as an E-commerce site, we need to garner your personal data and sensitive data. We ascertain the privacy of our customer and merchant clients by the means of rigorous security provisions that we have in place.</p>\r\n\r\n<p>To set up an account on Perfumedunia.com and to start availing our services, you have to furnish details such as name, mobile number, e-mail, shipping address, financial details such as online banking details, credit card number and expiration date. &nbsp;The information collected will be solely used to facilitate purchase and will not be divulged to a third party.</p>\r\n\r\n<p>The personally identifiable information collected from the customers for billing purposes, to fill the orders and to deliver it to the right location will only be used during transactions with the exception of promotional activities. We may use the personally identifiable information to disseminate information that could benefit and interest our customers. We may use your e-mail and mobile number to send you newsletters, promotions, service-related announcements, deals and updates to inform you about the sales and offers you could avail. You can choose to &lsquo;opt out&rsquo; of this service and terminate the promotional communications via e-mail and text messages.</p>\r\n\r\n<p><strong>Information Storage and Maintenance</strong></p>\r\n\r\n<p>The information collected from the customers during account creation along with data generated by the means of cookies and log files are secured in our database. We employ this data to initiative transactions and to provide tailored packages, promotions, marketing offers, discounts, and sales.</p>\r\n\r\n<p>We may share aggregated information about our customer base with our trusted marketing partners and advertisers. This information does not divulge individual details, rather general trends and attributes of the demography. The aggregate data is completely cordoned off from personally identifiable information</p>\r\n\r\n<p><strong>Legal Disclaimer</strong></p>\r\n\r\n<p>We reserve the right to divulge your personal information when demanded by the government or the law enforcement agencies. We disclose the information only when reasonability of the request is ascertained to comply with a government or judicial proceeding.</p>\r\n\r\n<p><strong>Technical Methodologies</strong></p>\r\n\r\n<p>We employ cookies, log files, and clear gifs to collect and store the information garnered from our customers.</p>\r\n\r\n<p>The website hosts cookie files and they will be stored on the users&rsquo; computer once he/she signs up for our services. The cookie is harmless and is employed solely for the purpose of record-keeping. The intention behind planting the cookies is to discern our customers and to render a better, more personalized service. The customer can easily remove the cookies from their systems if they wish to terminate this service.</p>\r\n\r\n<p>Our advertising partners employ clear gifs a.k.a Web Bugs to facilitate e-mail marketing communications. The clear gifs functions almost similar to a cookie, they will be embedded in user&rsquo;s email to function as a gateway between user and the third party advertiser.</p>\r\n\r\n<p>The information collected will be securely stored using the log files in our database. The information includes browser type, IP addresses, internet service provider (ISP), referring/exit pages, date/time stamp, operating system and clickstream data. We use this information to proffer a better E-commerce experience to our clients and to render the website more responsive.</p>\r\n\r\n<p>Our website features hyperlinks leading to other web pages and sites which may or may not be controlled by us. We are not responsible for the privacy practices of such hyperlinked sites. We encourage you to leave to discern the privacy policy policies of such website before divulging any information.</p>\r\n\r\n<p>We reserve the right to alter the privacy statement at any time. We encourage you to read the privacy statement once in a while to check for updates and to be certain.</p>\r\n', '<p><strong>RETURNS, EXCHANGES &amp; REFUNDS POLICY</strong></p>\n\n<p>We strive to deliver exemplary products and impeccable services, exceeding our clients&rsquo; expectations. Albeit, if our customers are unsatisfied with the products or services we proffer, we extend our upright services to make up for the breach of quality or quantity. We offer the following options to facilitate a refund, exchanges and refunds.</p>\n\n<p><strong>Return to Customer Services</strong></p>\n\n<p>The customers are eligible to return the product when they are delivered a damaged product, a wrong product, a wrong size. In such scenarios the customer can request for a return on our website. The process is plain sailing where you can click on the return tab, quote the reason for return and confirm the request. Once you lodge the return request our team will immediately scrutinize the issue and if the request is found genuine, employees will collect the product from your doorstep. The electronic or paper bill of the purchase has to be furnished during the time of return.&nbsp;</p>\n\n<p>A customer can request for a return within 15 days of purchase. The product must be returned in unused status and it should be returned in the package that it was delivered. If the product is returned in damaged or used condition, we reserve the right to refuse a return, refund or exchange on the product.</p>\n\n<p><strong>Refunds and exchanges</strong></p>\n\n<p>If the reason for return was wrong product or wrong sized-product and the request was for an exchange, we deliver the right product during the time of return. If the request is for a refund, we examine the issue, product and facilitate the refund once the request is found genuine.</p>\n\n<p>The refund will be issued to the bank account from which the payment was initiated. In case of cash on delivery, the money will be returned to the bank account of your choice. The refund value will be the price of the product during the time of purchase.</p>\n', '<p><strong>Returning a Product</strong></p>\r\n\r\n<p>Click on Return Item against the product you want to return. Return an item Read More...</p>\r\n\r\n<p><strong>Where is My Order?</strong></p>\r\n\r\n<p>Your order will be delivered by the expected date specified on your order. The expected delivery date is the date on or before which you can reasonably expect the item to arrive at your preferred shipping address. Read More...</p>\r\n\r\n<p><strong>Cancelling an Order</strong></p>\r\n\r\n<p>You can cancel your order or item only before it enters the shipping phase. The option to cancel an order or item will cease to appear when the shipment has entered the shipping phase. Cancel an item Read More...</p>\r\n\r\n<p><strong>I Got a Counterfeit Item</strong></p>\r\n\r\n<p>If you believe you have received a counterfeit product, subject to return in accordance with Souq.com&rsquo;s returns policy of the affected product to us within 15 days of its delivery and satisfaction of our assessment and validation process.</p>\r\n\r\n<p><strong>About Returns Policy</strong></p>\r\n\r\n<p>If the product you receive is damaged, defective, counterfeit or not as described on the website, subject to return of the affected product to us within 15 days of its delivery and satisfaction of our assessment and validation process</p>\r\n', '', '<p>Al Mukhalat Perfume will NOT deal or provide any services or products to any of OFAC (Office of Foreign Assets Control) sanctions countries in accordance with the law of United Arab Emirates&rdquo;.</p>\r\n\r\n<p><strong>Shipping:</strong></p>\r\n\r\n<p>The shipping charge would reflect on the shopping cart / payment page.</p>\r\n\r\n<p>We are committed to delivering your order accurately, in good condition, and always on time promised by our customer care executive or on website. Below are some more shipping related points:</p>\r\n\r\n<ul>\r\n	<li>Each order would be shipped only to a single destination address specified at the time of payment for that order. If you wish to ship products to different addresses, you shall need to place multiple orders.</li>\r\n	<li>We make our best efforts to ensure that we ship out each item in your order within 3 working days of the order date. However in some cases, it may take longer, up to 5 or more working days, to ship the order, as the product may have to be procured by us where there is a heavy demand.</li>\r\n	<li>We ship out orders on all week days (Saturday to Thursday), excluding public holidays.</li>\r\n	<li>To ensure that your order reaches you in the fastest time and in good condition, we will only make shipments through reputed courier agencies.</li>\r\n	<li>While we strive to ship all items in your order together, this may not always be possible due to product characteristics, or availability.</li>\r\n	<li>If you believe that the product is not in good condition, or if the packaging is tampered with or damaged, before accepting delivery of the goods, please refuse to take delivery of the package, and immediately write an e-mail to support@coralperfumes.com mentioning your order reference number. We shall make our best efforts to ensure that a replacement delivery is made to you at the earliest.</li>\r\n	<li>Please note all items will be shipped with an invoice. In case, inadvertently, the same is not received, you may write an e-mail to support@coralperfumes.com mentioning your order reference number.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Orders placed on non-working hours will be processed on the following working day.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>International delivery</strong></h3>\r\n\r\n<p>If you&rsquo;re receiving an International delivery it is very likely that you&rsquo;ll have to pay customs fees. Unfortunately it is extremely difficult to quantify exactly how much you&rsquo;ll have to pay in customs fees, as import duties vary from country to country, and on occasion from state to state as well.</p>\r\n\r\n<p>Some countries have exclusions for orders below a certain value, while others will charge you regardless of the value of your order.</p>\r\n\r\n<p>It is always advisable to determine what the charges may be before you place an order. A number of third party customs duty calculators are available, however it would be best to speak with the department or agency in charge of duty collections in your country to get the best information possible.</p>\r\n', 1, 1, 1, '2017-09-20', '2019-02-28 09:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `private_label_benefits`
--

CREATE TABLE IF NOT EXISTS `private_label_benefits` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `font_awesome` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `private_label_gallery`
--

CREATE TABLE IF NOT EXISTS `private_label_gallery` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `our_process_title` text,
  `other_title` text,
  `about_title` varchar(200) NOT NULL,
  `about_content` text NOT NULL,
  `index_title` varchar(100) DEFAULT NULL,
  `index_content` text,
  `CB` int(11) NOT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `private_label_how_it_works`
--

CREATE TABLE IF NOT EXISTS `private_label_how_it_works` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `private_label_logos`
--

CREATE TABLE IF NOT EXISTS `private_label_logos` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `private_label_our_process`
--

CREATE TABLE IF NOT EXISTS `private_label_our_process` (
  `id` int(11) NOT NULL,
  `step` int(11) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `main_category` int(11) NOT NULL DEFAULT '1',
  `category` int(11) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory` int(11) DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `canonical_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `search_tag` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `ean_type` int(11) DEFAULT NULL COMMENT '1 - EAN 2 - UPC',
  `ean_value` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gender_type` int(11) DEFAULT NULL COMMENT '0=>men 1=>women 2=>unisex 3=>oriental',
  `price` decimal(10,2) NOT NULL,
  `offer_price` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stock_unit` int(11) DEFAULT NULL,
  `stock_availability` int(11) DEFAULT '1',
  `tax` int(11) DEFAULT NULL,
  `free_shipping` int(11) DEFAULT NULL COMMENT '"1"=>"Yes", "0"=>"No"',
  `product_type` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `size_unit` int(11) DEFAULT NULL,
  `main_description` longtext COLLATE utf8_unicode_ci,
  `product_detail` longtext COLLATE utf8_unicode_ci,
  `condition` int(11) DEFAULT NULL COMMENT '"1"=>"New", "0"=>"refurbished"',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_alt` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_alt` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_product` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_product` int(11) DEFAULT NULL,
  `sort` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `main_category`, `category`, `type`, `subcategory`, `product_name`, `canonical_name`, `meta_title`, `meta_description`, `meta_keywords`, `search_tag`, `item_ean`, `brand`, `ean_type`, `ean_value`, `gender_type`, `price`, `offer_price`, `discount`, `currency`, `stock`, `stock_unit`, `stock_availability`, `tax`, `free_shipping`, `product_type`, `size`, `size_unit`, `main_description`, `product_detail`, `condition`, `CB`, `UB`, `DOC`, `DOU`, `status`, `profile`, `profile_alt`, `gallery_alt`, `other_image`, `related_product`, `featured_product`, `sort`) VALUES
(2, 1, NULL, '1,2', NULL, 'BOSS BOTTLED COLLECTORS  EDITION EDT 100ML', 'boss-bottled-collectors-edition-edt-100ml', '', 'Buy BOSS BOTTLED COLLECTORS  EDITION EDT 100ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD1', 49, 1, '737052806266', 1, '350.00', '189.00', 46, 1, 5, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>BOSS BOTTLED COLLECTORS &nbsp;EDITION EDT 100ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'BOSS BOTTLED COLLECTORS  EDITION EDT 100ML', 'BOSS BOTTLED COLLECTORS  EDITION EDT 100ML', '', NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, 'BOSS BOTTLED NIGHT 100ML', 'boss-bottled-night-100ml', '', 'Buy BOSS BOTTLED NIGHT 100ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, '1', 49, 1, '737052352060', 1, '320.00', '173.00', 46, 1, 0, 1, 1, 1, 1, 1, 173, 5, NULL, '<p>BOSS BOTTLED NIGHT 100ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BOSS BOTTLED NIGHT 100ML', 'BOSS BOTTLED NIGHT 100ML', '', NULL, NULL, NULL),
(4, 1, NULL, NULL, NULL, 'BOSS BOTTLED COLLECTORS  EDITION ', 'boss-bottled-collectors-edition', '', 'Buy BOSS BOTTLED COLLECTORS  EDITION  from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD2', 49, 1, '737052806266', 1, '350.00', '183.00', 48, 1, 0, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>BOSS BOTTLED COLLECTORS &nbsp;EDITION&nbsp;</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BOSS BOTTLED COLLECTORS  EDITION ', 'BOSS BOTTLED COLLECTORS  EDITION ', '', NULL, 1, NULL),
(5, 1, NULL, NULL, NULL, 'BOSS BOTTLED INTENSE EDP 100ML', 'boss-bottled-intense-edp-100ml', '', 'Buy BOSS BOTTLED INTENSE EDP 100ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD3', 49, 1, '8005610258461', 1, '395.00', '203.00', 49, 1, 5, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>BOSS BOTTLED INTENSE EDP 100ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BOSS BOTTLED INTENSE EDP 100ML', 'BOSS BOTTLED INTENSE EDP 100ML', '', NULL, NULL, NULL),
(6, 1, NULL, NULL, NULL, 'CACHAREL  NOA L 100ML', 'cacharel-noa-l-100ml', '', 'Buy CACHAREL  NOA L 100ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD4', 33, 1, '3360373016358', 2, '350.00', '179.00', 49, 1, 0, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>CACHAREL &nbsp;NOA L 100ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-29 04:32:33', 1, 'png', 'CACHAREL  NOA L 100ML', 'CACHAREL  NOA L 100ML', '', NULL, NULL, NULL),
(7, 1, NULL, NULL, NULL, 'BOSS IN MOTION 90ML', 'boss-in-motion-90ml', '', 'Buy BOSS IN MOTION 90ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD5', 49, 1, '737052852034', 1, '498.00', '198.00', 60, 1, 5, 1, 1, 1, 1, 1, 90, 5, NULL, '<p>BOSS IN MOTION 90ML</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BOSS IN MOTION 90ML', 'BOSS IN MOTION 90ML', '', NULL, NULL, NULL),
(8, 1, NULL, NULL, NULL, 'BOSS JOUR POUR  FEMME EDP 50ML', 'boss-jour-pour-femme-edp-50ml', '', 'Buy BOSS JOUR POUR  FEMME EDP 50ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD6', 49, 1, '737052684437', 2, '300.00', '179.00', 40, 1, 5, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>BOSS JOUR POUR &nbsp;FEMME EDP 50ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'BOSS JOUR POUR  FEMME EDP 50ML', 'BOSS JOUR POUR  FEMME EDP 50ML', '', NULL, NULL, NULL),
(11, 1, NULL, NULL, NULL, 'BOSS JOUR POUR  FEMME EDP 75ML', 'boss-jour-pour-femme-edp-75ml', '', 'Buy BOSS JOUR POUR  FEMME EDP 75ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD7', 49, 1, '737052684475', 2, '395.00', '173.00', 56, 1, 0, 1, 1, 1, 1, 1, 75, 5, NULL, '<p>BOSS JOUR POUR &nbsp;FEMME EDP 75ML</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, NULL, NULL, NULL, '2019-03-29 04:35:12', 1, 'jpg', 'BOSS JOUR POUR  FEMME EDP 75ML', 'BOSS JOUR POUR  FEMME EDP 75ML', '', NULL, NULL, NULL),
(12, 1, NULL, NULL, NULL, 'BOSS ORANGE MAN 100ML', 'boss-orange-man-100ml', '', 'Buy BOSS ORANGE MAN 100ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD8', 49, 1, '737052347974', 1, '330.00', '152.00', 54, 1, 5, 5, 1, 1, 1, NULL, 100, 5, NULL, '<p>BOSS ORANGE MAN 100ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'BOSS ORANGE MAN 100ML', 'BOSS ORANGE MAN 100ML', '', NULL, NULL, NULL),
(13, 1, NULL, NULL, NULL, 'BOSS ORANGE WOMAN EDP 75ML', 'boss-orange-woman-edp-75ml', '', 'Buy BOSS ORANGE WOMAN EDP 75ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD9', 49, 1, '737052650128', 2, '278.00', '177.00', 36, 1, 5, 5, 1, 1, 1, 1, 75, 5, NULL, '<p>BOSS ORANGE WOMAN EDP 75ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'BOSS ORANGE WOMAN EDP 75ML', 'BOSS ORANGE WOMAN EDP 75ML', '', NULL, NULL, NULL),
(14, 1, NULL, NULL, NULL, 'Acqua Di Monaco Edp For Men 100ml', 'acqua-di-monaco-edp-for-men-100ml', '', 'Buy Acqua Di Monaco Edp For Men 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD10', 88, 1, '3331885000135', 1, '265.00', '203.00', 23, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Acqua Di Monaco Edp For Men 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Acqua Di Monaco Edp For Men 100ml', 'Acqua Di Monaco Edp For Men 100ml', '', NULL, NULL, NULL),
(15, 1, NULL, NULL, NULL, 'Acqua Di Parisis Noble Edp 100ml', 'acqua-di-parisis-noble-edp-100ml', '', 'Buy Acqua Di Parisis Noble Edp 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD11', 89, 1, '3700066713520', 1, '265.00', '128.00', 52, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Acqua Di Parisis Noble Edp 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Acqua Di Parisis Noble Edp 100ml', '', '', NULL, NULL, NULL),
(16, 1, NULL, NULL, NULL, 'Aigner Cara Mia Edp 100ml', 'aigner-cara-mia-edp-100ml', '', 'Buy Aigner Cara Mia Edp 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD12', 2, 1, '4013670000054', 2, '295.00', '155.00', 47, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aigner Cara Mia Edp 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Aigner Cara Mia Edp 100ml', 'Aigner Cara Mia Edp 100ml', '', NULL, NULL, NULL),
(17, 1, NULL, NULL, NULL, 'Aigner Cara Mia Ti Amo Edp 100ml', 'aigner-cara-mia-ti-amo-edp-100ml', '', 'Buy Aigner Cara Mia Ti Amo Edp 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD13', 2, 1, '4013670000252', 2, '295.00', '189.00', 36, 1, 7, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aigner Cara Mia Ti Amo Edp 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Aigner Cara Mia Ti Amo Edp 100ml', 'Aigner Cara Mia Ti Amo Edp 100ml', '', NULL, NULL, NULL),
(18, 1, NULL, NULL, NULL, 'Amouage Beach Hut For Men 100ml', 'amouage-beach-hut-for-men-100ml', '', 'Buy Amouage Beach Hut For Men 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD14', 3, 1, '701666231004', 1, '996.00', '693.00', 30, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Amouage Beach Hut For Men 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Amouage Beach Hut For Men 100ml', 'Amouage Beach Hut For Men 100ml', '', NULL, NULL, NULL),
(19, 1, NULL, NULL, NULL, 'Amouage Ciel For Women 100ml', 'amouage-ciel-for-women-100ml', '', 'Buy Amouage Ciel For Women 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD15', 3, 1, '701666311096', 2, '935.00', '531.00', 43, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Amouage Ciel For Women 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'AMOUAGE CIEL L 100ML', 'AMOUAGE CIEL L 100ML', '', NULL, NULL, NULL),
(20, 1, NULL, NULL, NULL, 'Angel Schlesser Absolute Oriental Man Edt 100ml', 'angel-schlesser-absolute-oriental-man-edt-100ml', '', 'Buy Angel Schlesser Absolute Oriental Man Edt 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD16', 90, 1, '8427395660299', 1, '345.00', '173.00', 50, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Angel Schlesser Absolute Oriental Man Edt 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Angel Schlesser Absolute Oriental Man Edt 100ml', 'Angel Schlesser Absolute Oriental Man Edt 100ml', '', NULL, NULL, NULL),
(21, 1, NULL, NULL, NULL, 'Angel Schlesser Essential Edp 100 Ml', 'angel-schlesser-essential-edp-100-ml', '', 'Buy Angel Schlesser Essential Edp 100 Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD17', 90, 1, '8427395670205', 2, '245.00', '142.00', 42, 1, 10, 1, 1, 1, 1, NULL, 100, 5, NULL, '<p>Angel Schlesser Essential Edp 100 Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Angel Schlesser Essential Edp 100 Ml', 'Angel Schlesser Essential Edp 100 Ml', '', NULL, NULL, NULL),
(22, 1, NULL, NULL, NULL, 'Antonio Banderas Her Secret Temptation Edt 80ml', 'antonio-banderas-her-secret-temptation-edt-80ml', '', 'Buy Antonio Banderas Her Secret Temptation Edt 80ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD18', 91, 1, '8411061860410', 2, '284.00', '169.00', 40, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Antonio Banderas Her Secret Temptation Edt 80ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Antonio Banderas Her Secret Temptation Edt 80ml', 'Antonio Banderas Her Secret Temptation Edt 80ml', '', NULL, NULL, NULL),
(23, 1, NULL, NULL, NULL, 'Antonio Banderas Hersecret For Her Edt 100ml', 'antonio-banderas-hersecret-for-her-edt-100ml', '', 'Buy Antonio Banderas Hersecret For Her Edt 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD19', 91, 1, '8411061822203', 2, '195.00', '179.00', 8, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Antonio Banderas Hersecret For Her Edt 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Antonio Banderas Hersecret For Her Edt 100ml', 'Antonio Banderas Hersecret For Her Edt 100ml', '', NULL, NULL, NULL),
(24, 1, NULL, NULL, NULL, 'Aramis For Men 110ml', 'aramis-for-men-110ml', '', 'Buy Aramis For Men 110ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD20', 4, 1, '22548006719', 1, '217.00', '121.00', 44, 1, 10, 1, 1, 1, 1, 1, 110, 5, NULL, '<p>Aramis For Men 110ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Aramis For Men 110ml', 'Aramis For Men 110ml', '', NULL, NULL, NULL),
(25, 1, NULL, NULL, NULL, 'Aramis Tuscany For Men 100ml', 'aramis-tuscany-for-men-100ml', '', 'Buy Aramis Tuscany For Men 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD21', 4, 1, '22548199480', 1, '285.00', '131.00', 54, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aramis Tuscany For Men 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Aramis Tuscany For Men 100ml', 'Aramis Tuscany For Men 100ml', '', NULL, NULL, NULL),
(26, 1, NULL, NULL, NULL, 'Azzaro Chrome Legend 125ml', 'azzaro-chrome-legend-125ml', '', 'Buy Azzaro Chrome Legend 125ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD22', 5, 1, '3351500954247', 1, '275.00', '146.00', 47, 1, 10, 1, 1, 1, 1, 1, 125, 5, NULL, '<p>Azzaro Chrome Legend 125ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Azzaro Chrome Legend 125ml', 'Azzaro Chrome Legend 125ml', '', NULL, NULL, NULL),
(27, 1, NULL, NULL, NULL, 'Azzaro Chrome For Men 100ml', 'azzaro-chrome-for-men-100ml', '', 'Buy Azzaro Chrome For Men 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD23', 5, 1, '3351500920037', 1, '280.00', '135.00', 52, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Azzaro Chrome For Men 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Azzaro Chrome For Men 100ml', 'Azzaro Chrome For Men 100ml', '', NULL, NULL, NULL),
(28, 1, NULL, NULL, NULL, 'Baldessarini Strictly Private For Men 90ml', 'baldessarini-strictly-private-for-men-90ml', '', 'Buy Baldessarini Strictly Private For Men 90ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD24', 92, 1, '4011700908011', 1, '295.00', '156.00', 47, 1, 9, 1, 1, 1, 1, 1, 90, 5, NULL, '<p>Baldessarini Strictly Private For Men 90ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Baldessarini Strictly Private For Men 90ml', 'Baldessarini Strictly Private For Men 90ml', '', NULL, NULL, NULL),
(29, 1, NULL, NULL, NULL, 'Baldessarini Ultimate EDT 100ml', 'baldessarini-ultimate-edt-100ml', '', 'Buy Baldessarini Ultimate EDT 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD25', 92, 1, '4011700922017', 1, '405.00', '189.00', 53, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Baldessarini Ultimate EDT 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Baldessarini Ultimate EDT 100ml', 'Baldessarini Ultimate EDT 100ml', '', NULL, NULL, NULL),
(30, 1, NULL, NULL, NULL, 'Bentley Intense Edp For Men 100ml', 'bentley-intense-edp-for-men-100ml', '', 'Buy Bentley Intense Edp For Men 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD26', 8, 1, '7640111497547', 1, '388.00', '134.00', 65, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Bentley Intense Edp For Men 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Bentley Intense Edp For Men 100ml', 'Bentley Intense Edp For Men 100ml', '', NULL, NULL, NULL),
(31, 1, NULL, NULL, NULL, 'Bentley Momentum For Men Edt 100ml', 'bentley-momentum-for-men-edt-100ml', '', 'Buy Bentley Momentum For Men Edt 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD27', 8, 1, '7640171190327', 1, '295.00', '144.00', 51, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Bentley Momentum For Men Edt 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Bentley Momentum For Men Edt 100ml', 'Bentley Momentum For Men Edt 100ml', '', NULL, NULL, NULL),
(32, 1, NULL, NULL, NULL, 'Boss Bottled Collectors  Edition 100ml', 'boss-bottled-collectors-edition-100ml', '', 'Buy Boss Bottled Collectors  Edition 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD28', 49, 1, '', 1, '350.00', '189.00', 46, 1, 10, 1, 1, 1, 1, NULL, 100, 5, NULL, '<p>Boss Bottled Collectors &nbsp;Edition EDT 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, '', '', '', '', NULL, NULL, NULL),
(33, 1, NULL, NULL, NULL, 'Boss Bottled Intense EDP100ml', 'boss-bottled-intense-edp100ml', '', 'Buy Boss Bottled Intense EDP100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD29', 49, 1, '', 1, '395.00', '203.00', 49, 1, 10, 1, 1, 1, 1, NULL, 100, 5, NULL, '<p>Boss Bottled Intense EDP 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, '', '', '', '', NULL, NULL, NULL),
(34, 1, NULL, NULL, NULL, 'Bottega Veneta EDP 75ml', 'bottega-veneta-edp-75ml', '', 'Buy Bottega Veneta EDP 75ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD30', 10, 1, '3607342250826', 1, '490.00', '362.00', 26, 1, 10, 1, 1, 1, 1, 1, 75, 5, NULL, '<p>Bottega Veneta EDP 75ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Bottega Veneta EDP 75ml', 'Bottega Veneta EDP 75ml', '', NULL, NULL, NULL),
(35, 1, NULL, NULL, NULL, 'Bottega Veneta Pour Homme EDT 90ml', 'bottega-veneta-pour-homme-edt-90ml', '', 'Buy Bottega Veneta Pour Homme EDT 90ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD31', 10, 1, '3607346504352', 1, '490.00', '284.00', 42, 1, 10, 1, 1, 1, 1, 2, 90, 5, NULL, '<p>Bottega Veneta Pour Homme EDT 90ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Bottega Veneta Pour Homme EDT 90ml', 'Bottega Veneta Pour Homme EDT 90ml', '', NULL, NULL, NULL),
(36, 1, NULL, NULL, NULL, 'Burberry Body EDP 85ml', 'burberry-body-edp-85ml', '', 'Buy Burberry Body EDP 85ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD32', 20, 1, '3386460035620', 2, '386.00', '170.00', 56, 1, 170, 1, 1, 1, 1, 1, 85, 5, NULL, '<p>Burberry Body EDP 85ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Burberry Body EDP 85ml', 'Burberry Body EDP 85ml', '', NULL, NULL, NULL),
(37, 1, NULL, NULL, NULL, 'Burberry Body Gold Limited Edition EDP 85ml', 'burberry-body-gold-limited-edition-edp-85ml', '', 'Buy Burberry Body Gold Limited Edition EDP 85ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD33', 20, 1, '5045410636406', 2, '395.00', '174.00', 56, 1, 10, 1, 1, 1, 1, NULL, 85, 5, NULL, '<p>Burberry Body Gold Limited Edition EDP 85ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Burberry Body Gold Limited Edition EDP 85ml', 'Burberry Body Gold Limited Edition EDP 85ml', '', NULL, NULL, NULL),
(38, 1, NULL, NULL, NULL, 'Bvlgari Aqua Marine Toniq for Men EDT 100 Ml', 'bvlgari-aqua-marine-toniq-for-men-edt-100-ml', '', 'Buy Bvlgari Aqua Marine Toniq for Men EDT 100 Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD34', 30, 1, '783320913624', 1, '350.00', '156.00', 55, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Bvlgari Aqua Marine Toniq for Men 100 Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Bvlgari Aqua Marine Toniq for Men 100 Ml', 'Bvlgari Aqua Marine Toniq for Men 100 Ml', '', NULL, NULL, NULL),
(39, 1, NULL, NULL, NULL, 'Cacharel  NOA for Women EDT 100Ml', 'cacharel-noa-for-women-edt-100ml', '', 'Buy Cacharel  NOA for Women EDT 100Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD35', 33, 1, '3360373016358', 2, '350.00', '179.00', 49, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Cacharel &nbsp;Noa for Women EDT 100Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Cacharel  Noa for Women EDT 100Ml', 'Cacharel  Noa for Women EDT 100Ml', '', NULL, NULL, NULL),
(40, 1, NULL, NULL, NULL, 'Cacharel Amor Amor Elixir Passion FOr women  EDP 50Ml', 'cacharel-amor-amor-elixir-passion-for-women-edp-50ml', '', 'Buy Cacharel Amor Amor Elixir Passion FOr women  EDP 50Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD36', 33, 1, '3360375010118', 2, '310.00', '195.00', 37, 1, 10, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>Cacharel Amor Amor Elixir Passion FOr women &nbsp;EDP 50Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Cacharel Amor Amor Elixir Passion FOr women  EDP 50Ml', 'Cacharel Amor Amor Elixir Passion FOr women  EDP 50Ml', '', NULL, NULL, NULL),
(41, 1, NULL, NULL, NULL, 'Cartier Eau De Essence Dorange Edt 100Ml', 'cartier-eau-de-essence-dorange-edt-100ml', '', 'Buy Cartier Eau De Essence Dorange Edt 100Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD37', 37, 1, '3432240025227', 3, '385.00', '194.00', 50, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Cartier Eau De Essence Dorange Edt 100Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'jpg', 'Cartier Eau De Essence Dorange Edt 100Ml', 'Cartier Eau De Essence Dorange Edt 100Ml', '', NULL, NULL, NULL),
(42, 1, NULL, NULL, NULL, 'Cerutti 1881 Form Men EDT 100 Ml', 'cerutti-1881-form-men-edt-100-ml', '', 'Buy Cerutti 1881 Form Men EDT 100 Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD38', 93, 1, '688575003659', 1, '138.00', '95.00', 31, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Cerutti 1881 Form Men EDT 100 Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Cerutti 1881 Form Men EDT 100 Ml', 'Cerutti 1881 Form Men EDT 100 Ml', '', NULL, NULL, NULL),
(43, 1, NULL, NULL, NULL, 'Ch 212 Sexy For Women EDP 60Ml', 'ch-212-sexy-for-women-edp-60ml', '', 'Buy Ch 212 Sexy For Women EDP 60Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD39', 84, 1, '8411061558416', 2, '275.00', '175.00', 36, 1, 10, 1, 1, 1, 1, 1, 60, 5, NULL, '<p>Ch 212 Sexy For Women EDP 60Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Ch 212 Sexy For Women EDP 60Ml', 'Ch 212 Sexy For Women EDP 60Ml', '', NULL, NULL, NULL),
(44, 1, NULL, NULL, NULL, 'Ch 212 Sexy Men EDT 100Ml', 'ch-212-sexy-men-edt-100ml', '', 'Buy Ch 212 Sexy Men EDT 100Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD40', 84, 1, '8411061602522', 1, '305.00', '198.00', 35, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Ch 212 Sexy Men EDT 100Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Ch 212 Sexy Men EDT 100Ml', 'Ch 212 Sexy Men EDT 100Ml', '', NULL, NULL, NULL),
(45, 1, NULL, NULL, NULL, 'Chanel Allure Sensuelle for Women Edp 50Ml', 'chanel-allure-sensuelle-for-women-edp-50ml', '', 'Buy Chanel Allure Sensuelle for Women Edp 50Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD41', 9, 1, '3145891297201', 1, '483.00', '401.00', 17, 1, 10, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>Chanel Allure Sensuelle for Women Edp 50Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Chanel Allure Sensuelle for Women Edp 50Ml', 'Chanel Allure Sensuelle for Women Edp 50Ml', '', NULL, NULL, NULL),
(46, 1, NULL, NULL, NULL, 'Bleu de by Chanel for Men - Eau de Parfum, 100ml', 'bleu-de-by-chanel-for-men-eau-de-parfum-100ml', '', 'Buy Bleu de by Chanel for Men - Eau de Parfum, 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD42', 9, 1, '3145891073607', 1, '695.00', '494.00', 29, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Bleu de by Chanel for Men - Eau de Parfum, 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Bleu de by Chanel for Men - Eau de Parfum, 100ml', 'Bleu de by Chanel for Men - Eau de Parfum, 100ml', '', NULL, NULL, NULL),
(47, 1, NULL, NULL, NULL, 'Chloe Absolu De Parfum 75Ml', 'chloe-absolu-de-parfum-75ml', '', 'Buy Chloe Absolu De Parfum 75Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD43', 34, 1, '3614224199340', 2, '495.00', '305.00', 38, 1, 10, 1, 1, 1, 1, 1, 75, 5, NULL, '<p>Chloe Absolu De Parfum 75Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Chloe Absolu De Parfum 75Ml', 'Chloe Absolu De Parfum 75Ml', '', NULL, NULL, NULL),
(48, 1, NULL, NULL, NULL, 'Ck Euphoria Essence for Men EDT 100Ml', 'ck-euphoria-essence-for-men-edt-100ml', '', 'Buy Ck Euphoria Essence for Men EDT 100Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD44', 24, 1, '3614220523767', 1, '325.00', '135.00', 58, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Ck Euphoria Essence for Men EDT 100Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Ck Euphoria Essence for Men EDT 100Ml', 'Ck Euphoria Essence for Men EDT 100Ml', '', NULL, NULL, NULL),
(49, 1, NULL, NULL, NULL, 'Ck Euphoria Gold For Women Edp 100Ml', 'ck-euphoria-gold-for-women-edp-100ml', '', 'Buy Ck Euphoria Gold For Women Edp 100Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD45', 24, 1, '3607342831773', 2, '410.00', '176.00', 57, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Ck Euphoria Gold For Women Edp 100Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Ck Euphoria Gold For Women Edp 100Ml', 'Ck Euphoria Gold For Women Edp 100Ml', '', NULL, NULL, NULL),
(50, 1, NULL, NULL, NULL, 'Creed Aventus Millesime for Men EDP 50Ml', 'creed-aventus-millesime-for-men-edp-50ml', '', 'Buy Creed Aventus Millesime for Men EDP 50Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD46', 85, 1, '3508440505118', 1, '1115.00', '635.00', 43, 1, 10, 1, 1, 1, 1, NULL, 50, 5, NULL, '<p>Creed Aventus Millesime for Men EDP 50Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Creed Aventus Millesime for Men EDP 50Ml', 'Creed Aventus Millesime for Men EDP 50Ml', '', NULL, NULL, NULL),
(51, 1, NULL, NULL, NULL, 'Creed Erolfa For Men EDP 120Ml', 'creed-erolfa-for-men-edp-120ml', '', 'Buy Creed Erolfa For Men EDP 120Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD47', 85, 1, '3508441106314', 1, '1124.00', '504.00', 55, 1, 10, 1, 1, 1, 1, 1, 120, 5, NULL, '<p>Creed Erolfa For Men EDP 120Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Creed Erolfa For Men EDP 120Ml', 'Creed Erolfa For Men EDP 120Ml', '', NULL, NULL, NULL),
(52, 1, NULL, NULL, NULL, 'Light Blue Eau Intense pour Homme by Dolce & Gabbana for Men - EDP, 100 ml', 'light-blue-eau-intense-pour-homme-by-dolce-gabbana-for-men-edp-100-ml', '', 'Buy Light Blue Eau Intense pour Homme by Dolce & Gabbana for Men - EDP, 100 ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD48', 29, 1, '3423473032878', 1, '357.00', '229.00', 36, 1, 10, 1, 1, 1, NULL, 1, 100, 5, NULL, '<p>Light Blue Eau Intense pour Homme by Dolce &amp; Gabbana for Men - EDP, 100 ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Light Blue Eau Intense pour Homme', 'Light Blue Eau Intense pour Homme', '', NULL, NULL, NULL),
(53, 1, NULL, NULL, NULL, 'Light Blue by Dolce & Gabbana for Women - EDT, 100ml', 'light-blue-by-dolce-gabbana-for-women-edt-100ml', '', 'Buy Light Blue by Dolce & Gabbana for Women - EDT, 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD49', 29, 1, '737052074320', 2, '395.00', '248.00', 37, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Light Blue by Dolce &amp; Gabbana for Women - EDT, 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Light Blue by Dolce & Gabbana for Women - EDT, 100ml', 'Light Blue by Dolce & Gabbana for Women - EDT, 100ml', '', NULL, NULL, NULL),
(54, 1, NULL, NULL, NULL, 'Cool Water by Davidoff for Women - Eau de Toilette, 100ml', 'cool-water-by-davidoff-for-women-eau-de-toilette-100ml', '', 'Buy Cool Water by Davidoff for Women - Eau de Toilette, 100ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD50', 25, 1, '3414202011752', 2, '190.00', '95.00', 50, 1, 100, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>The Cool Water Woman by Davidoff for Women provides a hauntingly romantic scent that is composed using calm aquatic notes. This Eau de Toilette is released ten years after the successful launch of Cool Water for men. This scent has been created to remind us of ocean breeze and cool sea water. The top notes are composed of luscious pineapple notes that blend perfectly with quince, black currant, lily, melon, lemon, lotus, and calone, to provide a mesmerizing essence. The core of the scent consists of honey, hawthorn, jasmine, water lily, lily of the valley, lotus, and rose, that together provide a sweet floral aroma. The base is comprised of blackberry, violet root, sandalwood, musk, raspberry, vanilla, peach, and vetiver</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Cool Water by Davidoff for Women', 'Cool Water by Davidoff for Women', '', NULL, NULL, NULL),
(55, 1, NULL, NULL, NULL, 'Cool Water by Davidoff for Men - Eau de Toilette, 125ml', 'cool-water-by-davidoff-for-men-eau-de-toilette-125ml', '', 'Buy Cool Water by Davidoff for Men - Eau de Toilette, 125ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD51', 25, 1, '3414202000572', 1, '260.00', '95.00', 63, 1, 100, 1, 1, 1, 1, 2, 125, 5, NULL, '<p>Cool Water perfume embraces you in its cool ocean-like freshness. This Davidoff perfume comes in a fancy blue-finished 75ml flacon.Immerse yourself in the crisp, soothing fragrance of the Cool Water perfume by Davidoff for Men.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Cool Water by Davidoff for Men', 'Cool Water by Davidoff for Men', '', NULL, NULL, NULL),
(56, 1, NULL, NULL, NULL, 'Dior Addict Eau Fraiche by Christian Dior for Women - Eau de Toilette, 50 ml', 'dior-addict-eau-fraiche-by-christian-dior-for-women-eau-de-toilette-50-ml', '', 'Buy Dior Addict Eau Fraiche by Christian Dior for Women - Eau de Toilette, 50 ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD52', 17, 1, '3348900600768', 2, '315.00', '244.00', 23, 1, 10, 1, 1, 1, 1, 2, 50, 5, NULL, '<p>Throw caution to the wind with Dior Addict Eau Fraiche by Christian Dior for Women Eau de Toilette. This fragrance indulges the senses with a captivating floral and fruity blend. The Dior Addict Eau Fraiche Eau de Toilette by Christian Dior is made for a woman who is full of energy, flirty, and optimistic.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'jpg', 'Dior Addict Eau Fraiche', 'Dior Addict Eau Fraiche', '', NULL, NULL, NULL),
(57, 1, NULL, NULL, NULL, 'Dior Addict By Christian Dior for Women - Eau De Parfum, 100 ml', 'dior-addict-by-christian-dior-for-women-eau-de-parfum-100-ml', '', 'Buy Dior Addict By Christian Dior for Women - Eau De Parfum, 100 ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD53', 17, 1, '3348901181839', 2, '645.00', '436.00', 32, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Dior Addict indulges the senses with sumptuous silk tree flower, voluptuous night queen flower, and luscious bourbon vanilla combined with sandalwood and tonka bean to evoke a feeling of passion in the woman who wears it</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'Dior Addict By Christian Dior', 'Dior Addict By Christian Dior', '', NULL, NULL, NULL),
(58, 1, NULL, NULL, NULL, 'DKNY Be Delicious by Donna Karan 50ml Eau de Parfum', 'dkny-be-delicious-by-donna-karan-50ml-eau-de-parfum', '', 'Buy DKNY Be Delicious by Donna Karan 50ml Eau de Parfum from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD54', 27, 1, '763511009817', 2, '295.00', '128.00', 57, 1, 10, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>This is a bright, fresh and energetic fragrance, which matches a picture of a bold, but charming woman. The top features green notes, violet leaf, apple, grapefruit and magnolia. The heart brings tuberose, lily of the valley, rose and violet, while the base &ndash; sandalwood, amber and musk</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'DKNY Be Delicious by Donna Karan', 'DKNY Be Delicious by Donna Karan', '', NULL, NULL, NULL),
(59, 1, NULL, NULL, NULL, 'DKNY Be Desired by Donna Karan for Women - Eau De Parfum, 100 ml', 'dkny-be-desired-by-donna-karan-for-women-eau-de-parfum-100-ml', '', 'Buy DKNY Be Desired by Donna Karan for Women - Eau De Parfum, 100 ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD55', 27, 1, '22548356746', 2, '325.00', '189.00', 42, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>The DKNY Be Desired by Donna Karan for Women was introduced as being a floral fruity fragrance for the first time in the year 2015. The DKNY Be Desired perfume is the latest addition to their collection and provides an aroma that gives you a feeling of entering the Garden of Eden. You will be greeted by fresh, citrusy and fruity elements that provide a vibrant, vivacious scent.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'DKNY Be Desired by Donna Karan', 'DKNY Be Desired by Donna Karan', '', NULL, NULL, NULL),
(60, 1, NULL, NULL, NULL, 'Le Parfum by Elie Saab for Women - Eau de Parfum, 90ml', 'le-parfum-by-elie-saab-for-women-eau-de-parfum-90ml', '', 'Buy Le Parfum by Elie Saab for Women - Eau de Parfum, 90ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD56', 40, 1, '3423470398021', 2, '505.00', '273.00', 46, 1, 10, 1, 1, 1, 1, 1, 90, 5, NULL, '<p>Le Parfum by Elie Saab for Women - Eau de Parfum, 90ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'Le Parfum by Elie Saab for Women - Eau de Parfum, 90ml', 'Le Parfum by Elie Saab for Women - Eau de Parfum, 90ml', '', NULL, NULL, NULL),
(61, 1, NULL, NULL, NULL, 'Elie Saab Le Parfum Intense For Women 90ml - Eau de Parfum', 'elie-saab-le-parfum-intense-for-women-90ml-eau-de-parfum', '', 'Buy Elie Saab Le Parfum Intense For Women 90ml - Eau de Parfum from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD57', 40, 1, '3423473983255', 2, '525.00', '268.00', 49, 1, 10, 1, 1, 1, 1, 1, 90, 5, NULL, '<p>Elie Saab Le Parfum Intense For Women 90ml - Eau de Parfum</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'Elie Saab Le Parfum Intense For Women 90ml - Eau de Parfum', 'Elie Saab Le Parfum Intense For Women 90ml - Eau de Parfum', '', NULL, NULL, NULL),
(63, 1, 13, NULL, NULL, 'Fleur Sentir Le by Meraki Unisex EDP 100Ml', 'fleur-sentir-le-by-meraki-unisex-edp-100ml', '', 'Buy Fleur Sentir Le by Meraki Unisex EDP 100Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD58', 94, 1, '', 3, '300.00', '150.00', 50, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Fle&#39;ur by&nbsp;MERAKI&nbsp;is a Floral Woody Musk fragrance for women and men. Fle&#39;ur was launched in 2018 by Al Hajis Perfumes L.L.C.&nbsp;Patchouli enlightened by the dark brightness of spices, Fle&#39;ur opens its smell with pink pepper, bergamot and galbanum before enveloping into a floral heart of damask rose and angelica. Rich white musk and cashmeran at the base create a truly sensual fragrance to ignite the senses</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'Fleur Sentir Le by Meraki Unisex EDP 100Ml', 'Fleur Sentir Le by Meraki Unisex EDP 100Ml', '', NULL, NULL, NULL),
(64, 1, 13, NULL, NULL, 'Aristo Parfum by Iris Montini EDP 100 ML', 'aristo-parfum-by-iris-montini-edp-100-ml', '', 'Buy Aristo Parfum by Iris Montini EDP 100 ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD59', 87, 1, '', 3, '1000.00', '550.00', 45, 1, 10, 1, 1, 1, NULL, 1, 125, 5, NULL, '<p>Aristo Parfum by Iris Montani EDP 100 ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'Aristo Parfum by Iris Montani EDP 100 ML', 'Aristo Parfum by Iris Montani EDP 100 ML', '', NULL, NULL, NULL),
(65, 1, 13, NULL, NULL, 'Marvel Parfum by Iris Montani Unisex EDP 100ml', 'marvel-parfum-by-iris-montani-unisex-edp-100ml', '', 'Buy Aristo Parfum by Iris Montani EDP 100 ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD60', 87, 1, '', 3, '1000.00', '550.00', 45, 1, 10, 1, 1, 1, 1, 1, 125, 5, NULL, '<p>Marvel Parfum by Iris Montani Unisex EDP 100ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'Marvel Parfum by Iris Montani Unisex EDP 100ml', 'Marvel Parfum by Iris Montani Unisex EDP 100ml', '', NULL, NULL, NULL),
(66, 1, 13, NULL, NULL, '101 By Victor Raymond EDP 100ML', '101-by-victor-raymond-edp-100ml', '', 'Buy 101 By Victor Raymond EDP 100ML from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD61', 96, 1, '', 3, '450.00', '150.00', 67, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>101 By Victor Raymond EDP 100ML</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', '101 By Victor Raymond EDP 100ML', '101 By Victor Raymond EDP 100ML', '', NULL, NULL, NULL),
(67, 1, 13, NULL, NULL, '201 by Victor Raymond EDP 100Ml', '201-by-victor-raymond-edp-100ml', '', 'Buy 201 by Victor Raymond EDP 100Ml from Al Hajis Perfumes, Dubai''s top perfume manufacturing company.', '', NULL, 'PD62', 96, 1, '', 3, '480.00', '150.00', 69, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>201 by Victor Raymond EDP 100Ml</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', '201 by Victor Raymond EDP 100Ml', '201 by Victor Raymond EDP 100Ml', '', NULL, NULL, NULL),
(68, 1, NULL, NULL, NULL, 'A SCENT NEROLI SUNSHINE BY ISSEY MIYAKE 100ML', 'a-scent-neroli-sunshine-by-issey-miyake-100ml', 'A SCENT NEROLI SUNSHINE BY ISSEY MIYAKE 100ML', 'Buy A SCENT NEROLI SUNSHINE BY ISSEY MIYAKE 100ML from Al Hajis Perfumes', 'A SCENT NEROLI SUNSHINE BY ISSEY MIYAKE 100ML', NULL, 'PD63', 103, 1, '3423470394269', 2, '410.00', '156.00', 62, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>In 2011, a new limited edition fragrance is presented under the name A Scent by Issey Miyake Soleil de Neroli, inspired by the natural essence of neroli flower illuminated by the gentle spring sunshine.</p>\r\n\r\n<p>This fresh, sunny floral fragrance is signed by Daphne Bugey, the creator of the original formula. The composition opens with neroli and tiare flower, which evolve in the glittering core of jasmine and hyacinth. The deep and rich musky trail finishes the fragrance description.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', '', '', '', NULL, NULL, NULL),
(69, 1, NULL, NULL, NULL, 'ABERCROMBIE & FITCH FIERCE COLOGNE  100ML', 'abercrombie-fitch-fierce-cologne-100ml', 'ABERCROMBIE & FITCH FIERCE COLOGNE  100ML', 'Buy ABERCROMBIE & FITCH FIERCE COLOGNE  100ML from Al Hajis Perfumes', 'ABERCROMBIE & FITCH FIERCE COLOGNE  100ML', NULL, 'PD64', 104, 1, '85715163035', 1, '459.00', '331.00', 28, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>Fierce by Abercrombie &amp; Fitch is a Woody Aromatic fragrance for men. Fierce was launched in 2002. Fierce was created by Christophe Laudamiel and Bruno Jovanovic. Top notes are petitgrain, cardamom, lemon, orange and fir; middle notes are jasmine, rosemary, rose and lily-of-the-valley; base notes are vetiver, musk, oakmoss and brazilian rosewood.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ABERCROMBIE & FITCH FIERCE COLOGNE  100ML', '', '', NULL, NULL, NULL),
(70, 1, NULL, NULL, NULL, 'ABERCROMBIE & FITCH FIERCE COLOGNE  200ML', 'abercrombie-fitch-fierce-cologne-200ml', 'ABERCROMBIE & FITCH FIERCE COLOGNE  200ML', 'Buy ABERCROMBIE & FITCH FIERCE COLOGNE  200ML from Al Hajis Perfumes', 'ABERCROMBIE & FITCH FIERCE COLOGNE  200ML', NULL, 'PD65', 104, 1, '492347', 1, '725.00', '443.00', 39, 1, 10, 1, 1, 1, 1, NULL, 200, 5, NULL, '<p>Fierce by Abercrombie &amp; Fitch is a Woody Aromatic fragrance for men. Fierce was launched in 2002. Fierce was created by Christophe Laudamiel and Bruno Jovanovic. Top notes are petitgrain, cardamom, lemon, orange and fir; middle notes are jasmine, rosemary, rose and lily-of-the-valley; base notes are vetiver, musk, oakmoss and brazilian rosewood.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ABERCROMBIE & FITCH FIERCE COLOGNE  200ML', '', '', NULL, NULL, NULL),
(71, 1, NULL, NULL, NULL, 'ACQUA DI MONACO EDP M 100ML', 'acqua-di-monaco-edp-m-100ml', 'ACQUA DI MONACO EDP M 100ML', 'Buy ACQUA DI MONACO EDP M 100ML from Al Hajis Perfumes', 'ACQUA DI MONACO EDP M 100ML\r\n', NULL, 'PD66', 88, 1, '3331885000135', 1, '265.00', '203.00', 23, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Inspired by beauty of Pantellerie, where he spent his vacation, Armani created the aroma of Aqua di Gio for men and women. The fragrance for men is a scent of freedom, full of wind and water. The composition is built of a perfect harmony of sweet and salty notes of sea water and nuances of sunny warmth on your skin. Aqua di Gio is full of scorching Mediterranean sun. Bitter citrus with aromatic nuance of rosemary intertwines with salty, sea nuances and pellucid hedione. Sharp notes of spices are softened by woody base with warm, musky trail.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ACQUA DI MONACO EDP M 100ML', '', '', NULL, NULL, NULL),
(72, 1, NULL, NULL, NULL, 'ACQUA DI PARMA AMBRA EDC 100ML', 'acqua-di-parma-ambra-edc-100ml', 'ACQUA DI PARMA AMBRA EDC 100ML', 'Buy ACQUA DI PARMA AMBRA EDC 100ML from Al Hajis Perfumes', 'ACQUA DI PARMA AMBRA EDC 100ML\r\n', NULL, 'PD67', 106, 1, '8028713240218', 1, '865.00', '512.00', 41, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>After fragrances dedicated to oud and leather, Acqua di Parma presents a new edition in dark brown flacon, Acqua di Parma Colonia Ambra. It can be expected on the market in April 2015 and can be found as 100 ml and 180 ml Eau de Cologne Concentree. &quot;Acqua di Parma Colonia Ambra celebrates one of the most precious, luxurious ingredients used in creating fragrances, ambergris. The third fragrance of the collection dedicated to various ingredients Acqua di Parma Ingredient Collection, Colonia Ambra is an aromatic, complex fragrance with musky-marine shades.&quot;</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ACQUA DI PARMA AMBRA EDC 100ML', '', '', NULL, NULL, NULL),
(73, 1, NULL, NULL, NULL, 'ACQUA DI PARMA COLONIA EAU DE COLOGNE 100ML', 'acqua-di-parma-colonia-eau-de-cologne-100ml', 'ACQUA DI PARMA COLONIA EAU DE COLOGNE 100ML', 'Buy ACQUA DI PARMA COLONIA EAU DE COLOGNE 100ML from Al Hajis Perfumes', 'ACQUA DI PARMA COLONIA EAU DE COLOGNE 100ML', NULL, 'PD68', 107, 1, '8028713000096', 1, '535.00', '331.00', 38, 1, 10, 1, 1, 1, NULL, 4, 100, 5, NULL, '<p>Acqua di Parma started as a small factory in Parma. The first fragrance was created in 1916, Colonia, and at the beginning it was used to perfume gentlemen&#39;s handkerchiefs. Colonia became a real symbol of Italian chic among American and European celebrities in the pre-war (1930&#39;s) and post-war (1950&#39;s) years. Cary Grant and David Niven, Ava Gadner and Eva Turner, later joined by Audrey Hepburn, were among the passionate admirers of Colonia. From a small factory, Acqua di Parma grew into a prominent house with wide range distribution. Acqua Di Parma Colonia was presented as a citrus fragrance. It was composed of lavender, rosemary, Sicilian citrus, Bulgarian rose, jasmine, amber and light musk.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ACQUA DI PARMA COLONIA EAU DE COLOGNE 100ML', '', '', NULL, NULL, NULL),
(74, 1, NULL, NULL, NULL, 'ACQUA DI PARMA COLONIA LEATHER CONCENTREE 100ML', 'acqua-di-parma-colonia-leather-concentree-100ml', 'ACQUA DI PARMA COLONIA LEATHER CONCENTREE 100ML', 'Buy ACQUA DI PARMA COLONIA LEATHER CONCENTREE 100ML from Al Hajis Perfumes', 'ACQUA DI PARMA COLONIA LEATHER CONCENTREE 100ML', NULL, 'PD69', 108, 1, '8028713240119', 1, '790.00', '499.00', 37, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>Acqua di Parma presents the new fragrance Colonia Leather Eau de Cologne Concentr&eacute;e which belongs to the Ingredient Collection. The fragrance Colonia Intensa Oud Eau de Cologne Concentree launched in 2012 also belongs to the above-mentioned collection. The fragrance was introduced in May 2014 and announced as an &#39;original creation born by unconventional combining of freshness coming from citrus notes of the original fragrance Colonia and rich, sensual shades of aromatic leather.&quot; Top notes of Colonia Leather Eau de Cologne Concentr&eacute;e provide luminous scents of Brazilian orange combined with Sicilian lime. The heart adds rose and petit grain from Paraguay followed by leather, Atlas cedar and guaiac wood from Paraguay.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ACQUA DI PARMA COLONIA LEATHER CONCENTREE 100ML', '', '', NULL, NULL, NULL),
(75, 1, NULL, NULL, NULL, 'ACQUA DI PARMA COLONIA OUD EDC CONCENTREE', 'acqua-di-parma-colonia-oud-edc-concentree', 'ACQUA DI PARMA COLONIA OUD EDC CONCENTREE', 'Buy ACQUA DI PARMA COLONIA OUD EDC CONCENTREE from Al Hajis Perfumes', 'ACQUA DI PARMA COLONIA OUD EDC CONCENTREE', NULL, 'PD70', 108, 1, '8028713240010', 4, '830.00', '554.00', 33, 1, 10, 1, 1, 1, 1, 3, 100, 5, NULL, '<p>A unique and elegant creation born from the innovative union of two olfactive themes with strong personalities: the fresh, vibrant notes of Colonia and the warm, deep notes of Agarwood. A charismatic and intensely masculine fragrance. Colonia Oud by Acqua di Parma is a Oriental Woody fragrance for men. Colonia Oud was launched in 2012. Top notes are italian orange and calabrian bergamot; middle notes are amyris, coriander and agarwood (oud); base notes are sandalwood, leather, musk, atlas cedar and indonesian patchouli leaf.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:29', 1, 'png', 'ACQUA DI PARMA COLONIA OUD EDC CONCENTREE', '', '', NULL, NULL, NULL),
(76, 1, NULL, NULL, NULL, 'AIGNER BLUE EMOTION M 100ML', 'aigner-blue-emotion-m-100ml', 'AIGNER BLUE EMOTION M 100ML', 'Buy AIGNER BLUE EMOTION M 100ML from Al Hajis Perfumes', 'AIGNER BLUE EMOTION M 100ML', NULL, 'PD71', 2, 1, '4013670509359', 1, '225.00', '131.00', 42, 1, 10, 1, 1, 1, NULL, 2, 100, 5, NULL, '<p>Aigner pour Homme Blue Emotion by Etienne Aigner is a Aromatic fragrance for men. Aigner pour Homme Blue Emotion was launched in 2003. Top notes are lavender, mandarin orange, violet leaf, bergamot and lemon; middle notes are coriander, jasmine and cardamom</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER BLUE EMOTION M 100ML', '', '', NULL, NULL, NULL),
(77, 1, NULL, NULL, NULL, 'AIGNER DEBUT BY NIGHT EDP L 100ML', 'aigner-debut-by-night-edp-l-100ml', 'AIGNER DEBUT BY NIGHT EDP L 100ML', 'Buy AIGNER DEBUT BY NIGHT EDP L 100ML from Al Hajis Perfumes', 'AIGNER DEBUT BY NIGHT EDP L 100ML', NULL, 'PD72', 2, 1, '4013671001036', 2, '365.00', '173.00', 53, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aigner is launching successor to last year&rsquo;s edition Debut, providing a fragrant version inspired by seductive nights. The fragrance is inspired by fascinating women charm which attracts all the attention in elegant and feminine way. The new fragrance Debut by Night is constructed as oriental floral, sexy perfume with sensual layers. Top notes of Debut by Night provide a fruit cocktail of bergamot, lemon, pear and biter orange from Paraguay. The heart introduces a floral bouquet of orange blossom, rose and delicate water lily, resting on a warm layer of patchouli, cedar and vanilla, sweetened with passionate raspberry.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER DEBUT BY NIGHT EDP L 100ML', '', '', NULL, NULL, NULL),
(78, 1, NULL, NULL, NULL, 'AIGNER DEBUT EDP 100ML', 'aigner-debut-edp-100ml', 'AIGNER DEBUT EDP 100ML', 'Buy AIGNER DEBUT EDP 100ML from Al Hajis Perfumes', 'AIGNER DEBUT EDP 100ML', NULL, 'PD73', 2, 1, '4013670509199', 2, '375.00', '160.00', 57, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Etienne Aigner is launching the new women&#39;s fragrance Debut which arrives on the market in June 2013. The perfume is inspired by an elegant woman in a satin dress who attracts everyone&#39;s attention and lures you with her beauty at first glance. Model Malene Knudsen is in the advertising campaign. Wearing her pink satin dress, she suggests the idea and theme of the new fragrance of the house of Aigner. Top notes of Aigner Debut accentuate fresh fruity aromas of bergamot, mandarin, grapefruit and green apple additionally cooled down with petitgrain. The heart incorporates luminous orange blossom, water lily, jasmine and sunflower seed, on a deep, warm and cuddly base of patchouli, cedar, vanilla, white musk and oak moss.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER DEBUT EDP 100ML', '', '', NULL, NULL, NULL),
(79, 1, NULL, NULL, NULL, 'AIGNER ETIENNE POUR FEMME EDP 100ML', 'aigner-etienne-pour-femme-edp-100ml', 'AIGNER ETIENNE POUR FEMME EDP 100ML', 'Buy AIGNER ETIENNE POUR FEMME EDP 100ML from Al Hajis Perfumes', 'AIGNER ETIENNE POUR FEMME EDP 100ML\r\n', NULL, 'PD74', 109, 1, '4013670507645', 2, '315.00', '149.00', 53, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Etienne Aigner is launching a new fragrance Etienne Aigner Pour Femme which arrives on the market in 2010. After successful edition Starlight from 2008 which gives us a dose of mystery and elegance, the new Pour Femme promises a more daring approach. The concept is based of wealth, luxury and extravagance, accompanied by elegant and sensual notes of the composition.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER ETIENNE POUR FEMME EDP 100ML', '', '', NULL, NULL, NULL),
(80, 1, NULL, NULL, NULL, 'AIGNER ETIENNE POUR FEMME EDP 60ML', 'aigner-etienne-pour-femme-edp-60ml', 'AIGNER ETIENNE POUR FEMME EDP 60ML', 'Buy AIGNER ETIENNE POUR FEMME EDP 60ML from Al Hajis Perfumes', 'AIGNER ETIENNE POUR FEMME EDP 60ML\r\n', NULL, 'PD75', 109, 1, '4013670507652', 2, '245.00', '135.00', 45, 1, 10, 1, 1, 1, 1, 1, 60, 5, NULL, '<p>Etienne Aigner is launching a new fragrance Etienne Aigner Pour Femme which arrives on the market in 2010. After successful edition Starlight from 2008 which gives us a dose of mystery and elegance, the new Pour Femme promises a more daring approach. The concept is based of wealth, luxury and extravagance, accompanied by elegant and sensual notes of the composition.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER ETIENNE POUR FEMME EDP 60ML', '', '', NULL, NULL, NULL);
INSERT INTO `product` (`id`, `main_category`, `category`, `type`, `subcategory`, `product_name`, `canonical_name`, `meta_title`, `meta_description`, `meta_keywords`, `search_tag`, `item_ean`, `brand`, `ean_type`, `ean_value`, `gender_type`, `price`, `offer_price`, `discount`, `currency`, `stock`, `stock_unit`, `stock_availability`, `tax`, `free_shipping`, `product_type`, `size`, `size_unit`, `main_description`, `product_detail`, `condition`, `CB`, `UB`, `DOC`, `DOU`, `status`, `profile`, `profile_alt`, `gallery_alt`, `other_image`, `related_product`, `featured_product`, `sort`) VALUES
(81, 1, NULL, NULL, NULL, 'AIGNER FIRST CLASS EDT 100ML', 'aigner-first-class-edt-100ml', 'AIGNER FIRST CLASS EDT 100ML', 'Buy AIGNER FIRST CLASS EDT 100ML from Al Hajis Perfumes', 'AIGNER FIRST CLASS EDT 100ML\r\n', NULL, 'PD76', 2, 1, '4013670003253', 1, '360.00', '147.00', 59, 1, 9, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>The fragrance is designed for a modern man of timeless elegance and understated, natural charisma, inspired by airplane traveling in first class. Aigner First Class is a fresh, slightly sweet and sparkling green fragrance with undertones of woods and moss. The composition opens with fresh and fruity tones of grapefruit, bergamot and apple, which refer to refreshing drinks that are served on the plane. The heart notes include spicy pink pepper, sweet melon and refined jasmine. Sensual aromas of patchouli, vetiver, amber and oak moss create the perfume&rsquo;s base.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER FIRST CLASS EDT 100ML', '', '', NULL, NULL, NULL),
(82, 1, NULL, NULL, NULL, 'AIGNER LADIES DAY EDT 100ML', 'aigner-ladies-day-edt-100ml', 'AIGNER LADIES DAY EDT 100ML', 'Buy AIGNER LADIES DAY EDT 100ML from Al Hajis Perfumes', 'AIGNER LADIES DAYEDT 100ML\r\n', NULL, 'PD77', 2, 1, '4013670000139', 2, '295.00', '126.00', 57, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Ladies Day Paris by Etienne Aigner is a Floral fragrance for women. This is a new fragrance. Ladies Day Paris was launched in 2017. Top notes are bergamot, lemon, citruses and sea notes; middle notes are lily-of-the-valley, magnolia, rose, peony, jasmine and orange blossom; base notes are orris root, patchouli, musk, sandalwood and amber.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER LADIES DAYEDT 100ML', '', '', NULL, NULL, NULL),
(83, 1, NULL, NULL, NULL, 'AIGNER MAN 2 EVOLUTION M 100ML', 'aigner-man-2-evolution-m-100ml', 'AIGNER MAN 2 EVOLUTION M 100ML', 'Buy AIGNER MAN 2 EVOLUTION M 100ML from Al Hajis Perfumes', 'AIGNER MAN 2 EVOLUTION M 100ML\r\n', NULL, 'PD78', 2, 1, '4013670506273', 1, '210.00', '128.00', 39, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Aigner |man|2 by Etienne Aigner is a Woody Aromatic fragrance for men. Aigner |man|2 was launched in 2007. Aigner |man|2 was created by Pierre Wargnye and Rosendo Mateu. Top notes are sage and sicilian lemon; middle notes are cinnamon, tarragon and anise; base notes are amber, patchouli, vanilla, cashmere wood, cedar and tobacco.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER MAN 2 EVOLUTION M 100ML', '', '', NULL, NULL, NULL),
(84, 1, NULL, NULL, NULL, 'AIGNER MAN2 100ML', 'aigner-man2-100ml', 'AIGNER MAN2 100ML', 'Buy AIGNER MAN2 100ML from Al Hajis Perfumes', 'AIGNER MAN2 100ML\r\n', NULL, 'PD79', 2, 1, '4013670504538', 1, '225.00', '131.00', 42, 1, 10, 1, 1, 1, NULL, 2, 100, 5, NULL, '<p>Aigner |man|2 by Etienne Aigner is a Woody Aromatic fragrance for men. Aigner |man|2 was launched in 2007. Aigner |man|2 was created by Pierre Wargnye and Rosendo Mateu. Top notes are sage and sicilian lemon; middle notes are cinnamon, tarragon and anise; base notes are amber, patchouli, vanilla, cashmere wood, cedar and tobacco.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER MAN2 100ML', '', '', NULL, NULL, NULL),
(85, 1, NULL, NULL, NULL, 'AIGNER NO1 INTENCE EDT 100ML', 'aigner-no1-intence-edt-100ml', 'AIGNER NO1 INTENCE EDT 100ML', 'Buy AIGNER NO1 INTENCE EDT 100ML from Al Hajis Perfumes', 'AIGNER NO1 INTENCE EDT 100ML\r\n', NULL, 'PD80', 2, 1, '4013671000084', 1, '360.00', '146.00', 59, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Aigner No 1 Intense by Etienne Aigner is a Woody Spicy fragrance for men. Aigner No 1 Intense was launched in 2013. Top note is citruses; middle notes are cinnamon and amber; base notes are agarwood (oud), vetiver and patchouli.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER NO1 INTENCE EDT 100ML', '', '', NULL, NULL, NULL),
(86, 1, NULL, NULL, NULL, 'AIGNER NO1 OUD EDP M 100ML', 'aigner-no1-oud-edp-m-100ml', 'AIGNER NO1 OUD EDP M 100ML', 'Buy AIGNER NO1 OUD EDP M 100ML from Al Hajis Perfumes', 'AIGNER NO1 OUD EDP M 100ML', NULL, 'PD81', 2, 1, '4013671000909', 4, '385.00', '150.00', 61, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aigner N&deg;1 Oud is Etienne Aigner&rsquo;s latest addition to the AIGNER N&deg;1collection, which already includes four fragrances. The new version&mdash;Oud is inspired by the Middle East and is the embodiment of luxury, quality and modernity. However, the perfume continues the traditions of the house of Aigner and remains in the spirit of the collection. Aigner N&deg;1 Oud opens with spicy scents of coriander, cinnamon and nutmeg. The heart beats in a floral rhythm of jasmine, rose, violet and clove. The most expressive note is of course oud, accompanied with leather, cashmeran and saffron accords.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:29', 1, 'png', 'AIGNER NO1 OUD EDP M 100ML', '', '', NULL, NULL, NULL),
(87, 1, NULL, NULL, NULL, 'AIGNER NO1 PH EDT 100ML', 'aigner-no1-ph-edt-100ml', 'AIGNER NO1 PH EDT 100ML', 'Buy AIGNER NO1 PH EDT 100ML from Al Hajis Perfumes', 'AIGNER NO1 PH EDT 100ML\r\n', NULL, 'PD82', 2, 1, '4013670508314', 1, '350.00', '150.00', 57, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Etienne Aigner launches Aigner No. 1 as a modern interpretation of the classic masculine fragrance of woody and leathery character. It opens with notes of artemisia, cedar leaf, pepper and bergamot. The core is formed of geranium, cinnamon and ginger, laid at the base of incense, labdanum, vetiver, oud, sandalwood, musk and cedar. It is available as 30, 50 and 100 ml EDT, 100 ml after shave lotion, deodorant and shower gel.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER NO1 PH EDT 100ML', '', '', NULL, NULL, NULL),
(88, 1, NULL, NULL, NULL, 'AIGNER NO1 PLATINUM M 100ML', 'aigner-no1-platinum-m-100ml', 'AIGNER NO1 PLATINUM M 100ML', 'Buy AIGNER NO1 PLATINUM M 100ML from Al Hajis Perfumes', 'AIGNER NO1 PLATINUM M 100ML\r\n', NULL, 'PD83', 2, 1, '4013670000016', 1, '336.00', '145.00', 57, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>AIGNER N&deg;1 is a symbol of craftsmanship and the subtle appreciation of the AIGNER heritage. A heritage embodied in a masculine fragrance that is the very essence of luxury, refinement and good taste. AIGNER N&deg;1 Platinum is an exciting new launch from the AIGNER N&deg;1 collection which continues to re-define luxury, quality and modernity and embraces the philosophy of AIGNER N&deg;1.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER NO1 PLATINUM M 100ML', '', '', NULL, NULL, NULL),
(89, 1, NULL, NULL, NULL, 'AIGNER NO1 SPORT PH EDT 100ML', 'aigner-no1-sport-ph-edt-100ml', 'AIGNER NO1 SPORT PH EDT 100ML', 'Buy AIGNER NO1 SPORT PH EDT 100ML from Al Hajis Perfumes', 'AIGNER NO1 SPORT PH EDT 100ML', NULL, 'PD84', 2, 1, '4013671000961', 1, '360.00', '161.00', 55, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Etienne Aigner launched Aigner No 1 Sport, its new fresh flanker of the Aigner No 1 from the 2012. Aigner No 1 collection symbolizes luxury, good taste and refinement. Aigner No 1 Sport comes out in April 2014, described as lighter and fresher than the original but still powerful and energetic. Aigner No 1 Sport embodies the scent of success and victory, as well as strength, discipline and drive that help you achieve your best at the chosen sport. Citrusy accords of grapefruit and lemon are infused with cardamom at the top. Mint, apple and oak moss form the heart of the perfume that ends with woods, patchouli, black musk, leather and guaiac.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER NO1 SPORT PH EDT 100ML', '', '', NULL, NULL, NULL),
(90, 1, NULL, NULL, NULL, 'AIGNER STARLIGHT GOLD L 100ML', 'aigner-starlight-gold-l-100ml', 'AIGNER STARLIGHT GOLD L 100ML', 'Buy AIGNER STARLIGHT GOLD L 100ML from Al Hajis Perfumes', 'AIGNER STARLIGHT GOLD L 100ML\r\n', NULL, 'PD85', 2, 1, '4013670000306', 2, '365.00', '170.00', 53, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aigner Parfums launches Starlight Gold, a new version that comes ten years after the Starlight fragrance. The original composition of fruits, spices and patchouli is now revamped in a new floral-oriental version, described as contemporary but true to the original energy and aura.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER STARLIGHT GOLD L 100ML', '', '', NULL, NULL, NULL),
(91, 1, NULL, NULL, NULL, 'AIGNER STARLIGHT L 100ML', 'aigner-starlight-l-100ml', 'AIGNER STARLIGHT L 100ML', 'Buy AIGNER STARLIGHT L 100ML from Al Hajis Perfumes', 'AIGNER STARLIGHT L 100ML\r\n', NULL, 'PD86', 2, 1, '4013670506150', 2, '315.00', '140.00', 56, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>The house of Etienne Aigner presents new, luxury fragrance for women, Aigner Starlight, in autumn 2008. It is very elegant, mysterious and created of top quality ingredients. Aigner Starlight is dedicated to lady, a woman of style, who radiates with elegance of new age. Beautiful lady in advertising poster with purple sky is getting near the stars and making her dreams come true with a dose of excitement.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER STARLIGHT L 100ML', '', '', NULL, NULL, NULL),
(92, 1, NULL, NULL, NULL, 'AIGNER TOO FEMININE 100ML', 'aigner-too-feminine-100ml', 'AIGNER TOO FEMININE 100ML', 'Buy AIGNER TOO FEMININE 100ML from Al Hajis Perfumes', 'AIGNER TOO FEMININE 100ML', NULL, 'PD87', 2, 1, '4013670502930', 2, '295.00', '152.00', 48, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aigner Too Feminine by Etienne Aigner is a Floral Fruity fragrance for women. Aigner Too Feminine was launched in 2006. Top notes are passionfruit, grapefruit and watermelon; middle notes are indian tuberose, tunisian orange blossom, parma violet, magnolia and egyptian jasmine; base notes are iris, sandalwood, amber, musk, oakmoss and vetiver.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AIGNER TOO FEMININE 100ML', '', '', NULL, NULL, NULL),
(93, 1, NULL, NULL, NULL, 'AIGNER WHITE M 125ML', 'aigner-white-m-125ml', 'AIGNER WHITE M 125ML', 'Buy AIGNER WHITE M 125ML from Al Hajis Perfumes', 'AIGNER WHITE M 125ML\r\n', NULL, 'PD88', 2, 1, '4013670505924', 1, '285.00', '139.00', 51, 1, 10, 1, 1, 1, 1, 2, 125, 5, NULL, '<p>Aigner White Man by Etienne Aigner is a Woody Floral Musk fragrance for men. Aigner White Man was launched in 2007. Aigner White Man was created by Pierre Wargnye and Rosendo Mateu. Top notes are basil, cardamom, coriander and grapefruit; middle notes are melon, violet and lily-of-the-valley; base notes are musk, amber, vetiver and oakmoss.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AIGNER WHITE M 125ML', '', '', NULL, NULL, NULL),
(94, 1, NULL, NULL, NULL, 'ALAIA PARIS EDP 100ML', 'alaia-paris-edp-100ml', 'ALAIA PARIS EDP 100ML', 'Buy ALAIA PARIS EDP 100ML from Al Hajis Perfumes', 'ALAIA PARIS EDP 100ML\r\n', NULL, 'PD89', 110, 1, '3423473921257', 2, '365.00', '205.00', 44, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Fashion designer Azzedine Ala&iuml;a enters the world of perfumes under the license of Beaute Prestige International and launches his first fragrance Ala&iuml;a. The fragrance is inspired by the designer&#39;s memories of childhood spent in Tunisia like water poured over hot brick walls.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ALAIA PARIS EDP 100ML', '', '', NULL, NULL, NULL),
(95, 1, NULL, NULL, NULL, 'ALEXANDRE J ALTESSE MYSORE THE COLLECTOR EDP 100ML', 'alexandre-j-altesse-mysore-the-collector-edp-100ml', 'ALEXANDRE J ALTESSE MYSORE THE COLLECTOR EDP 100ML', 'Buy ALEXANDRE J ALTESSE MYSORE THE COLLECTOR EDP 100ML from Al Hajis Perfumes', 'ALEXANDRE J ALTESSE MYSORE THE COLLECTOR EDP 100ML', NULL, 'PD90', 111, 1, '3700753029194', 2, '395.00', '215.00', 46, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Altesse Mysore by Alexandre.J is a Oriental Floral fragrance for women. This is a new fragrance. Altesse Mysore was launched in 2017. Top notes are spices, pink pepper and elemi; middle notes are rose and jasmine; base notes are woody notes, balsam fir and amberwood.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ALEXANDRE J ALTESSE MYSORE THE COLLECTOR EDP 100ML', '', '', NULL, NULL, NULL),
(96, 1, NULL, NULL, NULL, 'ALEXANDER MCQUEEN MCQUEEN EDP 75 ML', 'alexander-mcqueen-mcqueen-edp-75-ml', 'ALEXANDER MCQUEEN MCQUEEN EDP 75 ML', 'Buy ALEXANDER MCQUEEN MCQUEEN EDP 75 ML from Al Hajis Perfumes', 'ALEXANDER MCQUEEN MCQUEEN EDP 75 ML\r\n', NULL, 'PD91', 111, 1, '737052989372', 2, '550.00', '462.00', 16, 1, 10, 1, 1, 1, 1, 1, 75, 5, NULL, '<p>McQueen Eau de Parfum, takes a vintage spirit and gives it a stunningly modern architecture. The night-blooming floral notes are now mellow and subtly mysterious yet commanding as never before. They are rounded and opulent but never brash, allowing confident newness to assert itself.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ALEXANDER MCQUEEN MCQUEEN EDP 75 ML', '', '', NULL, NULL, NULL),
(97, 1, NULL, NULL, NULL, 'ALEXANDRE ZAFEER OUD VANILLE EDP 100ML', 'alexandre-zafeer-oud-vanille-edp-100ml', 'ALEXANDRE ZAFEER OUD VANILLE EDP 100ML', 'Buy ALEXANDRE ZAFEER OUD VANILLE EDP 100ML from Al Hajis Perfumes', 'ALEXANDRE ZAFEER OUD VANILLE EDP 100ML', NULL, 'PD92', 111, 1, '3760016770294', 4, '365.00', '216.00', 41, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Mix between the Oriental desert and the French baroque architecture, this collection of 6 fragrances evokes a timeless journey, the warmth of elements and the change of scenery. It focuses on a magical place talking to everyone&rsquo;s imagination. Zafeer Oud Vanille is a cocktail of warmth oriental notes; a caramelised vanilla with hints of coconut. Zafeer Oud Vanille by Alexandre.J is a Oriental Vanilla fragrance for women and men. Zafeer Oud Vanille was launched in 2012. The fragrance features fruity notes, agarwood (oud), vanilla, musk, leather, coconut, iris, cloves, tonka bean, ylang-ylang and white woods.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:29', 1, 'png', 'ALEXANDRE ZAFEER OUD VANILLE EDP 100ML', '', '', NULL, NULL, NULL),
(98, 1, NULL, NULL, NULL, 'AMOUAGE BEACH HUT M 100ML', 'amouage-beach-hut-m-100ml', 'AMOUAGE BEACH HUT M 100ML', 'Buy AMOUAGE BEACH HUT M 100ML from Al Hajis Perfumes', 'AMOUAGE BEACH HUT M 100ML\r\n', NULL, 'PD93', 3, 1, '701666231004', 1, '996.00', '693.00', 30, 1, 10, 1, 1, 1, 1, NULL, 100, 5, NULL, '<p>Beach Hut Man by Amouage is a Woody Aromatic fragrance for men. This is a new fragrance. Beach Hut Man was launched in 2017. The nose behind this fragrance is Elise Benat. Top notes are mint, orange blossom and galbanum; middle notes are vetiver, moss and ivy; base notes are myrrh, patchouli and woody notes.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE BEACH HUT M 100ML', '', '', NULL, NULL, NULL),
(99, 1, NULL, NULL, NULL, 'AMOUAGE CIEL L 100ML', 'amouage-ciel-l-100ml', 'AMOUAGE CIEL L 100ML', 'Buy AMOUAGE CIEL L 100ML from Al Hajis Perfumes', 'AMOUAGE CIEL L 100ML\r\n', NULL, 'PD94', 3, 1, '701666311096', 2, '935.00', '531.00', 43, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Ciel Pour Femme by Amouage is a Floral fragrance for women. Ciel Pour Femme was launched in 2003. The nose behind this fragrance is Lucas Sieuzac. Top notes are cyclamen, gardenia and violet leaf; middle notes are peach blossom, jasmine, water lily and rose; base notes are sandalwood, amber, musk, incense and cedar.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE CIEL L 100ML', '', '', NULL, NULL, NULL),
(100, 1, NULL, NULL, NULL, 'AMOUAGE CIEL POUR FEMME 50ML', 'amouage-ciel-pour-femme-50ml', 'AMOUAGE CIEL POUR FEMME 50ML', 'Buy AMOUAGE CIEL POUR FEMME 50ML from Al Hajis Perfumes', 'AMOUAGE CIEL POUR FEMME 50ML\r\n', NULL, 'PD95', 3, 1, '701666111023', 2, '884.00', '543.00', 39, 1, 10, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>Ciel Pour Femme by Amouage is a Floral fragrance for women. Ciel Pour Femme was launched in 2003. The nose behind this fragrance is Lucas Sieuzac. Top notes are cyclamen, gardenia and violet leaf; middle notes are peach blossom, jasmine, water lily and rose; base notes are sandalwood, amber, musk, incense and cedar.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE CIEL POUR FEMME 50ML', '', '', NULL, NULL, NULL),
(101, 1, NULL, NULL, NULL, 'AMOUAGE CIEL POUR HOMME 50ML', 'amouage-ciel-pour-homme-50ml', 'AMOUAGE CIEL POUR HOMME 50ML', 'Buy AMOUAGE CIEL POUR HOMME 50ML from Al Hajis Perfumes', 'AMOUAGE CIEL POUR HOMME 50ML\r\n', NULL, 'PD96', 3, 1, '701666111924', 1, '836.00', '520.00', 38, 1, 10, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>Ciel Pour Homme by Amouage is a Aromaatic Spicy fragrance for men. Ciel Pour Homme was launched in 2003. Top notes are lavender, lily-of-the-valley, bergamot and rose; middle notes are nutmeg, cinnamon, peach, jasmine and cardamom; base notes are sandalwood, patchouli, vetiver, incense and cedar.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE CIEL POUR HOMME 50ML', '', '', NULL, NULL, NULL),
(102, 1, NULL, NULL, NULL, 'AMOUAGE DIA EDP W 100ML', 'amouage-dia-edp-w-100ml', 'AMOUAGE DIA EDP W 100ML', 'Buy AMOUAGE DIA EDP W 100ML from Al Hajis Perfumes', 'AMOUAGE DIA EDP W 100ML\r\n', NULL, 'PD97', 3, 1, '701666200963', 2, '1039.00', '531.00', 49, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Dia is a luxury scent for day wear, that is both sophisticated and vibrant. A lighter day version to be a perfect compliment to Amouage Gold which is intended for evening. The distinctive bottles are made from 24% French lead crystal embellished with pink gold.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE DIA EDP W 100ML', '', '', NULL, NULL, NULL),
(103, 1, NULL, NULL, NULL, 'AMOUAGE EPIC EDP FOR WOMAN', 'amouage-epic-edp-for-woman', 'AMOUAGE EPIC EDP FOR WOMAN', 'Buy AMOUAGE EPIC EDP FOR WOMAN from Al Hajis Perfumes', 'AMOUAGE EPIC EDP FOR WOMAN\r\n', NULL, 'PD98', 3, 1, '701666112129', 2, '1245.00', '743.00', 40, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Amouage Epic Woman by Amouage is a oriental floral fragrance for women. Amouage Epic Woman is a new fragrance and it was introduced in 2009. Top notes are caraway, pink pepper and cinnamon; middle notes are rose, geranium, jasmine and tea; base notes are amber, vanilla, incense, orris root, patchouli and agarwood (oud). Amouage Epic Woman was created by Cecile Zarokian, Daniel Maurel and Angeline Leporini.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE EPIC EDP FOR WOMAN', '', '', NULL, NULL, NULL),
(104, 1, NULL, NULL, NULL, 'AMOUAGE EPIC EDP M 100ML', 'amouage-epic-edp-m-100ml', 'AMOUAGE EPIC EDP M 100ML', 'Buy AMOUAGE EPIC EDP M 100ML from Al Hajis Perfumes', 'AMOUAGE EPIC EDP M 100ML\r\n', NULL, 'PD99', 3, 1, '701666312925', 1, '995.00', '530.00', 47, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>The male fragrance Epic Man is an oriental woody one, offering you pink pepper, cardamom, saffron and nutmeg at the top. The heart pulses with essences of geranium and myrrh, while the base consists of precious Aoud, patchouli, leather and incense.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE EPIC EDP M 100ML', '', '', NULL, NULL, NULL),
(105, 1, NULL, NULL, NULL, 'AMOUAGE EPIC EDP WOMEN 50 ML', 'amouage-epic-edp-women-50-ml', 'AMOUAGE EPIC EDP WOMEN 50 ML', 'Buy AMOUAGE EPIC EDP WOMEN 50 ML from Al Hajis Perfumes', 'AMOUAGE EPIC EDP WOMEN 50 ML\r\n', NULL, 'PD100', 3, 1, '701666112112', 2, '954.00', '559.00', 41, 1, 10, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>Amouage Epic Woman by Amouage is a oriental floral fragrance for women. Amouage Epic Woman is a new fragrance and it was introduced in 2009. Top notes are caraway, pink pepper and cinnamon; middle notes are rose, geranium, jasmine and tea; base notes are amber, vanilla, incense, orris root, patchouli and agarwood (oud). Amouage Epic Woman was created by Cecile Zarokian, Daniel Maurel and Angeline Leporini.<br />\r\n&nbsp;<br />\r\n&nbsp;</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE EPIC EDP WOMEN 50 ML', '', '', NULL, NULL, NULL),
(106, 1, NULL, NULL, NULL, 'AMOUAGE FIGMENT EDP 100ML', 'amouage-figment-edp-100ml', 'AMOUAGE FIGMENT EDP 100ML', 'Buy AMOUAGE FIGMENT EDP 100ML from Al Hajis Perfumes', 'AMOUAGE FIGMENT EDP 100ML\r\n', NULL, 'PD101', 3, 1, '701666319122', 1, '957.00', '558.00', 42, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Figment Man by Amouage is a Oriental Woody fragrance for men. This is a new fragrance. Figment Man was launched in 2017. Top notes are lemon, geranium and pink pepper; middle notes are sandalwood, animal notes and vetiver; base notes are labdanum, guaiac wood and earthy notes.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE FIGMENT EDP 100ML', '', '', NULL, NULL, NULL),
(107, 1, NULL, NULL, NULL, 'AMOUAGE GOLD EDP L  50ML', 'amouage-gold-edp-l-50ml', 'AMOUAGE GOLD EDP L  50ML', 'Buy AMOUAGE GOLD EDP L  50ML from Al Hajis Perfumes', 'AMOUAGE GOLD EDP L  50ML\r\n', NULL, 'PD102', 3, 1, '701666040033', 2, '1030.00', '664.00', 36, 1, 10, 1, 1, 1, 1, 1, 50, 5, NULL, '<p>Amouage or Amouage Gold is the first fragrance of Amouage. It was created by Guy Robert 1983. This is an intensive floral for evening wearing and special occasions. The top notes blend wild rose, lily-of-the-valley and silver frankincense. The heart notes include myrrh, orris and jasmine. The oriental base is of ambergris, civet, musk, cedarwood and sandalwood. The luxurious bottle is reminiscent of the Palace Ruwi Mosque which is made from 24% French lead crystal adorned with 24 carat gold plated decoration.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE GOLD EDP L  50ML', '', '', NULL, NULL, NULL),
(108, 1, NULL, NULL, NULL, 'AMOUAGE GOLD EDP L 100ML', 'amouage-gold-edp-l-100ml', 'AMOUAGE GOLD EDP L 100ML', 'Buy AMOUAGE GOLD EDP L 100ML from Al Hajis Perfumes', 'AMOUAGE GOLD EDP L 100ML\r\n', NULL, 'PD103', 3, 1, '701666040064', 2, '796.00', '586.00', 26, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>MAIN ACCORDS balsamic musky floral powdery woody PICTURES Amouage or Amouage Gold is the first fragrance of Amouage. It was created by Guy Robert 1983. This is an intensive floral for evening wearing and special occasions. The top notes blend wild rose, lily-of-the-valley and silver frankincense. The heart notes include myrrh, orris and jasmine. The oriental base is of ambergris, civet, musk, cedarwood and sandalwood. The luxurious bottle is reminiscent of the Palace Ruwi Mosque which is made from 24% French lead crystal adorned with 24 carat gold plated decoration.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE GOLD EDP L 100ML', '', '', NULL, NULL, NULL),
(109, 1, NULL, NULL, NULL, ' AMOUAGE HONOUR EDP L 100ML', 'amouage-honour-edp-l-100ml', 'AMOUAGE HONOUR EDP L 100ML', 'Buy  AMOUAGE HONOUR EDP L 100ML from Al Hajis Perfumes', 'AMOUAGE HONOUR EDP L 100ML\r\n', NULL, 'PD104', 3, 1, '701666314127', 2, '1360.00', '557.00', 59, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>These perfumes are dedicated to the tragic story of Madame Butterfly, the geisha Cio-Cio-San who married an American and waited for his return for three years. More specifically, the inspiration for the new creations was drawn from the last act of the eponymous opera in which Madame commits suicide. Honour Woman is a fragrance of white flowers and resins. White flowers symbolize the progress of unrequited love. The composition was created by Alexandra Carlin and Violaine Collas. Top notes are spices of pepper, rhubarb and coriander. The heart captures flowers of tuberose, jasmine, gardenia, lily of the valley and carnation. The base is oriental with notes of frankincense, vetiver, opoponax, amber and leather</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE HONOUR EDP L 100ML', '', '', NULL, NULL, NULL),
(110, 1, NULL, NULL, NULL, 'AMOUAGE HONOUR EDP M 100ML', 'amouage-honour-edp-m-100ml', 'AMOUAGE HONOUR EDP M 100ML', 'Buy AMOUAGE HONOUR EDP M 100ML from Al Hajis Perfumes', 'AMOUAGE HONOUR EDP M 100ML\r\n', NULL, 'PD105', 3, 1, '701666314929', 1, '995.00', '515.00', 48, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Honour Man is a spicy - woody fragrance of classical compositions. The male version symbolizes the son of Madame Butterfly. Perfumer Nathalie Feisthauer composed it out of spicy notes of red and black pepper at the top. The heart of geranium, elemi and nutmeg is placed on the intensive woody base of patchouli, cedar, vetiver, frankincense, musk and tonka bean.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE HONOUR EDP M 100ML', '', '', NULL, NULL, NULL),
(111, 1, NULL, NULL, NULL, 'AMOUAGE INTERLUDE EDP  M 100ML', 'amouage-interlude-edp-m-100ml', 'AMOUAGE INTERLUDE EDP  M 100ML', 'Buy AMOUAGE INTERLUDE EDP  M 100ML from Al Hajis Perfumes', 'AMOUAGE INTERLUDE EDP  M 100ML\r\n', NULL, 'PD106', 3, 1, '701666315926', 1, '1440.00', '567.00', 61, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Interlude Man is a spicy &ndash; woody fragrance that opens with zesty bergamot, oregano and pimento berry oil, perpetuating intervals of conflict which are countered by aromatic notes of amber, frankincense, opoponax, cistus and myrrh. Eternal notes of leather, agarwood smoke, patchouli and sandalwood in the base add lasting layers of depth and texture.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE INTERLUDE EDP  M 100ML', '', '', NULL, NULL, NULL),
(112, 1, NULL, NULL, NULL, 'AMOUAGE INTERLUDE EDP W 100ML', 'amouage-interlude-edp-w-100ml', 'AMOUAGE INTERLUDE EDP W 100ML', 'Buy AMOUAGE INTERLUDE EDP W 100ML from Al Hajis Perfumes', 'AMOUAGE INTERLUDE EDP W 100ML\r\n', NULL, 'PD107', 3, 1, '701666115120', 2, '1400.00', '751.00', 46, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Interlude Woman is a floral chypre fragrance that reveals an interlude moment of unity and serenity. The sweetness of bergamot and bitterness of grapefruit in the top notes (together with ginger and tagete) create turbulent tensions while rose, frankincense, jasmine, orange blossom, helichrysum, opoponax and sandalwood in the intricate heart are masqueraded with an unconventional combination of nut, coffee, kiwi, honey and agarwood. An opulent base of sumptuous vanilla, benzoin, amber, sandalwood, oakmoss, leather, tonka and musk inject warmth to the fragrance&rsquo;s contradicting accords.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE INTERLUDE EDP W 100ML', '', '', NULL, NULL, NULL),
(113, 1, NULL, NULL, NULL, 'AMOUAGE JOURNEY L EDP 100ML', 'amouage-journey-l-edp-100ml', 'AMOUAGE JOURNEY L EDP 100ML', 'Buy AMOUAGE JOURNEY L EDP 100ML from Al Hajis Perfumes', 'AMOUAGE JOURNEY L EDP 100ML\r\n', NULL, 'PD108', 3, 1, '701666317128', 2, '895.00', '553.00', 38, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>After last year&#39;s fragrant pair Amouage Fate, 2014 will certainly be marked by new editions Amouage Journey Man and Amouage Journey Woman, available in gold color flacons combined with crimson front part (face of the bottle), whose central part features Amouage logo and brand name. We always expect a lot from the house of Amouage and the new Journey fragrances take us for an olfactive journey to the Orient by a mixture of precious ingredients. Women&#39;s fragrance Journey Woman has been announced as a floral-fruity with accentuated leather notes while the version for men, Journey Man, is masculine and woody-spicy also accentuated with leather subtones.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE JOURNEY L EDP 100ML', '', '', NULL, NULL, NULL),
(114, 1, NULL, NULL, NULL, 'AMOUAGE JOURNEY M EDP 100ML', 'amouage-journey-m-edp-100ml', 'AMOUAGE JOURNEY M EDP 100ML', 'Buy AMOUAGE JOURNEY M EDP 100ML from Al Hajis Perfumes', 'AMOUAGE JOURNEY M EDP 100ML\r\n', NULL, 'PD109', 3, 1, '701666317920', 1, '845.00', '515.00', 39, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>After last year&#39;s fragrant pair Amouage Fate, 2014 will certainly be marked by new editions Amouage Journey Man and Amouage Journey Woman, available in gold color flacons combined with crimson front part (face of the bottle), whose central part features Amouage logo and brand name. We always expect a lot from the house of Amouage and the new Journey fragrances take us for an olfactive journey to the Orient by a mixture of precious ingredients. Women&#39;s fragrance Journey Woman has been announced as a floral-fruity with accentuated leather notes while the version for men, Journey Man, is masculine and woody-spicy also accentuated with leather subtones.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE JOURNEY M EDP 100ML', '', '', NULL, NULL, NULL),
(115, 1, NULL, NULL, NULL, 'AMOUAGE JUBILATION 25 EDP 50ML', 'amouage-jubilation-25-edp-50ml', 'AMOUAGE JUBILATION 25 EDP 50ML', 'Buy AMOUAGE JUBILATION 25 EDP 50ML from Al Hajis Perfumes', 'AMOUAGE JUBILATION 25 EDP 50ML', NULL, 'PD110', 3, 1, '701666111061', 2, '944.00', '616.00', 35, 1, 10, 1, 1, 1, 1, 1, 25, 5, NULL, '<p>Jubilation for Women by Amouage is a Oriental Floral fragrance for women. Jubilation for Women was launched in 2008. The nose behind this fragrance is Lucas Sieuzac. Top notes are ylang-ylang, rose, tarragon and lemon; middle notes are labdanum, rose, artemisia and incense; base notes are amber, patchouli, musk, vetiver and myrrh.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE JUBILATION 25 EDP 50ML', '', '', NULL, NULL, NULL),
(116, 1, NULL, NULL, NULL, 'AMOUAGE LYRIC L 100ML', 'amouage-lyric-l-100ml', 'AMOUAGE LYRIC L 100ML', 'Buy AMOUAGE LYRIC L 100ML from Al Hajis Perfumes', 'AMOUAGE LYRIC L 100ML\r\n', NULL, 'PD111', 3, 1, '701666111139', 2, '1112.00', '553.00', 50, 1, 8, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Amouage Lyric Woman offers petals of eternal rose bloom in red nuances. The song introduced by this fragrance starts with bergamot game with spices &ndash; ginger, cinnamon and saffron in the top. The rose awaits us in the heart, just like in the version for men. It is joined by angelica and floral support of jasmine, ylang-ylang, geranium and iris root. The base notes introduce oak moss, sensual musk, woody accords, patchouli, vetiver, sandalwood, Tonka bean and incense. The perfume is available in the amount of 50 and 100 ml from 2008.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE LYRIC L 100ML', '', '', NULL, NULL, NULL),
(117, 1, NULL, NULL, NULL, 'AMOUAGE LYRIC M 100ML', 'amouage-lyric-m-100ml', 'AMOUAGE LYRIC M 100ML', 'Buy AMOUAGE LYRIC M 100ML from Al Hajis Perfumes', 'AMOUAGE LYRIC M 100ML\r\n', NULL, 'PD112', 3, 1, '701666111917', 1, '998.00', '733.00', 27, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Amouage Lyric Man by Amouage is a Oriental Spicy fragrance for men. Amouage Lyric Man was launched in 2008. The nose behind this fragrance is Daniel Visentin. Top notes are bergamot and lime; middle notes are rose, angelica, orange blossom, galbanum, nutmeg, ginger and saffron; base notes are pine tree, sandalwood, incense, vanilla and musk.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE LYRIC M 100ML', '', '', NULL, NULL, NULL),
(118, 1, NULL, NULL, NULL, 'AMOUAGE MEMOIR EDP 100ML', 'amouage-memoir-edp-100ml', 'AMOUAGE MEMOIR EDP 100ML', 'Buy AMOUAGE MEMOIR EDP 100ML from Al Hajis Perfumes', 'AMOUAGE MEMOIR EDP 100ML', NULL, 'PD113', 3, 1, '701666313922', 1, '795.00', '531.00', 33, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>The perfume arrives on the market in September 2010 and belongs to leather-woody-fougere fragrances. Perfumer Karine Vinchon built it around central note of absynth. Top notes are basil, mint and wormwood; middle notes are lavender, incense and rose; base notes are sandalwood, guaiac wood, oak moss, amber, vanille, tobacco and leather. It is a part of fragrant pair along with edition for women. Available as 50 and 100 ml Eau de Parfum. The nose behind this fragrance is Karine Vinchon Spehner.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE MEMOIR EDP 100ML', '', '', NULL, NULL, NULL),
(119, 1, NULL, NULL, NULL, 'AMOUAGE MEMOIR EDP L 100ML', 'amouage-memoir-edp-l-100ml', 'AMOUAGE MEMOIR EDP L 100ML', 'Buy AMOUAGE MEMOIR EDP L 100ML from Al Hajis Perfumes', 'AMOUAGE MEMOIR EDP L 100ML\r\n', NULL, 'PD114', 3, 1, '701666313120', 2, '845.00', '536.00', 37, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>The perfume arrives on the market in September 2010 and belongs to leather-animalistic-chypre fragrances. Perfumers Daniel Maurel and Doroth&eacute;e Piot built it around central note of absynth. Top notes are cardamom, mandarin orange, pink pepper and wormwood; middle notes are clove, incense, pepper, woodsy notes, jasmine, rose and white flowers; base notes are musk, french labdanum, oak moss, styrax and leather. It is a part of fragrant pair along with edition for men. Available as 50 and 100 ml Eau de Parfum. Memoir Woman was created by Daniel Maurel and Dorothee Piot.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE MEMOIR EDP L 100ML', '', '', NULL, NULL, NULL),
(120, 1, NULL, NULL, NULL, 'AMOUAGE MYTHS WOMAN 100ML', 'amouage-myths-woman-100ml', 'AMOUAGE MYTHS WOMAN 100ML', 'Buy AMOUAGE MYTHS WOMAN 100ML from Al Hajis Perfumes', 'AMOUAGE MYTHS WOMAN 100ML', NULL, 'PD115', 3, 1, '701666318125', 2, '1040.00', '536.00', 48, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Myths Woman by Amouage is a Floral Green fragrance for women. Myths Woman was launched in 2016. Top notes are narcissus, violet leaf, labdanum and chrysanthemum; middle notes are carnation, patchouli and ambergris; base notes are leather, moss and musk.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE MYTHS WOMAN 100ML', '', '', NULL, NULL, NULL),
(121, 1, NULL, NULL, NULL, 'AMOUAGE OPUS I EDP 100ML', 'amouage-opus-i-edp-100ml', 'AMOUAGE OPUS I EDP 100ML', 'Buy AMOUAGE OPUS I EDP 100ML from Al Hajis Perfumes', 'AMOUAGE OPUS I EDP 100ML\r\n', NULL, 'PD116', 3, 1, '701666024194', 3, '1558.00', '956.00', 39, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>The composition of Opus I fragrance is characterized as a chypre, created by the perfumer Daniel Maurel. It opens with Bigarade notes, plum and cardamom, while flowering heart wakes all our senses with rose, jasmine, tuberose, ylang-ylang and lily of the valley. The base adds elegant rich shades of papyrus, cedar, giauac wood, incense, tonka, sandalwood and vetiver. The Library Collection Opus I was launched in 2010.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'AMOUAGE OPUS I EDP 100ML', '', '', NULL, NULL, NULL),
(122, 1, NULL, NULL, NULL, 'AMOUAGE REFLECTION EDP MEN 100ML', 'amouage-reflection-edp-men-100ml', 'AMOUAGE REFLECTION EDP MEN 100ML', 'Buy AMOUAGE REFLECTION EDP MEN 100ML from Al Hajis Perfumes', 'AMOUAGE REFLECTION EDP MEN 100ML\r\n', NULL, 'PD117', 3, 1, '701666312055', 1, '995.00', '515.00', 48, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Reflection Man by Amouage is a Woody Floral Musk fragrance for men. Reflection Man was launched in 2007. The nose behind this fragrance is Lucas Sieuzac. Top notes are rosemary, pink pepper and petitgrain; middle notes are orris root, jasmine, neroli and ylang-ylang; base notes are sandalwood, patchouli, vetiver and cedar.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE REFLECTION EDP MEN 100ML', '', '', NULL, NULL, NULL),
(123, 1, NULL, NULL, NULL, 'AMOUAGE REFLECTION L EDP 100ML', 'amouage-reflection-l-edp-100ml', 'AMOUAGE REFLECTION L EDP 100ML', 'Buy AMOUAGE REFLECTION L EDP 100ML from Al Hajis Perfumes', 'AMOUAGE REFLECTION L EDP 100ML\r\n', NULL, 'PD118', 3, 1, '701666111177', 2, '979.00', '663.00', 32, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>This delicate floral fragrance starts with fresh notes of water violet and purple freesia with a hint of green tropical leaves. The royal couple: splendid magnolia and the king of seduction jasmine blossom in the very heart of the fragrance. The base is oriental, warm and noble, consists of cedar, sandal and amber. The perfume was created by Maurice Roucel in 2007.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE REFLECTION L EDP 100ML', '', '', NULL, NULL, NULL),
(124, 1, NULL, NULL, NULL, 'AMOUAGE SILVER EDP 100ML', 'amouage-silver-edp-100ml', 'AMOUAGE SILVER EDP 100ML', 'Buy AMOUAGE SILVER EDP 100ML from Al Hajis Perfumes', 'AMOUAGE SILVER EDP 100ML', NULL, 'PD119', 3, 1, '701666310952', 1, '895.00', '531.00', 41, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Silver Cologne by Amouage is a Woody Floral Musk fragrance for men. Silver Cologne was launched in 2002. Top notes are orange blossom, plum, mandarin orange and bergamot; middle notes are orchid, jasmine, heliotrope, ylang-ylang and rose; base notes are sandalwood, amber, patchouli, musk, vetiver and incense.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE SILVER EDP 100ML', '', '', NULL, NULL, NULL),
(125, 1, NULL, NULL, NULL, 'AMOUAGE SUNSHINE MAN 100ML', 'amouage-sunshine-man-100ml', 'AMOUAGE SUNSHINE MAN 100ML', 'Buy AMOUAGE SUNSHINE MAN 100ML from Al Hajis Perfumes', 'AMOUAGE SUNSHINE MAN 100ML\r\n', NULL, 'PD120', 3, 1, '701666261025', 1, '980.00', '515.00', 47, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Composition of the fragrance AMOUAGE SUNSHINE MEN opens with yellow flowers of immortelle, aromatic lavender and juicy, intoxicating blend orange brandy. The heart highlights bergamot, juniper berries and clary sage on a base of cedar, tonka and vanilla. Warm effect of sunrays comes from a sensual union of immortelle, orange brandy, luminosity of bergamot zest while warm milky-tobacco shades are left by tonka and vanilla. Aromatic notes convey atmosphere of the coast and richness of shades in sea air. The fragrance is available as 100ml Eau de Parfum</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AMOUAGE SUNSHINE MAN 100ML', '', '', NULL, NULL, NULL),
(126, 1, NULL, NULL, NULL, 'AMOUAGE SUNSHINE WOMAN 100ML', 'amouage-sunshine-woman-100ml', 'AMOUAGE SUNSHINE WOMAN 100ML', 'Buy AMOUAGE SUNSHINE WOMAN 100ML from Al Hajis Perfumes', 'AMOUAGE SUNSHINE WOMAN 100ML\r\n', NULL, 'PD121', 3, 1, '701666261001', 2, '1142.00', '588.00', 49, 1, 9, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Sunshine by Amouage is a Oriental Floral fragrance for women. Sunshine was launched in 2014. Top notes are artemisia, black currant and almond; middle notes are osmanthus, jasmine, magnolia and vanilla; base notes are juniper, patchouli, papyrus and white tobacco.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AMOUAGE SUNSHINE WOMAN 100ML', '', '', NULL, NULL, NULL),
(127, 1, NULL, NULL, NULL, 'ANGEL SCHLESSER ORIENTAL EDITION II 100 ML', 'angel-schlesser-oriental-edition-ii-100-ml', 'ANGEL SCHLESSER ORIENTAL EDITION II 100 ML', 'Buy ANGEL SCHLESSER ORIENTAL EDITION II 100 ML from Al Hajis Perfumes', 'ANGEL SCHLESSER ORIENTAL EDITION II 100 ML\r\n', NULL, 'PD122', 90, 1, '8427395650283', 4, '245.00', '147.00', 40, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Angel Schlesser Oriental Edition II has a refined character which reminds us of classic and traditional notes of the house, leaves an impression of luxury and reflects temperament and dynamics of the Orient. Top notes will refresh you with bergamot surrounded with a bouquet of rose, jasmine, violet and lily of the valley. A heart leaves a surprising trace of saffron and carnation enriched with juicy pralines, while a base warms you up with woody accords of cedar, sandalwood, vetiver, patchouli, musk, amber and vanilla.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:29', 1, 'png', 'ANGEL SCHLESSER ORIENTAL EDITION II 100 ML', '', '', NULL, NULL, NULL),
(128, 1, NULL, NULL, NULL, 'ANGEL SCHLESSER ORIENTAL SOUL 100ML 3PCS SET', 'angel-schlesser-oriental-soul-100ml-3pcs-set', 'ANGEL SCHLESSER ORIENTAL SOUL 100ML 3PCS SET', 'Buy ANGEL SCHLESSER ORIENTAL SOUL 100ML 3PCS SET from Al Hajis Perfumes', 'ANGEL SCHLESSER ORIENTAL SOUL 100ML 3PCS SET\r\n', NULL, 'PD123', 90, 1, '8427395664266', 4, '320.00', '194.00', 39, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Oriental Soul Pour Homme by Angel Schlesser is a Oriental Woody fragrance for men. Oriental Soul Pour Homme was launched in 2013. The fragrance features orange blossom, rose, geranium, cloves, patchouli, sandalwood, agarwood (oud), amber, musk and benzoin.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:29', 1, 'png', 'ANGEL SCHLESSER ORIENTAL SOUL 100ML 3PCS SET', '', '', NULL, NULL, NULL),
(129, 1, NULL, NULL, NULL, 'ANGEL SCHLESSER ORIENTAL SOUL L EDT 100ML', 'angel-schlesser-oriental-soul-l-edt-100ml', 'ANGEL SCHLESSER ORIENTAL SOUL L EDT 100ML', 'Buy ANGEL SCHLESSER ORIENTAL SOUL L EDT 100ML from Al Hajis Perfumes', 'ANGEL SCHLESSER ORIENTAL SOUL L EDT 100ML\r\n', NULL, 'PD124', 90, 1, '8427395650160', 2, '280.00', '153.00', 45, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Oriental Soul Pour Femme by Angel Schlesser is a Oriental Vanilla fragrance for women. Oriental Soul Pour Femme was launched in 2013. The fragrance features citruses, peach, freesia, jasmine, hawthorn, heliotrope, vanila, sandalwood, amber, musk, benzoin and agarwood (oud).</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ANGEL SCHLESSER ORIENTAL SOUL L EDT 100ML', '', '', NULL, NULL, NULL),
(130, 1, NULL, NULL, NULL, 'ANGEL SCHLESSER ORIENTAL SOUL MAN EDT 100ML', 'angel-schlesser-oriental-soul-man-edt-100ml', 'ANGEL SCHLESSER ORIENTAL SOUL MAN EDT 100ML', 'Buy ANGEL SCHLESSER ORIENTAL SOUL MAN EDT 100ML from Al Hajis Perfumes', 'ANGEL SCHLESSER ORIENTAL SOUL MAN EDT 100ML\r\n', NULL, 'PD125', 90, 1, '8427395660169', 1, '260.00', '158.00', 39, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Oriental Soul Pour Homme by Angel Schlesser is a Oriental Woody fragrance for men. Oriental Soul Pour Homme was launched in 2013. The fragrance features orange blossom, rose, geranium, cloves, patchouli, sandalwood, agarwood (oud), amber, musk and benzoin.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ANGEL SCHLESSER ORIENTAL SOUL MAN EDT 100ML', '', '', NULL, NULL, NULL),
(131, 1, NULL, NULL, NULL, 'ANGEL SCHLESSER POUR ELLE EDP 100ML', 'angel-schlesser-pour-elle-edp-100ml', 'ANGEL SCHLESSER POUR ELLE EDP 100ML', 'Buy ANGEL SCHLESSER POUR ELLE EDP 100ML from Al Hajis Perfumes', 'ANGEL SCHLESSER POUR ELLE EDP 100ML\r\n', NULL, 'PD126', 90, 1, '8427395820204', 2, '350.00', '172.00', 51, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>There are women that have something special that captivates you: their beauty is as natural as it is dazzling.Despite their discreet attitude, you cannot take your eyes off of them. My new fragrance seeks to define them.&rdquo; The fragrance, described as a &ldquo;touch of mystery,&quot; is created by Amandine Clerc-Marie. The composition begins with fresh, citrusy and floral accords of bergamot, red berries and calendula. Sexiness continues through the middle notes of jasmine, peony, orange blossom and apple. The intense, sensual and spicy base is made of benzoin, patchouli, vetiver and tonka bean.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ANGEL SCHLESSER POUR ELLE EDP 100ML', '', '', NULL, NULL, NULL),
(132, 1, NULL, NULL, NULL, 'ANTONIO BANDERAS THE SECRET TEMPTATION EDT 100ML', 'antonio-banderas-the-secret-temptation-edt-100ml', 'ANTONIO BANDERAS THE SECRET TEMPTATION EDT 100ML', 'Buy ANTONIO BANDERAS THE SECRET TEMPTATION EDT 100ML from Al Hajis Perfumes', 'ANTONIO BANDERAS THE SECRET TEMPTATION EDT 100ML\r\n', NULL, 'PD127', 91, 1, '8411061860502', 1, '289.00', '171.00', 41, 1, 10, 1, 1, 1, 1, 2, 80, 5, NULL, '<p>The Secret Temptation is characterized as a spicy - woody fragrance. It opens with notes of bergamot, green cardamom, pink pepper and elemi. The heart includes accords of bitter artemisia, fresh basil and jasmine, on the base of vetiver, woods, vanilla and musk. It is available as a 50 and 100 ml Eau de Toilette.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ANTONIO BANDERAS THE SECRET TEMPTATION EDT 100ML', '', '', NULL, NULL, NULL),
(133, 1, NULL, NULL, NULL, 'ARAMIS 900 COLOGNE NEW 100ML', 'aramis-900-cologne-new-100ml', 'ARAMIS 900 COLOGNE NEW 100ML', 'Buy ARAMIS 900 COLOGNE NEW 100ML from Al Hajis Perfumes', 'ARAMIS 900 COLOGNE NEW 100ML\r\n', NULL, 'PD128', 4, 1, '22548199329', 1, '217.00', '100.00', 54, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>Aramis 900 by Aramis is a Woody Chypre fragrance for men. Aramis 900 was launched in 1973. The nose behind this fragrance is Bernard Chant. Top notes are coriander, green notes, bergamot, brazilian rosewood and lemon; middle notes are carnation, orris root, jasmine, lily-of-the-valley, rose and geranium; base notes are sandalwood, amber, patchouli, civet, oakmoss and vetiver.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ARAMIS 900 COLOGNE NEW 100ML', '', '', NULL, NULL, NULL),
(134, 1, NULL, NULL, NULL, 'ARAMIS BLACK EDT 110ML', 'aramis-black-edt-110ml', 'ARAMIS BLACK EDT 110ML', 'Buy ARAMIS BLACK EDT 110ML from Al Hajis Perfumes', 'ARAMIS BLACK EDT 110ML\r\n', NULL, 'PD129', 4, 1, '22548342725', 1, '265.00', '105.00', 60, 1, 10, 1, 1, 1, 1, 2, 110, 5, NULL, '<p>Aramis Black by Aramis is a Aromatic fragrance for men. Aramis Black was launched in 2015. Top notes are grapefruit, elemi and mastic or lentisque; middle notes are juniper, woody notes and cognac; base notes are leather, incense, vetiver and tonka bean.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ARAMIS BLACK EDT 110ML', '', '', NULL, NULL, NULL),
(135, 1, NULL, NULL, NULL, 'ARAMIS BLACK EDT 60ML', 'aramis-black-edt-60ml', ' ARAMIS BLACK EDT 60ML', 'Buy ARAMIS BLACK EDT 60ML from Al Hajis Perfumes', ' ARAMIS BLACK EDT 60ML', NULL, 'PD130', 4, 1, '22548342770', 1, '135.00', '95.00', 30, 1, 10, 1, 1, 1, 1, 2, 60, 5, NULL, '<p>Aramis Black by Aramis is a Aromatic fragrance for men. Aramis Black was launched in 2015. Top notes are grapefruit, elemi and mastic or lentisque; middle notes are juniper, woody notes and cognac; base notes are leather, incense, vetiver and tonka bean.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', ' ARAMIS BLACK EDT 60ML', '', '', NULL, NULL, NULL),
(136, 1, NULL, NULL, NULL, 'ARAMIS CALLIGRAPHY EDP 100ML', 'aramis-calligraphy-edp-100ml', 'ARAMIS CALLIGRAPHY EDP 100ML', 'Buy ARAMIS CALLIGRAPHY EDP 100ML from Al Hajis Perfumes', 'ARAMIS CALLIGRAPHY EDP 100ML\r\n', NULL, 'PD131', 4, 1, '22548228395', 3, '335.00', '164.00', 51, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>MAIN ACCORDS warm spicy oud balsamic rose amber patchouli Perfume Calligraphy by Aramis is a Oriental Floral fragrance for women and men. Perfume Calligraphy was launched in 2012. Top notes are cardamom, lemon and cinnamon; middle notes are myrrh, saffron and rose; base notes are patchouli, amber, musk and agarwood (oud). The fragrance features rose and agarwood (oud).</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ARAMIS CALLIGRAPHY EDP 100ML', '', '', NULL, NULL, NULL),
(137, 1, NULL, NULL, NULL, 'ARAMIS CALLIGRAPHY ROSE EDP 100ML', 'aramis-calligraphy-rose-edp-100ml', 'ARAMIS CALLIGRAPHY ROSE EDP 100ML', 'Buy ARAMIS CALLIGRAPHY ROSE EDP 100ML from Al Hajis Perfumes', 'ARAMIS CALLIGRAPHY ROSE EDP 100ML', NULL, 'PD132', 4, 1, '22548268766', 3, '375.00', '212.00', 43, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Perfume Calligraphy Rose by Aramis is a Oriental fragrance for women and men. Perfume Calligraphy Rose was launched in 2013. The nose behind this fragrance is Trudi Loren. Top notes are oregano, saffron and honeysuckle; middle notes are turkish rose, myrrh, styrax and lavender; base notes are labdanum, musk, ambergris and olibanum.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ARAMIS CALLIGRAPHY ROSE EDP 100ML', '', '', NULL, NULL, NULL),
(138, 1, NULL, NULL, NULL, 'ARAMIS CONC 110ML M', 'aramis-conc-110ml-m', 'ARAMIS CONC 110ML M', 'Buy ARAMIS CONC 110ML M from Al Hajis Perfumes', 'ARAMIS CONC 110ML M\r\n', NULL, 'PD133', 4, 1, '22548013014', 1, '225.00', '100.00', 56, 1, 10, 1, 1, 1, 1, 2, 110, 5, NULL, '<p>The composition is built around woody, sharp notes, which are very powerful and masculine. Aramis is one of the few contemporary fragrances in which the well-known intensive leather note can easily be recognized. Aramis is one of the brands belonging to Estee Lauder. It is very popular in America, where fragrances with a stronger character are preferred.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ARAMIS CONC 110ML M', '', '', NULL, NULL, NULL);
INSERT INTO `product` (`id`, `main_category`, `category`, `type`, `subcategory`, `product_name`, `canonical_name`, `meta_title`, `meta_description`, `meta_keywords`, `search_tag`, `item_ean`, `brand`, `ean_type`, `ean_value`, `gender_type`, `price`, `offer_price`, `discount`, `currency`, `stock`, `stock_unit`, `stock_availability`, `tax`, `free_shipping`, `product_type`, `size`, `size_unit`, `main_description`, `product_detail`, `condition`, `CB`, `UB`, `DOC`, `DOU`, `status`, `profile`, `profile_alt`, `gallery_alt`, `other_image`, `related_product`, `featured_product`, `sort`) VALUES
(139, 1, NULL, NULL, NULL, 'ARAMIS DEVIN M 100ML', 'aramis-devin-m-100ml', 'ARAMIS DEVIN M 100ML', 'Buy ARAMIS DEVIN M 100ML from Al Hajis Perfumes', 'ARAMIS DEVIN M 100ML\r\n', NULL, 'PD134', 4, 1, '22548199046', 1, '217.00', '95.00', 56, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>Aramis Devin by Aramis is a Chypre fragrance for men. Aramis Devin was launched in 1977. The nose behind this fragrance is Bernard Chant. Top notes are aldehydes, orange, artemisia, lavender, galbanum, bergamot and lemon; middle notes are carnation, cinnamon, jasmine, caraway and pine tree needles; base notes are labdanum, leather, amber, patchouli, musk, oakmoss and cedar.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ARAMIS DEVIN M 100ML', '', '', NULL, NULL, NULL),
(140, 1, NULL, NULL, NULL, 'ARAMIS M 110ML', 'aramis-m-110ml', 'ARAMIS M 110ML', 'Buy ARAMIS M 110ML from Al Hajis Perfumes', 'ARAMIS M 110ML', NULL, 'PD135', 4, 1, '22548006719', 1, '217.00', '121.00', 44, 1, 9, 1, 1, 1, 1, 2, 110, 5, NULL, '<p>The composition is built around woody, sharp notes, which are very powerful and masculine. Aramis is one of the few contemporary fragrances in which the well-known intensive leather note can easily be recognized. Aramis is one of the brands belonging to Estee Lauder. It is very popular in America, where fragrances with a stronger character are preferred</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ARAMIS M 110ML', '', '', NULL, NULL, NULL),
(141, 1, NULL, NULL, NULL, 'ARAMIS TUSCANY M 100ML', 'aramis-tuscany-m-100ml', 'ARAMIS TUSCANY M 100ML', 'Buy ARAMIS TUSCANY M 100ML from Al Hajis Perfumes', 'ARAMIS TUSCANY M 100ML\r\n', NULL, 'PD136', 4, 1, '22548199480', 1, '285.00', '131.00', 54, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Tuscany Per Uomo by Aramis is a Aromatic Fougere fragrance for men. Tuscany Per Uomo was launched in 1984. Top notes are lime, lavender, bergamot and lemon; middle notes are caraway, orange blossom, tarragon and anise; base notes are leather, sandalwood, tonka bean, patchouli, cinnamon, basil and oakmoss.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ARAMIS TUSCANY M 100ML', '', '', NULL, NULL, NULL),
(142, 1, NULL, NULL, NULL, 'ARMAND BASI IN RED EDT L 100ML', 'armand-basi-in-red-edt-l-100ml', 'ARMAND BASI IN RED EDT L 100ML', 'Buy ARMAND BASI IN RED EDT L 100ML from Al Hajis Perfumes', 'ARMAND BASI IN RED EDT L 100ML', NULL, 'PD137', 113, 1, '8427395940209', 2, '255.00', '134.00', 47, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>This light floral aroma was created by Alberto Morillas of Firmenich. The gentle design of the bottle expresses the spring floral character of the fragrance, while red colour shows its passion. The top notes include: mandarin, bergamot, ginger and cinnamon. The heart encompasses jasmine, rose, lily and violet leaves. The base includes musk and woody notes. The perfume was created in 2003.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ARMAND BASI IN RED EDT L 100ML', '', '', NULL, NULL, NULL),
(143, 1, NULL, NULL, NULL, 'ARMAND BASI IN RED L  EDP 100ML', 'armand-basi-in-red-l-edp-100ml', 'ARMAND BASI IN RED L  EDP 100ML', 'Buy ARMAND BASI IN RED L  EDP 100ML from Al Hajis Perfumes', 'ARMAND BASI IN RED L  EDP 100ML\r\n', NULL, 'PD138', 113, 1, '8427395940285', 2, '255.00', '150.00', 41, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>In Red EdP by Armand Basi is a Floral fragrance for women. In Red EdP was launched in 2003. The nose behind this fragrance is Alberto Morillas. Top notes are mandarin orange, ginger, bergamot and cardamom; middle notes are jasmine, violet leaf, rose and lily-of-the-valley; base notes are woody notes and white musk.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ARMAND BASI IN RED L  EDP 100ML', '', '', NULL, NULL, NULL),
(144, 1, NULL, NULL, NULL, 'ARMANI EAU POUR HOMME 100ML', 'armani-eau-pour-homme-100ml', 'ARMANI EAU POUR HOMME 100ML', 'Buy ARMANI EAU POUR HOMME 100ML from Al Hajis Perfumes', 'ARMANI EAU POUR HOMME 100ML', NULL, 'PD139', 114, 1, '3605521544353', 1, '475.00', '244.00', 49, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Eau de toilette Armani Eau Pour Homme is the great classics of male perfumes. Its composition is sharp citrus aromatic one. Spontaneous and grand refreshment greets you at the top, brought to you by citruses: Sicilian mandarin, Californian green lemon, bergamot and petit grain (citrus leaf). The freshness of citruses is smoothened by orange blossom. At the heart there are elegant jasmine and lavender, accompanied by spices: nut, coriander, cinnamon and clove. The base is filled with warm sandalwood and masculine cedar, vetiver, oakmoss and patchouli that give the fragrance depth and natural feeling. It was created in 1984. The nose behind this fragrance is Roger Pellegrino.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'ARMANI EAU POUR HOMME 100ML', '', '', NULL, NULL, NULL),
(145, 1, NULL, NULL, NULL, 'AROMATICS IN BLACK EDP 100ML', 'aromatics-in-black-edp-100ml', 'AROMATICS IN BLACK EDP 100ML', 'Buy AROMATICS IN BLACK EDP 100ML from Al Hajis Perfumes', 'AROMATICS IN BLACK EDP 100ML\r\n', NULL, 'PD140', 115, 1, '20714769987', 2, '490.00', '236.00', 52, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Aromatics in Black is a 2015 update of Clinique&#39;s legendary fragrance, Aromatics Elixir from 1971. Intoxicating top notes of plum leaf, pink grapefruit and Italian bergamot extend a tempting invitation.An exotic bouquet of osmanthus and neroli opens to reveal sensual jasmine sambac, delicate and powerful.Base notes of vetiver and tonka bean entwine with precious myrrh.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AROMATICS IN BLACK EDP 100ML', '', '', NULL, NULL, NULL),
(146, 1, NULL, NULL, NULL, 'AROMATICS IN WHITE EDP 100ML', 'aromatics-in-white-edp-100ml', 'AROMATICS IN WHITE EDP 100ML', 'Buy AROMATICS IN WHITE EDP 100ML from Al Hajis Perfumes', 'AROMATICS IN WHITE EDP 100ML\r\n', NULL, 'PD141', 115, 1, '20714711740', 2, '395.00', '233.00', 41, 1, 9, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>White color definitely replaces the years-long trend of black color. One fragrance in the long line of very interesting editions arrives from the house of Clinique as a successor of the classic from 1971&mdash;Aromatics Elixir. As the oldest fragrance of the house of Clinique, Aromatics Elixir takes special place in the collection of the house but also an envious place for the quality of the composition in the perfume industry in general. Its chypre-floral composition highlights tart floral essences of carnation and rose, cooled with aldehydes and moss.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AROMATICS IN WHITE EDP 100ML', '', '', NULL, NULL, NULL),
(147, 1, NULL, NULL, NULL, 'ATELIER COLOGNE GOLD LEATHER 100ML', 'atelier-cologne-gold-leather-100ml', 'ATELIER COLOGNE GOLD LEATHER 100ML', 'Buy ATELIER COLOGNE GOLD LEATHER 100ML from Al Hajis Perfumes', 'ATELIER COLOGNE GOLD LEATHER 100ML\r\n', NULL, 'PD142', 117, 1, '3700591212031', 3, '545.00', '362.00', 34, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>Gold Leather by Atelier Cologne is a Leather fragrance for women and men. Gold Leather was launched in 2013. Top notes are bitter orange, saffron, rum and plum; middle notes are artemisia and eucalyptus; base notes are cedar, guaiac wood, agarwood (oud) and leather.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ATELIER COLOGNE GOLD LEATHER 100ML', '', '', NULL, NULL, NULL),
(148, 1, NULL, NULL, NULL, 'ATELIER COLOGNE MUSC IMPERIAL 100ML', 'atelier-cologne-musc-imperial-100ml', 'ATELIER COLOGNE MUSC IMPERIAL 100ML', 'Buy ATELIER COLOGNE MUSC IMPERIAL 100ML from Al Hajis Perfumes', 'ATELIER COLOGNE MUSC IMPERIAL 100ML\r\n', NULL, 'PD143', 117, 1, '3700591272035', 2, '515.00', '352.00', 32, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>Emotions and places are sometimes inseparable. The evening approaches. Revived by the powerful rays of the sun and the Mediterranean breeze, the city comes to life. The encounter must take place at the top. Excitement is inevitable. The party will be epic.&rdquo;&mdash;Atelier Cologne The magical city of Barcelona made its mark on Atelier Cologne&#39;s creators. While at the Majestic Hotel &amp; Spa Barcelona, the classic elegance of the suites imp&eacute;riales in which the brand&#39;s founders stayed, coupled with the grandeur of this vibrant city gave birth to the creation of this new Cologne Absolue.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'ATELIER COLOGNE MUSC IMPERIAL 100ML', '', '', NULL, NULL, NULL),
(149, 1, NULL, NULL, NULL, 'ATELIER COLOGNE OUD SAPHIR 100ML', 'atelier-cologne-oud-saphir-100ml', 'ATELIER COLOGNE OUD SAPHIR 100ML', 'Buy ATELIER COLOGNE OUD SAPHIR 100ML from Al Hajis Perfumes', 'ATELIER COLOGNE OUD SAPHIR 100ML\r\n', NULL, 'PD144', 117, 1, '3700591221033', 4, '525.00', '374.00', 29, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>In May 2015 the house of Atelier Cologne is launching a new fragrance inspired by precious oud combined with fine spices and warm, soft aromas of suede. The elegant composition will be available in the characteristic flacon form in grey colored glass bottles, available as 100 and 200 ml Cologne Absolue. ATELIER COLOGNE OUD SAPHIR opens with citrus drops of bergamot, spiced with pink pepper and ambrette seed. Notes of suede, birch and jasmine in the heart create harmony accompanied with dark, deep accords of agar wood, birch and sensual vanilla.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:29', 1, 'png', 'ATELIER COLOGNE OUD SAPHIR 100ML', '', '', NULL, NULL, NULL),
(150, 1, NULL, NULL, NULL, 'ATELIER COLOGNE OUD SAPHIR 200ML', 'atelier-cologne-oud-saphir-200ml', 'ATELIER COLOGNE OUD SAPHIR 200ML', 'Buy ATELIER COLOGNE OUD SAPHIR 200ML from Al Hajis Perfumes', 'ATELIER COLOGNE OUD SAPHIR 200ML\r\n', NULL, 'PD145', 117, 1, '3700591221002', 4, '620.00', '471.00', 24, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>In May 2015 the house of Atelier Cologne is launching a new fragrance inspired by precious oud combined with fine spices and warm, soft aromas of suede. The elegant composition will be available in the characteristic flacon form in grey colored glass bottles, available as 100 and 200 ml Cologne Absolue. ATELIER COLOGNE OUD SAPHIR opens with citrus drops of bergamot, spiced with pink pepper and ambrette seed. Notes of suede, birch and jasmine in the heart create harmony accompanied with dark, deep accords of agar wood, birch and sensual vanilla.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:29', 1, 'png', 'ATELIER COLOGNE OUD SAPHIR 200ML', '', '', NULL, NULL, NULL),
(151, 1, NULL, NULL, NULL, 'ATELIER COLOGNE ROSE ANONYME 100ML', 'atelier-cologne-rose-anonyme-100ml', 'ATELIER COLOGNE ROSE ANONYME 100ML', 'Buy ATELIER COLOGNE ROSE ANONYME 100ML from Al Hajis Perfumes', 'ATELIER COLOGNE ROSE ANONYME 100ML\r\n', NULL, 'PD146', 117, 1, '3700591208034', 3, '545.00', '315.00', 42, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Rose Anonyme by Atelier Cologne is a Oriental Floral fragrance for women and men. Rose Anonyme was launched in 2012. The fragrance features calabrian bergamot, ginger, turkish rose, somalian opoponax, agarwood (oud), indonesian patchouli leaf, papyrus and benzoin.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ATELIER COLOGNE ROSE ANONYME 100ML', '', '', NULL, NULL, NULL),
(152, 1, NULL, NULL, NULL, 'ATELIER COLOGNE ROSE ANONYME 200ML', 'atelier-cologne-rose-anonyme-200ml', 'ATELIER COLOGNE ROSE ANONYME 200ML', 'Buy ATELIER COLOGNE ROSE ANONYME 200ML from Al Hajis Perfumes', 'ATELIER COLOGNE ROSE ANONYME 200ML\r\n', NULL, 'PD147', 117, 1, '3700591208003', 3, '595.00', '440.00', 26, 1, 10, 1, 1, 1, 1, 1, 200, 5, NULL, '<p>Rose Anonyme by Atelier Cologne is a Oriental Floral fragrance for women and men. Rose Anonyme was launched in 2012. The fragrance features calabrian bergamot, ginger, turkish rose, somalian opoponax, agarwood (oud), indonesian patchouli leaf, papyrus and benzoin.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ATELIER COLOGNE ROSE ANONYME 200ML', '', '', NULL, NULL, NULL),
(153, 1, NULL, NULL, NULL, 'ATELIER COLOGNE SILVER IRIS 100ML', 'atelier-cologne-silver-iris-100ml', 'ATELIER COLOGNE SILVER IRIS 100ML', 'Buy ATELIER COLOGNE SILVER IRIS 100ML from Al Hajis Perfumes', 'ATELIER COLOGNE SILVER IRIS 100ML\r\n', NULL, 'PD148', 117, 1, '3700591211034', 3, '545.00', '362.00', 34, 1, 10, 1, 1, 1, 1, 4, 100, 5, NULL, '<p>Silver Iris by Atelier Cologne is a Oriental Floral fragrance for women and men. Silver Iris was launched in 2013. Top notes are tangerine, pink pepper and black currant; middle notes are mimosa, violet leaf and iris; base notes are patchouli, white amber and musk.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ATELIER COLOGNE SILVER IRIS 100ML', '', '', NULL, NULL, NULL),
(154, 1, NULL, NULL, NULL, 'ATELIER COLOGNE TOBACCO NUIT 200ML', 'atelier-cologne-tobacco-nuit-200ml', 'ATELIER COLOGNE TOBACCO NUIT 200ML', 'Buy ATELIER COLOGNE TOBACCO NUIT 200ML from Al Hajis Perfumes', 'ATELIER COLOGNE TOBACCO NUIT 200ML', NULL, 'PD149', 117, 1, '3700591229008', 3, '635.00', '440.00', 31, 1, 10, 1, 1, 1, 1, 4, 200, 5, NULL, '<p>As a result of numerous trips taken by the founders and Creators, Sylvie Ganter and Christophe Cervasel, to Asia and Middle East, they have created five new Colognes Absolue, all of which are a part of Atelier Cologne newest collection, Collection Orient inspired by the region&rsquo;s natural beauty, people and customs, and particularly the most precious raw materials. The beauty and refinement of these carefully selected raw materials illustrate treasured emotions and powerful memories, source of inspiration for the creators. Atelier Cologne&rsquo;s iconic flacon has been reinvented for Collection Orient. The glass is colored white reflecting modernity and purity. The golden caps pay tribute to the preciousness of the ingredients carefully selected to create each Cologne Absolue.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ATELIER COLOGNE TOBACCO NUIT 200ML', '', '', NULL, NULL, NULL),
(155, 1, NULL, NULL, NULL, 'ATELIER COLOGNE VANILLE INSENSEE 200 ML', 'atelier-cologne-vanille-insensee-200-ml', 'ATELIER COLOGNE VANILLE INSENSEE 200 ML', 'Buy ATELIER COLOGNE VANILLE INSENSEE 200 ML from Al Hajis Perfumes', 'ATELIER COLOGNE VANILLE INSENSEE 200 ML\r\n', NULL, 'PD150', 117, 1, '3700591206009', 3, '620.00', '413.00', 33, 1, 10, 1, 1, 1, 1, 4, 200, 5, NULL, '<p>Vanille Insensee by Atelier Cologne is a Woody fragrance for women and men. Vanille Insensee was launched in 2011. Top notes are coriander, lime and citron; middle notes are vetiver, jasmine and oak moss; base notes are vanille, oak and amber.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:44:52', 1, 'png', 'ATELIER COLOGNE VANILLE INSENSEE 200 ML', '', '', NULL, NULL, NULL),
(156, 1, NULL, NULL, NULL, 'AZZARO CHROME  UNITED EDT M 100ML 2PC SET', 'azzaro-chrome-united-edt-m-100ml-2pc-set', 'AZZARO CHROME  UNITED EDT M 100ML 2PC SET', 'Buy AZZARO CHROME  UNITED EDT M 100ML 2PC SET from Al Hajis Perfumes', 'AZZARO CHROME  UNITED EDT M 100ML 2PC SET', NULL, 'PD151', 5, 1, '3351500957781', 1, '335.00', '149.00', 56, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>The composition of the new edition Chrome United is spicy-woody, and was inspired by the pleasant time spent with friends, a strong bond of friendship and fun moments that make life more relaxing and enjoyable. Top notes of Azzaro Chrome United refresh us with citrusy notes of bergamot, combined with spices (coriander and Szechuan pepper). At the heart lie intense notes of Ceylon black tea and violet leaf, resting on a base of woody notes of cedar and white musk. The fragrance is dedicated to hedonists, people who like socializing and having fun and enjoying the time spent with true friends ... The composition is signed by perfumer Richard Ibanez.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO CHROME  UNITED EDT M 100ML 2PC SET', '', '', NULL, NULL, NULL),
(157, 1, NULL, NULL, NULL, 'AZZARO CHROME M 100ML', 'azzaro-chrome-m-100ml', 'AZZARO CHROME M 100ML', 'Buy AZZARO CHROME M 100ML from Al Hajis Perfumes', 'AZZARO CHROME M 100ML', NULL, 'PD152', 5, 1, '3351500920037', 1, '280.00', '135.00', 52, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Chrome by Azzaro is a Citrus Aromatic fragrance for men. Chrome was launched in 1996. The nose behind this fragrance is Gerard Haury. Top notes are rosemary, pineapple, neroli, bergamot and lemon; middle notes are cyclamen, coriander, jasmine and oakmoss; base notes are sandalwood, tonka bean, musk, oakmoss, cedar, brazilian rosewood and cardamom.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO CHROME M 100ML', '', '', NULL, NULL, NULL),
(158, 1, NULL, NULL, NULL, 'AZZARO CHROME M 200ML', 'azzaro-chrome-m-200ml', 'AZZARO CHROME M 200ML', 'Buy AZZARO CHROME M 200ML from Al Hajis Perfumes', 'AZZARO CHROME M 200ML\r\n', NULL, 'PD153', 5, 1, '3351500920068', 1, '325.00', '170.00', 48, 1, 10, 1, 1, 1, 1, 2, 200, 5, NULL, '<p>Chrome by Azzaro is a Citrus Aromatic fragrance for men. Chrome was launched in 1996. The nose behind this fragrance is Gerard Haury. Top notes are rosemary, pineapple, neroli, bergamot and lemon; middle notes are cyclamen, coriander, jasmine and oakmoss; base notes are sandalwood, tonka bean, musk, oakmoss, cedar, brazilian rosewood and cardamom.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO CHROME M 200ML', '', '', NULL, NULL, NULL),
(159, 1, NULL, NULL, NULL, 'AZZARO CHROME M 50ML', 'azzaro-chrome-m-50ml', 'AZZARO CHROME M 50ML', 'Buy AZZARO CHROME M 50ML from Al Hajis Perfumes', 'AZZARO CHROME M 50ML\r\n', NULL, 'PD154', 5, 1, '3351500920013', 1, '198.00', '125.00', 37, 1, 10, 1, 1, 1, 1, 2, 50, 5, NULL, '<p>Chrome by Azzaro is a Citrus Aromatic fragrance for men. Chrome was launched in 1996. The nose behind this fragrance is Gerard Haury. Top notes are rosemary, pineapple, neroli, bergamot and lemon; middle notes are cyclamen, coriander, jasmine and oakmoss; base notes are sandalwood, tonka bean, musk, oakmoss, cedar, brazilian rosewood and cardamom.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO CHROME M 50ML', '', '', NULL, NULL, NULL),
(160, 1, NULL, NULL, NULL, 'AZZARO CHROME PURE M 100ML', 'azzaro-chrome-pure-m-100ml', 'AZZARO CHROME PURE M 100ML', 'Buy AZZARO CHROME PURE M 100ML from Al Hajis Perfumes', 'AZZARO CHROME PURE M 100ML\r\n', NULL, 'PD155', 5, 1, '3351500005482', 1, '295.00', '278.00', 6, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Azzaro Chrome, the fresh masculine fragrance from 1996, which was inspired by the Mediterranean sea and the bond between fathers and sons, is shown in a new light as Azzaro Chrome Pure, the new edition coming out in early 2017. Azzara Chrome Pure is announced as &quot;the promise of a moment of pure emotion.&quot; Announced as a citrus woody oriental, Chrome Pure retains the distinctive freshness of the original adding two new ingredients &ndash; spicy Akigala wood and tonka bean. The creation is signed by perfumers Jacques Huclier and Olivier Pescheux. Chrome Pure will be available in a smooth, matte white bottle as a 50 and 100 ml Eau de Toilette.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO CHROME PURE M 100ML', '', '', NULL, NULL, NULL),
(161, 1, NULL, NULL, NULL, 'AZZARO CLUB L 75ML', 'azzaro-club-l-75ml', 'AZZARO CLUB L 75ML', 'Buy AZZARO CLUB L 75ML from Al Hajis Perfumes', 'AZZARO CLUB L 75ML\r\n', NULL, 'PD156', 5, 1, '3351500963065', 2, '310.00', '210.00', 32, 1, 10, 1, 1, 1, 1, 2, 75, 5, NULL, '<p>Azzaro Club Women by Azzaro is a Oriental fragrance for women. Azzaro Club Women was launched in 2013. Top notes are pomegranate and passionfruit; middle note is cashmere wood; base notes are vanilla and musk</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AZZARO CLUB L 75ML', '', '', NULL, NULL, NULL),
(162, 1, NULL, NULL, NULL, 'AZZARO DUO MEN EDT 80ML', 'azzaro-duo-men-edt-80ml', 'AZZARO DUO MEN EDT 80ML', 'Buy AZZARO DUO MEN EDT 80ML from Al Hajis Perfumes', 'AZZARO DUO MEN EDT 80ML\r\n', NULL, 'PD157', 5, 1, '3351500963065', 1, '236.00', '144.00', 39, 1, 10, 1, 1, 1, 1, 2, 80, 5, NULL, '<p>Azzaro introduced a new story between a man and a woman early in 2011; a story about their intense passion, their encounter and their merging. This story about rare and precious, strong and permanent love is expressed through the set of perfumes Azzaro Duo - Azzaro Duo Women and Azzaro Duo Men. Azzaro Duo celebrates the chemistry between two people and the union which they represent, promoted with the &quot;Love is precious&quot; slogan. Azzaro Duo Men also includes two scented bubbles &ndash; sparkling and intense. The first emits green notes of galbanum, grapefruit and juniper berries, while the other is intoxicating and woody with vetiver, tonka and musk. The composition is oriental - woody - green.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO DUO MEN EDT 80ML', '', '', NULL, NULL, NULL),
(163, 1, NULL, NULL, NULL, 'AZZARO POUR HOMME 100ML', 'azzaro-pour-homme-100ml', 'AZZARO POUR HOMME 100ML', 'Buy AZZARO POUR HOMME 100ML from Al Hajis Perfumes', 'AZZARO POUR HOMME 100ML\r\n', NULL, 'PD158', 5, 1, '3351500980406', 1, '272.00', '125.00', 54, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Azzaro pour Homme by Azzaro is a Aromatic Fougere fragrance for men. Azzaro pour Homme was launched in 1978. Azzaro pour Homme was created by Gerard Anthony, Martin Heiddenreich and Richard Wirtz. Top notes are caraway, iris, lavender, clary sage, basil, anise, bergamot and lemon; middle notes are sandalwood, juniper berries, patchouli, vetiver, cedar and cardamom; base notes are leather, tonka bean, amber, musk and oakmoss.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO POUR HOMME 100ML', '', '', NULL, NULL, NULL),
(164, 1, NULL, NULL, NULL, 'AZZARO POUR HOMME 150ML DEO SPRAY', 'azzaro-pour-homme-150ml-deo-spray', 'AZZARO POUR HOMME 150ML DEO SPRAY', 'Buy AZZARO POUR HOMME 150ML DEO SPRAY from Al Hajis Perfumes', 'AZZARO POUR HOMME 150ML DEO SPRAY\r\n', NULL, 'PD159', 5, 1, '1000000419757', 1, '145.00', '90.00', 38, 1, 10, 1, 1, 1, 1, 2, 150, 5, NULL, '<p>Azzaro pour Homme by Azzaro is a Aromatic Fougere fragrance for men. Azzaro pour Homme was launched in 1978. Azzaro pour Homme was created by Gerard Anthony, Martin Heiddenreich and Richard Wirtz. Top notes are caraway, iris, lavender, clary sage, basil, anise, bergamot and lemon; middle notes are sandalwood, juniper berries, patchouli, vetiver, cedar and cardamom; base notes are leather, tonka bean, amber, musk and oakmoss.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO POUR HOMME 150ML DEO SPRAY', '', '', NULL, NULL, NULL),
(165, 1, NULL, NULL, NULL, 'AZZARO POUR HOMME 2PCS SET', 'azzaro-pour-homme-2pcs-set', 'AZZARO POUR HOMME 2PCS SET', 'Buy AZZARO POUR HOMME 2PCS SET from Al Hajis Perfumes', 'AZZARO POUR HOMME 2PCS SET\r\n', NULL, 'PD160', 5, 1, '3351500992249', 1, '580.00', '263.00', NULL, 1, 10, 1, 1, 1, 1, 2, NULL, 5, NULL, '<p>Azzaro pour Homme by Azzaro is a Aromatic Fougere fragrance for men. Azzaro pour Homme was launched in 1978. Azzaro pour Homme was created by Gerard Anthony, Martin Heiddenreich and Richard Wirtz. Top notes are caraway, iris, lavender, clary sage, basil, anise, bergamot and lemon; middle notes are sandalwood, juniper berries, patchouli, vetiver, cedar and cardamom; base notes are leather, tonka bean, amber, musk and oakmoss.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO POUR HOMME 2PCS SET', '', '', NULL, NULL, NULL),
(166, 1, NULL, NULL, NULL, 'AZZARO SILVER BLACK M 100ML', 'azzaro-silver-black-m-100ml', 'AZZARO SILVER BLACK M 100ML', 'Buy AZZARO SILVER BLACK M 100ML from Al Hajis Perfumes', 'AZZARO SILVER BLACK M 100ML\r\n', NULL, 'PD161', 5, 1, '', 1, '140.00', '109.00', 22, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Silver Black by Azzaro is a Woody Aromatic fragrance for men. Silver Black was launched in 2005. The nose behind this fragrance is Francoise Caron. Top notes are lime, apple, anise and bergamot; middle notes are coriander, juniper and cardamom; base notes are sandalwood, patchouli, vetiver and white musk.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO SILVER BLACK M 100ML', '', '', NULL, NULL, NULL),
(167, 1, NULL, NULL, NULL, 'AZZARO SILVER BLACK M 50ML', 'azzaro-silver-black-m-50ml', 'AZZARO SILVER BLACK M 50ML', 'Buy AZZARO SILVER BLACK M 50ML from Al Hajis Perfumes', 'AZZARO SILVER BLACK M 50ML\r\n', NULL, 'PD162', 5, 1, '', 1, '198.00', '95.00', 52, 1, 10, 1, 1, 1, 1, 2, 50, 5, NULL, '<p>Silver Black by Azzaro is a Woody Aromatic fragrance for men. Silver Black was launched in 2005. The nose behind this fragrance is Francoise Caron. Top notes are lime, apple, anise and bergamot; middle notes are coriander, juniper and cardamom; base notes are sandalwood, patchouli, vetiver and white musk.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO SILVER BLACK M 50ML', '', '', NULL, NULL, NULL),
(168, 1, NULL, NULL, NULL, 'AZZARO TWIN M 80ML', 'azzaro-twin-m-80ml', 'AZZARO TWIN M 80ML', 'Buy AZZARO TWIN M 80ML from Al Hajis Perfumes', 'AZZARO TWIN M 80ML\r\n', NULL, 'PD163', 5, 1, '3351500956524', 1, '229.00', '131.00', 43, 1, 10, 1, 1, 1, 1, 2, 80, 5, NULL, '<p>After fragrant duo Now, Azzaro presents a new fragrant pair, Twin. These are editions Twin for Women and Twin for Men, in black and white flacons, shaped just like the previous pair Now. Twin for Men is composed of bergamot, green apple, mandarin, sweet almonds, patchouli, nutmeg, rosewood and sandalwood. The black, masculine flacon was created by Luigi Colani. Both editions are available as 30, 60 and 80ml edt. Perfumers are Sidonie Lancesseur, Richard Ibanez, Michel Almairac. Twin for Men was launched in 2008.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO TWIN M 80ML', '', '', NULL, NULL, NULL),
(169, 1, NULL, NULL, NULL, 'AZZARO VISIT M 100ML', 'azzaro-visit-m-100ml', 'AZZARO VISIT M 100ML', 'Buy AZZARO VISIT M 100ML from Al Hajis Perfumes', 'AZZARO VISIT M 100ML\r\n', NULL, 'PD164', 5, 1, '3351500950027', 1, '138.00', '113.00', 18, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>This woody and spicy fragrance was created for modern, urban, younger generation. A young man, self-confident, walks the street while buildings made of glass and concrete are rising high above his head, and his heart beats in unison with rhythm of the city. Elegant, woody notes, sweetened and soothed by amber and musk, follow the spicy start. It was launched in 2003. Top notes: cardamom, nutmeg, pink pepper, ginger. The heart: Lebanese cedar, guaiac tree, incense. The base: gray amber, musk. The perfume was created by Annick Menardo.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO VISIT M 100ML', '', '', NULL, NULL, NULL),
(170, 1, NULL, NULL, NULL, 'AZZARO VISIT M 50ML', 'azzaro-visit-m-50ml', 'AZZARO VISIT M 50ML', 'Buy AZZARO VISIT M 50ML from Al Hajis Perfumes', 'AZZARO VISIT M 50ML', NULL, 'PD165', 5, 1, '3351500950010', 1, '189.00', '95.00', 50, 1, 10, 1, 1, 1, 1, 2, 50, 5, NULL, '<p>This woody and spicy fragrance was created for modern, urban, younger generation. A young man, self-confident, walks the street while buildings made of glass and concrete are rising high above his head, and his heart beats in unison with rhythm of the city. Elegant, woody notes, sweetened and soothed by amber and musk, follow the spicy start. It was launched in 2003. Top notes: cardamom, nutmeg, pink pepper, ginger. The heart: Lebanese cedar, guaiac tree, incense. The base: gray amber, musk. The perfume was created by Annick Menardo.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO VISIT M 50ML', '', '', NULL, NULL, NULL),
(171, 1, NULL, NULL, NULL, 'AZZARO VISIT WOMEN 75ML', 'azzaro-visit-women-75ml', 'AZZARO VISIT WOMEN 75ML', 'Buy AZZARO VISIT WOMEN 75ML from Al Hajis Perfumes', 'AZZARO VISIT WOMEN 75ML\r\n', NULL, 'PD166', 5, 1, '3351500956029', 2, '158.00', '110.00', 30, 1, 10, 1, 1, 1, 1, 1, 75, 5, NULL, '<p>A year after Visit for Men, Azzaro launched the version for women in 2002. This is a fragrance that goes together with a red evening dress. Two flowers merge in the heart of the composition and bloom together: rose and jasmine, creating a classic mix. Delicate floral passion is followed by intense, woody accords with warm and mysterious notes of musk and amber. Top notes: orange leaves, pepper. The heart: Bulgarian rose, jasmine, cedar. The base: musk, benzoin, Tonka bean, amber. The perfume was created by Domitille Michalon and Olivier Polge in 2004.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:12', 1, 'png', 'AZZARO VISIT WOMEN 75ML', '', '', NULL, NULL, NULL),
(172, 1, NULL, NULL, NULL, 'AZZARO WANTED BY NIGHT EDP 100ML', 'azzaro-wanted-by-night-edp-100ml', 'AZZARO WANTED BY NIGHT EDP 100ML', 'Buy AZZARO WANTED BY NIGHT EDP 100ML from Al Hajis Perfumes', 'AZZARO WANTED BY NIGHT EDP 100ML\r\n', NULL, 'PD167', 5, 1, '3351500009848', 1, '457.00', '304.00', 33, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>Azzaro launches Wanted by Night in the spring of 2018 as a sensual, evening edition of the original Wanted created by Fabrice Pellegrin in 2016. The new perfume is inspired by the hedonistic lifestyle of Loris Azzaro during the 1970s. &quot;Azzaro Wanted by Night is the fragrance of a modern-day seducer. An extraordinary man. Elegant, bold, mysterious, he is surrounded by an air of confidence and power. Whether night or day, he attracts and arouses desire&hellip; For him, it&rsquo;s an endless night; and for them, it&rsquo;s a one-on-one moment that they will never forget</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO WANTED BY NIGHT EDP 100ML', '', '', NULL, NULL, NULL),
(173, 1, NULL, NULL, NULL, 'AZZARO WANTED COLLECTOR FREERIDE EDT 100ML', 'azzaro-wanted-collector-freeride-edt-100ml', 'AZZARO WANTED COLLECTOR FREERIDE EDT 100ML', 'Buy AZZARO WANTED COLLECTOR FREERIDE EDT 100ML from Al Hajis Perfumes', 'AZZARO WANTED COLLECTOR FREERIDE EDT 100ML\r\n', NULL, 'PD168', 5, 1, '3351500004577', 1, '345.00', '308.00', 11, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Azzaro Wanted Freeride Collector Edition for 2017 is a limited edition bottle inspired by the mechanical universe, dressed in a metal lacquered bottle with an industrial brushed metal effect. Azzaro Wanted is the freshness of cardamom, the woody elegance of the bike and the suave warmth of the tonka slot, in the heart of a sophisticated bottle with a unique design in the shape of a barrel ... as a symbol of freedom .</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO WANTED COLLECTOR FREERIDE EDT 100ML', '', '', NULL, NULL, NULL),
(174, 1, NULL, NULL, NULL, 'AZZARO WANTED EDT 100ML', 'azzaro-wanted-edt-100ml', 'AZZARO WANTED EDT 100ML', 'Buy AZZARO WANTED EDT 100ML from Al Hajis Perfumes', 'AZZARO WANTED EDT 100ML\r\n', NULL, 'PD169', 5, 1, '3351500002702', 1, '345.00', '191.00', 45, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Wanted by Azzaro is a Woody Spicy fragrance for men. Wanted was launched in 2016. The nose behind this fragrance is Fabrice Pellegrin. Top notes are lemon, ginger, lavender and mint; middle notes are guatemalan cardamom, juniper, apple and geranium; base notes are haitian vetiver, tonka bean and amberwood.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'AZZARO WANTED EDT 100ML', '', '', NULL, NULL, NULL),
(175, 1, NULL, NULL, NULL, 'BALDESSARINI  EAU DE COLOGNE COLOGNE  75ML', 'baldessarini-eau-de-cologne-cologne-75ml', 'BALDESSARINI  EAU DE COLOGNE COLOGNE  75ML', 'Buy BALDESSARINI  EAU DE COLOGNE COLOGNE  75ML from Al Hajis Perfumes', 'BALDESSARINI  EAU DE COLOGNE COLOGNE  75ML\r\n', NULL, 'PD170', 92, 1, '4011700902033', 1, '295.00', '152.00', 48, 1, 10, 1, 1, 1, 1, 4, 75, 5, NULL, '<p>According to the slogan of the brand Baldessarini: &ldquo;Separates the men from the boys.&rdquo;, or in other words, Baldessarini&rsquo;s perfumes are aimed at more adult audience. Baldessarini is composed of metal, sensual accords which blend with a fresh, spicy composition. The face for this perfume is Charles Schumann, the owner of the famous Munich bar. This fragrance for real men awakens fantasy, a wish for travelling to distant, exotic countries. In the beginning you can feel a sharp freshness of orange, mandarin and mint, which hide a special masculine metal note in themselves. The spicy heart is composed of patchouli flower, cumin and cloves. The warm and elegant base is composed of sandalwood, spruce, patchouli leaves, tobacco, ambergris and musk. The perfume bas created by Jean Marc Chaillan and Pierre Wargnye in 2002. Baldessarini was created by Jean-Marc Chaillan and Pierre Wargnye.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BALDESSARINI  EAU DE COLOGNE COLOGNE  75ML', '', '', NULL, NULL, NULL),
(176, 1, NULL, NULL, NULL, 'BALDESSARINI AMBRE EDT M 30ML', 'baldessarini-ambre-edt-m-30ml', 'BALDESSARINI AMBRE EDT M 30ML', 'Buy BALDESSARINI AMBRE EDT M 30ML from Al Hajis Perfumes', 'BALDESSARINI AMBRE EDT M 30ML\r\n', NULL, 'PD171', 92, 1, '4011700906178', 1, '165.00', '100.00', 39, 1, 9, 1, 1, 1, 1, 2, 30, 5, NULL, '<p>A woody-oriental fragrance with fruity nuances that &lsquo;separates the men from the boys&rsquo;, is the third fragrance from Baldessarini. Charles Schumann, the face of the first two, once again lends his masculine and charming image to advertise this woody-oriental juice with whisky and oak-wood accents. A distinctive note of whisky opens the composition harmonized with the notes mandarin orange and red apple. At its heart, the sharp leather note is blended with violet. Its amber-oriental character is sustained thanks to vanilla, oak moss and labdanum. It was created by the Firmenich perfumer team in 2007.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BALDESSARINI AMBRE EDT M 30ML', '', '', NULL, NULL, NULL),
(177, 1, NULL, NULL, NULL, 'BALDESSARINI AMBRE EDT M 90ML', 'baldessarini-ambre-edt-m-90ml', 'BALDESSARINI AMBRE EDT M 90ML', 'Buy BALDESSARINI AMBRE EDT M 90ML from Al Hajis Perfumes', 'BALDESSARINI AMBRE EDT M 90ML\r\n', NULL, 'PD172', 92, 1, '4011700906017', 1, '300.00', '151.00', 50, 1, 10, 1, 1, 1, 1, 2, 90, 5, NULL, '<p>A woody-oriental fragrance with fruity nuances that &lsquo;separates the men from the boys&rsquo;, is the third fragrance from Baldessarini. Charles Schumann, the face of the first two, once again lends his masculine and charming image to advertise this woody-oriental juice with whisky and oak-wood accents. A distinctive note of whisky opens the composition harmonized with the notes mandarin orange and red apple. At its heart, the sharp leather note is blended with violet. Its amber-oriental character is sustained thanks to vanilla, oak moss and labdanum. It was created by the Firmenich perfumer team in 2007.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BALDESSARINI AMBRE EDT M 90ML', '', '', NULL, NULL, NULL),
(178, 1, NULL, NULL, NULL, 'BALDESSARINI NAUTIC SPIRIT EDT 90ML', 'baldessarini-nautic-spirit-edt-90ml', 'BALDESSARINI NAUTIC SPIRIT EDT 90ML', 'Buy BALDESSARINI NAUTIC SPIRIT EDT 90ML from Al Hajis Perfumes', 'BALDESSARINI NAUTIC SPIRIT EDT 90ML\r\n', NULL, 'PD173', 92, 1, '4011700920013', 1, '305.00', '163.00', 47, 1, 10, 1, 1, 1, 1, NULL, 90, 5, NULL, '<p>Nautic Spirit, the new fragrance for men by Baldessarini, tells a story of adventurer who lives an exciting life and his days spent at open sea. This fragrance offers a &quot;metaphorical pause&quot; and moments of relaxation in your everyday life and brings harmony of contrasts. The composition begins with a combination of fresh passion fruit, mango and sea water. The heart contains a special ingredient of curry leaf, rarely present in the fragrances. This spicy accord is associated with more spices of cardamom and ginger. Musk, patchouli and sandalwood in the base contribute to the overall hot-cold impression of the scent.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BALDESSARINI NAUTIC SPIRIT EDT 90ML', '', '', NULL, NULL, NULL),
(179, 1, NULL, NULL, NULL, 'BALDESSARINI SECRET MISSION EDT M 90ML', 'baldessarini-secret-mission-edt-m-90ml', 'BALDESSARINI SECRET MISSION EDT M 90ML', 'Buy BALDESSARINI SECRET MISSION EDT M 90ML from Al Hajis Perfumes', 'BALDESSARINI SECRET MISSION EDT M 90ML\r\n', NULL, 'PD174', 92, 1, '4011700917020', 1, '300.00', '168.00', 44, 1, 10, 1, 1, 1, 1, 2, 90, 5, NULL, '<p>Baldessarini launches the new fragrance Secret Mission that will be available from specialist retailers and in selected department stores from the end of August, 2012. Charles Schumann is the face of BALDESSARINI FRAGRANCES. He impressively embodies a man with character, style and a personal mythology.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BALDESSARINI SECRET MISSION EDT M 90ML', '', '', NULL, NULL, NULL),
(180, 1, NULL, NULL, NULL, 'BALDESSARINI STRICTLY PRIVATE M 90ML', 'baldessarini-strictly-private-m-90ml', 'BALDESSARINI STRICTLY PRIVATE M 90ML', 'Buy BALDESSARINI STRICTLY PRIVATE M 90ML from Al Hajis Perfumes', 'BALDESSARINI STRICTLY PRIVATE M 90ML\r\n', NULL, 'PD175', 92, 1, '4011700908011', 1, '265.00', '156.00', 41, 1, 10, 1, 1, 1, 1, 2, 90, 5, NULL, '<p>Baldessarini introduces an oriental spicy fragrance, Baldessarini Strictly Private, which is appeared on the market in January 2009. This is a new campaign aiming at upper class, at man who chooses quality, luxurious editions, man who is a playboy. Strictly Private is a masculine, charismatic and sexy edition, full of dynamism. Face of the fragrance is Werner Schreyer, known for advertisements for Hugo Boss perfumes, and photographer of the campaign is famous Kalle Gustavson.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BALDESSARINI STRICTLY PRIVATE M 90ML', '', '', NULL, NULL, NULL),
(181, 1, NULL, NULL, NULL, 'BENTLEY ABSOLUTE EDP M  100ML', 'bentley-absolute-edp-m-100ml', 'BENTLEY ABSOLUTE EDP M  100ML', 'Buy BENTLEY ABSOLUTE EDP M  100ML from Al Hajis Perfumes', 'BENTLEY ABSOLUTE EDP M  100ML\r\n', NULL, 'PD176', 8, 1, '7640111508243', 1, '399.00', '151.00', 62, 1, 10, 1, 1, 1, 1, 1, 100, 5, NULL, '<p>As an extremely masculine, woody-oriental fragrance Bentley for Men Absolute offers the mysterious and intense character of oud, leaving a trail of sophisticated essences. Top notes encompass a vigorous blend of ginger, pink pepper and olibanum, followed by scents of papyrus, sandalwood and Atlas cedar in the heart of the composition. The base warms us additionally with amber, intense oud and moss. The fragrance arrives in a bottle shaped like the previous editions for men, in the amount of 100 ml Eau de Toilette. Unlike the previous flacons, the new edition arrives in matte black glass combined with golden color details.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BENTLEY ABSOLUTE EDP M  100ML', '', '', NULL, NULL, NULL),
(182, 1, NULL, NULL, NULL, 'BENTLEY AZURE M EDT 100ML', 'bentley-azure-m-edt-100ml', 'BENTLEY AZURE M EDT 100ML', 'Buy BENTLEY AZURE M EDT 100ML from Al Hajis Perfumes', 'BENTLEY AZURE M EDT 100ML\r\n', NULL, 'PD177', 8, 1, '7640111505631', 1, '325.00', '131.00', 60, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Bentley launches a new fragrance inspired by seacoast air and a relaxing ride along the shore. Its name is Bentley For Men Azure and it comes in a bottle where colors vary from pale gray to blue. It is a relaxing blend of notes, giving the impression relaxing at the sea side with salty air caressing the senses. Top notes of fresh citruses include juicy pineapple and herbal aromas of violet leaf. The heart emphasizes pepper, lavender and sage surrounded by tea and placed on the base of cashmere wood , tonka bean and orcanox molecule .</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BENTLEY AZURE M EDT 100ML', '', '', NULL, NULL, NULL),
(183, 1, NULL, NULL, NULL, 'BENTLEY INFINITE EDT M  100ML', 'bentley-infinite-edt-m-100ml', 'BENTLEY INFINITE EDT M  100ML', 'Buy BENTLEY INFINITE EDT M  100ML from Al Hajis Perfumes', 'BENTLEY INFINITE EDT M  100ML\r\n', NULL, 'PD178', 8, 1, '7640163970012', 1, '295.00', '134.00', 55, 1, 10, 1, 1, 1, 1, 2, 100, 5, NULL, '<p>Infinite Eau de Toilette is a fragrance that provides citrus freshness in the top notes mixed with natural shades of cedar and aromatic lavender. The heart introduces a union of bourbon pepper, violet and geranium resting on elegant shades of patchouli, Haiti vetiver and ambergris. The fragrance is available as 100 ml edt.</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'png', 'BENTLEY INFINITE EDT M  100ML', '', '', NULL, NULL, NULL),
(184, 1, NULL, NULL, NULL, 'test product', 'test-product', 'Test Product', 'Test Product', 'Test Product', NULL, 'PD179', 1, 1, 'test1', 1, '500.00', '450.00', 10, 1, 100, 1, 1, 1, NULL, 1, 100, 5, NULL, '<p>Test Product</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'Test Product', 'Test Product', '', NULL, NULL, NULL),
(185, 1, NULL, NULL, NULL, 'product2', 'product2', 'Test Product', 'Test Product', 'Test Product', NULL, 'PD180', 1, 1, 'test1', 1, '600.00', '500.00', 17, 1, 99, 1, 1, 1, NULL, 1, 100, 5, NULL, '<p>Test Product</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', '', '', '', NULL, NULL, NULL),
(186, 1, NULL, NULL, NULL, 'testing', 'testing', 'test', 'Buy testing from Al Hajis Perfumes', 'test', NULL, 'PD181', 1, 1, 'adfdg', 1, '500.00', '450.00', 10, 1, 15, 5, 1, 1, NULL, 1, 50, 5, NULL, '<p>test</p>\r\n', 1, NULL, NULL, NULL, '2019-03-15 10:45:21', 1, 'jpg', 'test', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_listing`
--

CREATE TABLE IF NOT EXISTS `product_listing` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `tittle` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_listing`
--

INSERT INTO `product_listing` (`id`, `type`, `tittle`, `product_id`, `sort_order`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 0, 'Our Perfumes', '4,6,11,15', NULL, 1, 1, 1, '2018-09-12', '2019-03-15 08:30:35'),
(2, 0, 'Our Watches', '12,27,39,40', NULL, 1, 1, 1, '2018-09-12', '2019-02-11 04:26:00'),
(3, 0, 'Our gifts', '19,27,39,40', NULL, 1, 1, 1, '2018-09-12', '2019-02-11 05:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `id` int(11) NOT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `canonical_name` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `product_type`, `canonical_name`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'Part Sale', 'part-sale', 1, 1, 1, '2019-03-15', '2019-03-15 10:13:23'),
(2, 'Best Selling', 'best-selling', 1, 1, 1, '2019-03-15', '2019-03-15 10:13:30'),
(3, 'New Arrival', 'new-arrival', 1, 1, 1, '2019-03-15', '2019-03-15 10:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(11) NOT NULL,
  `promotion_type` int(11) DEFAULT NULL,
  `promotion_code` varchar(250) DEFAULT NULL,
  `product_id` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=percentage,2=fixed',
  `price` decimal(10,2) DEFAULT NULL,
  `amount_range` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `code_usage` int(11) DEFAULT NULL COMMENT '1=one time use,2=multiple use',
  `starting_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `code_used` varchar(250) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `promotion_type`, `promotion_code`, `product_id`, `user_id`, `type`, `price`, `amount_range`, `time`, `code_usage`, `starting_date`, `expiry_date`, `status`, `code_used`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 2, 'ABC', '', '1', 1, '50.00', '75', NULL, 2, '2019-02-25', '2019-03-30', 1, NULL, 2, 2, '2019-02-25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recently_viewed`
--

CREATE TABLE IF NOT EXISTS `recently_viewed` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recently_viewed`
--

INSERT INTO `recently_viewed` (`id`, `user_id`, `session_id`, `product_id`, `date`) VALUES
(1, 2, '', 193, '2018-10-17'),
(2, NULL, '1539758142196', 1, '2018-10-17'),
(3, NULL, '1539861152339', 2, '2018-10-18'),
(4, 2, '', 2, '2018-10-18'),
(5, 2, '', 3, '2018-10-20'),
(6, NULL, '1540020688367', 4, '2018-10-20'),
(7, NULL, '1540038452400', 5, '2018-10-20'),
(8, NULL, '1540183894346', 3, '2018-10-22'),
(9, 2, '', 6, '2018-10-23'),
(10, NULL, '1540310720973', 7, '2018-10-23'),
(11, NULL, '1540310868824', 7, '2018-10-23'),
(12, NULL, '1540312229379', 7, '2018-10-23'),
(13, 2, '', 7, '2018-10-24'),
(14, NULL, '1540367259545', 7, '2018-10-24'),
(15, NULL, '1540367259545', 6, '2018-10-24'),
(16, NULL, '1540470950319', 8, '2018-10-25'),
(17, 2, '', 8, '2018-10-25'),
(18, NULL, '1540472801438', 8, '2018-10-25'),
(19, NULL, '1540473118986', 7, '2018-10-25'),
(20, NULL, '1540473118986', 8, '2018-10-25'),
(21, NULL, '1540473118986', 6, '2018-10-25'),
(22, NULL, '1540473118986', 9, '2018-10-25'),
(23, NULL, '1540474019953', 9, '2018-10-25'),
(24, NULL, '1540486420529', 11, '2018-10-25'),
(25, NULL, '1540503592445', 11, '2018-10-25'),
(26, NULL, '1540632731163', 12, '2018-10-27'),
(27, NULL, '1540632731163', 4, '2018-10-27'),
(28, NULL, '1540635128215', 13, '2018-10-27'),
(29, NULL, '1542960228307', 13, '2018-11-23'),
(30, NULL, '1542960228307', 8, '2018-11-23'),
(31, NULL, '1543420314517', 14, '2018-11-28'),
(32, NULL, '1543505833090', 38, '2018-11-29'),
(33, NULL, '1543565102760', 11, '2018-11-30'),
(34, NULL, '1543565102760', 17, '2018-11-30'),
(35, NULL, '1543571551636', 41, '2018-11-30'),
(36, NULL, '1543575113371', 6, '2018-11-30'),
(37, NULL, '1543580080676', 11, '2018-11-30'),
(38, NULL, '1543918722216', 33, '2018-12-04'),
(39, NULL, '1543918722216', 44, '2018-12-04'),
(40, NULL, '1543918722216', 32, '2018-12-04'),
(41, NULL, '1543964314374', 44, '2018-12-04'),
(42, NULL, '1546177315144', 56, '2018-12-30'),
(43, NULL, '1546177315144', 12, '2018-12-30'),
(44, NULL, '1546180418302', 12, '2018-12-30'),
(45, NULL, '1546257092764', 63, '2018-12-31'),
(46, NULL, '1546257092764', 64, '2018-12-31'),
(47, NULL, '1546261598646', 67, '2018-12-31'),
(48, NULL, '1546274909707', 63, '2018-12-31'),
(49, NULL, '1546274924373', 63, '2018-12-31'),
(50, NULL, '1546274909707', 64, '2018-12-31'),
(51, NULL, '1546422750620', 27, '2019-01-02'),
(52, NULL, '1546516567572', 4, '2019-01-03'),
(53, NULL, '1548402344281', 15, '2019-01-25'),
(54, NULL, '1548925768915', 68, '2019-01-31'),
(55, NULL, '1548925768915', 69, '2019-01-31'),
(56, NULL, '1548925768915', 70, '2019-01-31'),
(57, NULL, '1548925768915', 71, '2019-01-31'),
(58, NULL, '1548925768915', 72, '2019-01-31'),
(59, NULL, '1549007198756', 81, '2019-02-01'),
(60, NULL, '1549007198756', 83, '2019-02-01'),
(61, NULL, '1549007198756', 85, '2019-02-01'),
(62, NULL, '1549352505591', 22, '2019-02-05'),
(63, NULL, '1549352505591', 23, '2019-02-05'),
(64, NULL, '1549352544544', 20, '2019-02-05'),
(65, NULL, '1549352544544', 57, '2019-02-05'),
(66, NULL, '1549352647163', 57, '2019-02-05'),
(67, NULL, '1549528813707', 174, '2019-02-07'),
(68, NULL, '1549607158379', 184, '2019-02-08'),
(69, NULL, '1549607158379', 185, '2019-02-08'),
(70, NULL, '1550373473647', 4, '2019-02-17'),
(71, NULL, '1550373473647', 3, '2019-02-17'),
(72, NULL, '1550373473647', 12, '2019-02-17'),
(73, NULL, '1550373473647', 8, '2019-02-17'),
(74, NULL, '1550473027265', 6, '2019-02-18'),
(75, NULL, '1550473027265', 4, '2019-02-18'),
(76, NULL, '1550473027265', 136, '2019-02-18'),
(77, NULL, '1550473027265', 19, '2019-02-18'),
(78, 3, '', 4, '2019-03-06'),
(79, 1, '', 4, '2019-03-06'),
(80, 3, '', 15, '2019-02-28'),
(81, 3, '', 6, '2019-02-28'),
(82, NULL, '1551248416483', 6, '2019-02-27'),
(83, 3, '', 20, '2019-02-28'),
(84, 3, '', 3, '2019-03-04'),
(85, 1, '', 3, '2019-03-04'),
(86, 3, '', 11, '2019-03-04'),
(87, 1, '', 11, '2019-03-04'),
(88, NULL, '1551768505453', 4, '2019-03-05'),
(89, 1, '', 6, '2019-03-06'),
(90, NULL, '1552970824383', 6, '2019-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` bigint(20) NOT NULL,
  `prefix` varchar(200) DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `label`, `value`, `prefix`, `DOU`) VALUES
(1, 'Minimum amount for free shipping', 99, '', '2017-08-29 09:39:05'),
(2, 'Additional charge for shipping', 15, '', '2017-08-29 10:11:03'),
(3, 'Product EAN', 1, 'PD', '2017-08-29 10:11:03'),
(4, 'Order id', 1221, '', '2017-09-14 08:14:45'),
(5, 'Gift wrap Rate', 2, '', '2018-04-23 06:11:49'),
(6, 'Invoice', 13, NULL, '2018-10-12 04:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `shop_by_category`
--

CREATE TABLE IF NOT EXISTS `shop_by_category` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `showrooms`
--

CREATE TABLE IF NOT EXISTS `showrooms` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` text,
  `email` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `map` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showrooms`
--

INSERT INTO `showrooms` (`id`, `title`, `address`, `email`, `image`, `map`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(3, 'AL RIGGA', '<p>Subway Building,Near Al Rigga Metro 2nd Exit,&nbsp; &nbsp;Al Rigga Street,&nbsp;Dubai, UAE</p>\r\n\r\n<p>Working Hours:10.00 AM To 12.00 AM</p>\r\n\r\n<p><strong>PH: 04 221 0004</strong></p>\r\n', 'retail@coralperfumes.com', 'jpg', '<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d115462.06639964454!2d55.252837658995986!3d25.264207476668968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3e5f5ccf03abffaf%3A0xb5003ab6404e032a!2scoral+perfumes+al+rigga!3m2!1d25.264224!2d55.322877999999996!5e0!3m2!1sen!2s!4v1507121530484" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 1, 1, 3, '2017-09-21', '2017-10-04 13:14:39'),
(4, 'SALAH Al DIN', '<p>Opposite Reef Mall</p>\r\n\r\n<p>Salah Al Din St. Dubai, UAE</p>\r\n\r\n<p>Working Hours:10AM to 12 AM</p>\r\n\r\n<p><strong><a href="https://www.google.com/search?site=async/lcl_akp&amp;q=coral+perfumes+phone&amp;sa=X&amp;ved=0ahUKEwjy9dPbg9fWAhWDXBoKHX1NDHYQ6BMIHzAF">Phone</a>:&nbsp;<a href="javascript:void(0)">+971 4 261 0002</a></strong></p>\r\n', 'info@coralperfumes.com', 'jpg', '<iframe src="https://www.google.com/maps/embed?pb=!1m22!1m12!1m3!1d115456.0518121009!2d55.25271305913024!3d25.270530973665917!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m7!3e6!4m0!4m4!1s0x3e5f5cc83365d365%3A0xb83f3d845cf5d0f5!3m2!1d25.2705475!2d55.322753399999996!5e0!3m2!1sen!2s!4v1507122013057" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 1, 1, 3, '2017-09-21', '2017-10-04 13:16:21'),
(5, 'CENTURY MALL', '<p>Ground Floor,&nbsp;Opposite Carrefour,&nbsp; &nbsp; Hor Al Anz East - Dubai - UAE</p>\r\n\r\n<p>Working Hours:10:00AMTo11:00PM</p>\r\n\r\n<p><strong>PH: 04 226 4482</strong></p>\r\n', 'retail@coralperfumes.com', 'jpg', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3607.424383317143!2d55.344859414596925!3d25.289941983853126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f5c9acee724cd%3A0x39a43caca711207b!2sCentury+Mall!5e0!3m2!1sen!2s!4v1507123892088" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 1, 1, 3, '2017-09-21', '2017-10-06 06:59:59'),
(8, 'Al AIN', '<p>2nd Floor, Hili Mall</p>\r\n\r\n<p>AL Ain, UAE</p>\r\n\r\n<p>Working Hours: 10 AM To 11.PM</p>\r\n\r\n<p><strong>Ph:+971 54 367 9877</strong></p>\r\n', 'info@coralperfumes.com', 'jpg', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3637.079265772232!2d55.77765961457347!3d24.27396178433387!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e8ab46a2e345051%3A0x336b33ab520ff5f7!2sHili+Mall!5e0!3m2!1sen!2s!4v1507123463713" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 1, 3, 3, '2017-09-25', '2017-10-04 13:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `content` longtext,
  `slider_first_tittle` varchar(200) DEFAULT NULL,
  `slider_second_tittle` varchar(200) DEFAULT NULL,
  `slider_link` varchar(500) DEFAULT NULL,
  `alt_tag_content` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `img`, `content`, `slider_first_tittle`, `slider_second_tittle`, `slider_link`, `alt_tag_content`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'jpg', NULL, '', '', '', 'Slider1', 1, 1, 2, '2017-12-04', '2019-02-27 10:15:17'),
(2, 'jpg', NULL, NULL, NULL, '', 'Slider2', 1, 2, 2, '2018-08-27', '2019-02-27 10:15:34'),
(3, 'jpg', NULL, NULL, NULL, '', 'Slider3', 1, 2, 2, '2018-11-29', '2019-02-27 10:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `date`, `status`) VALUES
(1, 'siyad@azryah.com', '2019-01-23', 1),
(2, 'demo@demo.com', '2019-02-28', 1),
(3, 'tests@test.com', '2019-02-28', 1),
(4, 'ccc@ccc.com', '2019-02-28', 1),
(5, 'ddd@ddd.com', '2019-02-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `id` int(11) NOT NULL,
  `main_category` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `sub_category` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE IF NOT EXISTS `tax` (
  `id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=>percentage,2=>flat',
  `value` decimal(10,2) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `name`, `type`, `value`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'Tax 5%', 1, '5.00', 1, NULL, NULL, NULL, '2018-02-06 12:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `temp_session`
--

CREATE TABLE IF NOT EXISTS `temp_session` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT '1=Shipping Address,2=Billing Address,3=Coupon Code',
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `content`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(4, 'jpg', 'Client Name', ' You can experience wide collection of branded perfumes in Alhajis. I am excited when I found the large collections of perfumes and watches in the attractive shops.', 1, 1, 2, '2017-09-20', '2018-09-11 11:02:45'),
(7, 'jpg', 'Just Perfect!', 'You can experience wide collection of branded perfumes in Alhajis. I am excited when I found the large collections of perfumes and watches in the attractive shops.', 1, 1, 2, '2017-09-20', '2018-09-11 11:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `today_offers`
--

CREATE TABLE IF NOT EXISTS `today_offers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `alt_tag` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `today_offers`
--

INSERT INTO `today_offers` (`id`, `title`, `image`, `link`, `alt_tag`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(1, 'Section 1', 'jpg', 'http://coralepitome.com/alhajis/product/index?type=1', 'section1', 1, 1, 2, '2018-09-11', '2018-10-15 11:43:07'),
(2, 'Sale 50% Off', NULL, 'http://coralepitome.com/alhajis/', NULL, 1, 1, 2, '2018-09-11', '2018-10-15 11:43:10'),
(3, 'Section 3', 'jpg', 'http://coralepitome.com/alhajis/product/index?type=2', 'section3', 1, 1, 2, '2018-09-11', '2019-01-17 11:23:07'),
(4, 'Sale 50% Off', NULL, 'http://coralepitome.com/alhajis/', NULL, 1, 1, 2, '2018-09-11', '2018-10-15 11:43:23'),
(5, 'Section 5', 'jpg', 'http://coralepitome.com/alhajis/', 'section5', 1, 1, 2, '2018-09-11', '2018-10-15 11:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` datetime DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `CB`, `UB`, `DOC`, `DOU`, `status`) VALUES
(1, 'number', 1, NULL, '2017-08-14 00:00:00', '2017-08-14 09:09:14', 1),
(2, 'kilogram', 1, NULL, '2017-08-14 00:00:00', '2017-08-14 09:09:23', 1),
(3, 'gram', 1, NULL, '2017-08-17 00:00:00', '2017-08-17 12:18:52', 1),
(4, 'littre', 1, NULL, '2017-08-17 00:00:00', '2017-08-17 12:19:05', 1),
(5, 'ML', 1, 3, '2017-08-24 00:00:00', '2017-09-19 12:00:24', 1),
(6, 'meter', 1, 3, '2017-09-11 00:00:00', '2017-09-13 13:12:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `notification` int(11) NOT NULL DEFAULT '0' COMMENT '0=>No,1=>Yes',
  `email_verification` int(11) DEFAULT NULL COMMENT '0=>''not-verified'',1=>''verified''',
  `DOC` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `first_name`, `last_name`, `country`, `dob`, `gender`, `country_code`, `mobile_no`, `notification`, `email_verification`, `DOC`) VALUES
(1, 'sabitha', 'YxziszPv5DEP05lTvhuEtzKj0ELQyHdW', '$2y$13$p1vdWJyof3eRWZNEqMybPegW5yyDXIkEuNsIq5t5aPRnAESYpjrYe', NULL, 'sabitha@azryah.com', 1, 1516680719, 1539171525, 'sabitha', 'Varghese', 1, '1993-12-05', 2, NULL, 965685449, 0, 0, NULL),
(2, NULL, 'v2_58g-3t6o7wR0QV1ofQXh3qoI0_zeu', '$2y$13$GL2u4lYcQbM6WXd2tRKSIuZSXJJ6H20cYwRZGZaRDQ.iJkvYYC3u6', NULL, 'Ajrency@gmail.com', 1, 1534502990, 1538574269, 'Rency ', 'Daniel ', NULL, '1986-02-13', 1, NULL, NULL, 0, 1, '2018-08-17'),
(3, NULL, 'YxziszPv5DEP05lTvhuEtzKj0ELQyHdW', '$2y$13$p1vdWJyof3eRWZNEqMybPegW5yyDXIkEuNsIq5t5aPRnAESYpjrYe', NULL, 'manu@azryah.com', 1, 1549624792, 1549624792, 'Manu', '', NULL, '1990-06-05', NULL, NULL, 9744787140, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE IF NOT EXISTS `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` text,
  `landmark` varchar(250) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `emirate` int(11) DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `country_code` varchar(15) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `street_number` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `CB` int(11) DEFAULT NULL,
  `UB` int(11) DEFAULT NULL,
  `DOC` date DEFAULT NULL,
  `DOU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `name`, `address`, `landmark`, `location`, `emirate`, `post_code`, `country_code`, `mobile_number`, `street_number`, `status`, `CB`, `UB`, `DOC`, `DOU`) VALUES
(2, 1, 'Sabitha Varghese', 'Ollangattu Tower', 'Near Kids Asia', 'kakkanad', 2, 682037, '+971', 9645419602, NULL, 1, NULL, NULL, NULL, '2019-03-04 04:56:21'),
(4, 2, 'Rency Daniel', 'Alzubadi building', 'AL Nadha park', 'Sharjah ', 5, NULL, '+971', 543679876, NULL, 0, 6, 6, '2018-08-21', '2018-09-12 05:23:33'),
(5, 1, 'Manu', 'Manu', 'Chittethukara', 'Kochi', 2, NULL, '+971', 5346578, 'Kakkanad', 0, 1, 1, '2019-02-25', '2019-02-25 07:37:29'),
(6, 1, 'Manu', 'Manu', 'Chittethukara', 'Kochi', 2, NULL, '+971', 5346578, 'Kakkanad', 0, 1, 1, '2019-02-25', '2019-02-25 07:44:09'),
(7, 3, 'Manu', 'Azryah Networks', 'Chittethukara', 'kakkanad', 4, 123456, '+971', 5346578, 'Kakkanad', 1, 3, 3, '2019-02-27', '2019-02-27 10:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_problem`
--

CREATE TABLE IF NOT EXISTS `user_problem` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE IF NOT EXISTS `wish_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_post`
--
ALTER TABLE `admin_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_name` (`post_name`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `cms_customer`
--
ALTER TABLE `cms_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_meta_tags`
--
ALTER TABLE `cms_meta_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_others`
--
ALTER TABLE `cms_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_contents`
--
ALTER TABLE `common_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_page`
--
ALTER TABLE `contact_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_code`
--
ALTER TABLE `country_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_name` (`currency_name`),
  ADD UNIQUE KEY `currency_symbol` (`currency_symbol`);

--
-- Indexes for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emirates`
--
ALTER TABLE `emirates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_content`
--
ALTER TABLE `footer_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_password_tokens`
--
ALTER TABLE `forgot_password_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fregrance`
--
ALTER TABLE `fregrance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `from_our_blog`
--
ALTER TABLE `from_our_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homemanagement_type`
--
ALTER TABLE `homemanagement_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_management`
--
ALTER TABLE `home_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_upload`
--
ALTER TABLE `image_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_category` (`main_category`);

--
-- Indexes for table `map_locations`
--
ALTER TABLE `map_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_searchtag_category`
--
ALTER TABLE `master_searchtag_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_search_tag`
--
ALTER TABLE `master_search_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unit_name` (`tag_name`);

--
-- Indexes for table `menu_management`
--
ALTER TABLE `menu_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_address`
--
ALTER TABLE `order_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_promotions`
--
ALTER TABLE `order_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_categories`
--
ALTER TABLE `our_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principals`
--
ALTER TABLE `principals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_label_benefits`
--
ALTER TABLE `private_label_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_label_gallery`
--
ALTER TABLE `private_label_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_label_how_it_works`
--
ALTER TABLE `private_label_how_it_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_label_logos`
--
ALTER TABLE `private_label_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_label_our_process`
--
ALTER TABLE `private_label_our_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canonical_name` (`canonical_name`),
  ADD UNIQUE KEY `item_ean` (`item_ean`),
  ADD KEY `brand` (`brand`),
  ADD KEY `brand_2` (`brand`);

--
-- Indexes for table `product_listing`
--
ALTER TABLE `product_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recently_viewed`
--
ALTER TABLE `recently_viewed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_by_category`
--
ALTER TABLE `shop_by_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showrooms`
--
ALTER TABLE `showrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_category` (`sub_category`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_session`
--
ALTER TABLE `temp_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `today_offers`
--
ALTER TABLE `today_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unit_name` (`unit_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_problem`
--
ALTER TABLE `user_problem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_post`
--
ALTER TABLE `admin_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cms_customer`
--
ALTER TABLE `cms_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_meta_tags`
--
ALTER TABLE `cms_meta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `cms_others`
--
ALTER TABLE `cms_others`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `common_contents`
--
ALTER TABLE `common_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_page`
--
ALTER TABLE `contact_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `country_code`
--
ALTER TABLE `country_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emirates`
--
ALTER TABLE `emirates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `footer_content`
--
ALTER TABLE `footer_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forgot_password_tokens`
--
ALTER TABLE `forgot_password_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `fregrance`
--
ALTER TABLE `fregrance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `from_our_blog`
--
ALTER TABLE `from_our_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `homemanagement_type`
--
ALTER TABLE `homemanagement_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `home_management`
--
ALTER TABLE `home_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_upload`
--
ALTER TABLE `image_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `map_locations`
--
ALTER TABLE `map_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_searchtag_category`
--
ALTER TABLE `master_searchtag_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_search_tag`
--
ALTER TABLE `master_search_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `menu_management`
--
ALTER TABLE `menu_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_address`
--
ALTER TABLE `order_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order_promotions`
--
ALTER TABLE `order_promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `our_categories`
--
ALTER TABLE `our_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `principals`
--
ALTER TABLE `principals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `private_label_benefits`
--
ALTER TABLE `private_label_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `private_label_gallery`
--
ALTER TABLE `private_label_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `private_label_how_it_works`
--
ALTER TABLE `private_label_how_it_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `private_label_logos`
--
ALTER TABLE `private_label_logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `private_label_our_process`
--
ALTER TABLE `private_label_our_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `product_listing`
--
ALTER TABLE `product_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `recently_viewed`
--
ALTER TABLE `recently_viewed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shop_by_category`
--
ALTER TABLE `shop_by_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `showrooms`
--
ALTER TABLE `showrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `temp_session`
--
ALTER TABLE `temp_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `today_offers`
--
ALTER TABLE `today_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_problem`
--
ALTER TABLE `user_problem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `admin_post` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
