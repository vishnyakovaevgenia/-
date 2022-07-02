
creat table `new sportsman` (
  `id` int not null,
  `Name` varchar(100) not null,
  `Phone` varchar(11) not null,
  `Bith_date` date not null,
  `Biography` text null,
  `Video` blob null
);

SELECT 
`Name` AS 'Участник',
(SELECT COUNT(*) FROM `result` WHERE `sportsman`.`ID`=`result`.`Name`) AS 'Количество соревнований'
FROM `sportsman` ORDER BY (SELECT COUNT(*) FROM `result` WHERE `sportsman`.`ID`=`result`.`Name`) DESC LIMIT 5;
