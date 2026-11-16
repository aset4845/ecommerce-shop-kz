-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 17 2025 г., 09:41
-- Версия сервера: 5.6.51
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Қызыл'),
(2, 'Қара'),
(3, 'Көк'),
(4, 'Сары'),
(5, 'Жасыл'),
(6, 'Ақ'),
(7, 'Қызғылт сары'),
(8, 'Қоңыр'),
(9, 'Қызыл қоңыр'),
(10, 'Қызғылт'),
(11, 'Ала түсті'),
(12, 'Ашық көк'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Dark Clay'),
(22, 'Cognac'),
(23, 'Қонырқай'),
(24, 'Charcoal'),
(25, 'Navy'),
(26, 'Fuchsia'),
(27, 'Зәйтүн түсі'),
(28, 'Burgundy'),
(29, 'Midnight Blue');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(99, 'Индия'),
(106, 'Италия'),
(112, 'Қазақстан'),
(119, 'Қырғызстан'),
(182, 'Ресей Федерациясы'),
(222, 'Түркия'),
(223, 'Түркіменстан'),
(233, 'Өзбекстан'),
(249, 'Украина'),
(248, 'Франция'),
(247, 'Қытай'),
(246, 'Беларусь');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_cname` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_phone` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text CHARACTER SET utf8mb4 NOT NULL,
  `cust_city` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_state` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_zip` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `cust_b_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_b_cname` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_b_phone` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text CHARACTER SET utf8mb4 NOT NULL,
  `cust_b_city` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_b_state` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_b_zip` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `cust_s_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_s_cname` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_s_phone` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text CHARACTER SET utf8mb4 NOT NULL,
  `cust_s_city` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_s_state` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_s_zip` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `cust_password` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_token` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `cust_datetime` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_timestamp` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'Лунера Маратовна', 'ТОО \"WV Company\"', 'liam@mail.com', '7458965410', 230, '788 Cottonwood Lane', 'Nashville', 'TN', '37072', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0081e99a29cacd4b553db15c5c5c047e', '2022-03-17 11:09:34', '1647544174', 1),
(2, 'Chad N. Carney', 'none', 'chad@mail.com', '4785690000', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', '5f4dcc3b5aa765d61d8327deb882cf99', 'ca87666426f4bc5c5128a96dabfecefb', '2022-03-17 11:15:26', '1647544526', 1),
(3, 'Jean Collins', 'none', 'jean@mail.com', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', '5f4dcc3b5aa765d61d8327deb882cf99', '6b3439bf95644a36a1ed92bef374ebb7', '2022-03-20 10:29:39', '1647797379', 1),
(4, 'Annie Young', 'XYZ Company', 'annie@mail.com', '7770001144', 230, '79 Burwell Heights Road', 'Beaumont', 'TX', '77400', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'fc8f07537cdd6b3f89eb94f1cad78060', '2022-03-20 10:31:35', '1647797495', 1),
(5, 'Matthew Morales', 'ABC Company', 'matthew@mail.com', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', '5f4dcc3b5aa765d61d8327deb882cf99', 'c391105908fe01a636bfa5fc39eed33d', '2022-03-20 10:33:15', '1647797595', 1),
(6, 'August F. Freels', 'none', 'august@mail.com', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', '5f4dcc3b5aa765d61d8327deb882cf99', 'decc1fc2c5dd9935df82c0233002ce66', '2022-03-20 10:34:08', '1647797648', 1),
(7, 'Камиль Хромов', 'Фирма \"Краски Радуги\"', 'carl@mail.com', '789878987', 230, '77 Lyndon Street', 'Kutztown', 'PA', '19855', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'c79bac688e70cc9665a2164c57ec172c', '2022-03-20 10:35:02', '1647797702', 1),
(8, 'Benjamin B. Louque', 'none', 'benjamin@mail.com', '7777889955', 230, '32 Bridge Street', 'Tulsa', 'OK', '74220', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '5a0e096368f9669508af7b7203382b07', '2022-03-20 10:36:31', '1647797791', 1),
(9, 'Joe K. Richardson', 'none', 'joe@mail.com', '4444445555', 230, '17 Derek Drive', 'Youngstown', 'OH', '44500', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'e74ac0178d7833988d4b1625c42ba26e', '2022-03-20 10:37:18', '1647797838', 1),
(10, 'Will Williams', 'Test Company', 'williams@mail.com', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', '5f4dcc3b5aa765d61d8327deb882cf99', '941c9265fb920f691cf01b12a15f80f8', '2022-03-20 11:15:59', '1647800159', 1),
(11, 'Adil Kabdeshov', 'Fila', 'adilK@mail.ru', '87012520252', 112, 'Pavlodar, St.Bayan Batyr 35, sq.47', '????????', '??????????????', '100019', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '123', '4a6c1a69512682de1e2e57cfec2db0ba', '2025-05-16 11:21:36', '1747420351', 1),
(12, 'Жанат', 'Касымов', 'shanat@mail.ru', '87025486963', 112, '???? 15\r\n52-56', 'Жезказган', '??????????????', '100002', 'Жанат Касымов', 'ТОО ', '87025486963', 112, 'Абая 15\r\n52-56', 'Караганда', 'Карагандинская', '100002', 'Жанат Касымов', 'ТОО \"Мир\"', '87025486963', 112, 'Абая 15\r\n52-56', 'Караганда', 'Карагандинская', '100002', '202cb962ac59075b964b07152d234b70', 'a7530914215ad2f87bf4e3f069f8b81d', '2025-05-16 11:27:18', '1747420038', 1),
(13, 'Альтайыр', 'Ахметов', 'vefor91008@jazipo.com', '87025486963', 112, 'Баринова 7', 'Рудный', '??????????????', '100019', 'Жанат Касымов', 'ТОО \"Мир\"', '87025486963', 112, 'Абая 15\r\n52-56', 'Караганда', 'Карагандинская', '100019', 'Жанат Касымов', 'ТОО \"Мир\"', '87025486963', 112, 'Абая 15\r\n52-56', 'Караганда', 'Карагандинская', '100002', '202cb962ac59075b964b07152d234b70', '22b8337b7b96286ad3d60d0a31e14511', '2025-05-16 11:29:12', '1747420152', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `message` text CHARACTER SET utf8mb4 NOT NULL,
  `order_detail` text CHARACTER SET utf8mb4 NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(9, 'Жанат', 'Біз сізге 5000 тг сомасына 1 сертификат сыйлаймыз.', '\nТұтынушы аты: Жанат<br>\nТұтынушының электрондық поштасы: shanat@mail.ru<br>\nТөлем әдісі: PayPal<br>\nТөлем күні: 2025-05-16 15:07:16<br>\nТөлем мәліметтері: <br>\nТранзакция ID: <br>\n        		<br>\nТөленген сома: 607<br>\nТөлем күйі: Күтілуде<br>\nЖеткізу күйі: Күтілуде<br>\nТөлем ID: 1747433236<br>\n            \n<br><b><u>Өнім 1</u></b><br>\nӨнім атауы: Әйелдерге арналған үлкен өлшемді көйлек, алтын түсті фурнитурамен<br>\nӨлшемі: 14 Plus<br>\nТүсі: Қара<br>\nСаны: 3<br>\nБірлік бағасы: 169<br>\n            ', 12),
(10, 'Жанат', 'Біз сізге 5000 тг сомасына 1 сертификат сыйлаймыз.', '\nТұтынушы аты: Жанат<br>\nТұтынушының электрондық поштасы: shanat@mail.ru<br>\nТөлем әдісі: PayPal<br>\nТөлем күні: 2025-05-16 15:07:16<br>\nТөлем мәліметтері: <br>\nТранзакция ID: <br>\n        		<br>\nТөленген сома: 607<br>\nТөлем күйі: Күтілуде<br>\nЖеткізу күйі: Күтілуде<br>\nТөлем ID: 1747433236<br>\n            \n<br><b><u>Өнім 1</u></b><br>\nӨнім атауы: Әйелдерге арналған үлкен өлшемді көйлек, алтын түсті фурнитурамен<br>\nӨлшемі: 14 Plus<br>\nТүсі: Қара<br>\nСаны: 3<br>\nБірлік бағасы: 169<br>\n            ', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Бас киімдер', 1),
(2, 'Күннен қорғайтын көзілдірік', 1),
(3, 'Сағаттар', 1),
(4, 'Сандалдар', 2),
(5, 'Етік', 2),
(6, 'Жоғарғы киімдер', 3),
(7, 'Футболка', 3),
(8, 'Сағаттар', 4),
(9, 'Күннен қорғайтын көзілдірік', 4),
(11, 'Спорттық аяқ киім', 2),
(12, 'Сандалдар', 6),
(13, 'Тегіс аяқ киім', 6),
(14, 'Худи', 7),
(15, 'Пальто және күртелер', 7),
(16, 'Шалбар', 8),
(17, 'Джинсы', 8),
(18, 'Джоггерлер', 8),
(19, 'Шорты', 8),
(20, 'Футболкалар', 9),
(21, 'Күнделікті жейделер', 9),
(22, 'Ресми жейделер', 9),
(23, 'Поло жейделер', 9),
(24, 'Жилет', 9),
(25, 'Күнделікті аяқ киім', 2),
(26, 'Ұл балалар', 10),
(27, 'Қыз балалар', 10),
(28, 'Ұл балалар', 11),
(29, 'Қыз балалар', 11),
(30, 'Ұл балалар', 12),
(31, 'Қыз балалар', 12),
(32, 'Көйлектер', 7),
(33, 'Жоғарғы киімдер', 7),
(34, 'Футболкалар мен жилеттер', 7),
(35, 'Шалбар мен леггинстер', 7),
(36, 'Спорттық киімдер', 7),
(37, 'Үлкен өлшемді киімдер', 7),
(38, 'Шұлықтар мен колготки', 7),
(39, 'Хош иіс', 3),
(40, 'Тері күтімі', 3),
(41, 'Шаш күтімі', 3),
(42, 'Зергерлік бұйымдар', 4),
(43, 'Көз күтімі', 3),
(44, 'Ерін күтімі', 3),
(45, 'Бет күтімі', 3),
(46, 'Сыйлық жиынтықтары', 3),
(47, 'Шарфтар мен бас киімдер', 4),
(48, 'Көпбумалар', 4),
(49, 'Басқа аксессуарлар', 4),
(50, 'Туфли', 6),
(51, 'Кроссовкалар', 6),
(52, 'Спорттық аяқ киім', 6),
(53, 'Етік', 6),
(54, 'Ыңғайлы аяқ киім', 6),
(55, 'Тәпішкелер мен күнделікті аяқ киім', 6),
(56, 'Ресми аяқ киім', 2),
(57, 'Белбеулер', 1),
(58, 'Көпбумалар', 1),
(59, 'Басқа аксессуарлар', 1),
(60, 'Сөмкелер', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `faq_content` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Тауарды қалай табуға болады?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Бізде таңдау үшін көптеген тамаша өнімдер бар.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, \\\"Helvetica Neue\\\", Helvetica, Helvetica, Arial, sans-serif;\">Кеңес 1: Егер сіз нақты өнім іздесеңіз, сайттың жоғарғы жағындағы іздеу жолағын пайдаланыңыз. Қажетті затты теріңіз, сонда сізді таң қалдыратын нәтижелер аласыз!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Кеңес 2: Егер сіз өнім санатын зерттегіңіз келсе, жоғарғы мәзірдегі Санаттар бөлімін қолданыңыз және сүйікті санаттарыңыз бойынша өтіп, әрқайсысында үздік өнімдерді көре аласыз.</span></font><br><br></h3>\r\n'),
(2, 'Сіздің қайтару саясатыңыз қандай?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">Тапсырысыңыз жеткізілгеннен кейін 15 күн ішінде қайтару сұранысын жасай аласыз.</span><br></p>\r\n'),
(3, 'Мен ақаулы/бүлінген тауар алдым, ақшамды қайтара аламын ба?', '<p>Егер алған тауарыңыз ақаулы немесе бүлінген болса, оны бастапқы қаптамасымен және қорабымен бірге сол күйінде қайтара аласыз. Біз қайтарылған затты алғаннан кейін, оны тексереміз және егер тауар ақаулы немесе бүлінген деп танылса, ақшаны және жеткізу шығындарын қайтарамыз.<br></p>\r\n'),
(4, 'Қай кезде қайтару қолдау көрсетілмейді?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">Кейбір жағдайларда қайтару қолдауын көрсете алмаймыз:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Қайтару сұранысы жеткізілгеннен кейін 15 күннен кеш жасалған.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Өнім қолданылған, бүлінген немесе бастапқы күйінде емес.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Іш киім, шұлық, сыйлық ретінде берілген киімдер және т.б. сияқты арнайы санаттар.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Өндірушінің кепілдігіне кіретін ақаулы өнімдер.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Қолданылған немесе орнатылған тұтыну тауарлары.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Сериялық нөмірлері бүлінген немесе жоқ өнімдер.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Сіз алған қаптамадағы барлық заттар (баға белгілері, жапсырмалар, түпнұсқа қаптама, сыйлықтар және аксессуарлар) толық болмауы.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Сынғыш немесе гигиеналық заттар.</li></ol>\r\n'),
(5, 'Қайтарылмайтын заттар қандай?', '<p>Қайтарылмайтын заттар:</p><p>Тазарту (clearance) белгісі бар және Қайтарылмайды деп көрсетілген заттар<br></p><p>Ұсыныста арнайы көрсетілген қайтарылмайтын заттар.</p><p>Төмендегі өнім түрлері қайтарылмайды:</p><ul><li>Іш киім</li><li>Ленжери</li><li>Шұлық</li><li>Бағдарламалық қамтамасыз ету</li><li>Музыкалық альбомдар</li><li>Кітаптар</li><li>Купальниктер</li><li>Сұлулық және хош иіссу</li><li>Колготки</li></ul><p>Сондай-ақ, қолданылған немесе орнатылған тұтыну тауарлары қайтарылмайды. Тұтынушылардың құқықтарын қорғау туралы заңға және қайтарылмайтын заттар бөліміне сәйкес.<br></p>');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `lang_value` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '₸'),
(2, 'Search Product', 'Өнімді іздеу'),
(3, 'Search', 'Іздеу'),
(4, 'Submit', 'Жіберу'),
(5, 'Update', 'Жаңарту'),
(6, 'Read More', 'Толығырақ'),
(7, 'Serial', 'Серия'),
(8, 'Photo', 'Фото'),
(9, 'Login', 'Кіру'),
(10, 'Customer Login', 'Тұтынушы кіруі'),
(11, 'Click here to login', 'Кіру үшін басыңыз'),
(12, 'Back to Login Page', 'Кіру бетіне оралу'),
(13, 'Logged in as', 'Кіру аты'),
(14, 'Logout', 'Шығу'),
(15, 'Register', 'Тіркелу'),
(16, 'Customer Registration', 'Тұтынушы тіркелуі'),
(17, 'Registration Successful', 'Тіркелу сәтті өтті'),
(18, 'Cart', 'Себет'),
(19, 'View Cart', 'Себетті көру'),
(20, 'Update Cart', 'Себетті жаңарту'),
(21, 'Back to Cart', 'Себетке оралу'),
(22, 'Checkout', 'Төлеу'),
(23, 'Proceed to Checkout', 'Төлеуге өту'),
(24, 'Orders', 'Тапсырыстар'),
(25, 'Order History', 'Тапсырыс тарихы'),
(26, 'Order Details', 'Тапсырыс мәліметтері'),
(27, 'Payment Date and Time', 'Төлем күні мен уақыты'),
(28, 'Transaction ID', 'Транзакция ID'),
(29, 'Paid Amount', 'Төленген сома'),
(30, 'Payment Status', 'Төлем күйі'),
(31, 'Payment Method', 'Төлем әдісі'),
(32, 'Payment ID', 'Төлем ID'),
(33, 'Payment Section', 'Төлем бөлімі'),
(34, 'Select Payment Method', 'Төлем әдісін таңдаңыз'),
(35, 'Select a Method', 'Әдісті таңдаңыз'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Банк арқылы төлеу'),
(39, 'Card Number', 'Карта нөмірі'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Ай'),
(42, 'Year', 'Жыл'),
(43, 'Send to this Details', 'Осы мәліметтерге жіберу'),
(44, 'Transaction Information', 'Транзакция ақпараты'),
(45, 'Include transaction id and other information correctly', 'Транзакция ID және басқа ақпаратты дұрыс енгізіңіз'),
(46, 'Pay Now', 'Қазір төлеу'),
(47, 'Product Name', 'Өнім атауы'),
(48, 'Product Details', 'Өнім мәліметтері'),
(49, 'Categories', 'Санаттар'),
(50, 'Category:', 'Санат:'),
(51, 'All Products Under', 'Барлық өнімдер'),
(52, 'Select Size', 'Өлшемді таңдаңыз'),
(53, 'Select Color', 'Түсті таңдаңыз'),
(54, 'Product Price', 'Өнім бағасы'),
(55, 'Quantity', 'Саны'),
(56, 'Out of Stock', 'Қоймада жоқ'),
(57, 'Share This', 'Бөлісу'),
(58, 'Share This Product', 'Бұл өніммен бөлісу'),
(59, 'Product Description', 'Өнім сипаттамасы'),
(60, 'Features', 'Ерекшеліктері'),
(61, 'Conditions', 'Шарттар'),
(62, 'Return Policy', 'Қайтару саясаты'),
(63, 'Reviews', 'Пікірлер'),
(64, 'Review', 'Пікір'),
(65, 'Give a Review', 'Пікір қалдыру'),
(66, 'Write your comment (Optional)', 'Пікіріңізді жазыңыз (міндетті емес)'),
(67, 'Submit Review', 'Пікірді жіберу'),
(68, 'You already have given a rating!', 'Сіз баға бердіңіз!'),
(69, 'You must have to login to give a review', 'Пікір қалдыру үшін жүйеге кіріңіз'),
(70, 'No description found', 'Сипаттама табылмады'),
(71, 'No feature found', 'Ерекшелік табылмады'),
(72, 'No condition found', 'Шарт табылмады'),
(73, 'No return policy found', 'Қайтару саясаты табылмады'),
(74, 'Review not found', 'Пікір табылмады'),
(75, 'Customer Name', 'Тұтынушы аты'),
(76, 'Comment', 'Пікір'),
(77, 'Comments', 'Пікірлер'),
(78, 'Rating', 'Баға'),
(79, 'Previous', 'Алдыңғы'),
(80, 'Next', 'Келесі'),
(81, 'Sub Total', 'Аралық сома'),
(82, 'Total', 'Жалпы сома'),
(83, 'Action', 'Әрекет'),
(84, 'Shipping Cost', 'Жеткізу құны'),
(85, 'Continue Shopping', 'Сауда жасауды жалғастыру'),
(86, 'Update Billing Address', 'Төлем мекенжайын жаңарту'),
(87, 'Update Shipping Address', 'Жеткізу мекенжайын жаңарту'),
(88, 'Update Billing and Shipping Info', 'Төлем және жеткізу ақпаратын жаңарту'),
(89, 'Dashboard', 'Басқару панелі'),
(90, 'Welcome to the Dashboard', 'Басқару панеліне қош келдіңіз'),
(91, 'Back to Dashboard', 'Басқару панеліне оралу'),
(92, 'Subscribe', 'Жазылу'),
(93, 'Subscribe To Our Newsletter', 'Жаңалықтарға жазылыңыз'),
(94, 'Email Address', 'Электрондық пошта'),
(95, 'Enter Your Email Address', 'Электрондық поштаңызды енгізіңіз'),
(96, 'Password', 'Құпиясөз'),
(97, 'Forget Password', 'Құпиясөзді ұмыттыңыз ба'),
(98, 'Retype Password', 'Құпиясөзді қайта енгізіңіз'),
(99, 'Update Password', 'Құпиясөзді жаңарту'),
(100, 'New Password', 'Жаңа құпиясөз'),
(101, 'Retype New Password', 'Жаңа құпиясөзді қайта енгізіңіз'),
(102, 'Full Name', 'Толық аты'),
(103, 'Company Name', 'Компания атауы'),
(104, 'Phone Number', 'Телефон нөмірі'),
(105, 'Address', 'Мекенжай'),
(106, 'Country', 'Ел'),
(107, 'City', 'Қала'),
(108, 'State', 'Аймақ'),
(109, 'Zip Code', 'Пошта индексі'),
(110, 'About Us', 'Біз туралы'),
(111, 'Featured Posts', 'Таңдаулы жазбалар'),
(112, 'Popular Posts', 'Танымал жазбалар'),
(113, 'Recent Posts', 'Соңғы жазбалар'),
(114, 'Contact Information', 'Байланыс ақпараты'),
(115, 'Contact Form', 'Байланыс формасы'),
(116, 'Our Office', 'Біздің кеңсе'),
(117, 'Update Profile', 'Профильді жаңарту'),
(118, 'Send Message', 'Хабар жіберу'),
(119, 'Message', 'Хабарлама'),
(120, 'Find Us On Map', 'Картадан табыңыз'),
(121, 'Congratulation! Payment is successful.', 'Құттықтаймыз! Төлем сәтті өтті.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Төлем және жеткізу ақпараты сәтті жаңартылды.'),
(123, 'Customer Name can not be empty.', 'Тұтынушы аты бос болмауы керек.'),
(124, 'Phone Number can not be empty.', 'Телефон нөмірі бос болмауы керек.'),
(125, 'Address can not be empty.', 'Мекенжай бос болмауы керек.'),
(126, 'You must have to select a country.', 'Елді таңдауыңыз керек.'),
(127, 'City can not be empty.', 'Қала бос болмауы керек.'),
(128, 'State can not be empty.', 'Аймақ бос болмауы керек.'),
(129, 'Zip Code can not be empty.', 'Пошта индексі бос болмауы керек.'),
(130, 'Profile Information is updated successfully.', 'Профиль ақпараты сәтті жаңартылды.'),
(131, 'Email Address can not be empty', 'Электрондық пошта бос болмауы керек'),
(132, 'Email and/or Password can not be empty.', 'Электрондық пошта және/немесе құпиясөз бос болмауы керек.'),
(133, 'Email Address does not match.', 'Электрондық пошта сәйкес келмейді.'),
(134, 'Email address must be valid.', 'Электрондық пошта дұрыс болуы керек.'),
(135, 'You email address is not found in our system.', 'Электрондық пошта жүйеде табылмады.'),
(136, 'Please check your email and confirm your subscription.', 'Электрондық поштаңызды тексеріп, жазылымды растаңыз.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Электрондық поштаңыз сәтті расталды. Енді жүйеге кіре аласыз.'),
(138, 'Password can not be empty.', 'Құпиясөз бос болмауы керек.'),
(139, 'Passwords do not match.', 'Құпиясөздер сәйкес келмейді.'),
(140, 'Please enter new and retype passwords.', 'Жаңа құпиясөзді енгізіп, қайта жазыңыз.'),
(141, 'Password is updated successfully.', 'Құпиясөз сәтті жаңартылды.'),
(142, 'To reset your password, please click on the link below.', 'Құпиясөзді қалпына келтіру үшін төмендегі сілтемеге өтіңіз.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'ҚҰПИЯСӨЗДІ ҚАЛПЫНА КЕЛТІРУ СҰРАНЫСЫ - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'Құпиясөзді қалпына келтіру уақыты (24 сағат) өтіп кетті. Қайтадан әрекет етіңіз.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'Растау сілтемесі электрондық поштаңызға жіберілді. Құпиясөзді қалпына келтіру ақпараты сонда болады.'),
(146, 'Password is reset successfully. You can now login.', 'Құпиясөз сәтті қалпына келтірілді. Енді жүйеге кіре аласыз.'),
(147, 'Email Address Already Exists', 'Электрондық пошта бұрыннан бар.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Кешіріңіз! Аккаунтыңыз белсенді емес. Әкімшіге хабарласыңыз.'),
(149, 'Change Password', 'Құпиясөзді өзгерту'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Тіркелуді растау - YOUR WEBSITE'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Тіркелгеніңізге рахмет! Аккаунтыңыз жасалды. Белсендіру үшін төмендегі сілтемеге өтіңіз:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Тіркелу аяқталды. Растау үшін электрондық поштаңызды тексеріңіз.'),
(153, 'No Product Found', 'Өнім табылмады'),
(154, 'Add to Cart', 'Себетке қосу'),
(155, 'Related Products', 'Ұқсас өнімдер'),
(156, 'See all related products from below', 'Барлық ұқсас өнімдерді төменнен қараңыз'),
(157, 'Size', 'Өлшем'),
(158, 'Color', 'Түс'),
(159, 'Price', 'Баға'),
(160, 'Please login as customer to checkout', 'Төлеу үшін тұтынушы ретінде кіріңіз'),
(161, 'Billing Address', 'Төлем мекенжайы'),
(162, 'Shipping Address', 'Жеткізу мекенжайы'),
(163, 'Rating is Submitted Successfully!', 'Баға сәтті жіберілді!');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Ерлер аксессуарлары', 1),
(2, 'Ерлер аяқ киімі', 1),
(3, 'Сұлулық өнімдері', 2),
(4, 'Аксессуарлар', 2),
(6, 'Аяқ киім', 2),
(7, 'Киім', 2),
(8, 'Төменгі киімдер', 1),
(9, 'Футболкалар мен жейделер', 1),
(10, 'Киім', 3),
(11, 'Аяқ киім', 3),
(12, 'Аксессуарлар', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `size` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `quantity` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `unit_price` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(1, 83, 'Ерлерге арналған Ultra Cotton футболкасы, жиынтық', 'XL', 'Сұр', '1', '19', '1647629329'),
(2, 92, 'Ноутбукке арналған Travelpro қол сөмкесі', 'Барлығына бір өлшем', 'Түнгі көк', '1', '91', '1647798593'),
(6, 102, 'Әйелдерге арналған үлкен өлшемді көйлек, алтын түсті фурнитурамен', '14 Plus', 'Қара', '3', '169', '1747433236'),
(7, 86, 'Amazfit GTS 3 ақылды сағаты (Android/iPhone)', 'Еркін өлшем', 'Ақ', '3', '179', '1747434381'),
(8, 92, 'Ноутбукке арналған Travelpro қол сөмкесі', 'Барлығына бір өлшем', 'Түнгі көк', '3', '91', '1747434381');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `about_content` text CHARACTER SET utf8mb4 NOT NULL,
  `about_banner` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `about_meta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `about_meta_keyword` text CHARACTER SET utf8mb4 NOT NULL,
  `about_meta_description` text CHARACTER SET utf8mb4 NOT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `faq_banner` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `faq_meta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `faq_meta_keyword` text CHARACTER SET utf8mb4 NOT NULL,
  `faq_meta_description` text CHARACTER SET utf8mb4 NOT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `blog_banner` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `blog_meta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `blog_meta_keyword` text CHARACTER SET utf8mb4 NOT NULL,
  `blog_meta_description` text CHARACTER SET utf8mb4 NOT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `contact_banner` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `contact_meta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `contact_meta_keyword` text CHARACTER SET utf8mb4 NOT NULL,
  `contact_meta_description` text CHARACTER SET utf8mb4 NOT NULL,
  `pgallery_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `pgallery_banner` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `pgallery_meta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `pgallery_meta_keyword` text CHARACTER SET utf8mb4 NOT NULL,
  `pgallery_meta_description` text CHARACTER SET utf8mb4 NOT NULL,
  `vgallery_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `vgallery_banner` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `vgallery_meta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `vgallery_meta_keyword` text CHARACTER SET utf8mb4 NOT NULL,
  `vgallery_meta_description` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_page`
--
INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Біз туралы', '<p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;">Ecommerce PHP жобасына қош келдіңіз!</p><p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;"><span style="border: 0px solid;">Біз клиенттерімізге соңғы [ӨНІМ САНАТЫ АТАУЫ] ұсынуға тырысамыз. Біз көп жолдан өттік, сондықтан сізге жоғары сапалы әрі қолжетімді өнімдерді жеткізу үшін қай бағытта жүру керектігін білеміз. Біз мұның бәрін тамаша клиенттерге қызмет көрсету және достық қолдау көрсете отырып ұсынамыз.</span></p><p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;"><span style="border: 0px solid;">Біз әрдайым [ӨНІМ САНАТЫ АТАУЫ] бойынша соңғы трендтерді бақылап, клиенттеріміздің тілектерін бірінші орынға қоямыз. Сондықтан бізде әлемнің түкпір-түкпірінде қанағаттанған клиенттер бар және біз [ӨНІМ САНАТЫ АТАУЫ] индустриясының бір бөлігі болғанымызға қуаныштымыз.</span></p><p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;"><span style="border: 0px solid;">Клиенттеріміздің мүддесі біз үшін әрдайым басты орында, сондықтан біздің өнімдерімізді сізге ұсынғандай біз де оларды ұсынудан ләззат аламыз деп үміттенеміз.</span></p><p style="">Біз сізге ең сапалы киімдерді қиындықсыз қайтару және айырбастау саясаты арқылы ұсынамыз. Сіз көрген нәрсе – дәл сіз алатын өнім екеніне кепілдік береміз!</p><ul><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Төмен баға кепілдігі</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">24/7 клиенттерді қолдау</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">E-Mail - Хабарлама - Қоңырау</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Біз сіз үшін тәулік бойы онлайн және телефон арқылы жұмыс істейміз.</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Өлшем және түс</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Әлем бойынша жеткізу</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Біз жақын арада бизнесімізді халықаралық деңгейде кеңейтуді қалаймыз.</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Оңай қайтару</span></font></li></ul><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Киім сатып алдыңыз, бірақ қайтарғыңыз келе ме? Бізде 3 күндік оңай қайтару саясаты бар. Толығырақ ақпарат алу үшін support@ecommercephp.com поштасына жазыңыз.</span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;"><b>Әр жағдайға арналған армандағы көйлектер</b></span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Fashionys.com сайтында стилисттеріміз мұқият таңдаған барлық өнімдер бар. Егер сіз белгілі бір модельге қызығушылық танытсаңыз, бізге жазыңыз, біз сізге ұнайтын көйлекті ұсынуға тырысамыз.</span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;"><b>Тексерілген қауіпсіздік</b></span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Барлық транзакцияларымыз Norton арқылы тексерілген және ең жоғары қауіпсіздік стандарттарына сай. Сонымен қатар, тұрақты қызықты ұсыныстар мен сыйлықтар бар, сондықтан бізді отбасыңызға, достарыңызға және әріптестеріңізге ұсыныңыз және сыйақы алыңыз. Ең бастысы, пайдаланушы тәжірибеңізбен бөлісе аласыз. Күтіп тұрмаңыз, бізге тіркеліңіз! Қараңыз, сатып алыңыз, ұнатыңыз және өзіңіздегі сұлулықты ашыңыз.</span></font></p>
', 'about-banner.jpg', 'Ecommerce PHP - Біз туралы', 'about, біз туралы, компания туралы, ecommerce php жобасы', 'Біздің мақсатымыз – сіздің ең жақсы қырыңызды ашу. Бізде кез келген кешке, үйлену тойына және ерекше шараларға арналған үлкен топтама бар.', 'Жиі қойылатын сұрақтар', '\0\0fa', 'Fashionys.com - ЖҚС', '', '', 'Блог', 'blog-banner.jpg', 'Ecommerce - Блог', '', '', 'Байланыс', 'contact-banner.jpg', 'Fashionys.com - Байланыс', '', '', 'Фотогалерея', 'pgallery-banner.jpg', 'Ecommerce - Фотогалерея', '', '', 'Видеогалерея', 'vgallery-banner.jpg', 'Ecommerce - Видеогалерея', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `card_cvv` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `card_month` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `card_year` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `bank_transaction_info` text CHARACTER SET utf8mb4 NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `payment_status` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `shipping_status` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(51, 2, 'Чад Н. Карни', 'chad@mail.com', '2022-03-18 22:48:49', '', 19, '', '', '', '', 'Транзакция ID: CA01010158967840\r\nТранзакция күні: 19.03.2022\r\nБанк: WestView Bank, CA филиалы\r\nЖіберуші шоты: 102458965WV', 'Банк арқылы төлеу', 'Аяқталды', 'Аяқталды', '1647629329'),
(52, 3, 'Жан Коллинз', 'jean@mail.com', '2022-03-20 10:49:53', '', 91, '', '', '', '', '', 'PayPal', 'Аяқталды', 'Аяқталды', '1647798593'),
(56, 12, 'Жанат', 'shanat@mail.ru', '2025-05-16 15:07:16', '', 607, '', '', '', '', '', 'PayPal', 'Аяқталды', 'Күтілуде', '1747433236'),
(58, 12, 'Жанат', 'shanat@mail.ru', '2025-05-16 15:26:21', '', 910, '', '', '', '', '778848484848', 'Банк арқылы төлеу', 'Күтілуде', 'Күтілуде', '1747434381');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `post_slug` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 NOT NULL,
  `post_date` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Choro exerci-ге қатысты және oratio iisque туралы', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Choro exerci-ге қатысты және oratio iisque туралы', '', ''),
(2, 'Epicurei қажеттіліктері және facilisi postulant', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei қажеттіліктері және facilisi postulant', '', ''),
(3, 'Errem legimus periculis және eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Errem legimus periculis және eos liber', '', ''),
(4, 'Unum pertinax oportere туралы', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Unum pertinax oportere туралы', '', ''),
(5, 'Tollit cetero және etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero және etiam evertitur', '', ''),
(6, 'Omnes ornatus және aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus және aeterno', '', ''),
(7, 'Vix tale noluisse voluptua', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua', '', ''),
(8, 'Liber utroque және brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque және brute', '', ''),
(9, 'Nostrum copiosae argumentum', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum', '', ''),
(10, 'Labores explicari туралы', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'Labores explicari туралы', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, бұл жерде сіздің мәтініңіз болады. Бұл мысал ретінде берілген мәтін. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Бұл жерде де мысал мәтіні. Өз мәтініңізді осында жазыңыз.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');


-- --------------------------------------------------------

--
-- Структура таблицы `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `p_old_price` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `p_current_price` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `p_description` text CHARACTER SET utf8mb4 NOT NULL,
  `p_short_description` text CHARACTER SET utf8mb4 NOT NULL,
  `p_feature` text CHARACTER SET utf8mb4 NOT NULL,
  `p_condition` text CHARACTER SET utf8mb4 NOT NULL,
  `p_return_policy` text CHARACTER SET utf8mb4 NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(83, 'Ерлерге арналған Ultra Cotton футболкасы, жиынтық', '26', '19', 77, 'product-featured-83.jpg', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Біртүсті: 100% мақта; Sport Grey және Antique Heather: 90% мақта, 10% полиэстер; Safety Colors және Heather: 50% мақта, 50% полиэстер.</span></p><p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">2 жиынтықта және түрлі түстерде қолжетімді, сүйікті түсіңізді таңдаңыз.</span></p>', '<p><span style="color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;">Стиль 20020-Мультипак; Біртүсті: 100% мақта.</span><br></p>', '\0\0\0<', '<p>Бұл шарттарға арналған үлгі мәтін.</p>', '<p><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 3, 0, 1, 21),
(84, 'Бір иықты ұзын көйлек, трикотаж', '51', '39', 26, 'product-featured-84.jpg', 'Сән әлеміндегі трендтер мен стильдерден шабыт алыңыз. Шектеулі топтамалар мен сәнді киімдерді табыңыз. Сарапшылардың кеңестері мен эксклюзивті брендтер.', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">86% тенсел, 14% эластан</span></p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 15, 1, 1, 32),
(85, 'Ерлерге арналған жұмсақ классикалық кроссовка', '110', '91', 32, 'product-featured-85.jpg', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Ресми былғары аяқ киімнің сапасы мен жайлылығы. Металл тесіктері мен контрастты өкше бөлігі стильді толықтырады. Джинсы, оксфорд жейде және пиджакпен үйлеседі.</span><br></p>', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Синтетикалық табан, сенімді бекіту.</span></p>', '\0\0<u', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 9, 0, 1, 25),
(86, 'Amazfit GTS 3 ақылды сағаты (Android/iPhone)', '199', '179', 29, 'product-featured-86.jpg', '<p style="padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;">Amazfit GTS 3 — ең қуатты, қолдануға ыңғайлы ақылды сағат. 1.75 дюймдік AMOLED дисплей, 100+ циферблат, жүрек соғысы, қан оттегі, ұйқы және әйелдер циклі мониторингі. 150+ спорттық режим, 12 күнге дейін жұмыс істейді. Android 7.0 және iOS 12.0 және одан жоғары құрылғыларға арналған.</p>', '<p style="padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;"><span id="productTitle" class="a-size-large product-title-word-break" style="text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;">Alexa, GPS, 150 спорттық режим, AMOLED дисплей, 12 күн батарея</span></p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 12, 1, 1, 3),
(87, 'Ұлдарға арналған ұйықтауға арналған пижама', '59', '37', 68, 'product-featured-87.jpg', '<p style="padding: 0px; margin-bottom: 14px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;"><span class="a-text-bold" style="">Ұшақ бейнелі пижама:</span></p><p style="padding: 0px; margin-bottom: 14px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;">Кең жағалы, белі резеңкелі, созылмалы материалдан жасалған. Дем алатын, ылғалды сіңіретін материал және шалбарлы жиынтық балаларға ыңғайлы. Күнделікті және мектепке киюге жарамды.</p><p style="padding: 0px; margin-bottom: 14px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;">Түрлі-түсті суреттері бар жиынтық, спорттық және сәнді, ұйықтауға және күнделікті киюге жарамды.</p>', 'Балаларға арналған футболка мен шалбар жиынтығы, өлшемі 1Y - 14Y', '\0\0\0<', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 2, 0, 1, 26),
(88, 'Under Armour ерлерге арналған қысқа жеңді футболка', '108', '83', 59, 'product-featured-88.jpg', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Супер жұмсақ, мақта қоспасынан жасалған мата күні бойы жайлылық береді.</span><br></p>', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Loose: Толығымен жайлы пішін.</span></p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 4, 0, 1, 21),
(89, 'Ерлерге арналған флисті спорттық шалбар', '58', '37', 110, 'product-featured-89.jpg', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Кең пішінді және белі резеңкелі, бұл классикалық шалбар күнделікті киюге өте ыңғайлы.</span><br></p>', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Кең пішінді және белі резеңкелі, бұл классикалық шалбар күнделікті киюге өте ыңғайлы.</span></p>', '\0\0\0<', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 5, 0, 1, 18),
(90, 'Әйелдерге арналған жұқа мақтадан жасалған капюшонды күрте', '43', '32', 64, 'product-featured-90.jpg', '<p><span style="color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;">Жоғары сапалы жұқа мақтадан жасалған, бұл күрте қосымша қорғаныс үшін өте ыңғайлы. Ыңғайлы, сәнді және функционалды.</span><br></p>', '<p>КҮНДЕЛІКТІ ЖӘНЕ ЫҢҒАЙЛЫ<br></p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 4, 0, 1, 14),
(91, 'Әйелдерге арналған кең флисті капюшон', '68', '56', 41, 'product-featured-91.jpg', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Кең пішінді, максималды жайлылық үшін</span></p>', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Әйелдерге арналған.</span><br></p>', '\0\0\0<', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 3, 0, 1, 14),
(92, 'Travelpro ноутбукке арналған қол сөмке', '110', '91', 26, 'product-featured-92.jpg', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Барлық қажетті заттар бір сөмкеде! Ішкі қалталары, ноутбук пен планшетке арналған арнайы орындары бар. Қосымша қалталар ұялы телефон, кілттер және басқа да заттарға арналған.</span><br></p>', '<p>Ноутбукке (14” дейін) және планшетке арналған арнайы орындар.</p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 16, 0, 1, 60),
(93, 'Алтын жалатылған леопард өрнекті үлкен сырға', '32', '25', 165, 'product-featured-93.jpg', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Бұл әдемі 18к алтын жалатылған сырғалар жасанды рубин және жарқыраған циркониймен безендірілген. Ерекше күндерге арналған тамаша сыйлық!</span><br></p>', '<p style="padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;"><span id="productTitle" class="a-size-large product-title-word-break" style="text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;">Gm148 2" дюйм</span></p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 1, 0, 1, 42),
(96, 'Ерлерге арналған кең пішінді ұзын жеңді футболка', '29', '23', 102, 'product-featured-96.jpg', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">1889 жылдан бері Carhartt сенімді жұмыс киімдерін шығарады. Бұл ерлерге арналған ұзын жеңді футболка мақтадан жасалған және кең пішінді.</span><br></p>', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">100% мақта (түске байланысты өзгеруі мүмкін)</span></p>', '\0\0\0<', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 12, 1, 1, 20),
(97, 'Әйелдерге арналған орта ұзындықтағы көйлек (петит және стандарт)', '87', '67', 53, 'product-featured-97.jpg', '<p><span style="color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Бұл көйлек созылмалы үсті, толық белдемшесі және белдікпен кешкі іс-шараларға арналған.</span><br></p>', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Қысқа жеңді, V-мойынды, көк түсті көйлек</span></p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 13, 1, 1, 32),
(98, 'Әйелдерге арналған үлпілдек ұзын кардиган', '52', '43', 41, 'product-featured-98.jpg', '<h3 class="a-spacing-mini" style="padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: \"Amazon Ember\", Arial, sans-serif; color: rgb(15, 17, 17); margin-bottom: 6px !important;">Дизайн ерекшеліктері - Әйелдерге арналған үлпілдек қысқы пальто</h3><p class="a-spacing-base" style="padding: 0px; color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px; margin-bottom: 14px !important;"></p><ul class="a-unordered-list a-vertical" style="margin-right: 0px; margin-bottom: 18px; margin-left: 18px; color: rgb(15, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;"><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span class="a-text-bold" style="font-weight: 700 !important;">Материал:</span> 85% мақта + 15% спандекс. Бұл әйелдерге арналған пальто 100% жаңа және жоғары сапалы!</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span class="a-text-bold" style="font-weight: 700 !important;">Стиль:</span> Күнделікті, ұзын жеңді, тізеден төмен, үлпілдек, жасанды жүн, ашық, сәнді әрі жылы.</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span class="a-text-bold" style="font-weight: 700 !important;">Мақсат:</span> Көктем, күз, қыс, жұмыс, кездесу, демалыс, күнделікті киюге жарамды.</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span class="a-text-bold" style="font-weight: 700 !important;">Жиынтықта:</span> 1 дана әйелдерге арналған пальто</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span class="a-text-bold" style="font-weight: 700 !important;">ЕСКЕРТУ: Әр түрлі дене пішініне қарай киімнің отыруы әр түрлі болуы мүмкін, клиенттердің пікірлерін қараңыз.</span></span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span class="a-text-bold" style="font-weight: 700 !important;">ЕСКЕРТУ: Бұл өнім ашық, түймесі немесе сыдырмасы жоқ. Сатып аларда ескеріңіз.</span></span></li></ul>', '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Материал: 85% полиэстер; 15% спандекс. 100% жаңа және жоғары сапалы!</span></p>', '\0\0\0<', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 2, 1, 1, 15),
(100, 'Ерлерге арналған ұзын спорттық шалбар', '105', '95', 78, 'product-featured-100.jpg', '<p style="padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Біздің \"Long\" ерлерге арналған спорттық шалбарымызға қош келдіңіздер – бұл жылдағы ең қызықты өнім! Йога, пилатес, демалыс, спортзал және күнделікті киюге өте ыңғайлы.</p><p style="padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em; color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;">Жайлы белдік, терең қалталар, икемділік пен тұрақтылық үшін арнайы тігістер.</p>', '<p style="padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;"><span id="productTitle" class="a-size-large product-title-word-break" style="text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;">Ұзын спорттық шалбар</span></p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 3, 0, 1, 18),
(102, 'Әйелдерге арналған үлкен өлшемді көйлек, алтын түсті фурнитурамен', '190', '169', 109, 'product-featured-102.jpg', '<p><span style="color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;">Бұл көйлек бәріне сай келеді! Созылмалы, ыңғайлы, консервативті стильді ұстанатындарға да жарайды.</span><br></p>', '<p>Calvin Klein-нен</p>', '', '<p><span style="color: rgb(51, 51, 51); font-size: 14px;">Бұл шарттарға арналған үлгі мәтін.</span><br></p>', '<p><span style="margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15-30 күн ішінде қайтаруға және ақшаны қайтаруға болады. Кейбір компаниялар бұл мерзімді 90 күнге дейін ұзартады. Қай мерзімді таңдасаңыз да, нақты мерзімнің бар екеніне көз жеткізіңіз.</span><br></p>', 15, 1, 1, 32);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(195, 2, 84),
(201, 2, 86),
(202, 6, 86),
(203, 17, 86),
(222, 16, 93),
(223, 21, 85),
(224, 22, 85),
(225, 23, 85),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 4, 83),
(230, 5, 83),
(231, 6, 83),
(232, 8, 83),
(233, 14, 83),
(234, 17, 83),
(235, 18, 83),
(236, 12, 89),
(237, 27, 91),
(239, 2, 92),
(240, 29, 92),
(241, 2, 88),
(242, 8, 88),
(243, 17, 88),
(244, 2, 90),
(245, 6, 90),
(246, 25, 90),
(247, 27, 90),
(248, 28, 90),
(253, 5, 96),
(254, 24, 96),
(257, 3, 87),
(258, 17, 87),
(261, 25, 97),
(262, 5, 98),
(264, 14, 100),
(267, 2, 102);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(122, '122.jpg', 92),
(123, '123.jpg', 92),
(124, '124.jpg', 93),
(127, '127.jpg', 96),
(128, '128.jpg', 97),
(129, '129.jpg', 98),
(130, '130.jpg', 98),
(131, '131.jpg', 100),
(132, '132.jpg', 102);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(278, 2, 84),
(279, 3, 84),
(280, 4, 84),
(281, 5, 84),
(282, 6, 84),
(305, 26, 86),
(339, 27, 93),
(340, 15, 85),
(341, 16, 85),
(342, 17, 85),
(343, 18, 85),
(344, 19, 85),
(345, 20, 85),
(346, 21, 85),
(347, 22, 85),
(348, 23, 85),
(349, 24, 85),
(350, 25, 85),
(351, 1, 83),
(352, 2, 83),
(353, 3, 83),
(354, 4, 83),
(355, 5, 83),
(356, 6, 83),
(357, 7, 83),
(358, 3, 89),
(359, 4, 89),
(360, 5, 89),
(361, 6, 89),
(362, 7, 89),
(363, 2, 91),
(364, 3, 91),
(365, 4, 91),
(366, 5, 91),
(367, 6, 91),
(369, 27, 92),
(370, 3, 88),
(371, 4, 88),
(372, 5, 88),
(373, 6, 88),
(374, 7, 88),
(375, 1, 90),
(376, 2, 90),
(377, 3, 90),
(378, 4, 90),
(381, 3, 96),
(382, 4, 96),
(383, 5, 96),
(384, 6, 96),
(385, 7, 96),
(399, 29, 87),
(400, 30, 87),
(401, 31, 87),
(402, 32, 87),
(403, 33, 87),
(404, 34, 87),
(405, 35, 87),
(406, 36, 87),
(407, 37, 87),
(408, 38, 87),
(409, 39, 87),
(418, 8, 97),
(419, 9, 97),
(420, 10, 97),
(421, 11, 97),
(422, 12, 97),
(423, 13, 97),
(424, 14, 97),
(425, 15, 97),
(426, 16, 97),
(427, 17, 97),
(428, 18, 97),
(429, 19, 97),
(430, 4, 98),
(431, 5, 98),
(432, 6, 98),
(433, 7, 98),
(436, 3, 100),
(437, 4, 100),
(438, 5, 100),
(439, 6, 100),
(442, 42, 102),
(443, 43, 102),
(444, 44, 102),
(445, 45, 102),
(446, 46, 102),
(447, 47, 102);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Ұнамаса қайтарасыз', 'Кез келген затты 15 күнге дейін қайтарыңыз!', 'service-5.png'),
(6, 'Тегін жеткізу', 'Қарағанды қаласына тегін жеткізу', 'service-6.png'),
(7, 'Жылдам жеткізу', 'Тауарлар 24 сағат ішінде жөнелтіледі.', 'service-7.png'),
(8, 'Қанағаттану кепілдігі', 'Біз сізге сапалы қанағаттануымызға кепілдік береміз.', 'service-8.png'),
(9, 'Қауіпсіз төлем', 'Біз қауіпсіз төлем опцияларын ұсынамыз', 'service-9.png'),
(10, 'Kaspi Red алу', 'Kaspi Red арқылы тауар рәсімдеуге болады', 'service-10.png');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `footer_about` text CHARACTER SET utf8mb4 NOT NULL,
  `footer_copyright` text CHARACTER SET utf8mb4 NOT NULL,
  `contact_address` text CHARACTER SET utf8mb4 NOT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `contact_fax` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `contact_map_iframe` text CHARACTER SET utf8mb4 NOT NULL,
  `receive_email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `receive_email_subject` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `receive_email_thank_you_message` text CHARACTER SET utf8mb4 NOT NULL,
  `forget_password_message` text CHARACTER SET utf8mb4 NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text CHARACTER SET utf8mb4 NOT NULL,
  `meta_keyword_home` text CHARACTER SET utf8mb4 NOT NULL,
  `meta_description_home` text CHARACTER SET utf8mb4 NOT NULL,
  `banner_login` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_registration` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_forget_password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_reset_password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_search` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_cart` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_checkout` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_product_category` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `banner_blog` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `cta_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `cta_content` text CHARACTER SET utf8mb4 NOT NULL,
  `cta_read_more_text` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `cta_read_more_url` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `cta_photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `featured_product_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `featured_product_subtitle` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `latest_product_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `latest_product_subtitle` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `popular_product_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `popular_product_subtitle` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `testimonial_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `testimonial_subtitle` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `testimonial_photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `blog_subtitle` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `newsletter_text` text CHARACTER SET utf8mb4 NOT NULL,
  `paypal_email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `stripe_public_key` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `stripe_secret_key` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `bank_detail` text CHARACTER SET utf8mb4 NOT NULL,
  `before_head` text CHARACTER SET utf8mb4 NOT NULL,
  `after_body` text CHARACTER SET utf8mb4 NOT NULL,
  `before_body` text CHARACTER SET utf8mb4 NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpg', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an. Ea suas pertinax has.</p>\r\n', 'Орындаған: Аубакирова Р.К. © 2025 - Жеңіл өнеркәсіп кәсіпорындары үшін ақпараттық жүйесін құру', '018-есептік квартал, ст254\r\nМайқұдық м-н, Әлихан Бөкейхан ауданы, Қарағанды, Қарағанды қалалық әкімдігі, 100018', 'LTD@ecommercephp.com', '+7‒705‒160‒06‒56', '', '<iframe src=\"https://yandex.ru/map-widget/v1/?ll=73.203820%2C49.903084&z=16&l=map&pt=73.203820%2C49.903084,pm2rdm\" width=\"600\" height=\"450\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>\r\n', 'support@ecommercephp.com', 'Ecommerce PHP сайтынан келуші хабарламасы', 'Хабарлама жібергеніңіз үшін рахмет. Біз сізбен жақын арада хабарласамыз.', 'Растау сілтемесі электрондық поштаңызға жіберілді. Құпиясөзді қалпына келтіру ақпараты сонда болады.', 4, 4, 5, 5, 5, 6, 8, 'Ютария LTD', 'онлайн сән дүкені, киім дүкені, онлайн киім', 'ecommerce php жобасы mysql дерекқорымен', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Біздің интернет-дүкенге қош келдіңіз', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Толығырақ', '#', 'cta.jpg', 'Таңдаулы өнімдер', 'Біздің таңдаулы өнімдеріміздің тізімі', 'Соңғы өнімдер', 'Жақында қосылған өнімдеріміздің тізімі', 'Танымал өнімдер', 'Тұтынушының таңдауына негізделген танымал өнімдер', 'Пікірлер', 'Клиенттеріміз не дейді', 'testimonial.jpg', 'Соңғы блог', 'Барлық соңғы мақалалар мен жаңалықтарды төменнен қараңыз', 'Соңғы акциялар мен жеңілдіктер алу үшін біздің ақпараттық бізге тіркеліңіз.', 'admin@ecom.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_REPLACE_WITH_YOUR_OWN_KEY', 'Банк атауы: WestView Bank\r\nШот нөмірі: CA100270589600\r\nФилиал атауы: CA филиалы\r\nЕл: АҚШ', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/kk_KZ/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Ютария LTD', 'Өндірістік-инновациялық компания', 'Толығырақ', '', 'Center'),
(2, 'slider-2.jpg', 'Тұрақты клиенттерге 50% жеңілдік', 'Біз өнімнің сапасына кепілдік береміз', 'Толығырақ', '#', 'Center'),
(3, 'slider-3.jpg', '', '', 'Толығырақ', '#', 'Right');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `social_url` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `social_icon` varchar(30) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `subs_date` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `subs_date_time` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `subs_hash` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(1, 'ruth@mail.com', '\0\020', '2022-03-20 10:25:18', 'f4eabc1afed38a08da8d1c6e5fb42187', 1),
(2, 'kimberly@mail.com', '\0\020', '2022-03-20 10:26:07', '61f3af9cac686555a4bff9e565f88c47', 1),
(3, 'gregobn@mail.com', '\0\020', '2022-03-20 10:27:21', '72d6fc3a9e9ed33dfc30b10f4de82f34', 1),
(4, 'morgan.sarahh5@mail.com', '\0\020', '2022-03-20 10:27:48', 'bcdeda095a6c882803fc3aaf4a17f08e', 1),
(5, 'greenwd1154@mail.com', '\0\020', '2022-03-20 10:28:09', '279ecfe9debbb091c664641f534857ee', 1),
(6, 'awsm785@mail.com', '\0\020', '2022-03-20 10:28:21', '94096ae01fc65e71c50c7843d096e041', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Ерлер', 1),
(2, 'Әйелдер', 1),
(3, 'Балалар', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `role` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '\0\077', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '\0\044', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `iframe_code` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Индексы таблицы `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Индексы таблицы `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Индексы таблицы `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Индексы таблицы `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Индексы таблицы `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Индексы таблицы `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Индексы таблицы `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Индексы таблицы `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Индексы таблицы `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Индексы таблицы `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Индексы таблицы `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Индексы таблицы `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Индексы таблицы `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Индексы таблицы `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Индексы таблицы `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Индексы таблицы `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT для таблицы `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT для таблицы `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT для таблицы `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT для таблицы `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT для таблицы `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
