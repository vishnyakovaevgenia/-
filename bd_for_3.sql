-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 01 2022 г., 21:28
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bd_for_3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `competition`
--

CREATE TABLE `competition` (
  `ID` int NOT NULL,
  `Competition` varchar(100) NOT NULL,
  `Place` varchar(100) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `competition`
--

INSERT INTO `competition` (`ID`, `Competition`, `Place`, `Date`) VALUES
(1, 'Турнир по теннису', 'Центральный парк', '2022-07-11'),
(2, 'Турнир по теннису', 'Центральный парк', '2022-07-11'),
(3, 'Чемпионат по волейболу', 'Школа №1', '2022-07-16'),
(4, 'Чемппионат по стрельбе из лука', 'Турбаза \"Краса\"', '2022-08-20'),
(5, 'Турнир по плаванью', 'Городской бассейн', '2022-06-17');

-- --------------------------------------------------------

--
-- Структура таблицы `list_of_prize`
--

CREATE TABLE `list_of_prize` (
  `ID` int NOT NULL,
  `Prize` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `list_of_prize`
--

INSERT INTO `list_of_prize` (`ID`, `Prize`) VALUES
(1, 'Сертификат в магазин спорт товаров на 15 000'),
(2, 'Поездка на море для команды'),
(3, 'Сертификат в магазин спорт товаров на 10 000'),
(4, 'Поездка в аквапарк'),
(5, 'Набор настольных игр'),
(6, 'Кубок чемпиона'),
(7, 'Утешительный приз'),
(8, 'Что-то ещё');

-- --------------------------------------------------------

--
-- Структура таблицы `result`
--

CREATE TABLE `result` (
  `ID` int NOT NULL,
  `Name` int NOT NULL,
  `Competition` int NOT NULL,
  `Position` int NOT NULL,
  `Prize` int NOT NULL,
  `Video` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `result`
--

INSERT INTO `result` (`ID`, `Name`, `Competition`, `Position`, `Prize`, `Video`) VALUES
(3, 3, 2, 5, 3, NULL),
(4, 5, 4, 2, 1, NULL),
(5, 3, 3, 3, 3, NULL),
(6, 4, 2, 1, 6, NULL),
(7, 1, 5, 2, 2, NULL),
(8, 4, 4, 2, 8, NULL),
(9, 1, 1, 1, 6, NULL),
(10, 3, 2, 2, 7, NULL),
(11, 6, 4, 1, 4, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sportsman`
--

CREATE TABLE `sportsman` (
  `ID` int NOT NULL,
  `Name` varchar(100) NOT NULL COMMENT 'ФИО',
  `Phone` varchar(11) NOT NULL COMMENT 'Телефон (без 8)',
  `Bith_date` date NOT NULL COMMENT 'Дата рождения',
  `Average` int NOT NULL COMMENT 'Среднее место на соревнованиях ',
  `Col` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sportsman`
--

INSERT INTO `sportsman` (`ID`, `Name`, `Phone`, `Bith_date`, `Average`, `Col`) VALUES
(1, 'Сидоренко Константин Владимирович', '89111111111', '2004-08-05', 17, 0),
(2, 'Анисимова Василиса Юрьевна', '89222222222', '2000-05-04', 22, 0),
(3, 'Иванов Иван Владимирович', '89333333333', '2002-03-12', 20, 0),
(4, 'Шаркова Владислава Аркадьевна', '89444444444', '2002-12-24', 19, 0),
(5, 'Данченко Макар Антонович', '89555555555', '2004-09-19', 17, 0),
(6, 'Шарков Виталий Анатольевич', '89666666666', '2002-12-24', 19, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `list_of_prize`
--
ALTER TABLE `list_of_prize`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `Competition` (`Competition`),
  ADD KEY `Prize` (`Prize`);

--
-- Индексы таблицы `sportsman`
--
ALTER TABLE `sportsman`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `competition`
--
ALTER TABLE `competition`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `list_of_prize`
--
ALTER TABLE `list_of_prize`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `result`
--
ALTER TABLE `result`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `sportsman`
--
ALTER TABLE `sportsman`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `sportsman` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`Competition`) REFERENCES `competition` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`Prize`) REFERENCES `list_of_prize` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
