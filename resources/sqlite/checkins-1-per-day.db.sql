
DROP TABLE IF EXISTS "checkins";

CREATE TABLE "checkins" ("id" INTEGER, "timestamp" DATETIME, PRIMARY KEY ("id"));

-- 30 rows
INSERT INTO "checkins" ("id", "timestamp")
VALUES
(1, datetime(datetime('now'), '-1296000 seconds')),
(2, datetime(datetime('now'), '-1209600 seconds')),
(3, datetime(datetime('now'), '-1123200 seconds')),
(4, datetime(datetime('now'), '-1036800 seconds')),
(5, datetime(datetime('now'), '-950400 seconds')),
(6, datetime(datetime('now'), '-864000 seconds')),
(7, datetime(datetime('now'), '-777600 seconds')),
(8, datetime(datetime('now'), '-691200 seconds')),
(9, datetime(datetime('now'), '-604800 seconds')),
(10, datetime(datetime('now'), '-518400 seconds')),
(11, datetime(datetime('now'), '-432000 seconds')),
(12, datetime(datetime('now'), '-345600 seconds')),
(13, datetime(datetime('now'), '-259200 seconds')),
(14, datetime(datetime('now'), '-172800 seconds')),
(15, datetime(datetime('now'), '-86400 seconds')),
(16, datetime(datetime('now'), '+0 seconds')),
(17, datetime(datetime('now'), '+86400 seconds')),
(18, datetime(datetime('now'), '+172800 seconds')),
(19, datetime(datetime('now'), '+259200 seconds')),
(20, datetime(datetime('now'), '+345600 seconds')),
(21, datetime(datetime('now'), '+432000 seconds')),
(22, datetime(datetime('now'), '+518400 seconds')),
(23, datetime(datetime('now'), '+604800 seconds')),
(24, datetime(datetime('now'), '+691200 seconds')),
(25, datetime(datetime('now'), '+777600 seconds')),
(26, datetime(datetime('now'), '+864000 seconds')),
(27, datetime(datetime('now'), '+950400 seconds')),
(28, datetime(datetime('now'), '+1036800 seconds')),
(29, datetime(datetime('now'), '+1123200 seconds')),
(30, datetime(datetime('now'), '+1209600 seconds'));

