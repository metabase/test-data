
DROP TABLE IF EXISTS ` checkins `

CREATE TABLE ` checkins ` (` id ` INT, ` timestamp ` TIMESTAMP)

-- 30 rows
INSERT INTO "checkins" ("id", "timestamp")
VALUES
(1, (now() + (INTERVAL '-225' second))),
(2, (now() + (INTERVAL '-210' second))),
(3, (now() + (INTERVAL '-195' second))),
(4, (now() + (INTERVAL '-180' second))),
(5, (now() + (INTERVAL '-165' second))),
(6, (now() + (INTERVAL '-150' second))),
(7, (now() + (INTERVAL '-135' second))),
(8, (now() + (INTERVAL '-120' second))),
(9, (now() + (INTERVAL '-105' second))),
(10, (now() + (INTERVAL '-90' second))),
(11, (now() + (INTERVAL '-75' second))),
(12, (now() + (INTERVAL '-60' second))),
(13, (now() + (INTERVAL '-45' second))),
(14, (now() + (INTERVAL '-30' second))),
(15, (now() + (INTERVAL '-15' second))),
(16, (now() + (INTERVAL '0' second))),
(17, (now() + (INTERVAL '15' second))),
(18, (now() + (INTERVAL '30' second))),
(19, (now() + (INTERVAL '45' second))),
(20, (now() + (INTERVAL '60' second))),
(21, (now() + (INTERVAL '75' second))),
(22, (now() + (INTERVAL '90' second))),
(23, (now() + (INTERVAL '105' second))),
(24, (now() + (INTERVAL '120' second))),
(25, (now() + (INTERVAL '135' second))),
(26, (now() + (INTERVAL '150' second))),
(27, (now() + (INTERVAL '165' second))),
(28, (now() + (INTERVAL '180' second))),
(29, (now() + (INTERVAL '195' second))),
(30, (now() + (INTERVAL '210' second)));

