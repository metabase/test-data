
IF object_id('checkins_interval_15.dbo.checkins') IS NOT NULL DROP TABLE "checkins_interval_15".dbo."checkins";

CREATE TABLE "checkins_interval_15"."dbo"."checkins" (
  "id" INT IDENTITY(1, 1),
  "timestamp" DATETIME,
  PRIMARY KEY ("id")
);

-- 30 rows
INSERT INTO "checkins_interval_15"."dbo"."checkins" ("id", "timestamp")
VALUES
(1, dateadd(second, -225, getdate())),
(2, dateadd(second, -210, getdate())),
(3, dateadd(second, -195, getdate())),
(4, dateadd(second, -180, getdate())),
(5, dateadd(second, -165, getdate())),
(6, dateadd(second, -150, getdate())),
(7, dateadd(second, -135, getdate())),
(8, dateadd(second, -120, getdate())),
(9, dateadd(second, -105, getdate())),
(10, dateadd(second, -90, getdate())),
(11, dateadd(second, -75, getdate())),
(12, dateadd(second, -60, getdate())),
(13, dateadd(second, -45, getdate())),
(14, dateadd(second, -30, getdate())),
(15, dateadd(second, -15, getdate())),
(16, dateadd(second, 0, getdate())),
(17, dateadd(second, 15, getdate())),
(18, dateadd(second, 30, getdate())),
(19, dateadd(second, 45, getdate())),
(20, dateadd(second, 60, getdate())),
(21, dateadd(second, 75, getdate())),
(22, dateadd(second, 90, getdate())),
(23, dateadd(second, 105, getdate())),
(24, dateadd(second, 120, getdate())),
(25, dateadd(second, 135, getdate())),
(26, dateadd(second, 150, getdate())),
(27, dateadd(second, 165, getdate())),
(28, dateadd(second, 180, getdate())),
(29, dateadd(second, 195, getdate())),
(30, dateadd(second, 210, getdate()));

