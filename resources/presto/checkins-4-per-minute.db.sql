
DROP TABLE IF EXISTS "test-data"."default"."checkins_interval_15_checkins"

CREATE TABLE "test-data"."default"."checkins_interval_15_checkins" AS
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
INSERT INTO "test-data"."default"."checkins_interval_15_checkins" ("id", "timestamp")
VALUES
(1, date_add('second', -225, now())),
(2, date_add('second', -210, now())),
(3, date_add('second', -195, now())),
(4, date_add('second', -180, now())),
(5, date_add('second', -165, now())),
(6, date_add('second', -150, now())),
(7, date_add('second', -135, now())),
(8, date_add('second', -120, now())),
(9, date_add('second', -105, now())),
(10, date_add('second', -90, now())),
(11, date_add('second', -75, now())),
(12, date_add('second', -60, now())),
(13, date_add('second', -45, now())),
(14, date_add('second', -30, now())),
(15, date_add('second', -15, now())),
(16, date_add('second', 0, now())),
(17, date_add('second', 15, now())),
(18, date_add('second', 30, now())),
(19, date_add('second', 45, now())),
(20, date_add('second', 60, now())),
(21, date_add('second', 75, now())),
(22, date_add('second', 90, now())),
(23, date_add('second', 105, now())),
(24, date_add('second', 120, now())),
(25, date_add('second', 135, now())),
(26, date_add('second', 150, now())),
(27, date_add('second', 165, now())),
(28, date_add('second', 180, now())),
(29, date_add('second', 195, now())),
(30, date_add('second', 210, now()));

