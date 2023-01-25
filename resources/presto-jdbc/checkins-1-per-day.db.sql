
DROP TABLE IF EXISTS "test_data"."default"."eckins_interval_86400_checkins";

CREATE TABLE "test_data"."default"."eckins_interval_86400_checkins" ("id" INTEGER, "timestamp" TIMESTAMP WITH TIME ZONE);

-- 30 rows
INSERT INTO "test_data"."default"."eckins_interval_86400_checkins" ("id", "timestamp")
VALUES
(1, date_add('second', -1296000, now())),
(2, date_add('second', -1209600, now())),
(3, date_add('second', -1123200, now())),
(4, date_add('second', -1036800, now())),
(5, date_add('second', -950400, now())),
(6, date_add('second', -864000, now())),
(7, date_add('second', -777600, now())),
(8, date_add('second', -691200, now())),
(9, date_add('second', -604800, now())),
(10, date_add('second', -518400, now())),
(11, date_add('second', -432000, now())),
(12, date_add('second', -345600, now())),
(13, date_add('second', -259200, now())),
(14, date_add('second', -172800, now())),
(15, date_add('second', -86400, now())),
(16, date_add('second', 0, now())),
(17, date_add('second', 86400, now())),
(18, date_add('second', 172800, now())),
(19, date_add('second', 259200, now())),
(20, date_add('second', 345600, now())),
(21, date_add('second', 432000, now())),
(22, date_add('second', 518400, now())),
(23, date_add('second', 604800, now())),
(24, date_add('second', 691200, now())),
(25, date_add('second', 777600, now())),
(26, date_add('second', 864000, now())),
(27, date_add('second', 950400, now())),
(28, date_add('second', 1036800, now())),
(29, date_add('second', 1123200, now())),
(30, date_add('second', 1209600, now()));

