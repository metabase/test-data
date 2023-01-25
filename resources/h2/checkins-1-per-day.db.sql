SET DB_CLOSE_DELAY -1;

CREATE USER IF NOT EXISTS GUEST PASSWORD 'guest';

CREATE TABLE "CHECKINS" (
  "ID" BIGINT AUTO_INCREMENT,
  "TIMESTAMP" DATETIME,
  PRIMARY KEY ("ID")
);

-- 30 rows
INSERT INTO "CHECKINS" ("ID", "TIMESTAMP")
VALUES
(1, dateadd('second', CAST(-1296000 AS long), CAST(now() AS datetime))),
(2, dateadd('second', CAST(-1209600 AS long), CAST(now() AS datetime))),
(3, dateadd('second', CAST(-1123200 AS long), CAST(now() AS datetime))),
(4, dateadd('second', CAST(-1036800 AS long), CAST(now() AS datetime))),
(5, dateadd('second', CAST(-950400 AS long), CAST(now() AS datetime))),
(6, dateadd('second', CAST(-864000 AS long), CAST(now() AS datetime))),
(7, dateadd('second', CAST(-777600 AS long), CAST(now() AS datetime))),
(8, dateadd('second', CAST(-691200 AS long), CAST(now() AS datetime))),
(9, dateadd('second', CAST(-604800 AS long), CAST(now() AS datetime))),
(10, dateadd('second', CAST(-518400 AS long), CAST(now() AS datetime))),
(11, dateadd('second', CAST(-432000 AS long), CAST(now() AS datetime))),
(12, dateadd('second', CAST(-345600 AS long), CAST(now() AS datetime))),
(13, dateadd('second', CAST(-259200 AS long), CAST(now() AS datetime))),
(14, dateadd('second', CAST(-172800 AS long), CAST(now() AS datetime))),
(15, dateadd('second', CAST(-86400 AS long), CAST(now() AS datetime))),
(16, dateadd('second', CAST(0 AS long), CAST(now() AS datetime))),
(17, dateadd('second', CAST(86400 AS long), CAST(now() AS datetime))),
(18, dateadd('second', CAST(172800 AS long), CAST(now() AS datetime))),
(19, dateadd('second', CAST(259200 AS long), CAST(now() AS datetime))),
(20, dateadd('second', CAST(345600 AS long), CAST(now() AS datetime))),
(21, dateadd('second', CAST(432000 AS long), CAST(now() AS datetime))),
(22, dateadd('second', CAST(518400 AS long), CAST(now() AS datetime))),
(23, dateadd('second', CAST(604800 AS long), CAST(now() AS datetime))),
(24, dateadd('second', CAST(691200 AS long), CAST(now() AS datetime))),
(25, dateadd('second', CAST(777600 AS long), CAST(now() AS datetime))),
(26, dateadd('second', CAST(864000 AS long), CAST(now() AS datetime))),
(27, dateadd('second', CAST(950400 AS long), CAST(now() AS datetime))),
(28, dateadd('second', CAST(1036800 AS long), CAST(now() AS datetime))),
(29, dateadd('second', CAST(1123200 AS long), CAST(now() AS datetime))),
(30, dateadd('second', CAST(1209600 AS long), CAST(now() AS datetime)));
