SET
  TIMEZONE TO 'UTC';

DROP TABLE IF EXISTS "schema_201"."checkins_interval_900_checkins" CASCADE;

CREATE TABLE "schema_201"."checkins_interval_900_checkins" (
  "id" INTEGER IDENTITY(1, 1),
  "timestamp" TIMESTAMP,
  PRIMARY KEY ("id")
);

-- 30 rows
INSERT INTO "schema_201"."checkins_interval_900_checkins" ("id", "timestamp")
VALUES
(1, dateadd('second', -13500, CAST(getdate() AS timestamp))),
(2, dateadd('second', -12600, CAST(getdate() AS timestamp))),
(3, dateadd('second', -11700, CAST(getdate() AS timestamp))),
(4, dateadd('second', -10800, CAST(getdate() AS timestamp))),
(5, dateadd('second', -9900, CAST(getdate() AS timestamp))),
(6, dateadd('second', -9000, CAST(getdate() AS timestamp))),
(7, dateadd('second', -8100, CAST(getdate() AS timestamp))),
(8, dateadd('second', -7200, CAST(getdate() AS timestamp))),
(9, dateadd('second', -6300, CAST(getdate() AS timestamp))),
(10, dateadd('second', -5400, CAST(getdate() AS timestamp))),
(11, dateadd('second', -4500, CAST(getdate() AS timestamp))),
(12, dateadd('second', -3600, CAST(getdate() AS timestamp))),
(13, dateadd('second', -2700, CAST(getdate() AS timestamp))),
(14, dateadd('second', -1800, CAST(getdate() AS timestamp))),
(15, dateadd('second', -900, CAST(getdate() AS timestamp))),
(16, dateadd('second', 0, CAST(getdate() AS timestamp))),
(17, dateadd('second', 900, CAST(getdate() AS timestamp))),
(18, dateadd('second', 1800, CAST(getdate() AS timestamp))),
(19, dateadd('second', 2700, CAST(getdate() AS timestamp))),
(20, dateadd('second', 3600, CAST(getdate() AS timestamp))),
(21, dateadd('second', 4500, CAST(getdate() AS timestamp))),
(22, dateadd('second', 5400, CAST(getdate() AS timestamp))),
(23, dateadd('second', 6300, CAST(getdate() AS timestamp))),
(24, dateadd('second', 7200, CAST(getdate() AS timestamp))),
(25, dateadd('second', 8100, CAST(getdate() AS timestamp))),
(26, dateadd('second', 9000, CAST(getdate() AS timestamp))),
(27, dateadd('second', 9900, CAST(getdate() AS timestamp))),
(28, dateadd('second', 10800, CAST(getdate() AS timestamp))),
(29, dateadd('second', 11700, CAST(getdate() AS timestamp))),
(30, dateadd('second', 12600, CAST(getdate() AS timestamp)));

