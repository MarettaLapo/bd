-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 20 2022 г., 22:50
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
(1, 'рубашки Nat', 'рубашки Nat'),
(2, 'рубашки Net', 'рубашки Net'),
(3, 'рубашки Nut', 'рубашки Nut'),
(4, 'штаны Nat', 'штаны Nat'),
(5, 'рубашки Tam', 'рубашки Tam'),
(6, 'рубашки Medicine', 'рубашки Medicine'),
(7, 'рубашки', 'рубашки'),
(8, 'штаны', 'штаны'),
(9, 'штаны красные', 'штаны красные');

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
  `price_promocode` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price_now`, `price_full`, `price_promocode`) VALUES
(1, 'рубашка Medicine', 'хорошая рубашка', '2499.00', '2699.00', '2227.00'),
(2, 'рубашка Tam', 'хорошая рубашка', '1200.00', '1400.00', '1000.00'),
(3, 'рубашка Nut', 'хорошая рубашка', '1100.00', '1300.00', '1000.00'),
(4, 'рубашка Nat', 'хорошая рубашка', '1100.00', '1300.00', '1000.00'),
(5, 'рубашка Net', 'хорошая рубашка', '1100.00', '1300.00', '1000.00'),
(6, 'рубашка Nat', 'хорошая рубашка синего цвета', '1100.00', '1300.00', '1000.00'),
(7, 'рубашка Nat', 'хорошая рубашка голубого цвета', '1100.00', '1300.00', '1000.00'),
(8, 'рубашка Nat', 'хорошая рубашка розового цвета', '1100.00', '1300.00', '1000.00'),
(9, 'рубашка Nat', 'хорошая рубашка черного цвета', '1100.00', '1300.00', '1000.00'),
(10, 'рубашка Nat', 'хорошая рубашка белого цвета', '1100.00', '1300.00', '1000.00'),
(11, 'рубашка Nat', 'хорошая рубашка серого цвета', '1100.00', '1300.00', '1000.00'),
(12, 'рубашка Nat', 'хорошая рубашка желтого цвета', '1100.00', '1300.00', '1000.00'),
(13, 'рубашка Nat', 'хорошая рубашка красного цвета', '1100.00', '1300.00', '1000.00'),
(14, 'рубашка Nat', 'хорошая рубашка зеленого цвета', '1100.00', '1300.00', '1000.00'),
(15, 'рубашка Nat', 'хорошая рубашка фиолетового цвета', '1100.00', '1300.00', '1000.00'),
(16, 'рубашка Nat', 'хорошая рубашка в полосочку', '1100.00', '1300.00', '1000.00'),
(17, 'рубашка Non', 'хорошая рубашка красного цвета', NULL, NULL, NULL),
(18, 'рубашка Nat', 'хорошая рубашка в красную полосочку ', '1100.00', '1300.00', '1000.00'),
(19, 'штаны Tam', 'хорошие штаны', '1250.99', '1500.00', '1099.99');

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `image_id`) VALUES
(1, 4, 1, 2),
(2, 6, 1, 2),
(3, 7, 1, 2),
(4, 8, 1, 2),
(5, 9, 1, 2),
(6, 10, 1, 4),
(8, 11, 1, 3),
(9, 12, 1, 4),
(10, 13, 1, 4),
(11, 14, 1, 2),
(12, 15, 1, 4),
(13, 16, 1, 2),
(14, 18, 1, 4),
(16, 5, 2, 7),
(17, 3, 3, 7),
(18, 2, 5, 7),
(19, 1, 6, 7),
(20, 1, 7, 2),
(21, 2, 7, 2),
(22, 3, 7, 2),
(23, 4, 7, 2),
(24, 5, 7, 2),
(25, 6, 7, 2),
(26, 7, 7, 2),
(27, 8, 7, 2),
(28, 9, 7, 2),
(29, 10, 7, 2),
(30, 11, 7, 2),
(31, 12, 7, 2),
(32, 13, 7, 2),
(33, 14, 7, 2),
(34, 15, 7, 2),
(35, 16, 7, 2),
(36, 17, 7, 2),
(37, 18, 7, 2),
(38, 19, 8, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 3),
(5, 2, 4),
(6, 3, 5),
(7, 4, 1),
(8, 5, 2),
(9, 6, 3),
(10, 7, 3),
(11, 8, 4),
(12, 9, 5),
(13, 10, 1),
(14, 11, 2),
(15, 12, 3),
(16, 13, 3),
(17, 13, 4),
(18, 14, 5),
(19, 15, 1),
(20, 16, 2),
(21, 17, 3),
(22, 18, 3),
(23, 19, 6);

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
  ADD KEY `category_id` (`category_id`),
  ADD KEY `image_id` (`image_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_category_ibfk_3` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE;

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
