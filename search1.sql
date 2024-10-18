-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 17 2023 г., 20:28
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `search1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `ID_NAME` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` int(11) NOT NULL,
  `CAR_NUMBER` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SURNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`ID_NAME`, `ID`, `PHONE_NUMBER`, `DATE`, `TIME`, `CAR_NUMBER`, `NAME`, `SURNAME`) VALUES
(1, 1, '+998901234567', '2023-04-29', 4, 'AB 123 AB UZB', 'Mike', 'William'),
(4, 2, '+998907897878', '2023-04-30', 8, 'BA 456 CC UZB', 'Pearl', 'Brand'),
(5, 3, '+9980010101', '2023-04-25', 5, 'TA 001 HT UZB', 'Susan', 'Connor'),
(1, 4, '+998970008910', '2023-04-29', 10, 'TY 100 HT UZB', 'Ronald', 'Barr'),
(1, 5, '+990786769', '2023-04-26', 6, 'TA 222 HT UZB', 'Rogern', 'Lurr'),
(7, 6, '+998888888888', '2023-04-18', 6, '32490', 'khkhjkhhk', 'jgjkhkhjhkj'),
(7, 7, '+998888888888', '2023-04-18', 6, '32490', 'khkhjkhhk', 'jgjkhkhjhkj'),
(7, 8, '+998888888888', '2023-04-18', 6, '32490', 'khkhjkhhk', 'jgjkhkhjhkj'),
(7, 9, '+998888888888', '2023-04-18', 6, '32490', 'khkhjkhhk', 'jgjkhkhjhkj'),
(8, 10, '+99899999999', '2023-04-19', 10, '22718', 'Hoshimjon', 'Zokirov'),
(1, 11, '', '0000-00-00', 1, '', '', ''),
(1, 12, '', '0000-00-00', 1, '', '', ''),
(1, 13, '', '0000-00-00', 1, '', '', ''),
(1, 14, '', '0000-00-00', 1, '', '', ''),
(1, 15, '', '0000-00-00', 1, '', '', ''),
(1, 16, '', '0000-00-00', 1, '', '', ''),
(1, 17, '', '0000-00-00', 1, '', '', ''),
(1, 18, '', '0000-00-00', 1, '', '', ''),
(1, 19, '', '0000-00-00', 1, '', '', ''),
(1, 20, '', '0000-00-00', 1, '', '', ''),
(1, 21, '', '0000-00-00', 1, '', '', ''),
(1, 22, '', '0000-00-00', 1, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `district`
--

CREATE TABLE `district` (
  `ID` int(11) NOT NULL,
  `DISTRICT1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `district`
--

INSERT INTO `district` (`ID`, `DISTRICT1`) VALUES
(1, 'Mirobod'),
(2, 'Yunusobod'),
(3, 'Chilonzor'),
(4, 'Olmazor'),
(5, 'Shayxontohur'),
(6, 'Yakkasaroy'),
(7, 'Uchtepa'),
(8, 'Mirzo Ulugbek');

-- --------------------------------------------------------

--
-- Структура таблицы `gas stations`
--

CREATE TABLE `gas stations` (
  `ID` int(11) NOT NULL,
  `DISTRICT_ID` int(11) NOT NULL,
  `STAFF_LOGIN` varchar(50) NOT NULL,
  `STAFF_PASSWORD` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `1-NUMBER` double NOT NULL,
  `2-NUMBER` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gas stations`
--

INSERT INTO `gas stations` (`ID`, `DISTRICT_ID`, `STAFF_LOGIN`, `STAFF_PASSWORD`, `NAME`, `1-NUMBER`, `2-NUMBER`) VALUES
(1, 1, '12345678', '87654321', 'UzGasOil', 41.209068, 69.119934),
(2, 1, 'cngstaff', 'cng', 'CNG Station', 41.31528, 69.28919),
(3, 1, 'azsstaff', 'azs', 'AZS Station', 41.31528, 69.28919),
(4, 2, 'agnksstaff', 'agnks', 'Methane station AGNKS', 41.3672714, 69.3433056),
(5, 2, 'methanegasstaff', 'methanegas', 'Methane Gas', 41.3672714, 69.3433056),
(6, 2, 'methanezapravkastaff', 'methanezapravka', 'Methane Zapravka', 41.396165898238, 69.26424163367467),
(7, 3, 'gazolinestaff', 'gazoline', 'Gazoline Station', 41.23417570997636, 69.33444886592034),
(8, 3, 'karavanstaff', 'karavan', 'Karavan Service', 41.268074010822865, 69.31144762492258),
(9, 3, 'marstaff', 'mar', 'Mar Hamkorbek', 41.23415150501393, 69.33443813708426),
(10, 4, 'ibrstaff', 'ibr', 'IBR Petroleum', 41.255253220129894, 69.24782103100361),
(11, 4, 'methaneagnksstaff', 'methaneagnks', 'Methane Station AGNKS', 41.33803948052103, 69.16535881195809),
(12, 5, 'sngstaff', 'sng', 'SNG Methane', 41.336578573483884, 69.30610506963014),
(13, 5, 'agnksstaff', 'agnks', 'AGNKS Methane', 41.337894481601104, 69.16576650772896),
(14, 6, 'ozgstaff', 'ozg', 'Ozgarish Gas Trans', 41.25469839384636, 69.21495895591957),
(15, 6, 'genialstaff', 'genial', 'Genial Invest', 41.263865605908336, 69.2362801138072),
(16, 6, 'yoqilgistaff', 'yoqilgi', 'Yoqilgi Gas Station', 41.26799283940133, 69.1898557254466),
(17, 7, 'babyarstaff', 'babyar', 'Babyar Gas', 41.25228328817657, 69.21903175428191),
(18, 7, 'gasstsatff', 'gasst', 'Gas Station', 41.26636035047172, 69.21108107756118),
(19, 8, 'dreamstaff', 'dream', 'Dream Gas Station', 41.26465, 69.21627);

-- --------------------------------------------------------

--
-- Структура таблицы `ranges`
--

CREATE TABLE `ranges` (
  `ID` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `ranges`
--

INSERT INTO `ranges` (`ID`, `start_time`, `end_time`) VALUES
(1, '06:00:00', '07:00:00'),
(2, '07:00:00', '08:00:00'),
(3, '08:00:00', '09:00:00'),
(4, '09:00:00', '10:00:00'),
(5, '10:00:00', '11:00:00'),
(6, '11:00:00', '12:00:00'),
(7, '12:00:00', '13:00:00'),
(8, '13:00:00', '14:00:00'),
(9, '14:00:00', '15:00:00'),
(10, '15:00:00', '16:00:00'),
(11, '16:00:00', '17:00:00'),
(12, '17:00:00', '18:00:00'),
(13, '18:00:00', '19:00:00'),
(14, '19:00:00', '20:00:00'),
(15, '20:00:00', '21:00:00'),
(16, '21:00:00', '22:00:00'),
(17, '22:00:00', '23:00:00'),
(18, '23:00:00', '24:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_NAME` (`ID_NAME`,`TIME`),
  ADD KEY `TIME` (`TIME`);

--
-- Индексы таблицы `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `gas stations`
--
ALTER TABLE `gas stations`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DISTRICT_ID` (`DISTRICT_ID`);

--
-- Индексы таблицы `ranges`
--
ALTER TABLE `ranges`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `district`
--
ALTER TABLE `district`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `gas stations`
--
ALTER TABLE `gas stations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `ranges`
--
ALTER TABLE `ranges`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`TIME`) REFERENCES `ranges` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`ID_NAME`) REFERENCES `gas stations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `gas stations`
--
ALTER TABLE `gas stations`
  ADD CONSTRAINT `gas stations_ibfk_1` FOREIGN KEY (`DISTRICT_ID`) REFERENCES `district` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
