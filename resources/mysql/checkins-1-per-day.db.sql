SET
  @@session.time_zone = 'UTC';

DROP TABLE IF EXISTS `checkins`;

CREATE TABLE `checkins` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `timestamp` DATETIME(3),
  PRIMARY KEY (`id`)
);

-- 30 rows
INSERT INTO "checkins" ("id", "timestamp")
VALUES
(1, date_add(now(6), INTERVAL -1296000 second)),
(2, date_add(now(6), INTERVAL -1209600 second)),
(3, date_add(now(6), INTERVAL -1123200 second)),
(4, date_add(now(6), INTERVAL -1036800 second)),
(5, date_add(now(6), INTERVAL -950400 second)),
(6, date_add(now(6), INTERVAL -864000 second)),
(7, date_add(now(6), INTERVAL -777600 second)),
(8, date_add(now(6), INTERVAL -691200 second)),
(9, date_add(now(6), INTERVAL -604800 second)),
(10, date_add(now(6), INTERVAL -518400 second)),
(11, date_add(now(6), INTERVAL -432000 second)),
(12, date_add(now(6), INTERVAL -345600 second)),
(13, date_add(now(6), INTERVAL -259200 second)),
(14, date_add(now(6), INTERVAL -172800 second)),
(15, date_add(now(6), INTERVAL -86400 second)),
(16, date_add(now(6), INTERVAL 0 second)),
(17, date_add(now(6), INTERVAL 86400 second)),
(18, date_add(now(6), INTERVAL 172800 second)),
(19, date_add(now(6), INTERVAL 259200 second)),
(20, date_add(now(6), INTERVAL 345600 second)),
(21, date_add(now(6), INTERVAL 432000 second)),
(22, date_add(now(6), INTERVAL 518400 second)),
(23, date_add(now(6), INTERVAL 604800 second)),
(24, date_add(now(6), INTERVAL 691200 second)),
(25, date_add(now(6), INTERVAL 777600 second)),
(26, date_add(now(6), INTERVAL 864000 second)),
(27, date_add(now(6), INTERVAL 950400 second)),
(28, date_add(now(6), INTERVAL 1036800 second)),
(29, date_add(now(6), INTERVAL 1123200 second)),
(30, date_add(now(6), INTERVAL 1209600 second));

