-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 01 2022 г., 08:04
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
-- База данных: `спортсмены`
--

-- --------------------------------------------------------

--
-- Структура таблицы `результаты`
--

CREATE TABLE `результаты` (
  `ID` int NOT NULL,
  `Участник` int NOT NULL,
  `Совернование` varchar(255) NOT NULL,
  `Приз` varchar(255) NOT NULL,
  `Дата совернования` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `список призов`
--

CREATE TABLE `список призов` (
  `ID` int NOT NULL,
  `Приз` varchar(255) NOT NULL,
  `Соревнование` varchar(255) NOT NULL,
  `Условия выдачи` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `спортсмены`
--

CREATE TABLE `спортсмены` (
  `ID` int NOT NULL,
  `ФИО` varchar(255) NOT NULL,
  `E-mail` varchar(255) NOT NULL,
  `Телефон` varchar(11) NOT NULL,
  `Дата рождения` date NOT NULL,
  `Возраст` int NOT NULL,
  `Время создания записи` datetime NOT NULL,
  `Номер паспорта` int NOT NULL,
  `Среднее место на соревнованиях` tinyint NOT NULL,
  `Биография` text NOT NULL,
  `Видеозапись` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `соревнования`
--

CREATE TABLE `соревнования` (
  `ID` int NOT NULL,
  `Название соревнований` varchar(255) NOT NULL,
  `Место` varchar(255) NOT NULL,
  `Дата проведения` date NOT NULL,
  `Количество участников` int NOT NULL,
  `Запись` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `результаты`
--
ALTER TABLE `результаты`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `список призов`
--
ALTER TABLE `список призов`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `спортсмены`
--
ALTER TABLE `спортсмены`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `соревнования`
--
ALTER TABLE `соревнования`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
