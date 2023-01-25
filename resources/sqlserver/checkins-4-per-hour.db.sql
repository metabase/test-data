
IF object_id('checkins_interval_900.dbo.checkins') IS NOT NULL DROP TABLE "checkins_interval_900".dbo."checkins";

CREATE TABLE "checkins_interval_900"."dbo"."checkins" (
  "id" INT IDENTITY(1, 1),
  "timestamp" DATETIME,
  PRIMARY KEY ("id")
);

-- 30 rows
INSERT INTO "checkins_interval_900"."dbo"."checkins" ("id", "timestamp")
VALUES
(1, dateadd(second, -13500, getdate())),
(2, dateadd(second, -12600, getdate())),
(3, dateadd(second, -11700, getdate())),
(4, dateadd(second, -10800, getdate())),
(5, dateadd(second, -9900, getdate())),
(6, dateadd(second, -9000, getdate())),
(7, dateadd(second, -8100, getdate())),
(8, dateadd(second, -7200, getdate())),
(9, dateadd(second, -6300, getdate())),
(10, dateadd(second, -5400, getdate())),
(11, dateadd(second, -4500, getdate())),
(12, dateadd(second, -3600, getdate())),
(13, dateadd(second, -2700, getdate())),
(14, dateadd(second, -1800, getdate())),
(15, dateadd(second, -900, getdate())),
(16, dateadd(second, 0, getdate())),
(17, dateadd(second, 900, getdate())),
(18, dateadd(second, 1800, getdate())),
(19, dateadd(second, 2700, getdate())),
(20, dateadd(second, 3600, getdate())),
(21, dateadd(second, 4500, getdate())),
(22, dateadd(second, 5400, getdate())),
(23, dateadd(second, 6300, getdate())),
(24, dateadd(second, 7200, getdate())),
(25, dateadd(second, 8100, getdate())),
(26, dateadd(second, 9000, getdate())),
(27, dateadd(second, 9900, getdate())),
(28, dateadd(second, 10800, getdate())),
(29, dateadd(second, 11700, getdate())),
(30, dateadd(second, 12600, getdate()));

