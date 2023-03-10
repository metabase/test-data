ALTER SESSION
SET
  TIMEZONE = 'UTC';

DROP TABLE IF EXISTS "diff-time-zones-cases"."PUBLIC"."times";

CREATE TABLE "diff-time-zones-cases"."PUBLIC"."times" (
  "id" INTEGER AUTOINCREMENT,
  "a_dt_tz" TIMESTAMP_TZ,
  "b_dt_tz" TIMESTAMP_TZ,
  "a_dt_tz_text" TEXT,
  "b_dt_tz_text" TEXT,
  PRIMARY KEY ("id")
);

-- 35 rows
INSERT INTO "diff-time-zones-cases"."PUBLIC"."times" ("id", "a_dt_tz", "b_dt_tz", "a_dt_tz_text", "b_dt_tz_text")
VALUES
(1, '2022-10-02 00:00 Z':: timestamp_tz, '2022-10-03 00:00 +01:00':: timestamp_tz, '2022-10-02T00:00:00Z', '2022-10-03T00:00:00+01:00'),
(2, '2022-10-02 00:00 Z':: timestamp_tz, '2022-10-09 00:00 +01:00':: timestamp_tz, '2022-10-02T00:00:00Z', '2022-10-09T00:00:00+01:00'),
(3, '2022-10-02 00:00 Z':: timestamp_tz, '2022-11-02 00:00 +01:00':: timestamp_tz, '2022-10-02T00:00:00Z', '2022-11-02T00:00:00+01:00'),
(4, '2022-10-02 00:00 Z':: timestamp_tz, '2023-01-02 00:00 +01:00':: timestamp_tz, '2022-10-02T00:00:00Z', '2023-01-02T00:00:00+01:00'),
(5, '2022-10-02 00:00 Z':: timestamp_tz, '2023-10-02 00:00 +01:00':: timestamp_tz, '2022-10-02T00:00:00Z', '2023-10-02T00:00:00+01:00'),
(6, '2022-10-02 01:00 +01:00':: timestamp_tz, '2022-10-03 00:00 Z':: timestamp_tz, '2022-10-02T01:00:00+01:00', '2022-10-03T00:00:00Z'),
(7, '2022-10-02 01:00 +01:00':: timestamp_tz, '2022-10-09 00:00 Z':: timestamp_tz, '2022-10-02T01:00:00+01:00', '2022-10-09T00:00:00Z'),
(8, '2022-10-02 01:00 +01:00':: timestamp_tz, '2022-11-02 00:00 Z':: timestamp_tz, '2022-10-02T01:00:00+01:00', '2022-11-02T00:00:00Z'),
(9, '2022-10-02 01:00 +01:00':: timestamp_tz, '2023-01-02 00:00 Z':: timestamp_tz, '2022-10-02T01:00:00+01:00', '2023-01-02T00:00:00Z'),
(10, '2022-10-02 01:00 +01:00':: timestamp_tz, '2023-10-02 00:00 Z':: timestamp_tz, '2022-10-02T01:00:00+01:00', '2023-10-02T00:00:00Z'),
(11, '2022-10-03 00:00 Z':: timestamp_tz, '2022-10-09 00:00 +01:00':: timestamp_tz, '2022-10-03T00:00:00Z', '2022-10-09T00:00:00+01:00'),
(12, '2022-10-03 00:00 Z':: timestamp_tz, '2022-11-02 00:00 +01:00':: timestamp_tz, '2022-10-03T00:00:00Z', '2022-11-02T00:00:00+01:00'),
(13, '2022-10-03 00:00 Z':: timestamp_tz, '2023-01-02 00:00 +01:00':: timestamp_tz, '2022-10-03T00:00:00Z', '2023-01-02T00:00:00+01:00'),
(14, '2022-10-03 00:00 Z':: timestamp_tz, '2023-10-02 00:00 +01:00':: timestamp_tz, '2022-10-03T00:00:00Z', '2023-10-02T00:00:00+01:00'),
(15, '2022-10-03 00:00 +01:00':: timestamp_tz, '2022-10-03 00:00 Z':: timestamp_tz, '2022-10-03T00:00:00+01:00', '2022-10-03T00:00:00Z'),
(16, '2022-10-03 00:00 +01:00':: timestamp_tz, '2022-10-09 00:00 Z':: timestamp_tz, '2022-10-03T00:00:00+01:00', '2022-10-09T00:00:00Z'),
(17, '2022-10-03 00:00 +01:00':: timestamp_tz, '2022-11-02 00:00 Z':: timestamp_tz, '2022-10-03T00:00:00+01:00', '2022-11-02T00:00:00Z'),
(18, '2022-10-03 00:00 +01:00':: timestamp_tz, '2023-01-02 00:00 Z':: timestamp_tz, '2022-10-03T00:00:00+01:00', '2023-01-02T00:00:00Z'),
(19, '2022-10-03 00:00 +01:00':: timestamp_tz, '2023-10-02 00:00 Z':: timestamp_tz, '2022-10-03T00:00:00+01:00', '2023-10-02T00:00:00Z'),
(20, '2022-10-09 00:00 Z':: timestamp_tz, '2022-11-02 00:00 +01:00':: timestamp_tz, '2022-10-09T00:00:00Z', '2022-11-02T00:00:00+01:00'),
(21, '2022-10-09 00:00 Z':: timestamp_tz, '2023-01-02 00:00 +01:00':: timestamp_tz, '2022-10-09T00:00:00Z', '2023-01-02T00:00:00+01:00'),
(22, '2022-10-09 00:00 Z':: timestamp_tz, '2023-10-02 00:00 +01:00':: timestamp_tz, '2022-10-09T00:00:00Z', '2023-10-02T00:00:00+01:00'),
(23, '2022-10-09 00:00 +01:00':: timestamp_tz, '2022-10-09 00:00 Z':: timestamp_tz, '2022-10-09T00:00:00+01:00', '2022-10-09T00:00:00Z'),
(24, '2022-10-09 00:00 +01:00':: timestamp_tz, '2022-11-02 00:00 Z':: timestamp_tz, '2022-10-09T00:00:00+01:00', '2022-11-02T00:00:00Z'),
(25, '2022-10-09 00:00 +01:00':: timestamp_tz, '2023-01-02 00:00 Z':: timestamp_tz, '2022-10-09T00:00:00+01:00', '2023-01-02T00:00:00Z'),
(26, '2022-10-09 00:00 +01:00':: timestamp_tz, '2023-10-02 00:00 Z':: timestamp_tz, '2022-10-09T00:00:00+01:00', '2023-10-02T00:00:00Z'),
(27, '2022-11-02 00:00 Z':: timestamp_tz, '2023-01-02 00:00 +01:00':: timestamp_tz, '2022-11-02T00:00:00Z', '2023-01-02T00:00:00+01:00'),
(28, '2022-11-02 00:00 Z':: timestamp_tz, '2023-10-02 00:00 +01:00':: timestamp_tz, '2022-11-02T00:00:00Z', '2023-10-02T00:00:00+01:00'),
(29, '2022-11-02 00:00 +01:00':: timestamp_tz, '2022-11-02 00:00 Z':: timestamp_tz, '2022-11-02T00:00:00+01:00', '2022-11-02T00:00:00Z'),
(30, '2022-11-02 00:00 +01:00':: timestamp_tz, '2023-01-02 00:00 Z':: timestamp_tz, '2022-11-02T00:00:00+01:00', '2023-01-02T00:00:00Z'),
(31, '2022-11-02 00:00 +01:00':: timestamp_tz, '2023-10-02 00:00 Z':: timestamp_tz, '2022-11-02T00:00:00+01:00', '2023-10-02T00:00:00Z'),
(32, '2023-01-02 00:00 Z':: timestamp_tz, '2023-10-02 00:00 +01:00':: timestamp_tz, '2023-01-02T00:00:00Z', '2023-10-02T00:00:00+01:00'),
(33, '2023-01-02 00:00 +01:00':: timestamp_tz, '2023-01-02 00:00 Z':: timestamp_tz, '2023-01-02T00:00:00+01:00', '2023-01-02T00:00:00Z'),
(34, '2023-01-02 00:00 +01:00':: timestamp_tz, '2023-10-02 00:00 Z':: timestamp_tz, '2023-01-02T00:00:00+01:00', '2023-10-02T00:00:00Z'),
(35, '2023-10-02 00:00 +01:00':: timestamp_tz, '2023-10-02 00:00 Z':: timestamp_tz, '2023-10-02T00:00:00+01:00', '2023-10-02T00:00:00Z');

