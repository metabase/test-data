
DROP TABLE IF EXISTS "checkins";

CREATE TABLE "checkins" ("id" INTEGER, "timestamp" DATETIME, PRIMARY KEY ("id"));

-- 30 rows
INSERT INTO "checkins" ("id", "timestamp")
VALUES
(1, datetime(datetime('now'), '-13500 seconds')),
(2, datetime(datetime('now'), '-12600 seconds')),
(3, datetime(datetime('now'), '-11700 seconds')),
(4, datetime(datetime('now'), '-10800 seconds')),
(5, datetime(datetime('now'), '-9900 seconds')),
(6, datetime(datetime('now'), '-9000 seconds')),
(7, datetime(datetime('now'), '-8100 seconds')),
(8, datetime(datetime('now'), '-7200 seconds')),
(9, datetime(datetime('now'), '-6300 seconds')),
(10, datetime(datetime('now'), '-5400 seconds')),
(11, datetime(datetime('now'), '-4500 seconds')),
(12, datetime(datetime('now'), '-3600 seconds')),
(13, datetime(datetime('now'), '-2700 seconds')),
(14, datetime(datetime('now'), '-1800 seconds')),
(15, datetime(datetime('now'), '-900 seconds')),
(16, datetime(datetime('now'), '+0 seconds')),
(17, datetime(datetime('now'), '+900 seconds')),
(18, datetime(datetime('now'), '+1800 seconds')),
(19, datetime(datetime('now'), '+2700 seconds')),
(20, datetime(datetime('now'), '+3600 seconds')),
(21, datetime(datetime('now'), '+4500 seconds')),
(22, datetime(datetime('now'), '+5400 seconds')),
(23, datetime(datetime('now'), '+6300 seconds')),
(24, datetime(datetime('now'), '+7200 seconds')),
(25, datetime(datetime('now'), '+8100 seconds')),
(26, datetime(datetime('now'), '+9000 seconds')),
(27, datetime(datetime('now'), '+9900 seconds')),
(28, datetime(datetime('now'), '+10800 seconds')),
(29, datetime(datetime('now'), '+11700 seconds')),
(30, datetime(datetime('now'), '+12600 seconds'));

