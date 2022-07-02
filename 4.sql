
CREATE TABLE `sportsman` (
  `ID` int NOT NULL,
  `Name` varchar(100) NOT NULL COMMENT 'ФИО',
  `E-mail` varchar(50) NOT NULL,
  `Phone` varchar(11) NOT NULL COMMENT 'Телефон (без 8)',
  `Bith_date` date NOT NULL COMMENT 'Дата рождения',
  `Age` int(2) NOT NULL COMMET 'Возраст',
  `Date` datatime NOT NULL COMMENT 'Дата и время создания записи',
  `Numder passport` int(6) NOT NULL COMMENT 'Номер паспорт',
  `Average` int NOT NULL COMMENT 'Среднее место на соревнованиях ',
  `Biography` text NULL COMMENT 'Биография',
  `Video` BLOB NULL COMMENT 'Видепрезентация');

SELECT
`Name` AS 'Участник',
(SELECT COUNT(*) FROM `result` WHERE `sportsman`.`ID`=`result`.`Name`) AS 'Количество соревнований'
FROM `sportsman` ORDER BY (SELECT COUNT(*) FROM `result` WHERE `sportsman`.`ID`=`result`.`Name`) DESC LIMIT 5;
