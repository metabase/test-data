
DROP TABLE IF EXISTS "CHECKINS";

CREATE TABLE "CHECKINS" (
  "ID" BIGINT AUTO_INCREMENT,
  "TIMESTAMP" DATETIME,
  PRIMARY KEY ("ID")
);

;

GRANT ALL ON "CHECKINS" TO GUEST;

-- 30 rows
INSERT INTO "CHECKINS" ("ID", "TIMESTAMP")
VALUES
(1, dateadd('second', CAST(-13500 AS long), CAST(now() AS datetime))),
(2, dateadd('second', CAST(-12600 AS long), CAST(now() AS datetime))),
(3, dateadd('second', CAST(-11700 AS long), CAST(now() AS datetime))),
(4, dateadd('second', CAST(-10800 AS long), CAST(now() AS datetime))),
(5, dateadd('second', CAST(-9900 AS long), CAST(now() AS datetime))),
(6, dateadd('second', CAST(-9000 AS long), CAST(now() AS datetime))),
(7, dateadd('second', CAST(-8100 AS long), CAST(now() AS datetime))),
(8, dateadd('second', CAST(-7200 AS long), CAST(now() AS datetime))),
(9, dateadd('second', CAST(-6300 AS long), CAST(now() AS datetime))),
(10, dateadd('second', CAST(-5400 AS long), CAST(now() AS datetime))),
(11, dateadd('second', CAST(-4500 AS long), CAST(now() AS datetime))),
(12, dateadd('second', CAST(-3600 AS long), CAST(now() AS datetime))),
(13, dateadd('second', CAST(-2700 AS long), CAST(now() AS datetime))),
(14, dateadd('second', CAST(-1800 AS long), CAST(now() AS datetime))),
(15, dateadd('second', CAST(-900 AS long), CAST(now() AS datetime))),
(16, dateadd('second', CAST(0 AS long), CAST(now() AS datetime))),
(17, dateadd('second', CAST(900 AS long), CAST(now() AS datetime))),
(18, dateadd('second', CAST(1800 AS long), CAST(now() AS datetime))),
(19, dateadd('second', CAST(2700 AS long), CAST(now() AS datetime))),
(20, dateadd('second', CAST(3600 AS long), CAST(now() AS datetime))),
(21, dateadd('second', CAST(4500 AS long), CAST(now() AS datetime))),
(22, dateadd('second', CAST(5400 AS long), CAST(now() AS datetime))),
(23, dateadd('second', CAST(6300 AS long), CAST(now() AS datetime))),
(24, dateadd('second', CAST(7200 AS long), CAST(now() AS datetime))),
(25, dateadd('second', CAST(8100 AS long), CAST(now() AS datetime))),
(26, dateadd('second', CAST(9000 AS long), CAST(now() AS datetime))),
(27, dateadd('second', CAST(9900 AS long), CAST(now() AS datetime))),
(28, dateadd('second', CAST(10800 AS long), CAST(now() AS datetime))),
(29, dateadd('second', CAST(11700 AS long), CAST(now() AS datetime))),
(30, dateadd('second', CAST(12600 AS long), CAST(now() AS datetime)));

