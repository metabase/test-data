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
(1, date_add(now(6), INTERVAL -13500 second)),
(2, date_add(now(6), INTERVAL -12600 second)),
(3, date_add(now(6), INTERVAL -11700 second)),
(4, date_add(now(6), INTERVAL -10800 second)),
(5, date_add(now(6), INTERVAL -9900 second)),
(6, date_add(now(6), INTERVAL -9000 second)),
(7, date_add(now(6), INTERVAL -8100 second)),
(8, date_add(now(6), INTERVAL -7200 second)),
(9, date_add(now(6), INTERVAL -6300 second)),
(10, date_add(now(6), INTERVAL -5400 second)),
(11, date_add(now(6), INTERVAL -4500 second)),
(12, date_add(now(6), INTERVAL -3600 second)),
(13, date_add(now(6), INTERVAL -2700 second)),
(14, date_add(now(6), INTERVAL -1800 second)),
(15, date_add(now(6), INTERVAL -900 second)),
(16, date_add(now(6), INTERVAL 0 second)),
(17, date_add(now(6), INTERVAL 900 second)),
(18, date_add(now(6), INTERVAL 1800 second)),
(19, date_add(now(6), INTERVAL 2700 second)),
(20, date_add(now(6), INTERVAL 3600 second)),
(21, date_add(now(6), INTERVAL 4500 second)),
(22, date_add(now(6), INTERVAL 5400 second)),
(23, date_add(now(6), INTERVAL 6300 second)),
(24, date_add(now(6), INTERVAL 7200 second)),
(25, date_add(now(6), INTERVAL 8100 second)),
(26, date_add(now(6), INTERVAL 9000 second)),
(27, date_add(now(6), INTERVAL 9900 second)),
(28, date_add(now(6), INTERVAL 10800 second)),
(29, date_add(now(6), INTERVAL 11700 second)),
(30, date_add(now(6), INTERVAL 12600 second));

