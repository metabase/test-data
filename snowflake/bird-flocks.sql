ALTER SESSION
SET
  TIMEZONE = 'UTC';

DROP TABLE IF EXISTS "bird-flocks"."PUBLIC"."bird";

CREATE TABLE "bird-flocks"."PUBLIC"."bird" (
  "id" INTEGER AUTOINCREMENT,
  "name" TEXT,
  "flock_id" INTEGER,
  PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "bird-flocks"."PUBLIC"."flock";

CREATE TABLE "bird-flocks"."PUBLIC"."flock" (
  "id" INTEGER AUTOINCREMENT,
  "name" TEXT,
  PRIMARY KEY ("id")
);

-- 18 rows
INSERT INTO "bird-flocks"."PUBLIC"."bird" ("name", "flock_id")
VALUES
('Russell Crow', 4),
('Big Red', 5),
('Camellia Crow', NULL),
('Peter Pelican', 2),
('Geoff Goose', NULL),
('Greg Goose', 1),
('Callie Crow', 4),
('Patricia Pelican', NULL),
('Gerald Goose', 1),
('Pamela Pelican', NULL),
('Oswald Owl', NULL),
('Chicken Little', 5),
('Paul Pelican', 2),
('McNugget', 5),
('Orville Owl', 3),
('Carson Crow', 4),
('Olita Owl', NULL),
('Oliver Owl', 3);

-- 6 rows
INSERT INTO "bird-flocks"."PUBLIC"."flock" ("name")
VALUES
('Green Street Gaggle'),
('SoMa Squadron'),
('Portrero Hill Parliament'),
('Mission Street Murder'),
('Bayview Brood'),
('Fillmore Flock');

