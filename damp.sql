-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 18 2024 г., 12:10
-- Версия сервера: 10.11.6-MariaDB-1:10.11.6+maria~ubu2004
-- Версия PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `filippova_diplom`
--
CREATE DATABASE IF NOT EXISTS `filippova_diplom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `filippova_diplom`;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rocket_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `rocket_name`) VALUES
(1, 17, 'Ракета Протон'),
(2, 16, 'Ракета Протон'),
(3, 16, 'Ракета Протон'),
(4, 16, 'Ракета Протон'),
(5, 16, 'Ракета Протон'),
(6, 18, 'Ракета Протон'),
(7, 16, 'Ракета Протон'),
(8, 16, 'Ракета Saturn V'),
(9, 16, 'Ракета Saturn V'),
(10, 16, ''),
(11, 16, ''),
(12, 16, 'Ракета Saturn V'),
(13, 16, 'Ракета Saturn V'),
(14, 16, ''),
(15, 16, ''),
(16, 16, ''),
(17, 16, ''),
(18, 16, 'Ракета Протон'),
(19, 19, 'Ракета Протон'),
(20, 20, 'Ракета Протон');

-- --------------------------------------------------------

--
-- Структура таблицы `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `names` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `text` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sms`
--

INSERT INTO `sms` (`id`, `names`, `email`, `text`) VALUES
(1, 'Юлия', 'ygerg@mail.ru', 'Привет'),
(2, '78', 'ygerg@mail.ru', 'рои'),
(3, '78', 'fyhff@mail.ru', 'чы'),
(4, 'Юлия', 'ygerg@mail.ru', 'Привет'),
(5, '&#039; or 1=1', 'user@mail.ru', 'hkh'),
(6, 'Юлия', 'sosisk@mail.ru', 'admin&quot; or 1=1'),
(7, 'Юлия', 'dqwfd@mail.ru', 'пор'),
(8, '', '', ''),
(9, '', '', ''),
(10, 'Юлия', 'sosisk@mail.ru', 'hhjkh'),
(11, 'Юлия', 'user@mail.ru', 'hkh'),
(12, '', '', ''),
(13, '', '', ''),
(14, 'Юлия', 'julia@mail.ru', 'Привет'),
(15, 'Юлия', 'julia@mail.ru', '&lt;script&gt;alert(1)&lt;/script&gt;');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `login` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'В ожидании'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `email`, `login`, `password`, `status`) VALUES
(1, '1@mail.ru', 'Ghost12d', '$2y$10$Tarq85AtKBouv8ooK/Bv2ObIyaKXoa7afQfkZSOBzl6LG2HWwgs1u', 'В ожидании'),
(2, '1@mail.ru', 'Ghost12d', '$2y$10$8TxhZjaU1.v8wTs4nbJxzuKesUwKCyOiy5ESXpvYknSuUgawQUgCC', 'В ожидании'),
(3, '1@mail.ru', 'Ghost12d', '$2y$10$Pec9gwfpojSf8XUI4bZfr.HmpGkmhCX0z/hinyDq.90pw4JHr7rJu', 'В ожидании'),
(4, '1@mail.ru', 'Ghost12d', '$2y$10$8fsAZ6z5xjJyvtL20ajTg.5PUAp67ozTvJd4IsID39ybqGOQ4PSp2', 'В ожидании'),
(5, '1@mail.ru', 'Ghost12d', '$2y$10$dRJPga80d4N8sQcTYEMgzexFV1DV4ivd8Vcf6kXs1pUts/Z7YokZy', 'В ожидании'),
(6, '1@mail.ru', 'Hos1f', '$2y$10$UOaxPo/GbbW6xR9KMkJ.mudF18Tx22bZAQ2dmnDk1HVpDbdHLs9WK', 'В ожидании'),
(7, '2@mail.ru', 'Jake20H', '$2y$10$k2zJ.oq/tdq3BnxFXi0wgu4V2SF6/Vn8mIJQWUpthJrHHYSP8v9f.', 'В ожидании'),
(8, '2@mail.ru', 'Jake20H', '$2y$10$wBX5JIyHbSeiV6hPajz.kO80PAv11hDGMOLzyMdo7/CuPmZSy7bs6', 'В ожидании'),
(9, 'gost@mail.ru', 'Klop2k', '$2y$10$yO0byWGHDUAt/gBInfIAWeYanvW7Ia4a2MrxaDynsgFViyJSqEf5C', 'В ожидании'),
(10, '', 'Klop2k', '$2y$10$p.tfmrMtjw1WPVTqmw6cWepTFpEM/MoUJDV65G6RZtu82oN8Usqxq', 'В ожидании'),
(11, '', 'Klop2k', '$2y$10$7Trmdd2FEoBfRTmsJSqN2OSLg.tvuxfmCGGibSk53AAInHhpO3aZC', 'В ожидании'),
(12, '', 'Klop2k', '$2y$10$Sd9jPl18/4/Rsfzw8aSLku9DEiB5gH9IRTsrHXx/9NghPwmCOT.Im', 'В ожидании'),
(13, '', 'Klop2k', '$2y$10$ucKQNbsNP6FFYsK/kCYYU.IHnq21JnXHSH0LcE1dpwkrRrRvPtZe.', 'В ожидании'),
(14, 'vera@mail.ru', 'Vera79F', '$2y$10$Z0tR0HKsEzVCEdGs3ssNJeDYg74/j/qQJgu.MecZn0mq/h/vJ9CE.', 'В ожидании'),
(15, 'Damian@mail.ru', 'Damian20P', '$2y$10$oF5dHAIpVsC2hAsAavOfuuuipeXs0uVChQPNQdRIJl/6FEXUspU2O', 'В ожидании'),
(16, 'dap@mail.ru', 'Dap1o', '$2y$10$FkRGVmxM.52w/YdcA9fzauhhxWD4QIw4yWuB9V5fCKQuv37VUkEJG', 'В ожидании'),
(17, 'Hulu@mail.ru', 'Hula2up', '$2y$10$rw3Cz0ERpiYV68qTX6r8wOwN0SXLFeUHU1VdhvGUEEpyeSzsUBcAK', ''),
(18, 'andr@mail.ru', 'Anr2u', '$2y$10$3Vp06.s9JfzQ6cnpaW/14.lF4O0Pw9y4HrAMJpgdo3nQbPrQ/.awS', 'В ожидании'),
(19, 'hop@mail.ru', 'Hop1k', '$2y$10$nrl5BO0.Z05tZHbDa56X6umhuVsl.2FLL9DxzNg.0Vszy/fO7CEU6', 'В ожидании'),
(20, 'pop@mail.ru', 'Pophg', '$2y$10$OTimySqi65Wy2F0S7gxB.usRhHBpQfUZA4tR/3/t0OS3UducASDCa', 'В ожидании');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
