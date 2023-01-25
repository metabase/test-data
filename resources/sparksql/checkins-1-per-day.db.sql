
DROP TABLE IF EXISTS ` checkins `

CREATE TABLE ` checkins ` (` id ` INT, ` timestamp ` TIMESTAMP)

-- 30 rows
INSERT INTO "checkins" ("id", "timestamp")
VALUES
(1, (now() + (INTERVAL '-1296000' second))),
(2, (now() + (INTERVAL '-1209600' second))),
(3, (now() + (INTERVAL '-1123200' second))),
(4, (now() + (INTERVAL '-1036800' second))),
(5, (now() + (INTERVAL '-950400' second))),
(6, (now() + (INTERVAL '-864000' second))),
(7, (now() + (INTERVAL '-777600' second))),
(8, (now() + (INTERVAL '-691200' second))),
(9, (now() + (INTERVAL '-604800' second))),
(10, (now() + (INTERVAL '-518400' second))),
(11, (now() + (INTERVAL '-432000' second))),
(12, (now() + (INTERVAL '-345600' second))),
(13, (now() + (INTERVAL '-259200' second))),
(14, (now() + (INTERVAL '-172800' second))),
(15, (now() + (INTERVAL '-86400' second))),
(16, (now() + (INTERVAL '0' second))),
(17, (now() + (INTERVAL '86400' second))),
(18, (now() + (INTERVAL '172800' second))),
(19, (now() + (INTERVAL '259200' second))),
(20, (now() + (INTERVAL '345600' second))),
(21, (now() + (INTERVAL '432000' second))),
(22, (now() + (INTERVAL '518400' second))),
(23, (now() + (INTERVAL '604800' second))),
(24, (now() + (INTERVAL '691200' second))),
(25, (now() + (INTERVAL '777600' second))),
(26, (now() + (INTERVAL '864000' second))),
(27, (now() + (INTERVAL '950400' second))),
(28, (now() + (INTERVAL '1036800' second))),
(29, (now() + (INTERVAL '1123200' second))),
(30, (now() + (INTERVAL '1209600' second)));

