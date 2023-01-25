SET DB_CLOSE_DELAY -1;

CREATE USER IF NOT EXISTS GUEST PASSWORD 'guest';

CREATE TABLE "CHECKINS" (
  "ID" BIGINT AUTO_INCREMENT,
  "TIMESTAMP" DATETIME,
  PRIMARY KEY ("ID")
);

GRANT ALL ON "CHECKINS" TO GUEST;

-- 30 rows
INSERT INTO "CHECKINS" ("ID", "TIMESTAMP")
VALUES
(1,  dateadd('second', -225, now())),
(2,  dateadd('second', -210, now())),
(3,  dateadd('second', -195, now())),
(4,  dateadd('second', -180, now())),
(5,  dateadd('second', -165, now())),
(6,  dateadd('second', -150, now())),
(7,  dateadd('second', -135, now())),
(8,  dateadd('second', -120, now())),
(9,  dateadd('second', -105, now())),
(10, dateadd('second', -90,  now())),
(11, dateadd('second', -75,  now())),
(12, dateadd('second', -60,  now())),
(13, dateadd('second', -45,  now())),
(14, dateadd('second', -30,  now())),
(15, dateadd('second', -15,  now())),
(16, dateadd('second', 0,    now())),
(17, dateadd('second', 15,   now())),
(18, dateadd('second', 30,   now())),
(19, dateadd('second', 45,   now())),
(20, dateadd('second', 60,   now())),
(21, dateadd('second', 75,   now())),
(22, dateadd('second', 90,   now())),
(23, dateadd('second', 105,  now())),
(24, dateadd('second', 120,  now())),
(25, dateadd('second', 135,  now())),
(26, dateadd('second', 150,  now())),
(27, dateadd('second', 165,  now())),
(28, dateadd('second', 180,  now())),
(29, dateadd('second', 195,  now())),
(30, dateadd('second', 210,  now()));
