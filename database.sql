-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2018 at 11:54 AM
-- Server version: 5.6.40
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zahumtec_lancerdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(130) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `parent` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `total_services` bigint(20) NOT NULL,
  `position` int(3) NOT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`, `description`, `total_services`, `position`, `thumb`) VALUES
(5, 'Other Services', 'other-services', 0, '', 0, 11, ''),
(6, 'Graphics Designing', 'graphics-designing-services', 0, '', 0, 1, ''),
(7, 'Logo Design', 'logo-design-services', 6, '', 0, 1, ''),
(8, 'Business Cards', 'business-cards-services', 6, '', 0, 2, ''),
(9, 'Illustrations', 'illustrations-services', 6, '', 0, 3, ''),
(10, 'Ebook Covers & Packages', 'ebook-covers-packages', 6, '', 0, 4, ''),
(11, 'Web Design & UI', 'web-design-ui-services', 6, '', 0, 5, ''),
(12, 'Photography', 'photography-services', 6, '', 0, 6, ''),
(13, 'Photoshoping', 'photoshoping', 6, '', 0, 7, ''),
(14, 'Flyers & Brochures', 'flyers-brochures-design', 6, '', 0, 8, ''),
(15, 'Architectures', 'architectures-design', 6, '', 0, 9, ''),
(16, 'Programming & IT', 'programming-it', 0, '', 0, 2, ''),
(17, 'HTML & CSS', 'html-css-services', 16, '', 0, 1, ''),
(18, 'PSD to HTML', 'psd-to-html-services', 16, '', 0, 2, ''),
(19, 'WordPress', 'wordpress-services', 16, '', 0, 3, ''),
(20, 'Joomla', 'joomla-services', 16, '', 0, 4, ''),
(21, '.Net', 'dot-net-programming', 16, '', 0, 5, ''),
(22, 'PHP', 'php-programming', 16, '', 0, 6, ''),
(23, 'C++', 'c-programming', 16, '', 0, 7, ''),
(24, 'Java', 'java-programming', 16, '', 0, 7, ''),
(25, 'Databases', 'databases-programming-services', 16, '', 0, 8, ''),
(26, 'JavaScript', 'javascript-programming', 16, '', 0, 9, ''),
(27, 'iOS, Android & Mobile', 'ios-android-mobile-services', 16, '', 0, 11, ''),
(28, 'Technology', 'technology-services', 16, '', 0, 12, ''),
(29, 'Other', 'programming-services', 16, '', 0, 13, ''),
(30, 'Other', 'graphics-services', 6, '', 0, 10, ''),
(31, 'Creative & Arts', 'creative-arts', 0, '', 0, 3, ''),
(32, 'Gifts', 'gifts', 31, '', 0, 1, ''),
(33, 'Arts & Crafts', 'arts-crafts-gifts', 31, '', 0, 2, ''),
(34, 'Handmade Jewelry', 'handmade-jewelry', 31, '', 0, 3, ''),
(35, 'Just for Fun', 'just-for-fun', 31, '', 0, 4, ''),
(36, 'Your Message On...', 'your-message-on', 31, '', 0, 5, ''),
(37, 'Pranks', 'pranks', 31, '', 0, 6, ''),
(38, 'Bizarre', 'bizarre-services', 31, '', 0, 7, ''),
(39, 'Dancers', 'dancers', 31, '', 0, 8, ''),
(40, 'Other', 'other-creative-services', 31, '', 0, 9, ''),
(41, 'Online Marketing', 'online-marketing', 0, '', 0, 4, ''),
(42, 'Web Analytics', 'web-analytics', 41, '', 0, 1, ''),
(43, 'Article & PR Submission', 'article-pr-submission', 41, '', 0, 2, ''),
(44, 'Fan Pages', 'fan-pages', 41, '', 0, 3, ''),
(45, 'Keywords Research', 'keywords-research', 41, '', 0, 4, ''),
(46, 'SEO', 'seo-services', 41, '', 0, 5, ''),
(47, 'Bookmarking & Links', 'bookmarking-links', 41, '', 0, 6, ''),
(48, 'Social Marketing', 'social-marketing', 41, '', 0, 7, ''),
(49, 'Get Traffic', 'get-traffic', 41, '', 0, 8, ''),
(50, 'Video Marketing', 'video-marketing', 41, '', 0, 9, ''),
(51, 'Other', 'online-marketing-services', 41, '', 0, 10, ''),
(52, 'Writing & Translation', 'writing-translation', 0, '', 0, 5, ''),
(53, 'Copywriting', 'copywriting', 52, '', 0, 1, ''),
(54, 'SEO Keyword Optimization', 'seo-keyword-optimization', 52, '', 0, 2, ''),
(55, 'Creative Writing & Scripting', 'creative-writing-scripting', 52, '', 0, 3, ''),
(56, 'Translation', 'translation-services', 52, '', 0, 4, ''),
(57, 'Transcripts', 'transcripts', 52, '', 0, 5, ''),
(58, 'Website Content', 'website-content', 52, '', 0, 6, ''),
(59, 'Reviews', 'reviews', 52, '', 0, 7, ''),
(60, 'Resumes & Cover Letters', 'resumes-cover-letters', 52, '', 0, 8, ''),
(61, 'Speech Writing', 'speech-writing', 52, '', 0, 9, ''),
(62, 'Proofreading & Editings', 'proofreading-editings', 52, '', 0, 10, ''),
(63, 'Press Releases', 'press-releases', 52, '', 0, 11, ''),
(64, 'Other', 'other-writing-translation-services', 52, '', 0, 12, ''),
(65, 'Video & Animation', 'video-animation', 0, '', 0, 5, ''),
(66, 'Commercials', 'commercials', 65, '', 0, 1, ''),
(67, 'Editing & Post Production', 'editing-post-production', 65, '', 0, 2, ''),
(68, 'Animation & 3D', 'animation-3d', 65, '', 0, 3, ''),
(69, 'Testimonials & Reviews', 'testimonials-reviews', 65, '', 0, 4, ''),
(70, 'Puppets', 'puppets', 65, '', 0, 5, ''),
(71, 'Stop Motion', 'stop-motion', 65, '', 0, 6, ''),
(72, 'Intros', 'intros', 65, '', 0, 7, ''),
(73, 'Other', 'other-video-animation-services', 65, '', 0, 8, ''),
(74, 'Music & Audio', 'music-audio', 0, '', 0, 7, ''),
(75, 'Audio Editing & Mastering', 'audio-editing-mastering', 74, '', 0, 1, ''),
(76, 'Jingles', 'jingles', 74, '', 0, 2, ''),
(77, 'Songwriting', 'songwriting', 74, '', 0, 3, ''),
(78, 'Music Lessons', 'music-lessons', 74, '', 0, 4, ''),
(79, 'Narration & Voice-Over', 'narration-voice-over', 74, '', 0, 5, ''),
(80, 'Sound Effects & Loops', 'sound-effects-loops', 74, '', 0, 6, ''),
(81, 'Custom Ringtones', 'custom-ringtones', 74, '', 0, 7, ''),
(82, 'Voicemail Greetings', 'voicemail-greetings', 74, '', 0, 8, ''),
(83, 'Custom Songs', 'custom-songs', 74, '', 0, 9, ''),
(84, 'Other', 'other', 74, '', 0, 10, ''),
(85, 'Advertising', 'advertising', 0, '', 0, 8, ''),
(86, 'Hold Your Sign', 'hold-your-sign', 85, '', 0, 1, ''),
(87, 'Flyers & Handouts', 'flyers-handouts', 85, '', 0, 2, ''),
(88, 'Human Billboards', 'human-billboards', 85, '', 0, 3, ''),
(89, 'Pet Models', 'pet-models', 85, '', 0, 4, ''),
(90, 'Outdoor Advertising', 'outdoor-advertising', 85, '', 0, 5, ''),
(91, 'Music Promotion', 'music-promotion', 85, '', 0, 6, ''),
(92, 'Banner Advertising', 'banner-advertising', 85, '', 0, 7, ''),
(93, 'Radio', 'radio', 85, '', 0, 8, ''),
(94, 'Other', 'other', 85, '', 0, 9, ''),
(95, 'Business', 'business', 0, '', 0, 9, ''),
(97, 'Business Plans', 'business-plans', 95, '', 0, 1, ''),
(98, 'Business Tips', 'business-tips', 95, '', 0, 2, ''),
(99, 'Career Advice', 'career-advice', 95, '', 0, 3, ''),
(100, 'Market Research', 'market-research', 95, '', 0, 4, ''),
(101, 'Presentations', 'presentations', 95, '', 0, 5, ''),
(102, 'Virtual Assistant', 'virtual-assistant', 95, '', 0, 6, ''),
(104, 'Branding Services', 'branding-services', 95, '', 0, 6, ''),
(105, 'Financial Consulting', 'financial-consulting', 95, '', 0, 7, ''),
(106, 'Legal Consulting', 'legal-consulting', 95, '', 0, 9, ''),
(107, 'Other', 'other-business-services', 95, '', 0, 10, ''),
(108, 'Lifestyle', 'lifestyle', 0, '', 0, 10, ''),
(109, 'Animal Care & Pets', 'animal-care-pets', 108, '', 0, 1, ''),
(110, 'Relationship Advice', 'relationship-advice', 108, '', 0, 2, ''),
(112, 'Diet & Weight Loss', 'diet-weight-loss', 108, '', 0, 3, ''),
(113, 'Health & Fitness', 'health-fitness', 108, '', 0, 4, ''),
(114, 'Makeup, Styling & Beauty', 'makeup-styling-beauty', 108, '', 0, 5, ''),
(115, 'Online Private Lessons', 'online-private-lessons', 108, '', 0, 6, ''),
(116, 'Astrology & Fortune Telling', 'astrology-fortune-telling', 108, '', 0, 7, ''),
(117, 'Spiritual & Healing', 'spiritual-healing', 108, '', 0, 8, ''),
(118, 'Cooking Recipes', 'cooking-recipes', 108, '', 0, 9, ''),
(119, 'Parenting Tips', 'parenting-tips', 108, '', 0, 10, ''),
(120, 'Travel', 'travel', 108, '', 0, 11, ''),
(121, 'Other', 'other-lifestyle-services', 108, '', 0, 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `to_unread` tinyint(1) NOT NULL,
  `from_unread` tinyint(1) NOT NULL,
  `updated` datetime NOT NULL,
  `last_msg_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `to_id`, `from_id`, `datetime`, `to_unread`, `from_unread`, `updated`, `last_msg_id`) VALUES
