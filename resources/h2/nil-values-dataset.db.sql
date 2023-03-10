SET DB_CLOSE_DELAY -1;

CREATE USER IF NOT EXISTS GUEST PASSWORD 'guest';

CREATE TABLE "TBL" (
  "ID" BIGINT AUTO_INCREMENT PRIMARY KEY,
  "MYTYPE" TEXT,
  "MYFIELD" TEXT
);

GRANT ALL ON "TBL" TO GUEST;

INSERT INTO "TBL" ("MYTYPE", "MYFIELD")
VALUES
('value', 'value'),
('null', NULL),
('empty', '');
