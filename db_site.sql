-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 21 2022 г., 08:04
-- Версия сервера: 10.4.25-MariaDB
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'рубашки', 'категория с рубашками'),
(2, 'штаны', 'категория со штанами'),
(3, 'рубашки Nat', 'категория с рубашками Nat'),
(4, 'рубашки Non', 'категория с рубашками Non'),
(5, 'штаны Trous', 'категория со штанами Trous');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `alt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `alt`) VALUES
(1, './image-1.jpg'),
(2, './image-2.jpg'),
(3, './image-3.jpg'),
(4, './image-4.jpg'),
(5, './image-5.jpg'),
(6, './image-6.jpg'),
(7, './image-7.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price_now` decimal(10,2) DEFAULT NULL,
  `price_full` decimal(10,2) DEFAULT NULL,
  `price_promocode` decimal(10,2) DEFAULT NULL,
  `is_avaible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price_now`, `price_full`, `price_promocode`, `is_avaible`) VALUES
(1, 'рубашка Nat', 'серая рубашка', '1200.00', '1699.99', '1000.00', 1),
(2, 'рубашка Nat', 'черная рубашка', '1200.00', '1699.99', '1000.00', 1),
(3, 'рубашка Nat', 'красная рубашка', '1200.00', '1699.99', '1000.00', 1),
(4, 'рубашка Nat', 'красная рубашка', '1200.00', '1699.99', '1000.00', 1),
(5, 'рубашка Nat', 'желтая рубашка', '1200.00', '1699.99', '1000.00', 1),
(6, 'рубашка Nat', 'синяя рубашка', '1200.00', '1699.99', '1000.00', 1),
(7, 'рубашка Nat', 'голубая рубашка', '1200.00', '1699.99', '1000.00', 1),
(8, 'рубашка Nat', 'розовая рубашка', '1200.00', '1699.99', '1000.00', 1),
(9, 'рубашка Nat', 'разноцветная рубашка', '1200.00', '1699.99', '1000.00', 1),
(10, 'рубашка Nat', 'зеленая рубашка', '1200.00', '1699.99', '1000.00', 1),
(11, 'рубашка Nat', 'рубашка в клетку', '1200.00', '1699.99', '1000.00', 1),
(12, 'рубашка Nat', 'рубашка в полоску', '1200.00', '1699.99', '1000.00', 1),
(13, 'рубашка Nat', 'рубашка в вертикальную полоску', '1200.00', '1699.99', '1000.00', 0),
(14, 'рубашка Non', 'красная рубашка', '1200.00', '1699.99', '1000.00', 1),
(15, 'штаны neTrous', 'черные штаны', '2200.00', '2699.99', '2000.00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_main_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `category_main_id`) VALUES
(1, 1, 1, 1),
(3, 1, 3, 1),
(4, 2, 1, 1),
(5, 2, 3, 1),
(6, 3, 1, 1),
(7, 3, 3, 1),
(8, 4, 1, 1),
(9, 4, 3, 1),
(10, 5, 1, 1),
(11, 5, 3, 1),
(12, 6, 1, 1),
(13, 6, 3, 1),
(14, 7, 1, 1),
(15, 7, 3, 1),
(16, 8, 1, 1),
(17, 8, 3, 1),
(18, 9, 1, 1),
(19, 9, 3, 1),
(20, 10, 1, 1),
(21, 10, 3, 1),
(22, 11, 1, 1),
(23, 11, 3, 1),
(24, 12, 1, 1),
(25, 12, 3, 1),
(26, 13, 1, 1),
(27, 13, 3, 1),
(28, 14, 1, 1),
(29, 14, 4, 1),
(30, 15, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `main_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image_id`, `main_image_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 2, 4, 4),
(5, 2, 5, 4),
(6, 3, 5, 1),
(7, 3, 4, 1),
(8, 3, 1, 1),
(9, 4, 2, 2),
(10, 4, 2, 2),
(11, 4, 3, 2),
(12, 5, 3, 3),
(13, 5, 6, 3),
(14, 5, 2, 3),
(15, 6, 1, 1),
(16, 6, 2, 1),
(17, 7, 1, 1),
(18, 7, 5, 1),
(19, 7, 3, 1),
(20, 8, 1, 3),
(21, 8, 2, 3),
(22, 8, 3, 3),
(23, 9, 6, 6),
(24, 9, 2, 6),
(25, 9, 3, 6),
(26, 10, 1, 1),
(27, 11, 1, 1),
(28, 11, 2, 1),
(29, 11, 3, 1),
(30, 12, 5, 5),
(31, 12, 4, 5),
(32, 12, 3, 5),
(33, 13, 3, 4),
(34, 13, 4, 4),
(35, 13, 6, 4),
(36, 14, 1, 1),
(37, 14, 2, 1),
(38, 14, 3, 1),
(39, 15, 7, 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_id` (`image_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_image_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
