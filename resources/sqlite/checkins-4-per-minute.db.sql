
DROP TABLE IF EXISTS "checkins";

CREATE TABLE "checkins" ("id" INTEGER, "timestamp" DATETIME, PRIMARY KEY ("id"));

-- 30 rows
INSERT INTO "checkins" ("id", "timestamp")
VALUES
(1, datetime(datetime('now'), '-225 seconds')),
(2, datetime(datetime('now'), '-210 seconds')),
(3, datetime(datetime('now'), '-195 seconds')),
(4, datetime(datetime('now'), '-180 seconds')),
(5, datetime(datetime('now'), '-165 seconds')),
(6, datetime(datetime('now'), '-150 seconds')),
(7, datetime(datetime('now'), '-135 seconds')),
(8, datetime(datetime('now'), '-120 seconds')),
(9, datetime(datetime('now'), '-105 seconds')),
(10, datetime(datetime('now'), '-90 seconds')),
(11, datetime(datetime('now'), '-75 seconds')),
(12, datetime(datetime('now'), '-60 seconds')),
(13, datetime(datetime('now'), '-45 seconds')),
(14, datetime(datetime('now'), '-30 seconds')),
(15, datetime(datetime('now'), '-15 seconds')),
(16, datetime(datetime('now'), '+0 seconds')),
(17, datetime(datetime('now'), '+15 seconds')),
(18, datetime(datetime('now'), '+30 seconds')),
(19, datetime(datetime('now'), '+45 seconds')),
(20, datetime(datetime('now'), '+60 seconds')),
(21, datetime(datetime('now'), '+75 seconds')),
(22, datetime(datetime('now'), '+90 seconds')),
(23, datetime(datetime('now'), '+105 seconds')),
(24, datetime(datetime('now'), '+120 seconds')),
(25, datetime(datetime('now'), '+135 seconds')),
(26, datetime(datetime('now'), '+150 seconds')),
(27, datetime(datetime('now'), '+165 seconds')),
(28, datetime(datetime('now'), '+180 seconds')),
(29, datetime(datetime('now'), '+195 seconds')),
(30, datetime(datetime('now'), '+210 seconds'));

