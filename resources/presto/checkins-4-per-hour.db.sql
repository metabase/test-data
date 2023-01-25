
DROP TABLE IF EXISTS "test-data"."default"."checkins_interval_900_checkins"

CREATE TABLE "test-data"."default"."checkins_interval_900_checkins" AS
SELECT
  *
FROM
  (
    VALUES
      (1, current_timestamp)
  ) AS t ("id", "timestamp")
WHERE
  1 = 0

-- 30 rows
INSERT INTO "test-data"."default"."checkins_interval_900_checkins" ("id", "timestamp")
VALUES
(1, date_add('second', -13500, now())),
(2, date_add('second', -12600, now())),
(3, date_add('second', -11700, now())),
(4, date_add('second', -10800, now())),
(5, date_add('second', -9900, now())),
(6, date_add('second', -9000, now())),
(7, date_add('second', -8100, now())),
(8, date_add('second', -7200, now())),
(9, date_add('second', -6300, now())),
(10, date_add('second', -5400, now())),
(11, date_add('second', -4500, now())),
(12, date_add('second', -3600, now())),
(13, date_add('second', -2700, now())),
(14, date_add('second', -1800, now())),
(15, date_add('second', -900, now())),
(16, date_add('second', 0, now())),
(17, date_add('second', 900, now())),
(18, date_add('second', 1800, now())),
(19, date_add('second', 2700, now())),
(20, date_add('second', 3600, now())),
(21, date_add('second', 4500, now())),
(22, date_add('second', 5400, now())),
(23, date_add('second', 6300, now())),
(24, date_add('second', 7200, now())),
(25, date_add('second', 8100, now())),
(26, date_add('second', 9000, now())),
(27, date_add('second', 9900, now())),
(28, date_add('second', 10800, now())),
(29, date_add('second', 11700, now())),
(30, date_add('second', 12600, now()));

