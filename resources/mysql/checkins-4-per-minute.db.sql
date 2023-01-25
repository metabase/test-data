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
(1, date_add(now(6), INTERVAL -225 second)),
(2, date_add(now(6), INTERVAL -210 second)),
(3, date_add(now(6), INTERVAL -195 second)),
(4, date_add(now(6), INTERVAL -180 second)),
(5, date_add(now(6), INTERVAL -165 second)),
(6, date_add(now(6), INTERVAL -150 second)),
(7, date_add(now(6), INTERVAL -135 second)),
(8, date_add(now(6), INTERVAL -120 second)),
(9, date_add(now(6), INTERVAL -105 second)),
(10, date_add(now(6), INTERVAL -90 second)),
(11, date_add(now(6), INTERVAL -75 second)),
(12, date_add(now(6), INTERVAL -60 second)),
(13, date_add(now(6), INTERVAL -45 second)),
(14, date_add(now(6), INTERVAL -30 second)),
(15, date_add(now(6), INTERVAL -15 second)),
(16, date_add(now(6), INTERVAL 0 second)),
(17, date_add(now(6), INTERVAL 15 second)),
(18, date_add(now(6), INTERVAL 30 second)),
(19, date_add(now(6), INTERVAL 45 second)),
(20, date_add(now(6), INTERVAL 60 second)),
(21, date_add(now(6), INTERVAL 75 second)),
(22, date_add(now(6), INTERVAL 90 second)),
(23, date_add(now(6), INTERVAL 105 second)),
(24, date_add(now(6), INTERVAL 120 second)),
(25, date_add(now(6), INTERVAL 135 second)),
(26, date_add(now(6), INTERVAL 150 second)),
(27, date_add(now(6), INTERVAL 165 second)),
(28, date_add(now(6), INTERVAL 180 second)),
(29, date_add(now(6), INTERVAL 195 second)),
(30, date_add(now(6), INTERVAL 210 second));

