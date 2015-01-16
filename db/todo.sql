-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 16 2015 г., 23:56
-- Версия сервера: 5.6.21
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `todo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user` int(11) NOT NULL,
  `done` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `name`, `user`, `done`, `created`) VALUES
(3, 'Изучит html5', 1, 1, '2015-01-16 08:17:29'),
(1, 'Сходить в клуб', 1, 1, '2015-01-16 19:22:48'),
(4, 'Принести воды', 1, 1, '2015-01-17 01:18:30'),
(5, 'Надо идти спать', 1, 1, '2015-01-17 01:19:55'),
(6, 'Надо пораньше лечь спать', 1, 1, '2015-01-17 01:49:49'),
(7, 'Сон', 1, 1, '2015-01-17 01:51:57'),
(8, 'Привет', 1, 1, '2015-01-17 01:53:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(1, 'Дмитрий'),
(2, 'Василий');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
