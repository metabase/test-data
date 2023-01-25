ALTER session
SET
  time_zone = 'UTC'

BEGIN EXECUTE IMMEDIATE 'DROP TABLE "CAM_157"."checkins_interval_900_checkins" CASCADE CONSTRAINTS' ⅋ EXCEPTION
WHEN OTHERS THEN IF SQLCODE ! = -942 THEN RAISE ⅋
END IF ⅋
END ⅋

CREATE TABLE "CAM_157"."checkins_interval_900_checkins" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  "timestamp" TIMESTAMP,
  PRIMARY KEY ("id")
);

-- 30 rows
INSERT INTO "CAM_157"."checkins_interval_900_checkins" ("id", "timestamp")
VALUES
(1, (CURRENT_TIMESTAMP + numtodsinterval(-13500, 'second'))),
(2, (CURRENT_TIMESTAMP + numtodsinterval(-12600, 'second'))),
(3, (CURRENT_TIMESTAMP + numtodsinterval(-11700, 'second'))),
(4, (CURRENT_TIMESTAMP + numtodsinterval(-10800, 'second'))),
(5, (CURRENT_TIMESTAMP + numtodsinterval(-9900, 'second'))),
(6, (CURRENT_TIMESTAMP + numtodsinterval(-9000, 'second'))),
(7, (CURRENT_TIMESTAMP + numtodsinterval(-8100, 'second'))),
(8, (CURRENT_TIMESTAMP + numtodsinterval(-7200, 'second'))),
(9, (CURRENT_TIMESTAMP + numtodsinterval(-6300, 'second'))),
(10, (CURRENT_TIMESTAMP + numtodsinterval(-5400, 'second'))),
(11, (CURRENT_TIMESTAMP + numtodsinterval(-4500, 'second'))),
(12, (CURRENT_TIMESTAMP + numtodsinterval(-3600, 'second'))),
(13, (CURRENT_TIMESTAMP + numtodsinterval(-2700, 'second'))),
(14, (CURRENT_TIMESTAMP + numtodsinterval(-1800, 'second'))),
(15, (CURRENT_TIMESTAMP + numtodsinterval(-900, 'second'))),
(16, (CURRENT_TIMESTAMP + numtodsinterval(0, 'second'))),
(17, (CURRENT_TIMESTAMP + numtodsinterval(900, 'second'))),
(18, (CURRENT_TIMESTAMP + numtodsinterval(1800, 'second'))),
(19, (CURRENT_TIMESTAMP + numtodsinterval(2700, 'second'))),
(20, (CURRENT_TIMESTAMP + numtodsinterval(3600, 'second'))),
(21, (CURRENT_TIMESTAMP + numtodsinterval(4500, 'second'))),
(22, (CURRENT_TIMESTAMP + numtodsinterval(5400, 'second'))),
(23, (CURRENT_TIMESTAMP + numtodsinterval(6300, 'second'))),
(24, (CURRENT_TIMESTAMP + numtodsinterval(7200, 'second'))),
(25, (CURRENT_TIMESTAMP + numtodsinterval(8100, 'second'))),
(26, (CURRENT_TIMESTAMP + numtodsinterval(9000, 'second'))),
(27, (CURRENT_TIMESTAMP + numtodsinterval(9900, 'second'))),
(28, (CURRENT_TIMESTAMP + numtodsinterval(10800, 'second'))),
(29, (CURRENT_TIMESTAMP + numtodsinterval(11700, 'second'))),
(30, (CURRENT_TIMESTAMP + numtodsinterval(12600, 'second')));

