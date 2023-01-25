SET DB_CLOSE_DELAY -1;

CREATE USER IF NOT EXISTS GUEST PASSWORD 'guest';

CREATE TABLE "OBJECTS.STUFF" (
  "ID" BIGINT AUTO_INCREMENT,
  "DOTTED.NAME" VARCHAR,
  PRIMARY KEY ("ID")
);

GRANT ALL ON "OBJECTS.STUFF" TO GUEST;

-- 3 rows
INSERT INTO "OBJECTS.STUFF" ("DOTTED.NAME")
VALUES
('toucan_cage'),
('four_loko'),
('ouija_board');
