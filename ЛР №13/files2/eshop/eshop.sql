-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 19 2018 г., 22:49
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `eshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Без названия',
  `author` varchar(255) DEFAULT NULL,
  `pubyear` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `title`, `author`, `pubyear`, `price`) VALUES
(1, 'Хождение по мукам', 'Толстой', 1991, 60),
(2, 'И все-таки орешник зеленеет', 'Сименон', 1991, 120),
(3, 'Три товарища', 'Ремарк', 1985, 75);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `pubyear` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `datetime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `title`, `author`, `pubyear`, `price`, `quantity`, `orderid`, `datetime`) VALUES
(3, 'Хождение по мукам', 'Толстой', 1991, 60, 1, '5ad8e8f007999', 1524164848),
(4, 'Три товарища', 'Ремарк', 1985, 75, 5, '5ad8e8f007999', 1524164848),
(5, 'Хождение по мукам', 'Толстой', 1991, 60, 1, '5ad8ec86e2baf', 1524165766),
(6, 'Три товарища', 'Ремарк', 1985, 75, 5, '5ad8ec86e2baf', 1524165766),
(7, 'Хождение по мукам', 'Толстой', 1991, 60, 1, '5ad8ee6a32dc9', 1524166250),
(8, 'Три товарища', 'Ремарк', 1985, 75, 5, '5ad8ee6a32dc9', 1524166250),
(9, 'Хождение по мукам', 'Толстой', 1991, 60, 2, '5ad8f0ec989b1', 1524166892),
(10, 'И все-таки орешник зеленеет', 'Сименон', 1991, 120, 1, '5ad8f0ec989b1', 1524166892),
(11, 'Три товарища', 'Ремарк', 1985, 75, 6, '5ad8f0ec989b1', 1524166892),
(12, 'Хождение по мукам', 'Толстой', 1991, 60, 2, '5ad8f16f8fb13', 1524167023),
(13, 'И все-таки орешник зеленеет', 'Сименон', 1991, 120, 1, '5ad8f16f8fb13', 1524167023),
(14, 'Три товарища', 'Ремарк', 1985, 75, 6, '5ad8f16f8fb13', 1524167023),
(15, 'Хождение по мукам', 'Толстой', 1991, 60, 2, '5ad8f18bef0f3', 1524167051),
(16, 'И все-таки орешник зеленеет', 'Сименон', 1991, 120, 1, '5ad8f18bef0f3', 1524167051),
(17, 'Три товарища', 'Ремарк', 1985, 75, 6, '5ad8f18bef0f3', 1524167051),
(18, 'Хождение по мукам', 'Толстой', 1991, 60, 1, '5ad8f2695d39b', 1524167273),
(19, 'И все-таки орешник зеленеет', 'Сименон', 1991, 120, 1, '5ad8f2695d39b', 1524167273),
(20, 'Хождение по мукам', 'Толстой', 1991, 60, 4, '5ad8f2973e20a', 1524167319),
(21, 'И все-таки орешник зеленеет', 'Сименон', 1991, 120, 4, '5ad8f2ad90f58', 1524167341);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
