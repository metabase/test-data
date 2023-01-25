
IF object_id('checkins_interval_86400.dbo.checkins') IS NOT NULL DROP TABLE "checkins_interval_86400".dbo."checkins";

CREATE TABLE "checkins_interval_86400"."dbo"."checkins" (
  "id" INT IDENTITY(1, 1),
  "timestamp" DATETIME,
  PRIMARY KEY ("id")
);

-- 30 rows
INSERT INTO "checkins_interval_86400"."dbo"."checkins" ("id", "timestamp")
VALUES
(1, dateadd(second, -1296000, getdate())),
(2, dateadd(second, -1209600, getdate())),
(3, dateadd(second, -1123200, getdate())),
(4, dateadd(second, -1036800, getdate())),
(5, dateadd(second, -950400, getdate())),
(6, dateadd(second, -864000, getdate())),
(7, dateadd(second, -777600, getdate())),
(8, dateadd(second, -691200, getdate())),
(9, dateadd(second, -604800, getdate())),
(10, dateadd(second, -518400, getdate())),
(11, dateadd(second, -432000, getdate())),
(12, dateadd(second, -345600, getdate())),
(13, dateadd(second, -259200, getdate())),
(14, dateadd(second, -172800, getdate())),
(15, dateadd(second, -86400, getdate())),
(16, dateadd(second, 0, getdate())),
(17, dateadd(second, 86400, getdate())),
(18, dateadd(second, 172800, getdate())),
(19, dateadd(second, 259200, getdate())),
(20, dateadd(second, 345600, getdate())),
(21, dateadd(second, 432000, getdate())),
(22, dateadd(second, 518400, getdate())),
(23, dateadd(second, 604800, getdate())),
(24, dateadd(second, 691200, getdate())),
(25, dateadd(second, 777600, getdate())),
(26, dateadd(second, 864000, getdate())),
(27, dateadd(second, 950400, getdate())),
(28, dateadd(second, 1036800, getdate())),
(29, dateadd(second, 1123200, getdate())),
(30, dateadd(second, 1209600, getdate()));

