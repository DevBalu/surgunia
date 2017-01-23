-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 23 2017 г., 16:34
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `surgunia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `folders`
--

CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bg_href` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `folders`
--

INSERT INTO `folders` (`id`, `name`, `bg_href`) VALUES
(1, 'sigma', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg'),
(3, 'internationals', '/surgunia/folder_images/hcrbfsjzmms-annie-spratt.jpg'),
(4, 'incognito', '/surgunia/folder_images/Lioness-Howl-Close-Up-4K-Wallpaper_Jrn63eg.jpg'),
(7, 'vasea', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg'),
(8, 'neamneam', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg'),
(9, 'Trahtemburg', '/surgunia/folder_images/charcoal-wallpaper-HD10.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_href` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `folder_id`, `name`, `img_href`) VALUES
(3, 1, 'old people', '/surgunia/folder_images/Lioness-Howl-Close-Up-4K-Wallpaper_Jrn63eg.jpg'),
(4, 1, 'fast food', '/surgunia/folder_images/Lioness-Howl-Close-Up-4K-Wallpaper_Jrn63eg.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
