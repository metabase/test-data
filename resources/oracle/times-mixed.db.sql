ALTER session
SET
  time_zone = 'UTC'

BEGIN EXECUTE IMMEDIATE 'DROP TABLE "CAM_157"."times_mixed_times" CASCADE CONSTRAINTS' ⅋ EXCEPTION
WHEN OTHERS THEN IF SQLCODE ! = -942 THEN RAISE ⅋
END IF ⅋
END ⅋

CREATE TABLE "CAM_157"."times_mixed_times" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  "index" INTEGER,
  "dt" TIMESTAMP,
  "dt_tz" TIMESTAMP WITH TIME ZONE,
  "d" DATE,
  "as_dt" VARCHAR2(4000),
  "as_d" VARCHAR2(4000),
  PRIMARY KEY ("id")
);

BEGIN EXECUTE IMMEDIATE 'DROP TABLE "CAM_157"."times_mixed_weeks" CASCADE CONSTRAINTS' ⅋ EXCEPTION
WHEN OTHERS THEN IF SQLCODE ! = -942 THEN RAISE ⅋
END IF ⅋
END ⅋

CREATE TABLE "CAM_157"."times_mixed_weeks" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
  "index" INTEGER,
  "description" VARCHAR2(4000),
  "d" DATE,
  PRIMARY KEY ("id")
);

-- 4 rows
INSERT INTO "CAM_157"."times_mixed_times" ("id", "index", "dt", "dt_tz", "d", "as_dt", "as_d")
VALUES
(1, 1, timestamp '2004-03-19 09:19:09.000', timestamp '2004-03-19 09:19:09.000 Asia/Ho_Chi_Minh', date '2004-03-19', '2004-03-19 09:19:09', '2004-03-19'),
(2, 2, timestamp '2008-06-20 10:20:10.000', timestamp '2008-06-20 10:20:10.000 Asia/Ho_Chi_Minh', date '2008-06-20', '2008-06-20 10:20:10', '2008-06-20'),
(3, 3, timestamp '2012-11-21 11:21:11.000', timestamp '2012-11-21 11:21:11.000 Asia/Ho_Chi_Minh', date '2012-11-21', '2012-11-21 11:21:11', '2012-11-21'),
(4, 4, timestamp '2012-11-21 11:21:11.000', timestamp '2012-11-21 11:21:11.000 Asia/Ho_Chi_Minh', date '2012-11-21', '2012-11-21 11:21:11', '2012-11-21');

-- 10 rows
INSERT INTO "CAM_157"."times_mixed_weeks" ("id", "index", "description", "d")
VALUES
(1, 1, '1st saturday', date '2000-01-01'),
(2, 2, '1st sunday', date '2000-01-02'),
(3, 3, '1st monday', date '2000-01-03'),
(4, 4, '1st wednesday', date '2000-01-04'),
(5, 5, '1st tuesday', date '2000-01-05'),
(6, 6, '1st thursday', date '2000-01-06'),
(7, 7, '1st friday', date '2000-01-07'),
(8, 8, '2nd saturday', date '2000-01-08'),
(9, 9, '2nd sunday', date '2000-01-09'),
(10, 10, '2005 saturday', date '2005-01-01');