(1, 56, 62, '2014-07-19 22:37:28', 1, 0, '2014-07-19 22:37:28', 17);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `due_datetime` datetime NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `user_id`, `order_id`, `amount`, `description`, `status`, `due_datetime`, `datetime`) VALUES
(1, 54, 2, '2.00', '', 'Completed', '2014-06-14 07:59:21', '2014-06-04 07:59:21'),
(2, 56, 3, '6.40', '', 'Completed', '2014-11-08 03:00:03', '2014-10-29 03:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) NOT NULL,
  `code` varchar(11) NOT NULL,
  `rel_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `msg_id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `size` varchar(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `last_download` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `code`, `rel_id`, `user_id`, `msg_id`, `name`, `size`, `datetime`, `last_download`) VALUES
(5, 'E8CD6C59944', 2, 56, 8, '56-140604013449-The-Meat-Company.jpg', '902.20 KB', '2014-06-04 01:34:49', '0000-00-00 00:00:00'),
(6, 'E05158FC55D', 3, 68, 18, '68-141026021435-MJ.png', '200.35 KB', '2014-10-26 02:14:35', '0000-00-00 00:00:00'),
(7, 'E0AB84360F7', 3, 56, 19, '56-141026022807-hallascode.zip', '4.87 MB', '2014-10-26 02:28:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `position` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_categories`
--

INSERT INTO `forum_categories` (`id`, `name`, `slug`, `description`, `position`) VALUES
(1, 'News and Information', 'news-and-Information', 'Read the latest news at etallu', 1),
(5, 'Member Introduction', 'member-introduction', 'Introduce yourself to other members.', 6),
(6, 'General Discussions', 'general-discussions', 'General discussion here', 5),
(7, 'Sellers Discussions', 'sellers-discussions', 'Discussion area for all sellers', 2),
(8, 'Buyers Discussions', 'buyers-discussions', 'Discussion area for all buyers', 3),
(9, 'Your Suggestions', 'your-suggestions', 'Your suggestions are welcome.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `forum_replies`
--

CREATE TABLE `forum_replies` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `datetime` datetime NOT NULL,
  `edited` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `last_user_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `replies` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `closed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `conv_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `order_id`, `conv_id`, `user_id`, `message`, `type`, `datetime`) VALUES
(8, 2, 0, 56, 'Please make my logo W3C Validated :D lol', 'info_submitted', '2014-06-04 01:34:53'),
(9, 2, 0, 54, 'hahah ok ye lain fix ho gai, ab acha sa review dena bro :D', 'order_delivery', '2014-06-04 07:54:28'),
(10, 0, 1, 62, 'Hi I was talking to Talal and I am working on a site with him and need some help. I need two things.\r\n\r\n1. Create SVG & PNG files of every logo I have  - just reformat them or what not (about 10 max) 300 x 300\r\n2. Create cool graphics for the following elements:\r\n\r\nThis is a metal fabrication company website - we make custom railings and stairs\r\n\r\n•	Design Discussion (graphic of people talking or looking at designs)\r\n•	Develop A Custom Design (A drawing of one of our existing designs maybe but rough sketch (SMetalworks.com)\r\n•	Provide Photos/Videos Of The Fabrication (A person taking a photo or video of people working)\r\n•	Finish Application (We do spray paint like a body shop)\r\n•	Installation (A person bending over and installing a railing?)\r\n\r\nLet me know what you think - need to get this asap. Thank you!', '', '2014-07-19 22:37:28'),
(11, 0, 1, 62, 'Here are all the logos. There are a couple that are there in SVG and EPS format. All need to be 300 x 300 in SVG & EPS (make sure in SVG output Responsive is NOT checked). I need all logos in grayscale format.\r\n\r\nFor the Signature Metal Works - I need that logo to be converted from black to white because it will be on a black background. The SMW logo needs to be 250 x 250.\r\n\r\nhttp:///www.dropbox.com/sh/nktdic0t3oewmhk/AABBI_gY22vzpaRGgj-QcPcga', '', '2014-07-19 23:17:35'),
(12, 0, 1, 62, 'Also one more thing - I need you to also create PNG & SVG formats of the 4 social media icons on: SMetalworks.com the size needs to be double than what it is now.', '', '2014-07-20 21:50:04'),
(13, 0, 1, 56, 'Hi\r\n\r\nThanks for your message. Due to weekend i could not reply you in-time.\r\nI have ready your details. And yes i can do this. But after 2 days because i\'m overbooked with so many orders.\r\n\r\nLet me know if this is feasible for you.\r\n\r\nRegards,\r\nNauman', '', '2014-07-21 02:47:28'),
(14, 0, 1, 62, 'Sure that\'s fine. How much would it be and how soon? Hope my requirements make sense. Thank you!', '', '2014-07-21 09:45:54'),
(15, 0, 1, 62, 'Any updates?', '', '2014-07-22 22:14:10'),
(16, 0, 1, 62, 'Been over 4 days now - any chance you will be working on this? I need to know.', '', '2014-07-24 15:30:16'),
(17, 0, 1, 62, 'Hello?', '', '2014-08-04 09:42:27'),
(18, 3, 0, 68, 'Hi \r\n\r\nWe are a data Center the Name of the company is  Microjumper  and the website is Microjumper.com\r\nplease try to  can make it on a nice building \"I prefer something like the entrance of the building \" looks like real\r\n\r\n\r\nthe logo is attached put feel free to create your own thing to make more real the most important thing that the name must be clear MicroJumper \r\n\r\nwaiting your amazing staff\r\n\r\nHassan', 'info_submitted', '2014-10-26 02:15:51'),
(19, 3, 0, 56, 'Dear Hassan,\r\n\r\nI have completed your work. Instead of one building i made your logo on 5 different buildings.\r\nPlease check and let me know your thoughts.\r\n\r\nI Hope you liked my work and will leave a Positive Review & Full Rating :)\r\n\r\nKindly, don\'t post any negative comment or lower Ratings without having contacted me first. Allow me to solve your any problem or any revisions you want. Just let me know.\r\n\r\n\r\nThank You.\r\nKind Regards,\r\nBOBBY', 'order_delivery', '2014-10-26 02:28:50'),
(20, 3, 0, 68, 'U did great Job and so fast \r\nBut I have one comment in most of them it does not look like real cause may be of my Logo\r\nplease try to do your own touches there , even if you want to change the Logo \r\n\r\nor just to use the name as is', '', '2014-10-26 02:45:44'),
(21, 3, 0, 56, 'Yes this is because of your logo.', '', '2014-10-26 03:00:41'),
(22, 3, 0, 68, 'So please feel free to change anything keep the Name MicroJumper in a nice way soft design\r\n\r\nand send it ASAP\r\n\r\nbest regards', '', '2014-10-26 03:31:05'),
(23, 3, 0, 68, 'will u send then Soon ?', '', '2014-10-26 05:40:59'),
(24, 3, 0, 56, 'Sure, will send you.', '', '2014-10-26 07:22:47'),
(25, 3, 0, 68, 'As I want as well to do another job with you \r\nand i need the 2nd one today as well', '', '2014-10-26 07:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `datetime` datetime NOT NULL,
  `viewed` tinyint(1) NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `datetime`, `viewed`, `url`) VALUES
(203, 30, 'Signed Up for <strong>etallu</strong>', '2013-09-12 21:11:14', 1, ''),
(522, 54, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-05-31 05:48:16', 1, ''),
(523, 54, 'You deposited <strong>($5)</strong> into your account via <strong>Paypal</strong>.', '2014-05-31 06:24:46', 1, '/payments/'),
(524, 55, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-05-31 07:35:08', 1, ''),
(529, 55, 'Cngrats! Your service has been approved and live now!', '2014-06-01 05:33:51', 1, 'https://www.lancerdesk.com/service/i-will-design-attractive-flat-icons/5/'),
(530, 55, 'Cngrats! Your service has been approved and live now!', '2014-06-01 05:34:35', 1, 'https://www.lancerdesk.com/service/i-will-do-any-photoshop-work/7/'),
(531, 54, 'Cngrats! Your service \"Get your website 100% W3C Validated!\" has been approved and live now!', '2014-06-01 05:40:21', 1, 'https://www.lancerdesk.com/service/get-your-website-100-w3c-validated/1/'),
(532, 55, 'Cngrats! Your service \"I will design graphics for your app\" has been approved and live now!', '2014-06-01 14:11:01', 1, 'https://www.lancerdesk.com/service/i-will-design-graphics-for-your-app/9/'),
(533, 55, 'Cngrats! Your service \"I will design Long Flat SHADOW Icon\" has been approved and live now!', '2014-06-01 14:11:49', 1, 'https://www.lancerdesk.com/service/i-will-design-long-flat-shadow-icon/10/'),
(534, 55, 'Your service \"I will draw Cartoon For Your app,Blog,Website or Book for $5\" requires some modification before going to live.', '2014-06-01 14:13:19', 1, 'https://www.lancerdesk.com/my-services/'),
(535, 55, 'Your service \"I will design high quality app icon for android,iOS, APP for $5\" requires some modification before going to live.', '2014-06-01 14:16:37', 1, 'https://www.lancerdesk.com/my-services/'),
(536, 56, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-06-02 00:52:07', 1, ''),
(537, 56, 'Cngrats! Your service \"Design a Stunning and Beautiful Business Card\" has been approved and live now!', '2014-06-02 02:18:31', 1, 'https://www.lancerdesk.com/service/design-a-stunning-and-beautiful-business-card/13/'),
(538, 56, 'You deposited <strong>($3)</strong> into your account via <strong>Paypal</strong>.', '2014-06-02 06:21:40', 1, '/payments/'),
(555, 56, 'You have successfully reset your password.', '2014-06-03 01:09:19', 1, 'Password Reset!'),
(556, 54, 'naumansaeed just ordered your service. Hold tight while naumansaeed submits the additional information you requested.', '2014-06-04 01:33:51', 1, '/order/E6AE9E9F2E48/'),
(557, 54, 'Order Started! naumansaeed Submitted the information for ordder E6AE9E9F2E48', '2014-06-04 01:34:53', 1, 'https://www.lancerdesk.com/order/E6AE9E9F2E48/'),
(558, 56, 'Good News! Talal just delivered your order.', '2014-06-04 07:54:28', 1, 'https://www.lancerdesk.com/order/E6AE9E9F2E48/'),
(559, 54, 'naumansaeed! just marked your order as completed.', '2014-06-04 07:59:21', 1, '/order/E6AE9E9F2E48/'),
(560, 54, 'naumansaeed Posted a positive review on your order #E6AE9E9F2E48', '2014-06-04 07:59:21', 1, 'https://www.lancerdesk.com/order/E6AE9E9F2E48/'),
(561, 57, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-06-07 08:29:13', 1, ''),
(562, 57, 'Your service \"Professional Writing Services\" requires some modification before going to live.', '2014-06-07 08:38:57', 1, 'https://www.lancerdesk.com/my-services/'),
(563, 55, 'Your service \"I will design high quality app icon for android,iOS, APP\" requires some modification before going to live.', '2014-06-07 08:40:52', 1, 'https://www.lancerdesk.com/my-services/'),
(564, 57, 'Cngrats! Your service \"Professional SEO / Content Writing Service\" has been approved and live now!', '2014-06-07 09:14:32', 0, 'https://www.lancerdesk.com/service/professional-seo-content-writing-service/14/'),
(565, 58, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-06-07 10:14:59', 1, ''),
(566, 58, 'Cngrats! Your service \"Fast & Accurate Content Writing\" has been approved and live now!', '2014-06-07 10:59:00', 0, 'https://www.lancerdesk.com/service/fast-accurate-content-writing/15/'),
(567, 55, 'Cngrats! Your service \"I will design high quality app icon for android,iOS, APP\" has been approved and live now!', '2014-06-10 10:10:17', 1, 'https://www.lancerdesk.com/service/i-will-design-high-quality-app-icon-for-androidios-app/12/'),
(568, 59, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-06-11 19:00:49', 1, ''),
(569, 56, 'Cngrats! Your service \"I will design iPhone ios7 style business card\" has been approved and live now!', '2014-07-03 19:04:48', 1, 'https://www.lancerdesk.com/service/i-will-design-iphone-ios7-style-business-card/16/'),
(570, 56, 'Cngrats! Your service \"I will design a custom Shield id badge\" has been approved and live now!', '2014-07-03 19:05:24', 1, 'https://www.lancerdesk.com/service/i-will-design-a-custom-shield-id-badge/17/'),
(571, 56, 'Cngrats! Your service \"I will convert your simple design into 3D ebook cd dvd or magazine\" has been approved and live now!', '2014-07-03 19:05:52', 1, 'https://www.lancerdesk.com/service/i-will-convert-your-simple-design-into-3d-ebook-cd-dvd-or-magazine/18/'),
(572, 56, 'Cngrats! Your service \"I will design a stunning and beautiful flyer or leaflet\" has been approved and live now!', '2014-07-03 19:06:36', 1, 'https://www.lancerdesk.com/service/i-will-design-a-stunning-and-beautiful-flyer-or-leaflet/19/'),
(573, 56, 'Cngrats! Your service \"I will make your logo or text into 3D wooden style\" has been approved and live now!', '2014-07-03 19:06:50', 1, 'https://www.lancerdesk.com/service/i-will-make-your-logo-or-text-into-3d-wooden-style/20/'),
(574, 56, 'Cngrats! Your service \"I will put your logo on a building and send you HD photo\" has been approved and live now!', '2014-07-03 19:07:09', 1, 'https://www.lancerdesk.com/service/i-will-put-your-logo-on-a-building-and-send-you-hd-photo/21/'),
(575, 60, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-07-12 04:59:52', 0, ''),
(576, 61, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-07-16 13:33:04', 1, ''),
(577, 62, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-07-19 13:56:45', 1, ''),
(578, 56, 'rawseo sent you a message. Click to reply.', '2014-07-19 22:37:29', 1, '/messages/rawseo/'),
(579, 56, 'rawseo sent you a message. Click to reply.', '2014-07-19 23:17:35', 1, '/messages/rawseo/'),
(580, 56, 'You have successfully reset your password.', '2014-07-20 00:21:13', 1, 'Password Reset!'),
(581, 56, 'rawseo sent you a message. Click to reply.', '2014-07-20 21:50:04', 1, '/messages/rawseo/'),
(582, 62, 'naumansaeed sent you a message. Click to reply.', '2014-07-21 02:47:28', 1, '/messages/naumansaeed/'),
(583, 56, 'rawseo sent you a message. Click to reply.', '2014-07-21 09:45:54', 1, '/messages/rawseo/'),
(584, 63, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-07-22 01:58:55', 0, ''),
(585, 64, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-07-22 04:48:23', 0, ''),
(586, 56, 'rawseo sent you a message. Click to reply.', '2014-07-22 22:14:10', 1, '/messages/rawseo/'),
(587, 56, 'rawseo sent you a message. Click to reply.', '2014-07-24 15:30:16', 1, '/messages/rawseo/'),
(588, 56, 'rawseo sent you a message. Click to reply.', '2014-08-04 09:42:27', 1, '/messages/rawseo/'),
(589, 55, 'Cngrats! Your service \"I will design a nice favicon\" has been approved and live now!', '2014-08-14 18:08:47', 0, 'https://www.lancerdesk.com/service/i-will-design-a-nice-favicon/6/'),
(590, 65, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-08-21 22:35:50', 1, ''),
(591, 66, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-09-13 18:28:49', 0, ''),
(592, 67, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-09-27 02:33:17', 0, ''),
(593, 68, 'Signed Up for <strong>etallu Marketplace</strong>', '2014-10-26 02:05:32', 1, ''),
(594, 68, 'You deposited <strong>($10)</strong> into your account via <strong>Paypal</strong>.', '2014-10-26 02:10:02', 1, '/payments/'),
(595, 56, 'hallascode just ordered your service. Hold tight while hallascode submits the additional information you requested.', '2014-10-26 02:10:33', 1, '/order/EC2FB9F98474/'),
(596, 56, 'You have successfully reset your password.', '2014-10-26 02:14:58', 1, 'Password Reset!'),
(597, 56, 'Order Started! hallascode Submitted the information for ordder EC2FB9F98474', '2014-10-26 02:15:51', 0, '/order/EC2FB9F98474/'),
(598, 68, 'Good News! naumansaeed just delivered your order.', '2014-10-26 02:28:50', 1, '/order/EC2FB9F98474/'),
(599, 56, 'Order EC2FB9F98474 was updated by hallascode', '2014-10-26 02:45:44', 0, '/order/EC2FB9F98474/'),
(600, 68, 'Order EC2FB9F98474 was updated by naumansaeed', '2014-10-26 03:00:41', 1, '/order/EC2FB9F98474/'),
(601, 56, 'Order EC2FB9F98474 was updated by hallascode', '2014-10-26 03:31:05', 0, '/order/EC2FB9F98474/'),
(602, 56, 'Order EC2FB9F98474 was updated by hallascode', '2014-10-26 05:40:59', 0, '/order/EC2FB9F98474/'),
(603, 68, 'Order EC2FB9F98474 was updated by naumansaeed', '2014-10-26 07:22:47', 1, '/order/EC2FB9F98474/'),
(604, 56, 'Order EC2FB9F98474 was updated by hallascode', '2014-10-26 07:39:25', 0, '/order/EC2FB9F98474/'),
(605, 56, 'Order EC2FB9F98474 is automatically marked as completed.', '2014-10-29 03:00:04', 0, '/order/EC2FB9F98474/'),
(606, 69, 'Signed Up for <strong>etallu Marketplace</strong>', '2015-05-17 04:07:03', 1, ''),
(607, 59, 'You have successfully reset your password.', '2015-05-18 08:08:20', 1, 'Password Reset!'),
(608, 59, 'You have successfully reset your password.', '2015-05-18 08:10:13', 1, 'Password Reset!'),
(609, 70, 'Signed Up for <strong>etallu Marketplace</strong>', '2015-08-24 02:31:42', 0, ''),
(610, 71, 'Signed Up for <strong>etallu Marketplace</strong>', '2016-01-05 04:37:10', 0, ''),
(611, 72, 'Signed Up for <strong>etallu Marketplace</strong>', '2016-08-18 04:01:21', 1, ''),
(612, 73, 'Signed Up for <strong>etallu Marketplace</strong>', '2016-10-16 03:07:30', 0, ''),
(613, 59, 'You have successfully reset your password.', '2017-01-06 22:26:37', 1, 'Password Reset!'),
(614, 59, 'You have successfully reset your password.', '2017-01-06 22:29:06', 1, 'Password Reset!'),
(615, 74, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-02-04 01:35:45', 1, ''),
(616, 75, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-03 15:07:27', 1, ''),
(617, 76, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-03 16:16:47', 1, ''),
(618, 77, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-03 19:47:19', 1, ''),
(619, 78, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-03 21:20:20', 1, ''),
(620, 79, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-04 03:21:03', 0, ''),
(621, 80, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-04 06:19:40', 1, ''),
(622, 81, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-04 07:08:34', 1, ''),
(623, 82, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-04 10:17:59', 1, ''),
(624, 83, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-04 13:13:19', 0, ''),
(625, 84, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-04 13:36:47', 0, ''),
(626, 85, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-05-05 06:17:51', 0, ''),
(627, 85, 'Cngrats! Your service \"I Will Design An Outstanding LOGO In Just 12 Hrs\" has been approved and live now!', '2017-05-24 07:46:54', 0, 'http://www.otallu.com/marketplace/service/i-will-design-an-outstanding-logo-in-just-12-hrs/32/'),
(628, 85, 'Cngrats! Your service \"I Will Design An Outstanding LOGO In Just 12 Hrs\" has been approved and live now!', '2017-06-18 01:46:36', 0, 'https://www.lancerdesk.com/service/i-will-design-an-outstanding-logo-in-just-12-hrs/32/'),
(629, 83, 'Cngrats! Your service \"i will write any type of Assignment\" has been approved and live now!', '2017-06-18 01:46:49', 0, 'https://www.lancerdesk.com/service/i-will-write-any-type-of-assignment/31/'),
(630, 82, 'Cngrats! Your service \"I will design 2 logo with free source file\" has been approved and live now!', '2017-06-18 01:46:58', 0, 'https://www.lancerdesk.com/service/i-will-design-2-logo-with-free-source-file/30/'),
(631, 80, 'Cngrats! Your service \"i will help you with math and physics problems\" has been approved and live now!', '2017-06-18 01:47:02', 0, 'https://www.lancerdesk.com/service/i-will-help-you-with-math-and-physics-problems/29/'),
(632, 80, 'Cngrats! Your service \"i will help you with matlab programming\" has been approved and live now!', '2017-06-18 02:07:13', 0, 'https://www.lancerdesk.com/service/i-will-help-you-with-matlab-programming/28/'),
(633, 80, 'Cngrats! Your service \"i will help you with c++ programming\" has been approved and live now!', '2017-06-18 02:07:23', 0, 'https://www.lancerdesk.com/service/i-will-help-you-with-c-programming/27/'),
(634, 59, 'Cngrats! Your service \"I Will Give 1000,000 Email Adresses\" has been approved and live now!', '2017-06-18 02:26:13', 1, 'https://www.lancerdesk.com/service/i-will-give-1000000-email-adresses/33/'),
(635, 86, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-06-18 02:28:11', 0, ''),
(636, 75, 'Cngrats! Your service \"I will design 2 Versatile Logo with vector file\" has been approved and live now!', '2017-06-20 03:24:46', 0, 'https://www.lancerdesk.com/service/i-will-design-2-versatile-logo-with-vector-file/22/'),
(637, 76, 'Cngrats! Your service \"I will design an eye catching logo according to your idea\" has been approved and live now!', '2017-06-20 03:24:48', 0, 'https://www.lancerdesk.com/service/i-will-design-an-eye-catching-logo-according-to-your-idea/23/'),
(638, 76, 'Cngrats! Your service \"I will design an eye catching super cool typography t shirt design\" has been approved and live now!', '2017-06-20 03:24:54', 0, 'https://www.lancerdesk.com/service/i-will-design-an-eye-catching-super-cool-typography-t-shirt-design/24/'),
(639, 76, 'Cngrats! Your service \"I will design PSD Web Templates and Homepages according to your idea\" has been approved and live now!', '2017-06-20 03:25:00', 0, 'https://www.lancerdesk.com/service/i-will-design-psd-web-templates-and-homepages-according-to-your-idea/25/'),
(640, 78, 'Cngrats! Your service \"Facebook page promotion very fast\" has been approved and live now!', '2017-06-20 03:25:06', 0, 'https://www.lancerdesk.com/service/facebook-page-promotion-very-fast/26/'),
(641, 87, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-06-20 19:10:59', 1, ''),
(642, 88, 'Signed Up for <strong>etallu Marketplace</strong>', '2017-06-20 23:05:31', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(64) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_value`) VALUES
(1, 'home', 'https://www.lancerdesk.com/'),
(2, 'name', 'Lancerdesk'),
(3, 'email', 'otallu@live.com'),
(4, 'paypal_email', 'pay@lancerdesk.com'),
(9, 'per_page', '20'),
(10, 'total_profit', '0'),
(11, 'minimum_withdrawal', '20'),
(12, 'meta_desc', 'Lancerdesk marketplace for all kind of small services online. explore more services'),
(13, 'meta_keywords', 'Lancerdesk, marketplace, small services'),
(14, 'cron_test', ''),
(15, 'recaptcha_public_key', '6Ld6xOcSAAAAAH4C9_Z714JyEO27B8VsOm2KXMMe'),
(16, 'recaptcha_private_key', '6Ld6xOcSAAAAAEjFc0j-GR8kzEKOV4t_lQEqJv5A'),
(17, 'signup_captcha', '0'),
(18, 'withdraw_after_days', '20'),
(20, 'total_paid', '0'),
(21, 'main_notice', ''),
(22, 'show_google_analytics', '1'),
(26, 'paypal_test', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `number` varchar(12) CHARACTER SET utf8 NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `duration` int(3) NOT NULL,
  `started_datetime` datetime NOT NULL,
  `due_datetime` datetime NOT NULL,
  `delivered_datetime` datetime NOT NULL,
  `completed_datetime` datetime NOT NULL,
  `info_submitted` tinyint(1) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 NOT NULL,
  `buyer_rated` tinyint(1) NOT NULL,
  `seller_rated` tinyint(1) NOT NULL,
  `buyer_cancelled` tinyint(1) NOT NULL,
  `seller_cancelled` tinyint(1) NOT NULL,
  `datetime` datetime NOT NULL,
  `extra_fast_bought` tinyint(1) NOT NULL,
  `extra_1_bought` tinyint(1) NOT NULL,
  `extra_2_bought` tinyint(1) NOT NULL,
  `extra_3_bought` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `number`, `service_id`, `seller_id`, `buyer_id`, `price`, `duration`, `started_datetime`, `due_datetime`, `delivered_datetime`, `completed_datetime`, `info_submitted`, `status`, `buyer_rated`, `seller_rated`, `buyer_cancelled`, `seller_cancelled`, `datetime`, `extra_fast_bought`, `extra_1_bought`, `extra_2_bought`, `extra_3_bought`) VALUES
(2, 'E6AE9E9F2E48', 1, 54, 56, 3, 1, '2014-06-04 01:34:53', '2014-06-05 01:34:53', '2014-06-04 07:54:28', '2014-06-04 07:59:21', 1, 'Completed', 1, 1, 0, 0, '2014-06-04 01:33:51', 0, 0, 0, 0),
(3, 'EC2FB9F98474', 21, 56, 68, 8, 1, '2014-10-26 02:15:51', '2014-10-27 02:15:51', '2014-10-26 02:28:50', '2014-10-29 03:00:03', 1, 'Completed', 0, 0, 0, 0, '2014-10-26 02:10:33', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_number` varchar(12) CHARACTER SET utf8 NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `order_number`, `amount`, `description`, `type`, `datetime`) VALUES
(12, 56, 'E6AE9E9F2E48', '3.00', 'Service Purchased from Purcahse balance', '0', '2014-06-04 01:33:51'),
(13, 68, '', '10.00', 'Deposit via Paypal', 'Deposit', '2014-10-26 02:10:02'),
(14, 68, 'EC2FB9F98474', '5.00', 'Service Purchased from Purcahse Balance', '0', '2014-10-26 02:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `log_id` int(11) NOT NULL,
  `txn_id` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `method` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_logs`
--

INSERT INTO `payment_logs` (`log_id`, `txn_id`, `user_id`, `user_email`, `amount`, `fee`, `method`, `datetime`) VALUES
(2, '52A31989LH249474T', 56, 'mewingle@gmail.com', '3.00', '0.45', 'PayPal', '2014-06-02 06:21:40'),
(6, '4V259273T96457018', 54, 'mewingle@gmail.com', '3.00', '0.45', 'PayPal', '2014-06-02 13:44:24'),
(7, '90225287M1011150G', 54, 'mewingle@gmail.com', '3.00', '0.45', 'PayPal', '2014-06-02 13:49:01'),
(8, '2F893896NC4077521', 54, 'mewingle@gmail.com', '3.00', '0.45', 'PayPal', '2014-06-02 13:55:04'),
(9, '54R061597T467410R', 68, 'hassan.hallas@aspenta.com', '10.00', '0.79', 'PayPal', '2014-10-26 02:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `for_user_id` bigint(20) NOT NULL,
  `rating` varchar(4) CHARACTER SET utf8 NOT NULL,
  `review` varchar(255) CHARACTER SET utf8 NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `order_id`, `service_id`, `user_id`, `for_user_id`, `rating`, `review`, `datetime`) VALUES
(1, 2, 1, 56, 54, 'up', 'As a first time user of eTallu i was so surprised to see how easy it really is and very happy indeed with the work delivered by this talented seller. An amazing job..... I will highly recommend! Thank you for a great service.', '2014-06-04 07:59:21'),
(2, 2, 1, 54, 56, 'up', 'It\'s nice to work with you. Thank you so much!', '2014-06-04 08:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `tags` text NOT NULL,
  `duration` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `instructions` text NOT NULL,
  `datetime` datetime NOT NULL,
  `rating` int(3) NOT NULL,
  `sales` bigint(20) NOT NULL,
  `views` bigint(20) NOT NULL,
  `reviews` bigint(20) NOT NULL,
  `image` varchar(400) NOT NULL,
  `status` varchar(100) NOT NULL,
  `edited_review_pending` tinyint(1) NOT NULL,
  `required_modification_msg` text NOT NULL,
  `extra_fast_ticked` tinyint(1) NOT NULL,
  `extra_fast_price` int(3) NOT NULL,
  `extra_fast_duration` int(2) NOT NULL,
  `extra_1_ticked` tinyint(1) NOT NULL,
  `extra_1_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `extra_1_price` int(3) NOT NULL,
  `extra_1_duration` int(2) NOT NULL,
  `extra_2_ticked` tinyint(1) NOT NULL,
  `extra_2_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `extra_2_price` int(3) NOT NULL,
  `extra_2_duration` int(2) NOT NULL,
  `extra_3_ticked` tinyint(1) NOT NULL,
  `extra_3_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `extra_3_price` int(3) NOT NULL,
  `extra_3_duration` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `cat_id`, `sub_cat_id`, `title`, `description`, `tags`, `duration`, `price`, `instructions`, `datetime`, `rating`, `sales`, `views`, `reviews`, `image`, `status`, `edited_review_pending`, `required_modification_msg`, `extra_fast_ticked`, `extra_fast_price`, `extra_fast_duration`, `extra_1_ticked`, `extra_1_title`, `extra_1_price`, `extra_1_duration`, `extra_2_ticked`, `extra_2_title`, `extra_2_price`, `extra_2_duration`, `extra_3_ticked`, `extra_3_title`, `extra_3_price`, `extra_3_duration`) VALUES
(1, 54, 16, 17, 'Get your website 100% W3C Validated!', 'Check your website here <a href=\"http://validator.w3.org/\" target=\"_blank\">W3C Validator</a>\r\n If your website has W3C errors it is not good for SEO.\r\n\r\nI can make it 100% errors FREE and w3C Validated.\r\n\r\nImportant Notes:\r\n- Admin login info or Cpanel Login info will be required.\r\n- Only that code will be fixed which will be easily reachable & editable.\r\n- This is only for one Main index page only.', 'w3c, html, css, validation', 3, 5, 'Please Provide me Cpanel (hosting) + Admin login info or you can send me HTML files.', '2014-05-31 07:49:46', 100, 1, 0, 1, '54-service-img-45e8744750.jpg', 'Active', 1, '', 1, 10, 1, 1, 'I will ask some extra if your website is dynamic (specially wordpress)', 10, 4, 0, '', 3, 0, 0, '', 3, 0),
(2, 54, 6, 11, 'Get a Beautiful favicon designed for your website', 'I will Design / Create a beautiful favicon for your website or blog.\r\n\r\nWhy me?\r\n- Custom favicon\r\n- Pixel perfect\r\n- Clean Design\r\n- Fast delivery', 'favicon, design, icons', 4, 3, 'Please tell me your website url and send me your logo.', '2014-05-31 08:16:17', 0, 0, 0, 0, '54-service-img-fa64fb93ad.jpg', 'Active', 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(3, 54, 16, 17, 'I will fix your HTML css errors, bugs and colors issues', 'I am a professional web developer and have great experience with HTML / CSS. I mostly do PSD to HTML / CSS conversion. Hope you will like my this service too!\r\n\r\nObviously your admin or cpanel login info will be required or you can send me your HTML file or a whole website to fix.\r\n\r\nNote: this service is for non-complex issues only.', 'html, css, fix, errors', 4, 3, 'Please provide me Cpanel login info or you can send me HTML files as well.', '2014-05-31 08:32:31', 0, 0, 0, 0, '54-service-img-0ab3e5a3bc.jpg', 'Active', 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(4, 54, 16, 28, 'I will create XML sitemap for your website', 'I\'ll create an XML sitemap for a simple HTML website that can be submitted to Google, Bing, Yahoo and other search engines to help them crawl your website better. \r\n\r\n<strong>NOTE:</strong> Up to 500 pages will be indexed in sitemap for 1 gig (Contact me to get a quote for sites with more links)\r\n\r\n<strong>Order Requirements:</strong>\r\n- Please Provide your full website URL\r\n- Frequency of change in your content (daily/weekly/monthly/annually)\r\n- If WordPress,  I need WP admin login details and FTP login details.', 'website, sitemap, xml', 4, 3, 'Please tell me your website URL.', '2014-05-31 16:12:22', 0, 0, 0, 0, '54-service-img-b57c2539c1.jpg', 'Active', 1, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(5, 55, 6, 11, 'I will design attractive flat icons', 'Hi\r\n\r\nI will design attractive and color full flat icon for your apps and website. \r\n\r\nWhy choose us?\r\n- Professional Team!\r\n- High Quality and Fast Delivery\r\n- Creative and Original Idea!\r\n\r\nYou will get:\r\nDiscount on Multiple orders (Ask me)\r\nAny Shape you like (Circular, Square or App icon)\r\n 1024x1024px PNG with transparent background (or any resolution you like)\r\nModifications\r\nDelivery within 1 day!\r\nUnlimited revisions\r\nFriendly communication\r\n100% quality satisfaction\r\nUnique professional ideas\r\n100% Money back guarantee\r\nI will deliver your icon in all required sizes\r\nOrder separate for each Long Shadow Flat App icon. Don\'t click  \"order more than 1\" option\r\nThe final Long Shadow Flat App icon will be a PNG (transparency background) file', 'flat, icon, design', 1, 5, 'just tell me your requirements.', '2014-06-01 05:12:20', 0, 0, 0, 0, '55-service-img-793f408bc8.jpg', 'Active', 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(6, 55, 6, 11, 'I will design a nice favicon', 'FAVICONS make your website or blog more personal and more professional looking.\r\ni will design a nice favicon for your website.I will use your logo design or base it on your ideas so that you do not have the generic image created by your browser or hosting service.\r\n\r\nWhy me?\r\nCustom favicon\r\nPixel perfect\r\nClean Design\r\nFast delivery', 'favicon,icon,design', 1, 5, 'send me your website logo/icon', '2014-06-01 05:19:21', 0, 0, 0, 0, '55-service-img-ddbc92719b.jpg', 'Active', 1, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(7, 55, 6, 13, 'I will do any Photoshop work', 'hi\r\nI have 5+ Years Experience in Graphics & Design\r\nI will do any PHOTOSHOP work, editing, retouching, photo-manipulation, background changing. I also make album covers, caricatures, e-book and book covers. My work has a good quality, I do it pretty fast and professional. You\'ll get your pictures in high quality in JPG format.\r\nalso \r\nPhoto Retouching services\r\n·         Photo editing\r\n·         Remove background\r\n·         Lighting corrections\r\n·         Background changes\r\n·         Slim body\r\n·         Whiten Teeth, Whiten Eyes\r\n·         Skin smoothing, retouching\r\n·         Color correction, adding effects\r\n·         Change eyes color\r\n·         Remove objects from pictures\r\n·         Put makeup on face\r\n·         If you have other wishes don\'t hesitate to contact me\r\nIf you need any clarifications regarding our services feel free to message us at anytime.if you have multify tasks We are ready to give you discounts.\r\n\r\n                \r\nFast service in 24 hours\r\n***MONEY BACK GUARANTEE***', 'photoshop, photoshop editing, designing', 1, 5, 'just tell me your requirements.', '2014-06-01 05:30:47', 0, 0, 0, 0, '55-service-img-178898607c.jpg', 'Active', 1, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(9, 55, 6, 11, 'I will design graphics for your app', 'The standard etallu gets you one of the following: \r\n Launcher Icon in all sizes with rounded or square edges(1 icon/gig)! \r\nBackground for your app screens(1 Color scheme for 1 Device)! \r\nScreenshot/Promotional Mockup in a device of your choice(iPhone 4/5/iPad/Android Smartphone)! \r\nUser Interface(UI) Design for your app(1 Screen per gig)! \r\n\r\n If you\'re looking for the entire app design check out the Extras! \r\n\r\n\r\nFEATURES OF MY WORK: \r\nHigh resolution Retina Ready Designs\r\nEasy and Quick Communication\r\nPremium Look for your app\r\nQuality Seller', 'design, ios, andriod, graphics', 3, 10, 'just tell me your requirements and tell me about your app', '2014-06-01 06:08:06', 0, 0, 0, 0, '55-service-img-1590caeb62.jpg', 'Active', 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(10, 55, 6, 11, 'I will design Long Flat SHADOW Icon', 'You will get:\r\n-------------\r\nDiscount on Multiple orders (Ask me)\r\nAny Shape you like (Circular, Square or App icon)\r\n 1024x1024px PNG with transparent background\r\nDelivery within 1 day!\r\nUnlimited revisions\r\nFriendly communication\r\n100% quality satisfaction\r\nUnique professional ideas\r\n100% Money back guarantee\r\nI will deliver your icon in all required sizes\r\nOrder separate for each Long Shadow Flat App icon. Don\'t click  \"order more than 1\" option\r\nThe final Long Shadow Flat App icon will be a PNG (transparency background) file\r\n\r\n\r\nWhy choose us?\r\n-------------\r\n- High Quality and Fast Delivery\r\n- Creative and Original Idea!\r\n- Full Support for our Client!\r\n- Multiple revisions', 'flat,icon,design', 1, 5, 'just tell me your requirements.', '2014-06-01 06:11:09', 0, 0, 0, 0, '55-service-img-5d9d1121ac.jpg', 'Active', 1, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(12, 55, 6, 11, 'I will design high quality app icon for android, iOS,  APP', 'Congrats, you\'ve found the best app icon design service here on etallu\r\n\r\nI will design an Attractive iPhone, Android APP icon for $5.\r\n\r\nWhat you\'ll get from this service: \r\nPROFESSIONAL looking icon for your app or product \r\nReady-to-use PNG and JPG files with 1024x1024 px HD dimensions. \r\n1 FREE REVISION. \r\nFULL ASSISTANCE until you\'re satisfied. \r\ni will design 5 icon ideas\r\n\r\nIF\r\nHave you seen the famous app icons? If you are looking for that type of icon contact me.I can design any icon you want.i will provide you the files jpeg and png format file size in 1024 x 1024.\r\n\r\n\r\nFeel free to message me if you have any questions.\r\n\r\n\r\nIf you need any clarifications regarding our services feel free to message us at anytime.if you have multiply tasks We are ready to give you discounts.', 'icon design, icon, android, ios', 1, 5, 'Just tell me your requirements.', '2014-06-01 06:57:10', 0, 0, 0, 0, '55-service-img-a13709aa21.jpg', 'Active', 1, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(13, 56, 6, 8, 'Design a Stunning and Beautiful Business Card', 'I will create a professional business card for your business.\r\nMarketing material makes the first and last impression of your company on someone\'s mind and I\'m sure you do not want to take a risk by using an entry-level business card designer for your company!\r\nI will provide you a PROFESSIONALLY Designed Business Card which will make a Long-lasting impression to your clients and it will reflect your business seriousness.\r\n\r\nCheck some of my recently Designed Business Cards on FLICKR:  http://goo.gl/A7wg2P\r\n\r\nWHAT YOU WILL GET:\r\n\r\n    A single or double sided card designed.\r\n\r\n    It will be CUSTOM made according to your requirements.\r\n\r\n    You will get print-ready files in JPEG and PDF file formats.', 'design, cards, business card, professional design, creative work, unique style, Double sided card', 1, 5, 'Simple Requirement:rnrn--- Send me your all details you want to put on business card.rn--- Do you want SINGLE SIDED or DOUBLE SIDED card designed?rn--- Send me all your images or logos you want to include.rnrnThat is all.rnrnThank You For BUYING MY GIG>', '2014-06-02 00:58:59', 0, 0, 0, 0, '56-service-img-930c50080b.jpg', 'Active', 1, '', 1, 10, 1, 1, 'I will add QR mobile code redirecting to yout website', 3, 0, 1, 'I will do 2 more revisions', 5, 2, 1, 'I will provide Source files of design in PSD format with fonts i used', 10, 0),
(14, 57, 52, 58, 'Professional SEO / Content Writing Service', 'We are a professional writing company and we can provide top-notch website content pages. The work will be original, well versed, top-notch and 100% SEO optimized. So, hire us now and feel the difference.', 'content writing, writing, website content, SEO', 1, 5, 'You need to give us your website url and some instructions about your business.', '2014-06-07 08:33:50', 0, 0, 0, 0, '57-service-img-836121caea.jpg', 'Active', 1, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(15, 58, 52, 58, 'Fast & Accurate Content Writing', 'Hire me and you will get your desired work on time plus original content. Email me for queries and i\'ll get back to you as soon as possible.', 'Writing, SEO, Content writing, website content', 1, 3, 'Please tell me what your requirements are?', '2014-06-07 10:34:28', 0, 0, 0, 0, '-service-img-1c3e4c4243.jpg', 'Active', 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', 0, 0),
(16, 56, 6, 8, 'I will design iPhone ios7 style business card', 'Take advantage of this service and show something UNIQUE and Different and Make a Lasting IMPRESSION on your Customers.\r\n\r\nI will provide you a PROFESSIONALLY Designed Business card which will make a Long-lasting impression to your clients and it will reflect your business seriousness.\r\n\r\nYOU WILL GET:\r\n\r\n>> ios7 Styled DOuble SIded Card Designed.\r\n>> You will get Print-Ready files in JPEG/PDF file formats.\r\n\r\n&lt;&gt;&lt;&gt;&lt;&gt; NOTE &lt;&gt;&lt;&gt;&lt;&gt;\r\nTo get the source file/editable file of business card you need to order my service EXTRA of $20. You will get Source file with font used.\r\n\r\nORDER THIS SERVICE RIGHT NOW AND GET YOUR UNIQUE NEW SHINY iPhone STYLED CARD DESIGNED.', 'iphone, business card, ios7, professional business card, ios7 card design, iphone style card, name card', 3, 5, 'Simple Requirement:\r\n\r\n--- Send me your all details you want to put on business card.\r\n--- Send me all your images or logos you want to include.\r\n\r\nThat is all.\r\n\r\nThank You For BUYING MY SERVICE>', '2014-07-03 01:28:26', 0, 0, 0, 0, '56-service-img-8cd55825ca.jpg', 'Active', 0, '', 1, 10, 1, 1, 'I will include your provided background or color scheme', 3, 0, 1, 'I will add a mobile QR code linking to your website or as a VCard storing your personal data', 3, 0, 1, 'I will send you editable layered source file with all the fonts', 10, 0),
(17, 56, 6, 8, 'I will design a custom Shield id badge', 'Are you the Fan of S.H.I.E.L.D ?\r\n\r\nHere is the perk for you, you can get your very own customized S.H.I.E.L.D ID card designed for $5 only.\r\n\r\nThis S.H.I.E.L.D. ID Card can be customized with your own image, name, and physical details.  And you will get the printable graphic files.\r\n\r\n<><><> WHAT YOU WILL GET <><><> \r\n\r\n>> A single sided S.H.I.E.L.D ID card designed.\r\n\r\n>> It will be CUSTOM made according to your given details. It can be customized with your own image, name, and physical details\r\n\r\n>> You will get print-ready files in JPEG and PDF file formats.\r\n\r\n<><><> CARD DIMENSIONS <><><>\r\n\r\n>> Card dimensions will be standard 3.5 inch x 2 inch (89 mm x 51 mm) Business Card Size, unless you define your specific required dimensions\r\n>> Cutting margin / bleed of 0.125 inch (6 mm) will be added\r\n>> 300 dpi, CMYK color resolution\r\n\r\n\r\n<><><> NOTE <><><> \r\nTo get the source file/editable file of business card you need to order my service EXTRA. You will get Source file with all the font used.\r\n\r\nORDER THIS SERVICE RIGHT NOW.', 'marvel, shield, business card, secret agent, marvel agent, shield agent, custom business card', 3, 5, 'As this S.H.I.E.L.D. ID Card can be customized with your own image, name, and physical details. \r\n\r\nSo provide me with:\r\n1: NAME\r\n2: TITLE you want\r\n3: SEX (gender)\r\n4: HAIR COLOR\r\n5: HEIGHT\r\n\r\nIssue date and expiry date can also be customized.\r\n\r\nThanks for your order.', '2014-07-03 01:33:38', 0, 0, 0, 0, '56-service-img-c850c23cca.jpg', 'Active', 0, '', 1, 10, 1, 0, '', 3, 0, 1, 'I will add custom qr code containing your contact details', 3, 0, 1, 'I will provide editable source files in psd format with fonts i used', 10, 0),
(18, 56, 6, 10, 'I will convert your simple design into 3D ebook cd dvd or magazine', '3D Cover are one of the best ways to showcase your Product, Ebook, CD\'s, DVD\'s etc to your customers - A MUST HAVE SERVICE !\r\n\r\nWhat i will do is Take your Simple Flat Design and Convert into 3D Looking Awesome Result in High Resolution.\r\n\r\nThe Best part is you can choose from 100 different 3D styles for eBooks, CD\'s, DVD\'s Magazine, Boxes, Business Card, BiFold and TriFold Leaflets, CD Case, DVD Case and so much more......\r\n\r\n<><><> What You Will Get? <><><> \r\n\r\n>> A High Resolution Images with White Background and Transparent Background will be provided in JPEG/PNG file formats.\r\n>> Image size will be approx HIGH Resolution 2500 x 2500 pixels.\r\n\r\n<><><> How To See 100 Styles? <><><> \r\n\r\n>> You can easily check 100 different 3D styles from this PDF here: http://goo.gl/2NHJW6\r\n\r\n<><><>  Limited Time BONUS <><><> \r\n\r\n>> All Orders will get transparent PNG format files with no background of 3D image as FREE BONUS with no additional cost.\r\n\r\n<><><> <><><>  BUY THIS SERVICE NOW AND AVAIL THE FREE BONUS <><><>', 'cover deisgn, book design, 3D book deisgn, ebook design, graphic design, 2D into 3D, flat design into 3D', 3, 5, 'Simple Requirements,\r\n\r\nJust send me your existing 2D flat cover in .GIF, .JPG, .PNG or .PDF with good quality and I will turn it to an attractive and cool looking 3D STYLE.\r\n\r\nChoose your desired 3D style from 100 different styles in this PDF: http://goo.gl/2NHJW6\r\nJust give me 3D style code from PDF and  i will begin your work.\r\n\r\nThanks for BUYING my SERVICE.\r\n\r\nRegards,\r\nBOBBY', '2014-07-03 01:41:10', 0, 0, 0, 0, '56-service-img-580ba49dd7.jpg', 'Active', 0, '', 1, 10, 0, 0, '', 3, 0, 0, '', 3, 0, 1, 'I will additionally design the cover and provide you its print-ready and source files', 10, 2),
(19, 56, 6, 14, 'I will design a stunning and beautiful flyer or leaflet', 'I will design a CUSTOM Flyer or Leaflet. Design will be Stunning , Beautiful and Creative.\r\n\r\nSINGLE Sided Flyer or Leaflet = $10 (1 Service)\r\nFor Double sided design select service extra for only additional $5.\r\n\r\n<><><> Size & Dimensions <><><>\r\n\r\n>> Leaflet or Flyer can be in any of these size A4, A5, A6 , A7 or DL\r\n>> If you need other size, contact me for Pricing\r\n\r\n<><><> Deliverable Files <><><>\r\n\r\n>> High Quality JPG and Print-Ready PDF files will be provided\r\n>> Standard Bleed / Cutting margin will be added to artwork\r\n>> 300 dpi, CMYK file resolution\r\n>> PSD Editable Source Files are available as service EXTRA (check my extras)', 'flyer deisgn, leaflet designing, graphic deisgning, single sided flyer, double sided leaflet, marketing material', 3, 10, 'My Name is BOBBY and i thank you for Ordering my Service.\r\n\r\nI have simple requirements to perform your work:\r\n\r\n1: Send me all the content to place on design  along with HIGH RESOLUTION LOGO\r\n\r\n2: Specify the correct size you want, consult your Printing company if unsure.\r\n\r\n3: Show me any samples if you like specific design requirements. \r\n\r\nTHAT IS ALL :)\r\n\r\nCHECK MY SERVICE EXTRAS ALSO and ENHANCE YOUR DESIGN!!!!', '2014-07-03 01:47:45', 0, 0, 0, 0, '56-service-img-76b29879d2.jpg', 'Active', 0, '', 1, 10, 1, 1, 'make your leaflet or flyer Double Sided Design', 5, 2, 1, 'add QR mobile code and add relevant Stock Images', 10, 0, 1, 'design a double sided business card matching your flyer leaflet', 5, 0),
(20, 56, 6, 7, 'I will make your logo or text into 3D wooden style', 'I will take any TEXT or LOGO and give it a Realistic 3D Wooden Style Look and Send you HIGH Res Photo.\r\n\r\nYou can use these on Facebook banner, on your website or give it as a fun gift to someone.\r\n\r\nJust Send me your TEXT or HIGH RES Logo in PNG  and i will make those into Realistic WOOD Style.\r\n\r\n<><><> What I Need from You <><><>\r\n\r\n>> In case of Logo, it must be in HIGH RESOLUTION PNG format, and it must be bigger then 1000px in width.\r\n\r\n<><><> What You Will GET: <><><>\r\n\r\n>> 1 high Resolution Image with your provided text or design in WOODEN Style. + BONUS', 'logo, logo design, 3D wooden logo, relaistic logo mockup, wooden logo, 3D logo style', 2, 5, 'Simple Requirements:\r\n\r\nJust Provide me your LOGO in Transparent PNG File and it Must be HIGH Resolution.\r\nOr if You want Just TEXT, Please Provide Exact TEXT you like in WOODEN Style.\r\n\r\nThat is it.\r\n\r\nThanks for your ORDER :)', '2014-07-03 01:51:38', 0, 0, 0, 0, '56-service-img-e91b4a625f.jpg', 'Active', 0, '', 1, 3, 1, 0, '', 3, 0, 0, '', 3, 0, 0, '', 3, 0),
(21, 56, 6, 12, 'I will put your logo on a building and send you HD photo', 'Ever wonder how it will look your LOGO or Your Name on building?\r\n\r\nNow here is the opportunity! I will take your LOGO or any TEXT and place them on a BUILDING. Just like BIG Companies put their name on their building.\r\n\r\n>> Simple send me your logo in high quality size and i will send you high quality photo like above example.\r\n\r\n>> I will deliver the photo in Super High Quality Size. (HD)\r\n\r\n>> You can use the photo on your facebook, twitter or simple share on any social network.\r\n\r\nBUY THIS SERVICE NOW.', 'logo, logo on building, building mockup, logo mockup, photo realistic, text on building', 2, 5, 'Simple Requirement\r\n\r\nJust send me your LOGO in high resolutions PNG file without any background.\r\nOr if you want to use any TEXT, just let me know.\r\n\r\nSURPRISE: I will send your LOGO placed on all 5 BUILDINGS\r\nSo you will get 5 HIGH QUALITY DIFFERENT Photos.\r\n\r\nHOPE YOU LIKE my Little Surprise :)\r\n\r\nThank You for Your Order.\r\nBOBBY', '2014-07-03 01:57:58', 0, 1, 0, 0, '56-service-img-834eec7adc.jpg', 'Active', 0, '', 1, 3, 1, 0, '', 3, 0, 0, '', 3, 0, 0, '', 3, 0),
(22, 75, 6, 7, 'I will design 2 Versatile Logo with vector file', 'Hi, \r\n \r\nI am M. Farooq, from Karachi, Pakistan. Buyer Satisfaction is always my first priority. \r\n \r\nPlease contact me for an attractive Logo Design. If you will not get satisfied with my professional services then I will give 100% of your money back. \r\n \r\nMy portfolio: http:///goo.gl/lZbj7b\r\nThank you :)', 'versatile, logo, minimalist, modern, minimal, unique, attractive, iconic, simple', 3, 10, 'Hi there! I will need the following information from you to get started:\r\n\r\n1. Company / Business Name?\r\n2. Tag Line (Optional)?\r\n3. Company Services?\r\n4. Logo Color/s?\r\n5. Playful or Mature Logo?\r\n6. Masculine / Feminine Logo?\r\n7. Company website address / Link?\r\n8. Any other information that you want to provide?\r\n9. Please provide 2/3 your favorite logos for inspiration to get fast and accurate results you want.', '2017-05-03 15:30:02', 0, 0, 0, 0, '75-service-img-2c3f4485e8.png', 'Active', 0, '', 1, 5, 2, 1, 'I will design Facebook Picture and Cover', 5, 0, 0, '', 3, 0, 0, '', 3, 0),
(23, 76, 6, 7, 'I will design an eye catching logo according to your idea', 'Hey, I’m a professional graphic designer. I can make any kind of 2D logo and can also place them on 3D mockup on demand. I am expert in\r\n1) Retro vintage logos\r\n2) Classical modern logos\r\n3) Stamp and Badge logos\r\n4) Watercolour/Feminine logos\r\n5) Hand Drawn logos\r\n6) Flat/Minimalist logos\r\n7) Signature logos\r\n8) Versatile logos\r\n9) Placing your logo on 3D mockup\r\nMy services For you:\r\n·         High-resolution design files in any of these formats: Ai, PSD, SVG, JPEG, PNG, PDF, EPS.\r\n·         UNLIMITED revisions till the desired product.\r\n·         Free source file and the commercial license.\r\n·         Great communication in proficient English over your ideas for exceptional results!\r\n·         Clients satisfaction is 100% guaranteed.\r\n\r\n    So what are you waiting for? GO ahead for the order and contact me as soon as possible.I will deliver you the best work with great sincerity and honesty.Working for you will be my pleasure.', 'Graphic design, Logos, Vintage logos, Flat logos', 1, 5, 'Just tell me a little information about your business or tell me how the logo should look like.', '2017-05-03 16:28:33', 0, 0, 0, 0, '76-service-img-d0903154ed.png', 'Active', 0, '', 0, 3, 0, 0, '', 3, 0, 0, '', 3, 0, 0, '', 3, 0),
(24, 76, 6, 30, 'I will design an eye catching super cool typography t shirt design', 'Hey, I’m a professional graphic designer.I’ll create any type of shirt just according to your instructions. I am expert in\\r\\nDistressed retro vintage look\\r\\nModern Tee spring shirts\\r\\nSublimated design\\r\\nTypography shirts\\r\\nCustom designs\\r\\nMy services For you:\\r\\n\\r\\nHigh-resolution design files in any of these formats e.g Ai, SVG, PSD, EPS, PDF, JPEG, PNG.\\r\\nDEsign placed on a T shirt mockup as sample\\r\\nUNLIMITED revisions till desired product.\\r\\nFree source file and commercial licemse.\\r\\nGreat communication in proficient English over your ideas for exceptional results!\\r\\nClients satisfaction is 100% guaranteed.\\r\\n\\r\\n    So what are you waiting for? GO ahead for the order and contact me as soon as possible.I will deliver you the best work with great sincerity and honesty.Working for you will be my pleasure.', 'Graphic design, T-shirts, typography, vintage,', 1, 10, 'Kindly explain a little bit about design how it should look.', '2017-05-03 16:42:02', 0, 0, 0, 0, '76-service-img-48d818188c.png', 'Active', 0, '', 0, 10, 0, 0, '', 5, 0, 0, '', 5, 0, 0, '', 5, 0),
(25, 76, 6, 11, 'I will design PSD Web Templates and Homepages according to your idea', 'Hi there…\r\nI will design an effective website template or landing page or homepage and will design efficient User Experience and User Interface for your web and mobile applications. Do you have an initial idea or sketch of your amazing product in your mind? Do share it with me I will turn your idea into the next level of realization in Photoshop PSD layer by layer template.\r\nFor just one homepage or any other page, I will charge 10$ but for more than one page, I will charge 10$ per page.\r\nWhat I will give you:-\r\n        Professional and clean high-resolution PNG file as well as any of the source file like PSD, AI, SVG, PDF, EPS  etc.\r\n·  Unlimited revisions till your satisfaction.\r\n· 100% money back guarantee to make sure client satisfaction.\r\nDevelopment PART:\r\nIf you need PSD to HTML then extra money will be needed. Based on design\r\n    So what are you waiting for? GO ahead for the order or just drop a message for any query. I will deliver you the best work with great sincerity and honesty. Working for you will be my pleasure.\r\nRegards : Arslan Siddique', 'Graphic design, Web design, Landing page design, Homepage', 3, 10, 'Kindly provide me with necessary information and images to be placed on design.', '2017-05-03 16:46:12', 0, 0, 0, 0, '76-service-img-b14da05912.png', 'Active', 0, '', 0, 5, 0, 0, '', 3, 0, 0, '', 3, 0, 0, '', 3, 0),
(26, 78, 41, 44, 'Facebook page promotion very fast', 'I will promote your Facebook fanpage very fast to large audiences.\\\\\\\\r\\\\\\\\n\\\\\\\\r\\\\\\\\nyour page will shared 3 pages + 6 groups. Total 110,000 real people. than your social media page will get new likes and fans and followers.\\\\\\\\r\\\\\\\\n\\\\\\\\r\\\\\\\\n?Screenshot will provide\\\\\\\\r\\\\\\\\n? Instant start Fastest\\\\\\\\r\\\\\\\\n? All fans real\\\\\\\\r\\\\\\\\n? No page access required \\\\\\\\r\\\\\\\\n? No software or bots used  \\\\\\\\r\\\\\\\\n\\\\\\\\r\\\\\\\\n                                   Regards, Komikhan', 'Facebook, promotion, social media, advertising, likes,', 1, 10, 'i want only your facebook page link', '2017-05-03 21:30:53', 0, 0, 0, 0, '78-service-img-8dd2653a50.png', 'Active', 0, '', 0, 10, 0, 0, '', 10, 0, 0, '', 10, 0, 0, '', 10, 0),
(27, 80, 16, 23, 'i will help you with c++ programming', 'I am a programming expert, will help you with your problems.If you need any help regarding c++ just message me i will try my best to do your work as best as possible in the least time.', 'c++,programming,assignments', 1, 10, 'Please provide me details before buying my services.', '2017-05-04 06:29:28', 0, 0, 0, 0, '80-service-img-012b2adf0d.png', 'Active', 0, '', 0, 10, 0, 0, '', 10, 0, 0, '', 10, 0, 0, '', 10, 0),
(28, 80, 16, 29, 'i will help you with matlab programming', 'I am a programming expert, will help you with your problems.If you need any help regarding matlab just message me i will try my best to do your work as best as possible in the least time.', 'matlab,programming,assignment', 1, 3, 'Please provide me details before ordering my services.', '2017-05-04 06:35:09', 0, 0, 0, 0, '80-service-img-3f9e8aa062.jpg', 'Active', 0, '', 0, 3, 0, 0, '', 3, 0, 0, '', 3, 0, 0, '', 3, 0),
(29, 80, 5, 0, 'i will help you with math and physics problems', 'I am a math expert, will help you with your problems.If you need any help regarding math or physics just message me i will try my best to do your work as best as possible in the least time.', 'math,physics,assignments,quiz', 1, 10, 'Please provide me details before ordering my services.', '2017-05-04 06:40:33', 0, 0, 0, 0, '80-service-img-825b4cf25a.jpg', 'Active', 0, '', 0, 10, 0, 0, '', 10, 0, 0, '', 10, 0, 0, '', 10, 0),
(30, 82, 6, 7, 'I will design 2 logo with free source file', 'Hello here, My name is farah, I am a team of professional graphic designer I can do any type of graphic related work i.e. logo design, business card, Stationary etc.If you want you can order me any time. Please feel free to contact me if you have any question.', '1.Logo, 2.Professional, 3. Unique', 1, 10, 'I need following information about design:\\\\r\\\\n1.Logo name/ Text ?\\\\r\\\\n2.Tagline ?\\\\r\\\\n3.Color perference ?\\\\r\\\\n4.Business type ?\\\\r\\\\n5. Est _ date ?\\\\r\\\\n6. Some example of logos ?', '2017-05-04 10:37:47', 0, 0, 0, 0, '82-service-img-d52b52842a.png', 'Active', 0, '', 0, 10, 0, 0, '', 10, 0, 0, '', 10, 0, 0, '', 10, 0),
(31, 83, 52, 64, 'i will write any type of Assignment', 'Quality Assignment   WRITING SERVICE\r\nMy quality assignment writing service is available to student  all over of the world. I am  always ready to supply you with any type of academic essay paper assignment  you require, from the most sought after papers to even the more complicated ones. These essays include analysis papers, thesis, research papers, presentations, speeches, dissertation writing, reports, term papers, and many others. I am experienced in a wide range of subjects, paper formats and citation styles, and am always on hand to meet your requirements. \r\n you will get 100% original work\r\nyou will get plagiarism free work•	\r\n I will provide work on time Free unique SERVICES\r\nApprox. 275 words/page.	Double/Single line spacing.	Font:12 point Arial/Times New Roman.	\r\nFREE references page\r\nFREE outline\r\nFREE title page\r\nAPA, MLA, Chicago/Turabian, Harvard etc Any type of referencing Important\r\nAlways contact me and get my approval before you order a gig. \r\nThis gig covers:Essays ,Research Papers, Assignments, Term papers, Literature review, Annotated bibliography, Reflective journal, Case studies  etc', 'Assignment,essays,research,proofreading,thesis', 1, 10, 'Give me all the related data so that i will provide you quality work', '2017-05-04 13:24:45', 0, 0, 0, 0, '83-service-img-c59edb2a81.jpg', 'Active', 0, '', 0, 10, 0, 0, '', 5, 0, 0, '', 5, 0, 0, '', 5, 0),
(32, 85, 6, 7, 'I Will Design An Outstanding LOGO In Just 12 Hrs', 'What we deliver for $5 Basic Gig:\\r\\n\\r\\n Simple Logo Concepts\\r\\n JPG and PNG at 300dpi (high resolution)\\r\\n Mockup presentation\\r\\n Delivery time within 12 hours for the first drafts\\r\\n 7 Revisions for one of the two initial concepts\\r\\n Fantastic customer support\\r\\n\\r\\n??Note??\\r\\n\\r\\nBy ordering the Premium Pack I\\\'ll work more closely with you to develop and fine tune the entire project. You\\\'ll get more concepts to choose from, also unlimited revisions, vectors files, font pack, business cards, stationeries, and the satisfaction guarantee.\\r\\nUnlimited revisions mean you will get unlimited changes to the original concept (color changes, shape changes, font changes), not unlimited new logos. So you will get unlimited revisions to a concept, not unlimited new concepts.\\r\\nWe don\\\'t design the 3D logo.\\r\\nWe don\\\'t provide the vector file for the mock-up file.\\r\\n100% Money back guaranty for all the designs.\\r\\n\\r\\nFor any additional questions feel free to message us. We are available 24/7.', 'Logo, fiverr, google, unique, attractive', 1, 10, 'Unlimited revisions\\r\\nUnlimited revisions mean you will get unlimited changes to the original concept (color changes, shape changes, font changes), not unlimited new logos. So you will get unlimited revisions to a concept, not unlimited new concepts.', '2017-05-05 06:26:08', 0, 0, 0, 0, '85-service-img-fa9b024517.jpg', 'Active', 0, '', 0, 10, 0, 0, '', 5, 0, 0, '', 5, 0, 0, '', 5, 0),
(33, 59, 41, 49, 'I Will Give 1000,000 Email Adresses', 'i will give you 1 million email list\r\n\r\nNICHES AVAILABLE : \r\n\r\n- Education\r\n- Health & Fitness\r\n- Internet Marketing\r\n- Technology\r\n- Finance And Business\r\n- Beauty & Fashion\r\n- Dating And Romance\r\n- And Loads More...\r\nThe list sources are very valuable and it will surely help your business/website.', 'email address,email,email database', 1, 3, 'Thank you For order my service', '2017-06-18 02:25:52', 0, 0, 0, 0, '59-service-img-5c0570281f.jpg', 'Active', 0, '', 0, 3, 0, 0, '', 3, 0, 0, '', 3, 0, 0, '', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(42) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verified` tinyint(1) NOT NULL,
  `email_verify_code` varchar(100) NOT NULL,
  `password_verify_code` varchar(100) NOT NULL,
  `paypal_email` varchar(100) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `purchase_balance` decimal(10,2) NOT NULL,
  `balance_used` decimal(10,2) NOT NULL,
  `referrer` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `total_withdrawn` decimal(10,2) NOT NULL,
  `total_used` decimal(10,2) NOT NULL,
  `total_deposit` decimal(10,2) NOT NULL,
  `forum_posts` int(11) NOT NULL,
  `settings_updated` tinyint(1) NOT NULL,
  `signup_date` datetime NOT NULL,
  `signup_ip` varchar(255) NOT NULL,
  `last_ip` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `forum_mod` tinyint(1) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `suspended` tinyint(1) NOT NULL,
  `rating` int(3) NOT NULL,
  `level` varchar(100) NOT NULL,
  `sales` bigint(20) NOT NULL,
  `first_deposit` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `description`, `last_name`, `email`, `email_verified`, `email_verify_code`, `password_verify_code`, `paypal_email`, `balance`, `purchase_balance`, `balance_used`, `referrer`, `role`, `total_withdrawn`, `total_used`, `total_deposit`, `forum_posts`, `settings_updated`, `signup_date`, `signup_ip`, `last_ip`, `last_login`, `forum_mod`, `avatar`, `suspended`, `rating`, `level`, `sales`, `first_deposit`) VALUES
(2, 'admin', '34cd7f1e2781cb3a904dce62706f3cf77a3697b8', '', '', '', '', 0, '', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2013-09-25 00:00:00', '::1', '::1', '0000-00-00 00:00:00', 0, '', 1, 0, '', 0, 0),
(30, 'etallu', '6a8e352739a0307eb09e1489ff2b4e229086e43d', 'Admin', '', 'Admin', 'test@test.com', 1, 'BC790C1A0CDB', '', '', '59.00', '68.00', '150.00', '', 'admin', '0.00', '0.00', '0.00', 0, 0, '2013-09-12 21:11:11', '39.55.195.191', '119.153.181.211', '2017-06-20 19:29:25', 1, 'etallu.png', 0, 90, '', 0, 0),
(54, 'Talal', '6a8e352739a0307eb09e1489ff2b4e229086e43d', 'Talal', 'I am professional Web Developer providing many services related to Web Designing and web development specially W3C Validation service.', 'Khalid', 'otallu@live.com', 1, '8EBC16AEC563', '', '', '2.00', '9.00', '0.00', '', 'user', '0.00', '0.00', '29.00', 0, 0, '2014-05-31 05:48:16', '39.55.195.191', '110.36.216.158', '2015-05-18 12:02:23', 0, '', 0, 100, 'No Level', 1, 0),
(55, 'muteen', '6cbf948dcc75359b908a49ca07436cd61e6a63a6', 'Muteen', 'i am freelancer web designer and developer. i always deliver the Best Quality of work you can get for the lowest price. i have over 3+ years of experience providing professional work and 100% dedication to your projects.', 'sadaqat', 'muteen777@gmail.com', 1, '53A3690E2928', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-05-31 07:35:08', '182.180.18.155', '182.189.6.64', '2014-08-04 11:39:18', 0, 'muteen.jpg', 0, 0, 'No Level', 0, 0),
(56, 'naumansaeed', 'c197592fae2388178e7f9c0c32d3442c804ed9d9', '', '', '', 'info@naumansaeed.com', 1, '204BB85B44DE', '8251889E97225C70A77AC04BF5B16282', '', '6.40', '0.00', '0.00', '', 'user', '0.00', '0.00', '3.00', 0, 0, '2014-06-02 00:52:07', '182.189.147.36', '119.154.10.92', '2014-11-06 06:29:51', 0, '', 0, 0, 'No Level', 1, 0),
(57, 'shoaib', '20d75fe135fc3abc15aee2f6e4657c3107899d6a', '', '', '', 'shezah2010@hotmail.com', 1, 'A3B95896DC76', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-06-07 08:29:13', '182.185.130.48', '182.185.142.163', '2014-06-11 10:08:24', 0, '', 0, 0, 'No Level', 0, 0),
(58, 'aqsa_iqbal', '30570545fec510aa9b601dbc4d7ce9ad27b129f6', 'Aqsa', 'A dedicated freelance content writer.', 'Iqbal', 'aqsa.jalz@gmail.com', 1, 'E43408227DE9', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-06-07 10:14:59', '39.50.202.233', '39.50.202.233', '2014-06-07 10:14:59', 0, '', 0, 0, 'No Level', 0, 0),
(59, 'humairkhaliq', 'b999e9b316485033785e4026936ab307b9298a28', 'humair', '', 'khaliq', 'humairkhaliq@yahoo.com', 1, 'DFB07971DE81', '86F0A35F07A47CC016A3F9725692C832', 'oappsol101@gmail.com', '0.00', '0.00', '0.00', '', 'admin', '0.00', '0.00', '0.00', 0, 0, '2014-06-11 19:00:49', '39.55.171.208', '58.65.212.175', '2017-06-18 02:18:35', 0, '', 0, 0, 'No Level', 0, 0),
(60, 'maxOz', 'ad8aded119db6d28dd1b5501b31fc39924d33f89', '', '', '', 'michele@maxoz.com.au', 1, '76C059BE3142', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-07-12 04:59:52', '210.49.195.153', '210.49.195.153', '2014-07-12 04:59:52', 0, '', 0, 0, 'No Level', 0, 0),
(61, 'ecstaticaquarian', '87c38b4cca9f27c85e539edd8c62a9aa18bb384a', '', '', '', 'ecstatic_aquarian@hotmail.com', 1, 'B6EE863B1DF1', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-07-16 13:33:04', '39.50.143.111', '39.50.143.111', '2014-07-16 13:33:04', 0, '', 0, 0, 'No Level', 0, 0),
(62, 'rawseo', 'cfeef2979ccbad5857157f31b468988f0a434427', '', '', '', 'etallu@eugenef.com', 1, '30D8D7711074', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-07-19 13:56:45', '24.136.28.56', '24.136.28.56', '2014-08-09 13:17:19', 0, '', 0, 0, 'No Level', 0, 0),
(63, 'asiftheone1', 'f2a2c04bb8e29645614dc400429988c3b558914a', '', '', '', 'asiftheone1@gmail.com', 1, '40D41C0D4AE4', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-07-22 01:58:55', '117.102.36.252', '117.102.36.252', '2014-07-22 01:58:55', 0, '', 0, 0, 'No Level', 0, 0),
(64, 'HASSAN', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '', '', '', 'cute.boy44@hotmail.com', 1, '7C323C63862A', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-07-22 04:48:23', '122.129.73.28', '122.129.73.28', '2014-07-22 04:48:23', 0, '', 0, 0, 'No Level', 0, 0),
(65, 'Usman', '84a5b46a09da167ac2d145dc1a8ed271bf34775c', '', '', '', 'webonline.com.pk@gmail.com', 1, '9CC1A85F70E8', '', 'webonline.com.pk@gmail.com', '0.00', '0.00', '0.00', '', 'admin', '0.00', '0.00', '0.00', 0, 0, '2014-08-21 22:35:50', '182.180.111.207', '182.180.111.207', '2014-08-21 22:35:50', 0, '', 0, 0, 'No Level', 0, 0),
(66, 'hasan', '64ad6ce96ac2f8995eb0659cdab0ba892665e104', '', '', '', 'hasan4it@gmail.com', 1, '2ED6200C8FA4', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-09-13 18:28:49', '101.50.79.175', '101.50.79.175', '2014-09-13 18:28:49', 0, '', 0, 0, 'No Level', 0, 0),
(67, 'markobenda', '277ff3190d751c3444d2be368e58827c3f65bacf', '', '', '', 'marko.benda@gmail.com', 1, '4A30ED1DFCD6', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2014-09-27 02:33:17', '130.204.244.195', '130.204.244.195', '2014-09-27 02:33:17', 0, '', 0, 0, 'No Level', 0, 0),
(68, 'hallascode', '4e048805148e1813299d7a4f3098bc08269574f9', '', '', '', 'hassan@nuratel.com', 1, 'B14883C1D4A4', '', '', '0.00', '2.00', '0.00', '', 'user', '0.00', '0.00', '10.00', 0, 0, '2014-10-26 02:05:32', '80.227.150.198', '80.227.150.198', '2014-10-26 09:41:16', 0, '', 0, 0, 'No Level', 0, 0),
(69, 'torger', '168d8ed191de8b7de2405dd833149d140b43ef0a', '', '', '', 'toto11_7@hotmail.com', 1, 'AD67222DCC77', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2015-05-17 04:07:03', '84.208.130.206', '84.208.130.206', '2015-05-18 04:37:30', 0, '', 0, 0, 'No Level', 0, 0),
(70, 'clb0583', '4a1e433d8865706e81adaefb5337abcdb8f67ce4', 'CHRISTOPHER', 'earn', 'BRYANT', 'clb0583@yahoo.com', 1, 'D7473D5E32A5', '', 'clb0583@yahoo.com', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2015-08-24 02:31:42', '67.162.243.26', '67.162.243.26', '2015-08-24 02:31:42', 0, '', 0, 0, 'No Level', 0, 0),
(71, 'tayyabharoon936', 'd301842540d6e9e8505804d033b9e8c20952d359', '', '', '', 'tayyabharoon123@gmail.com', 1, '6F7FF7523D04', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2016-01-05 04:37:10', '103.255.5.43', '103.255.5.43', '2016-01-05 04:37:10', 0, '', 0, 0, 'No Level', 0, 0),
(72, 'humair', 'bcdc7b1607cee55fcf793f7b97650cf3ef19b220', '', '', '', 'humairkhaliq@ymail.com', 1, '53912BAFFCA6', '', '', '0.00', '0.00', '0.00', '', 'admin', '0.00', '0.00', '0.00', 0, 0, '2016-08-18 04:01:21', '92.97.195.119', '92.97.195.119', '2016-08-18 04:01:21', 0, '', 0, 0, 'No Level', 0, 0),
(73, 'trapizuis', 'afb6edec22e5f63c23f6335751768ab8363d3654', '', '', '', 'kai_kla@hotmail.com', 0, 'F5F007F29F39', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2016-10-16 03:07:30', '89.187.219.3', '89.187.219.3', '2016-10-16 03:07:30', 0, '', 0, 0, 'No Level', 0, 0),
(74, 'sharingvideo', '1d81b5f6815bf0da9ea6d3eb45b7d82face79775', '', '', '', 'sharing.video@yandex.com', 1, '196B75A8BD2E', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 3, 0, '2017-02-04 01:35:45', '182.182.105.80', '178.62.85.75', '2017-03-18 07:00:06', 0, '', 0, 0, 'No Level', 0, 0),
(75, 'CreativeMedia25', 'a5e05f30aa49a9a0a6520f4f770968071b3f7e10', 'Muhammad', 'I am from Karachi, Pakistan. I have more than 5 years experience in graphic designing. I am a full-time freelancer graphic designer.', 'Farooq', 'creativemedia2525@gmail.com', 1, 'C421527C3770', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-03 15:07:27', '113.203.167.139', '113.203.147.87', '2017-05-04 11:43:24', 0, 'creativemedia25.jpg', 0, 0, 'No Level', 0, 0),
(76, 'arslan', 'faed36033d48553a1afb67a7b48c47701a5aa2d9', '', '', '', 'hafizas101@gmail.com', 1, 'E5EB57795839', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-03 16:16:47', '103.255.5.46', '103.255.5.46', '2017-05-03 16:16:47', 0, '', 0, 0, 'No Level', 0, 0),
(77, 'shahzadshameer1', '33ad2aea86172ba9eaf0c6dcf2e1d18f5e7a170d', '', '', '', 'shahzadshameer1@gmail.com', 1, '40258F44F20C', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-03 19:47:19', '103.255.5.109', '103.255.5.109', '2017-05-03 19:47:19', 0, '', 0, 0, 'No Level', 0, 0),
(78, 'komikhan', '4c7ea9ecc805c3d5445f4393f9c07524d3ecb073', '', '', '', 'komikhan24@gmail.com', 1, '1632DF7178FF', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-03 21:20:20', '113.203.139.132', '113.203.139.132', '2017-05-03 21:20:20', 0, '', 0, 0, 'No Level', 0, 0),
(79, 'Munaf', 'd75a861b8ee16f82945d8de572b27b858f264ca2', '', '', '', 'munaf.servis@gmail.com', 1, 'D8EBD1F9CD53', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-04 03:21:03', '45.116.232.56', '45.116.232.56', '2017-05-04 03:21:03', 0, '', 0, 0, 'No Level', 0, 0),
(80, 'expert', 'bcc8c383b2745276fd0f6679325b7af75ef25c8f', '', '', '', 'sheheryar91@yahoo.com', 1, '65FD2E4ABC8A', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-04 06:19:40', '159.203.23.120', '172.104.131.82', '2017-05-05 23:28:24', 0, '', 0, 0, 'No Level', 0, 0),
(81, 'sarah_graphics', 'd92714bfdfc3855066bd0e9ea103c92456ad450e', '', '', '', 'ammadulhassan58@gmail.com', 1, '217D7D75AA71', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-04 07:08:34', '45.55.32.122', '45.55.32.122', '2017-05-04 07:08:34', 0, '', 0, 0, 'No Level', 0, 0),
(82, 'farahmirza', 'd1f26306bc88de6c6b2af4dcc0901cf13f328815', '', '', '', 'farahmirza237@gmail.com', 1, '2263FD4DB138', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-04 10:17:59', '119.154.151.75', '119.159.186.6', '2017-05-04 15:11:29', 0, '', 0, 0, 'No Level', 0, 0),
(83, 'mahaakhan', '9898d58613bf1f20224412373e5b868674dccc90', '', '', '', 'mahaaakhan347@gmail.com', 1, '547155442446', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-04 13:13:19', '39.33.75.35', '39.33.75.35', '2017-05-04 13:13:19', 0, '', 0, 0, 'No Level', 0, 0),
(84, 'sajjad1112', 'ac2d1b058148c34d8d6fb8634f3a1b21f9a77cc7', '', '', '', 'msajjad1112@hotmail.com', 1, '02F6F27CE482', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-04 13:36:47', '182.186.93.250', '182.186.93.250', '2017-05-04 13:36:47', 0, '', 0, 0, 'No Level', 0, 0),
(85, 'Azaan_Muneer', '0f6dc2d6607dc6aca7ca3a6c69a34c52feadc285', '', '', '', 'azaanmunirpk@gmail.com', 1, 'B8022FC505B8', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-05-05 06:17:51', '103.255.4.245', '103.255.4.245', '2017-05-05 06:17:51', 0, '', 0, 0, 'No Level', 0, 0),
(86, 'oappsol', '52e8e28d85995f9fcbbc835f44dc0edb16ab5cfd', '', '', '', 'oappsol101@gmail.com', 0, '59DF912606D9', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-06-18 02:28:11', '58.65.212.175', '58.65.212.175', '2017-06-18 02:32:57', 0, '', 0, 0, 'No Level', 0, 0),
(87, 'checking', 'ae56b478d317dcab58e1bdce20bb302edeb0d67e', '', '', '', 'spider_679@hotmail.com', 1, '8F89135751B9', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-06-20 19:10:59', '119.153.181.211', '119.153.181.211', '2017-06-20 19:10:59', 0, '', 0, 0, 'No Level', 0, 0),
(88, 'humairkhaliq101', 'bcdc7b1607cee55fcf793f7b97650cf3ef19b220', '', '', '', 'humairkhaliq101@gmail.com', 1, '652E1B2DC29A', '', '', '0.00', '0.00', '0.00', '', 'user', '0.00', '0.00', '0.00', 0, 0, '2017-06-20 23:05:31', '58.65.212.2', '58.65.212.2', '2017-06-20 23:05:31', 0, '', 0, 0, 'No Level', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `method` varchar(60) NOT NULL,
  `datetime` datetime NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `completed_time` datetime NOT NULL,
  `response_json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_replies`
--
ALTER TABLE `forum_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `forum_replies`
--
ALTER TABLE `forum_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=643;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
