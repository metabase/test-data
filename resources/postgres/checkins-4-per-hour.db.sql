SET
  SESSION TIMEZONE TO 'UTC';

DROP TABLE IF EXISTS "checkins";

CREATE TABLE "checkins" ("id" SERIAL, "timestamp" TIMESTAMP, PRIMARY KEY ("id"));

-- 30 rows
INSERT INTO "checkins" ("id", "timestamp")
VALUES
(1, (now() + (INTERVAL '-13500 second'))),
(2, (now() + (INTERVAL '-12600 second'))),
(3, (now() + (INTERVAL '-11700 second'))),
(4, (now() + (INTERVAL '-10800 second'))),
(5, (now() + (INTERVAL '-9900 second'))),
(6, (now() + (INTERVAL '-9000 second'))),
(7, (now() + (INTERVAL '-8100 second'))),
(8, (now() + (INTERVAL '-7200 second'))),
(9, (now() + (INTERVAL '-6300 second'))),
(10, (now() + (INTERVAL '-5400 second'))),
(11, (now() + (INTERVAL '-4500 second'))),
(12, (now() + (INTERVAL '-3600 second'))),
(13, (now() + (INTERVAL '-2700 second'))),
(14, (now() + (INTERVAL '-1800 second'))),
(15, (now() + (INTERVAL '-900 second'))),
(16, (now() + (INTERVAL '0 second'))),
(17, (now() + (INTERVAL '900 second'))),
(18, (now() + (INTERVAL '1800 second'))),
(19, (now() + (INTERVAL '2700 second'))),
(20, (now() + (INTERVAL '3600 second'))),
(21, (now() + (INTERVAL '4500 second'))),
(22, (now() + (INTERVAL '5400 second'))),
(23, (now() + (INTERVAL '6300 second'))),
(24, (now() + (INTERVAL '7200 second'))),
(25, (now() + (INTERVAL '8100 second'))),
(26, (now() + (INTERVAL '9000 second'))),
(27, (now() + (INTERVAL '9900 second'))),
(28, (now() + (INTERVAL '10800 second'))),
(29, (now() + (INTERVAL '11700 second'))),
(30, (now() + (INTERVAL '12600 second')));

