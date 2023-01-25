ALTER session
SET
  time_zone = 'UTC'

BEGIN EXECUTE IMMEDIATE 'DROP TABLE "CAM_157"."checkins_interval_15_checkins" CASCADE CONSTRAINTS' ⅋ EXCEPTION
WHEN OTHERS THEN IF SQLCODE ! = -942 THEN RAISE ⅋
END IF ⅋
END ⅋

CREATE TABLE "CAM_157"."checkins_interval_15_checkins" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  "timestamp" TIMESTAMP,
  PRIMARY KEY ("id")
);

-- 30 rows
INSERT INTO "CAM_157"."checkins_interval_15_checkins" ("id", "timestamp")
VALUES
(1, (CURRENT_TIMESTAMP + numtodsinterval(-225, 'second'))),
(2, (CURRENT_TIMESTAMP + numtodsinterval(-210, 'second'))),
(3, (CURRENT_TIMESTAMP + numtodsinterval(-195, 'second'))),
(4, (CURRENT_TIMESTAMP + numtodsinterval(-180, 'second'))),
(5, (CURRENT_TIMESTAMP + numtodsinterval(-165, 'second'))),
(6, (CURRENT_TIMESTAMP + numtodsinterval(-150, 'second'))),
(7, (CURRENT_TIMESTAMP + numtodsinterval(-135, 'second'))),
(8, (CURRENT_TIMESTAMP + numtodsinterval(-120, 'second'))),
(9, (CURRENT_TIMESTAMP + numtodsinterval(-105, 'second'))),
(10, (CURRENT_TIMESTAMP + numtodsinterval(-90, 'second'))),
(11, (CURRENT_TIMESTAMP + numtodsinterval(-75, 'second'))),
(12, (CURRENT_TIMESTAMP + numtodsinterval(-60, 'second'))),
(13, (CURRENT_TIMESTAMP + numtodsinterval(-45, 'second'))),
(14, (CURRENT_TIMESTAMP + numtodsinterval(-30, 'second'))),
(15, (CURRENT_TIMESTAMP + numtodsinterval(-15, 'second'))),
(16, (CURRENT_TIMESTAMP + numtodsinterval(0, 'second'))),
(17, (CURRENT_TIMESTAMP + numtodsinterval(15, 'second'))),
(18, (CURRENT_TIMESTAMP + numtodsinterval(30, 'second'))),
(19, (CURRENT_TIMESTAMP + numtodsinterval(45, 'second'))),
(20, (CURRENT_TIMESTAMP + numtodsinterval(60, 'second'))),
(21, (CURRENT_TIMESTAMP + numtodsinterval(75, 'second'))),
(22, (CURRENT_TIMESTAMP + numtodsinterval(90, 'second'))),
(23, (CURRENT_TIMESTAMP + numtodsinterval(105, 'second'))),
(24, (CURRENT_TIMESTAMP + numtodsinterval(120, 'second'))),
(25, (CURRENT_TIMESTAMP + numtodsinterval(135, 'second'))),
(26, (CURRENT_TIMESTAMP + numtodsinterval(150, 'second'))),
(27, (CURRENT_TIMESTAMP + numtodsinterval(165, 'second'))),
(28, (CURRENT_TIMESTAMP + numtodsinterval(180, 'second'))),
(29, (CURRENT_TIMESTAMP + numtodsinterval(195, 'second'))),
(30, (CURRENT_TIMESTAMP + numtodsinterval(210, 'second')));

