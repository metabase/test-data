ALTER SESSION
SET
  TIMEZONE = 'UTC';

DROP TABLE IF EXISTS "checkins_interval_900"."PUBLIC"."checkins";

CREATE TABLE "checkins_interval_900"."PUBLIC"."checkins" (
  "id" INTEGER AUTOINCREMENT,
  "timestamp" TIMESTAMP_NTZ,
  PRIMARY KEY ("id")
);

-- 30 rows
INSERT INTO "checkins_interval_900"."PUBLIC"."checkins" ("id", "timestamp")
VALUES
(1, dateadd(second, -13500, CAST(current_timestamp() AS timestamp))),
(2, dateadd(second, -12600, CAST(current_timestamp() AS timestamp))),
(3, dateadd(second, -11700, CAST(current_timestamp() AS timestamp))),
(4, dateadd(second, -10800, CAST(current_timestamp() AS timestamp))),
(5, dateadd(second, -9900, CAST(current_timestamp() AS timestamp))),
(6, dateadd(second, -9000, CAST(current_timestamp() AS timestamp))),
(7, dateadd(second, -8100, CAST(current_timestamp() AS timestamp))),
(8, dateadd(second, -7200, CAST(current_timestamp() AS timestamp))),
(9, dateadd(second, -6300, CAST(current_timestamp() AS timestamp))),
(10, dateadd(second, -5400, CAST(current_timestamp() AS timestamp))),
(11, dateadd(second, -4500, CAST(current_timestamp() AS timestamp))),
(12, dateadd(second, -3600, CAST(current_timestamp() AS timestamp))),
(13, dateadd(second, -2700, CAST(current_timestamp() AS timestamp))),
(14, dateadd(second, -1800, CAST(current_timestamp() AS timestamp))),
(15, dateadd(second, -900, CAST(current_timestamp() AS timestamp))),
(16, dateadd(second, 0, CAST(current_timestamp() AS timestamp))),
(17, dateadd(second, 900, CAST(current_timestamp() AS timestamp))),
(18, dateadd(second, 1800, CAST(current_timestamp() AS timestamp))),
(19, dateadd(second, 2700, CAST(current_timestamp() AS timestamp))),
(20, dateadd(second, 3600, CAST(current_timestamp() AS timestamp))),
(21, dateadd(second, 4500, CAST(current_timestamp() AS timestamp))),
(22, dateadd(second, 5400, CAST(current_timestamp() AS timestamp))),
(23, dateadd(second, 6300, CAST(current_timestamp() AS timestamp))),
(24, dateadd(second, 7200, CAST(current_timestamp() AS timestamp))),
(25, dateadd(second, 8100, CAST(current_timestamp() AS timestamp))),
(26, dateadd(second, 9000, CAST(current_timestamp() AS timestamp))),
(27, dateadd(second, 9900, CAST(current_timestamp() AS timestamp))),
(28, dateadd(second, 10800, CAST(current_timestamp() AS timestamp))),
(29, dateadd(second, 11700, CAST(current_timestamp() AS timestamp))),
(30, dateadd(second, 12600, CAST(current_timestamp() AS timestamp)));

