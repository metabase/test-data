
DROP TABLE IF EXISTS "test-data"."default"."test_data_users"

CREATE TABLE "test-data"."default"."test_data_users" AS
SELECT
  *
FROM
  (
    VALUES
      (
        1,
        cast('' AS VARCHAR),
        current_timestamp,
        cast('' AS VARCHAR)
      )
  ) AS t ("id", "name", "last_login", "password")
WHERE
  1 = 0

DROP TABLE IF EXISTS "test-data"."default"."test_data_categories"

CREATE TABLE "test-data"."default"."test_data_categories" AS
SELECT
  *
FROM
  (
    VALUES
      (1, cast('' AS VARCHAR))
  ) AS t ("id", "name")
WHERE
  1 = 0

DROP TABLE IF EXISTS "test-data"."default"."test_data_venues"

CREATE TABLE "test-data"."default"."test_data_venues" AS
SELECT
  *
FROM
  (
    VALUES
      (1, cast('' AS VARCHAR), 1, 1.0, 1.0, 1)
  ) AS t (
    "id",
    "name",
    "category_id",
    "latitude",
    "longitude",
    "price"
  )
WHERE
  1 = 0

DROP TABLE IF EXISTS "test-data"."default"."test_data_checkins"

CREATE TABLE "test-data"."default"."test_data_checkins" AS
SELECT
  *
FROM
  (
    VALUES
      (1, current_timestamp, 1, 1)
  ) AS t ("id", "date", "user_id", "venue_id")
WHERE
  1 = 0

ALTER TABLE
  "test-data"."default"."test_data_venues"
ADD
  CONSTRAINT "tegory_id_categories_927642602" FOREIGN KEY ("category_id") REFERENCES "test-data"."default"."test_data_categories" ("id");

ALTER TABLE
  "test-data"."default"."test_data_checkins"
ADD
  CONSTRAINT "ckins_user_id_users_-815717481" FOREIGN KEY ("user_id") REFERENCES "test-data"."default"."test_data_users" ("id");

ALTER TABLE
  "test-data"."default"."test_data_checkins"
ADD
  CONSTRAINT "ns_venue_id_venues_-1854903846" FOREIGN KEY ("venue_id") REFERENCES "test-data"."default"."test_data_venues" ("id");

-- 15 rows
INSERT INTO "test-data"."default"."test_data_users" ("name", "last_login", "password")
VALUES
('Plato Yeshua', timestamp '2014-04-01 08:30:00.000', '4be68cda-6fd5-4ba7-944e-2b475600bda5'),
('Felipinho Asklepios', timestamp '2014-12-05 15:15:00.000', '5bb19ad9-f3f8-421f-9750-7d398e38428d'),
('Kaneonuskatew Eiran', timestamp '2014-11-06 16:15:00.000', 'a329ccfe-b99c-42eb-9c93-cb9adc3eb1ab'),
('Simcha Yan', timestamp '2014-01-01 08:30:00.000', 'a61f97c6-4484-4a63-b37e-b5e58bfa2ecb'),
('Quentin Sören', timestamp '2014-10-03 17:30:00.000', '10a0fea8-9bb4-48fe-a336-4d9cbbd78aa0'),
('Shad Ferdynand', timestamp '2014-08-02 12:30:00.000', 'd35c9d78-f9cf-4f52-b1cc-cb9078eebdcb'),
('Conchúr Tihomir', timestamp '2014-08-02 09:30:00.000', '900335ad-e03b-4259-abc7-76aac21cedca'),
('Szymon Theutrich', timestamp '2014-02-01 10:15:00.000', 'd6c47a54-9d88-4c4a-8054-ace76764ed0d'),
('Nils Gotam', timestamp '2014-04-03 09:30:00.000', 'b085040c-7aa4-4e96-8c8f-420b2c99c920'),
('Frans Hevel', timestamp '2014-07-03 19:30:00.000', 'b7a43e91-9fb9-4fe9-ab6f-ea51ab0f94e4'),
('Spiros Teofil', timestamp '2014-11-01 07:00:00.000', '62b9602c-27b8-44ea-adbd-2748f26537af'),
('Kfir Caj', timestamp '2014-07-03 01:30:00.000', 'dfe21df3-f364-479d-a5e7-04bc5d85ad2b'),
('Dwight Gresham', timestamp '2014-08-01 10:30:00.000', '75a1ebf1-cae7-4a50-8743-32d97500f2cf'),
('Broen Olujimi', timestamp '2014-10-03 13:45:00.000', 'f9b65c74-9f91-4cfd-9248-94a53af82866'),
('Rüstem Hebel', timestamp '2014-08-01 12:45:00.000', '02ad6b15-54b0-4491-bf0f-d781b0a2c4f5');

-- 75 rows
INSERT INTO "test-data"."default"."test_data_categories" ("name")
VALUES
('African'),
('American'),
('Artisan'),
('Asian'),
('BBQ'),
('Bakery'),
('Bar'),
('Beer Garden'),
('Breakfast / Brunch'),
('Brewery'),
('Burger'),
('Café'),
('Café Sweets'),
('Caribbean'),
('Chinese'),
('Coffee Shop'),
('Comedy Club'),
('Deli'),
('Dim Sum'),
('Diner'),
('Donut Shop'),
('English'),
('Entertainment'),
('Fashion'),
('Fast Food'),
('Food Truck'),
('French'),
('Gay Bar'),
('German'),
('Gluten-free'),
('Greek'),
('Grocery'),
('Health & Beauty'),
('Home'),
('Hostel'),
('Hot Dog'),
('Hotel'),
('Indian'),
('Italian'),
('Japanese'),
('Jewish'),
('Juice Bar'),
('Karaoke'),
('Korean'),
('Landmark'),
('Late Dining'),
('Latin American'),
('Lounge'),
('Mediterannian'),
('Mexican'),
('Middle Eastern'),
('Molecular Gastronomy'),
('Moroccan'),
('Museum'),
('Nightclub'),
('Nightlife'),
('Outdoors'),
('Pizza'),
('Ramen'),
('Restaurant General'),
('Scandinavian'),
('Seafood'),
('South Pacific'),
('Southern'),
('Spanish'),
('Stadium'),
('Steakhouse'),
('Strip Club'),
('Tapas'),
('Tea Room'),
('Thai'),
('Unknown'),
('Vegetarian / Vegan'),
('Wine Bar'),
('Winery');

-- 100 rows
INSERT INTO "test-data"."default"."test_data_venues" ("name", "category_id", "latitude", "longitude", "price")
VALUES
('Red Medicine', 4, 10.0646, -165.374, 3),
('Stout Burgers & Beers', 11, 34.0996, -118.329, 2),
('The Apple Pan', 11, 34.0406, -118.428, 2),
('Wurstküche', 29, 33.9997, -118.465, 2),
('Brite Spot Family Restaurant', 20, 34.0778, -118.261, 2),
('The 101 Coffee Shop', 20, 34.1054, -118.324, 2),
('Don Day Korean Restaurant', 44, 34.0689, -118.305, 2),
('25°', 11, 34.1015, -118.342, 2),
('Krua Siri', 71, 34.1018, -118.301, 1),
('Fred 62', 20, 34.1046, -118.292, 2),
('The Gorbals', 2, 34.0474, -118.25, 2),
('The Misfit Restaurant + Bar', 2, 34.0154, -118.497, 2),
('Pellicola Pizzeria', 58, 34.0451, -118.257, 1),
('Jones Hollywood', 7, 34.0908, -118.346, 3),
('BCD Tofu House', 44, 34.0619, -118.303, 2),
('Pacific Dining Car - Santa Monica', 67, 34.0367, -118.476, 4),
('Ruen Pair Thai Restaurant', 71, 34.1021, -118.306, 2),
('The Original Pantry', 20, 34.0464, -118.263, 2),
('800 Degrees Neapolitan Pizzeria', 58, 34.0597, -118.444, 2),
('Greenblatt''s Delicatessen & Fine Wine Shop', 3, 34.0981, -118.365, 2),
('PizzaHacker', 58, 37.7441, -122.421, 2),
('Gordo Taqueria', 50, 37.7822, -122.484, 1),
('Taqueria Los Coyotes', 50, 37.765, -122.42, 2),
('La Tortilla', 50, 37.7612, -122.435, 1),
('Garaje', 50, 37.7818, -122.396, 2),
('Taqueria San Francisco', 50, 37.753, -122.408, 1),
('Tout Sweet Patisserie', 13, 37.7873, -122.407, 2),
('Liguria Bakery', 6, 37.8014, -122.409, 1),
('20th Century Cafe', 12, 37.775, -122.423, 2),
('Noe Valley Bakery', 6, 37.7513, -122.434, 2),
('Bludso''s BBQ', 5, 33.8894, -118.207, 2),
('Boneyard Bistro', 5, 34.1477, -118.428, 3),
('My Brother''s Bar-B-Q', 5, 34.167, -118.595, 2),
('Beachwood BBQ & Brewing', 10, 33.7701, -118.191, 2),
('Smoke City Market', 5, 34.1661, -118.448, 1),
('Handy Market', 3, 34.1716, -118.335, 2),
('bigmista''s barbecue', 5, 34.118, -118.26, 2),
('Zeke''s Smokehouse', 5, 34.2053, -118.226, 2),
('Baby Blues BBQ', 5, 34.0003, -118.465, 2),
('Dear Mom', 46, 37.7655, -122.413, 2),
('Cheese Steak Shop', 18, 37.7855, -122.44, 1),
('Little Star Pizza', 58, 37.7665, -122.422, 2),
('Marnee Thai', 71, 37.7634, -122.482, 2),
('In-N-Out Burger', 11, 37.8078, -122.418, 1),
('Tu Lan Restaurant', 4, 37.7821, -122.41, 1),
('Shanghai Dumpling King', 19, 37.7317, -122.451, 2),
('Marlowe', 2, 37.7767, -122.396, 3),
('The Residence', 7, 37.7677, -122.429, 2),
('Hotel Biron', 74, 37.7735, -122.422, 3),
('Two Sisters Bar & Books', 48, 37.7765, -122.426, 2),
('Empress of China', 15, 37.7949, -122.406, 3),
('Cole''s', 7, 34.0448, -118.25, 2),
('Tam O''Shanter', 18, 34.1254, -118.264, 3),
('Yamashiro Hollywood', 2, 34.1057, -118.342, 3),
('Dal Rae Restaurant', 67, 33.983, -118.096, 4),
('Philippe the Original', 18, 34.0597, -118.237, 1),
('Musso & Frank Grill', 2, 34.1018, -118.335, 3),
('Taylor''s Prime Steak House', 67, 34.0579, -118.302, 3),
('Pacific Dining Car', 2, 34.0555, -118.266, 3),
('Polo Lounge', 48, 34.0815, -118.414, 3),
('Lawry''s The Prime Rib', 67, 34.0677, -118.376, 4),
('Hot Sauce and Panko', 64, 37.7825, -122.476, 1),
('Giordano Bros.', 18, 37.765, -122.422, 1),
('Festa', 43, 37.7852, -122.432, 2),
('Slate', 48, 37.765, -122.418, 2),
('Playground', 43, 37.7858, -122.43, 2),
('Mint Karaoke Lounge', 43, 37.7702, -122.426, 2),
('Dimples', 43, 37.7856, -122.43, 1),
('The Virgil', 48, 34.091, -118.287, 2),
('The Drawing Room', 7, 34.1037, -118.287, 1),
('Frolic Room', 7, 34.1016, -118.326, 1),
('The Daily Pint', 7, 34.0211, -118.466, 2),
('Pineapple Hill Saloon & Grill', 7, 34.1525, -118.448, 2),
('Chez Jay', 2, 34.0104, -118.493, 2),
('Geido', 40, 40.6778, -73.9729, 2),
('Beyond Sushi', 40, 40.7328, -73.9861, 2),
('Sushi Nakazawa', 40, 40.7318, -74.0045, 4),
('Soto', 40, 40.7321, -74.0006, 2),
('Sushi Yasuda', 40, 40.7514, -73.9736, 4),
('Blue Ribbon Sushi', 40, 40.7262, -74.0026, 3),
('Tanoshi Sushi & Sake Bar', 40, 40.7677, -73.9533, 4),
('Bozu', 40, 40.7129, -73.9576, 2),
('Sushi Yasaka', 40, 40.7794, -73.9835, 2),
('Spitz Eagle Rock', 49, 34.1411, -118.221, 2),
('Cha Cha Chicken', 14, 34.0071, -118.49, 1),
('Yuca''s Taqueria', 50, 34.1092, -118.287, 1),
('The Gumbo Pot', 64, 34.072, -118.361, 2),
('Kinaree Thai Bistro', 71, 34.094, -118.344, 1),
('Tacos Villa Corona', 50, 34.1177, -118.261, 1),
('Señor Fish', 50, 34.0489, -118.238, 2),
('Manuel''s Original El Tepeyac Cafe', 50, 34.0478, -118.198, 2),
('Tito''s Tacos', 50, 34.0082, -118.415, 1),
('33 Taps', 7, 34.1018, -118.326, 2),
('Ye Rustic Inn', 7, 34.1044, -118.288, 1),
('Rush Street', 2, 34.023, -118.395, 2),
('Busby''s West', 48, 34.0372, -118.469, 2),
('Barney''s Beanery', 46, 34.0908, -118.375, 2),
('Lucky Baldwin''s Pub', 7, 34.1454, -118.149, 2),
('Golden Road Brewing', 10, 34.1505, -118.274, 2),
('Mohawk Bend', 46, 34.0777, -118.265, 2);

-- 1000 rows
INSERT INTO "test-data"."default"."test_data_checkins" ("date", "user_id", "venue_id")
VALUES
(date '2014-04-07', 5, 12),
(date '2014-09-18', 1, 31),
(date '2014-09-15', 8, 56),
(date '2014-03-11', 5, 4),
(date '2013-05-05', 3, 49),
(date '2015-07-04', 3, 35),
(date '2014-04-11', 12, 6),
(date '2014-05-13', 11, 16),
(date '2014-05-26', 3, 79),
(date '2015-08-22', 3, 55),
(date '2013-03-25', 15, 23),
(date '2014-11-16', 5, 25),
(date '2014-05-17', 6, 80),
(date '2015-09-07', 9, 93),
(date '2015-02-19', 5, 61),
(date '2015-02-19', 11, 34),
(date '2014-08-31', 8, 69),
(date '2015-08-05', 3, 27),
(date '2014-07-31', 11, 70),
(date '2014-09-14', 11, 81),
(date '2015-12-10', 4, 73),
(date '2015-02-17', 8, 18),
(date '2014-04-02', 8, 71),
(date '2014-04-04', 12, 45),
(date '2014-07-05', 12, 31),
(date '2014-05-17', 8, 67),
(date '2015-02-15', 11, 57),
(date '2015-05-02', 10, 100),
(date '2014-09-27', 15, 7),
(date '2014-07-20', 5, 48),
(date '2013-05-12', 8, 27),
(date '2014-02-17', 14, 31),
(date '2015-10-07', 5, 6),
(date '2014-09-26', 14, 28),
(date '2014-07-19', 10, 56),
(date '2015-09-29', 8, 19),
(date '2015-11-19', 4, 48),
(date '2015-11-15', 10, 11),
(date '2015-04-30', 11, 65),
(date '2014-09-14', 6, 6),
(date '2013-07-05', 10, 62),
(date '2015-03-05', 11, 88),
(date '2015-11-30', 5, 51),
(date '2013-11-19', 2, 61),
(date '2013-08-24', 9, 59),
(date '2015-06-26', 9, 66),
(date '2014-07-19', 14, 67),
(date '2015-07-18', 12, 15),
(date '2015-04-07', 5, 12),
(date '2013-08-02', 8, 13),
(date '2014-06-28', 13, 30),
(date '2014-10-13', 4, 8),
(date '2014-05-05', 6, 65),
(date '2015-05-08', 4, 93),
(date '2014-12-22', 15, 14),
(date '2014-07-24', 3, 99),
(date '2015-03-06', 2, 15),
(date '2015-11-09', 4, 40),
(date '2014-06-11', 13, 24),
(date '2014-03-24', 10, 69),
(date '2013-11-01', 3, 15),
(date '2013-05-28', 10, 3),
(date '2015-12-24', 5, 15),
(date '2014-08-18', 6, 34),
(date '2014-04-13', 7, 29),
(date '2015-02-21', 6, 86),
(date '2014-05-25', 3, 28),
(date '2014-09-16', 5, 29),
(date '2014-03-14', 8, 85),
(date '2014-11-20', 11, 65),
(date '2014-01-07', 14, 93),
(date '2015-04-18', 1, 1),
(date '2013-08-07', 11, 75),
(date '2015-11-14', 11, 91),
(date '2015-09-11', 7, 97),
(date '2014-03-28', 9, 9),
(date '2014-03-03', 14, 33),
(date '2015-03-02', 4, 3),
(date '2014-05-07', 8, 19),
(date '2013-12-27', 1, 99),
(date '2013-07-23', 7, 18),
(date '2014-06-28', 13, 30),
(date '2015-02-19', 11, 17),
(date '2015-12-02', 12, 58),
(date '2014-11-15', 13, 82),
(date '2015-07-01', 8, 69),
(date '2014-08-18', 14, 95),
(date '2015-05-29', 6, 75),
(date '2013-10-29', 14, 83),
(date '2014-02-10', 7, 66),
(date '2015-04-09', 11, 73),
(date '2014-08-02', 4, 93),
(date '2013-07-02', 2, 18),
(date '2015-02-09', 10, 17),
(date '2013-10-27', 8, 60),
(date '2014-02-11', 13, 24),
(date '2014-11-25', 2, 71),
(date '2014-01-04', 11, 29),
(date '2015-11-27', 13, 91),
(date '2014-07-26', 9, 21),
(date '2015-09-04', 11, 99),
(date '2013-12-02', 5, 44),
(date '2015-04-10', 8, 51),
(date '2015-09-26', 8, 9),
(date '2014-12-01', 11, 19),
(date '2014-02-10', 2, 38),
(date '2014-07-14', 10, 12),
(date '2013-12-15', 10, 30),
(date '2013-03-16', 8, 33),
(date '2015-09-17', 9, 49),
(date '2013-05-19', 6, 38),
(date '2014-03-12', 15, 93),
(date '2013-01-27', 2, 36),
(date '2015-09-17', 7, 98),
(date '2015-09-18', 4, 6),
(date '2013-09-16', 6, 34),
(date '2014-02-20', 11, 73),
(date '2014-07-05', 14, 46),
(date '2014-10-18', 1, 44),
(date '2013-12-22', 10, 83),
(date '2014-11-05', 3, 21),
(date '2014-12-19', 12, 57),
(date '2015-07-25', 10, 77),
(date '2013-08-05', 10, 97),
(date '2015-04-16', 14, 8),
(date '2015-09-11', 12, 13),
(date '2015-10-29', 15, 81),
(date '2014-08-18', 13, 17),
(date '2014-08-25', 15, 2),
(date '2014-08-11', 8, 74),
(date '2013-02-13', 7, 90),
(date '2014-08-26', 4, 84),
(date '2014-01-09', 10, 87),
(date '2013-08-21', 8, 88),
(date '2015-12-26', 6, 85),
(date '2014-05-21', 8, 62),
(date '2015-02-15', 4, 97),
(date '2014-02-11', 4, 65),
(date '2015-10-08', 9, 1),
(date '2014-10-10', 13, 96),
(date '2015-11-22', 10, 83),
(date '2013-07-24', 15, 24),
(date '2014-09-14', 10, 38),
(date '2015-11-13', 12, 3),
(date '2014-10-13', 4, 78),
(date '2014-07-17', 14, 12),
(date '2014-05-31', 3, 18),
(date '2013-10-19', 11, 10),
(date '2013-03-13', 11, 81),
(date '2014-11-21', 5, 61),
(date '2014-12-17', 13, 81),
(date '2014-09-04', 13, 24),
(date '2013-02-21', 8, 54),
(date '2014-07-08', 10, 42),
(date '2014-09-23', 7, 97),
(date '2013-03-08', 3, 14),
(date '2014-01-31', 12, 58),
(date '2015-09-04', 11, 100),
(date '2014-03-06', 8, 90),
(date '2015-05-05', 12, 20),
(date '2014-06-30', 3, 47),
(date '2015-01-04', 5, 44),
(date '2013-09-10', 1, 47),
(date '2015-05-22', 7, 11),
(date '2013-12-29', 15, 87),
(date '2014-07-17', 2, 66),
(date '2014-07-09', 2, 52),
(date '2015-06-29', 11, 3),
(date '2013-09-16', 9, 12),
(date '2014-07-17', 2, 39),
(date '2014-03-13', 11, 3),
(date '2015-03-04', 10, 47),
(date '2015-08-21', 15, 78),
(date '2014-04-19', 12, 3),
(date '2014-11-07', 11, 45),
(date '2013-05-03', 2, 75),
(date '2013-03-08', 10, 9),
(date '2013-10-04', 2, 51),
(date '2014-07-10', 4, 4),
(date '2014-07-16', 8, 57),
(date '2014-08-15', 8, 38),
(date '2014-01-06', 5, 31),
(date '2015-05-27', 3, 54),
(date '2015-07-05', 10, 84),
(date '2013-03-01', 5, 54),
(date '2015-08-06', 3, 43),
(date '2014-11-09', 8, 70),
(date '2014-07-30', 2, 59),
(date '2015-01-14', 11, 18),
(date '2013-06-30', 9, 75),
(date '2015-08-01', 13, 41),
(date '2014-02-06', 7, 87),
(date '2013-03-19', 6, 91),
(date '2013-06-23', 7, 90),
(date '2014-04-11', 8, 61),
(date '2014-10-28', 5, 35),
(date '2014-06-09', 2, 82),
(date '2013-10-23', 9, 35),
(date '2014-09-28', 6, 52),
(date '2015-09-04', 6, 96),
(date '2015-09-18', 11, 59),
(date '2015-08-09', 12, 34),
(date '2015-04-08', 10, 80),
(date '2015-03-01', 4, 78),
(date '2015-09-01', 6, 4),
(date '2014-07-07', 4, 35),
(date '2013-06-23', 13, 50),
(date '2014-03-17', 11, 69),
(date '2013-03-15', 10, 62),
(date '2015-03-27', 13, 31),
(date '2014-10-02', 13, 42),
(date '2013-05-14', 14, 86),
(date '2014-08-13', 4, 83),
(date '2015-04-18', 9, 21),
(date '2014-06-15', 14, 90),
(date '2015-05-05', 12, 65),
(date '2013-03-08', 7, 57),
(date '2014-09-06', 12, 70),
(date '2014-02-09', 11, 16),
(date '2013-10-12', 7, 38),
(date '2014-03-09', 2, 40),
(date '2015-06-22', 8, 52),
(date '2013-01-22', 7, 84),
(date '2014-08-20', 9, 4),
(date '2014-03-04', 2, 4),
(date '2014-02-03', 8, 56),
(date '2013-10-29', 6, 23),
(date '2013-10-02', 7, 87),
(date '2014-02-14', 5, 28),
(date '2013-09-08', 5, 19),
(date '2014-06-30', 2, 13),
(date '2013-07-25', 12, 65),
(date '2015-11-06', 4, 73),
(date '2013-07-14', 7, 56),
(date '2014-03-09', 1, 46),
(date '2013-07-10', 13, 58),
(date '2013-04-12', 4, 68),
(date '2014-03-09', 14, 86),
(date '2014-11-22', 7, 89),
(date '2014-04-13', 4, 42),
(date '2014-10-19', 13, 83),
(date '2014-07-07', 10, 66),
(date '2013-08-19', 11, 69),
(date '2014-11-28', 2, 18),
(date '2015-08-16', 12, 7),
(date '2014-03-20', 7, 45),
(date '2014-10-09', 8, 85),
(date '2014-05-16', 13, 27),
(date '2014-08-24', 8, 6),
(date '2013-04-11', 9, 52),
(date '2015-02-26', 2, 75),
(date '2014-05-29', 11, 65),
(date '2013-06-03', 7, 30),
(date '2013-06-26', 11, 14),
(date '2014-11-09', 11, 61),
(date '2013-06-27', 8, 81),
(date '2014-05-07', 10, 92),
(date '2014-01-26', 3, 52),
(date '2014-11-14', 5, 56),
(date '2014-04-02', 11, 75),
(date '2014-10-22', 9, 13),
(date '2015-05-18', 4, 25),
(date '2015-05-04', 10, 70),
(date '2014-06-21', 2, 48),
(date '2014-03-28', 6, 78),
(date '2014-10-24', 12, 68),
(date '2014-02-26', 10, 8),
(date '2015-10-12', 5, 63),
(date '2015-08-06', 14, 66),
(date '2014-05-14', 2, 3),
(date '2014-04-27', 3, 36),
(date '2015-04-24', 11, 71),
(date '2015-03-02', 1, 85),
(date '2015-06-22', 13, 68),
(date '2014-09-25', 5, 34),
(date '2014-07-29', 2, 75),
(date '2014-10-03', 7, 13),
(date '2014-01-10', 12, 86),
(date '2015-07-17', 13, 100),
(date '2014-10-15', 8, 59),
(date '2014-05-17', 15, 27),
(date '2013-10-11', 13, 83),
(date '2014-06-03', 2, 68),
(date '2013-04-08', 10, 23),
(date '2013-01-10', 12, 17),
(date '2014-05-01', 8, 89),
(date '2013-06-12', 4, 11),
(date '2015-05-22', 3, 97),
(date '2013-10-19', 14, 77),
(date '2014-10-10', 10, 69),
(date '2014-11-11', 13, 79),
(date '2014-07-22', 5, 95),
(date '2015-08-26', 14, 33),
(date '2014-07-10', 2, 75),
(date '2014-03-01', 7, 97),
(date '2014-08-04', 6, 88),
(date '2013-11-16', 12, 73),
(date '2013-05-21', 14, 61),
(date '2015-03-07', 9, 43),
(date '2013-08-20', 4, 44),
(date '2015-07-18', 15, 61),
(date '2014-09-29', 11, 98),
(date '2013-08-02', 11, 32),
(date '2014-12-06', 3, 94),
(date '2015-08-20', 4, 48),
(date '2014-07-21', 11, 59),
(date '2014-06-05', 9, 77),
(date '2015-04-23', 7, 10),
(date '2013-04-01', 7, 17),
(date '2015-02-13', 9, 45),
(date '2014-12-23', 3, 2),
(date '2014-12-11', 9, 85),
(date '2015-04-24', 6, 22),
(date '2013-06-11', 12, 96),
(date '2014-06-09', 1, 78),
(date '2014-02-10', 13, 29),
(date '2013-01-19', 3, 54),
(date '2014-08-30', 11, 60),
(date '2013-11-27', 2, 16),
(date '2014-05-14', 9, 41),
(date '2014-01-26', 10, 98),
(date '2015-07-01', 13, 98),
(date '2015-10-04', 12, 4),
(date '2014-03-14', 1, 63),
(date '2015-10-23', 11, 2),
(date '2014-05-27', 14, 64),
(date '2014-05-01', 6, 42),
(date '2014-09-26', 2, 44),
(date '2013-08-15', 5, 42),
(date '2013-04-26', 5, 39),
(date '2014-07-14', 11, 94),
(date '2015-08-18', 4, 17),
(date '2014-02-19', 9, 3),
(date '2014-05-18', 3, 75),
(date '2015-09-22', 10, 38),
(date '2013-03-28', 10, 74),
(date '2014-01-04', 11, 25),
(date '2014-09-14', 7, 20),
(date '2014-05-18', 7, 33),
(date '2013-02-19', 2, 40),
(date '2013-06-16', 9, 62),
(date '2014-11-25', 6, 5),
(date '2014-07-19', 14, 13),
(date '2013-04-24', 4, 82),
(date '2014-04-10', 6, 86),
(date '2013-05-31', 15, 66),
(date '2014-09-03', 10, 63),
(date '2014-06-25', 13, 46),
(date '2015-02-24', 13, 44),
(date '2014-06-19', 5, 82),
(date '2014-09-12', 12, 57),
(date '2015-03-16', 5, 96),
(date '2015-05-11', 12, 36),
(date '2015-11-28', 6, 100),
(date '2014-10-24', 9, 44),
(date '2014-04-03', 13, 70),
(date '2014-04-12', 10, 77),
(date '2015-07-23', 13, 42),
(date '2013-06-02', 6, 99),
(date '2015-07-06', 9, 22),
(date '2014-12-16', 13, 83),
(date '2014-07-20', 13, 27),
(date '2015-11-05', 10, 94),
(date '2015-01-23', 13, 70),
(date '2014-05-20', 5, 59),
(date '2013-01-25', 12, 61),
(date '2015-07-23', 1, 5),
(date '2013-08-19', 5, 95),
(date '2014-07-25', 6, 88),
(date '2013-11-07', 3, 54),
(date '2015-07-20', 11, 57),
(date '2014-08-26', 7, 27),
(date '2015-05-03', 2, 62),
(date '2014-04-14', 4, 36),
(date '2013-11-09', 12, 1),
(date '2013-07-14', 4, 27),
(date '2013-11-15', 10, 63),
(date '2014-05-22', 6, 31),
(date '2015-10-04', 2, 90),
(date '2013-12-03', 8, 2),
(date '2015-09-23', 1, 86),
(date '2014-09-05', 7, 46),
(date '2015-07-29', 9, 8),
(date '2014-05-30', 1, 51),
(date '2014-03-25', 7, 68),
(date '2015-02-23', 14, 74),
(date '2015-05-12', 8, 63),
(date '2013-04-11', 1, 68),
(date '2015-03-28', 7, 20),
(date '2014-07-24', 14, 28),
(date '2014-02-03', 13, 8),
(date '2013-09-27', 3, 40),
(date '2014-01-19', 9, 72),
(date '2013-05-14', 11, 15),
(date '2014-03-30', 9, 11),
(date '2014-12-03', 4, 10),
(date '2014-11-07', 4, 79),
(date '2013-05-09', 4, 74),
(date '2015-12-08', 5, 78),
(date '2015-06-04', 12, 74),
(date '2014-06-14', 6, 89),
(date '2013-01-23', 2, 87),
(date '2015-07-18', 15, 84),
(date '2015-03-11', 4, 65),
(date '2013-07-25', 7, 66),
(date '2013-11-29', 10, 14),
(date '2014-06-02', 5, 77),
(date '2013-04-30', 8, 74),
(date '2014-03-05', 14, 7),
(date '2013-11-05', 4, 45),
(date '2013-11-26', 15, 96),
(date '2015-01-15', 4, 45),
(date '2015-05-01', 15, 52),
(date '2014-02-25', 6, 46),
(date '2014-11-10', 12, 42),
(date '2014-05-20', 13, 17),
(date '2015-03-27', 6, 44),
(date '2014-04-14', 3, 71),
(date '2013-10-01', 2, 35),
(date '2015-03-03', 9, 74),
(date '2014-12-01', 4, 68),
(date '2013-11-25', 6, 40),
(date '2014-06-14', 4, 63),
(date '2013-08-05', 11, 12),
(date '2015-02-03', 13, 41),
(date '2014-10-05', 11, 13),
(date '2015-03-20', 10, 18),
(date '2014-05-11', 5, 20),
(date '2014-02-22', 5, 79),
(date '2013-04-15', 7, 15),
(date '2014-03-28', 6, 25),
(date '2014-08-12', 14, 9),
(date '2014-04-24', 8, 53),
(date '2014-07-02', 9, 78),
(date '2014-06-26', 3, 4),
(date '2015-10-29', 7, 3),
(date '2015-10-28', 6, 56),
(date '2014-08-12', 4, 65),
(date '2014-07-28', 15, 35),
(date '2014-09-01', 8, 49),
(date '2014-07-31', 11, 80),
(date '2015-03-01', 10, 51),
(date '2013-07-15', 14, 70),
(date '2013-10-06', 12, 18),
(date '2013-10-31', 8, 80),
(date '2013-11-16', 15, 91),
(date '2014-09-06', 9, 78),
(date '2013-06-04', 9, 88),
(date '2014-05-29', 12, 88),
(date '2013-06-07', 7, 22),
(date '2014-06-21', 2, 38),
(date '2014-05-07', 4, 7),
(date '2013-04-18', 2, 49),
(date '2014-07-19', 13, 56),
(date '2013-06-14', 9, 66),
(date '2014-07-29', 9, 57),
(date '2014-04-04', 5, 91),
(date '2015-06-08', 10, 46),
(date '2014-08-01', 10, 97),
(date '2014-07-04', 2, 53),
(date '2015-07-27', 14, 54),
(date '2013-08-17', 2, 81),
(date '2015-07-12', 11, 77),
(date '2013-08-03', 13, 39),
(date '2014-01-16', 7, 86),
(date '2014-05-07', 14, 68),
(date '2014-05-29', 13, 61),
(date '2015-09-16', 6, 90),
(date '2014-10-13', 11, 59),
(date '2015-11-07', 11, 41),
(date '2015-04-23', 12, 2),
(date '2013-10-18', 10, 76),
(date '2014-02-04', 14, 77),
(date '2014-01-04', 2, 80),
(date '2015-08-15', 3, 65),
(date '2013-04-03', 9, 59),
(date '2015-11-10', 11, 6),
(date '2013-06-30', 9, 29),
(date '2014-06-27', 10, 37),
(date '2013-12-11', 2, 26),
(date '2013-03-05', 3, 28),
(date '2015-03-13', 2, 94),
(date '2015-10-05', 11, 72),
(date '2014-08-15', 7, 39),
(date '2014-05-18', 9, 6),
(date '2013-04-26', 10, 98),
(date '2014-02-18', 9, 92),
(date '2014-08-09', 13, 39),
(date '2014-08-12', 9, 21),
(date '2014-01-27', 2, 60),
(date '2013-07-22', 6, 58),
(date '2014-05-16', 8, 41),
(date '2014-08-30', 6, 15),
(date '2015-04-21', 12, 7),
(date '2014-09-01', 7, 14),
(date '2014-11-27', 10, 43),
(date '2014-05-22', 14, 22),
(date '2015-11-22', 2, 48),
(date '2014-02-12', 9, 92),
(date '2015-10-26', 8, 48),
(date '2015-05-09', 13, 97),
(date '2014-07-14', 6, 12),
(date '2013-06-17', 11, 22),
(date '2013-03-23', 4, 23),
(date '2014-06-22', 10, 68),
(date '2014-07-16', 5, 78),
(date '2015-03-01', 4, 32),
(date '2014-05-23', 10, 33),
(date '2013-07-07', 10, 6),
(date '2015-04-04', 7, 98),
(date '2015-02-03', 14, 29),
(date '2014-09-08', 2, 53),
(date '2014-07-30', 9, 43),
(date '2015-11-01', 14, 74),
(date '2014-09-27', 3, 94),
(date '2015-09-27', 11, 86),
(date '2014-11-07', 1, 50),
(date '2013-06-19', 4, 43),
(date '2015-07-28', 2, 85),
(date '2014-11-09', 5, 24),
(date '2014-08-26', 14, 88),
(date '2014-08-09', 6, 61),
(date '2015-12-19', 2, 83),
(date '2015-07-25', 1, 38),
(date '2015-01-25', 6, 49),
(date '2015-02-09', 12, 31),
(date '2014-11-28', 6, 61),
(date '2013-06-12', 5, 50),
(date '2014-11-03', 7, 81),
(date '2014-03-27', 9, 48),
(date '2014-09-24', 6, 72),
(date '2013-10-06', 4, 59),
(date '2014-04-18', 8, 48),
(date '2015-04-10', 11, 88),
(date '2014-02-28', 10, 67),
(date '2014-01-18', 2, 74),
(date '2014-12-07', 10, 70),
(date '2014-11-07', 4, 53),
(date '2015-02-18', 8, 81),
(date '2014-05-05', 3, 72),
(date '2014-06-17', 15, 72),
(date '2015-06-13', 4, 8),
(date '2014-11-30', 8, 73),
(date '2014-09-20', 8, 93),
(date '2014-01-21', 14, 44),
(date '2014-06-05', 8, 68),
(date '2013-05-20', 5, 94),
(date '2015-05-29', 3, 7),
(date '2013-09-10', 7, 49),
(date '2013-07-26', 7, 49),
(date '2015-10-26', 15, 74),
(date '2015-07-29', 7, 66),
(date '2015-07-07', 8, 93),
(date '2014-11-12', 13, 79),
(date '2014-12-27', 6, 7),
(date '2015-06-22', 3, 80),
(date '2014-09-09', 13, 6),
(date '2015-06-27', 3, 82),
(date '2013-06-29', 12, 13),
(date '2014-01-07', 14, 86),
(date '2014-05-26', 5, 66),
(date '2013-08-18', 14, 62),
(date '2013-11-19', 10, 97),
(date '2013-04-19', 6, 94),
(date '2014-03-03', 2, 41),
(date '2014-05-26', 13, 74),
(date '2014-05-28', 7, 63),
(date '2013-12-04', 14, 31),
(date '2013-06-15', 13, 41),
(date '2015-12-26', 12, 51),
(date '2015-12-18', 4, 65),
(date '2013-08-02', 5, 64),
(date '2013-10-24', 12, 18),
(date '2014-04-26', 4, 38),
(date '2014-09-18', 7, 30),
(date '2014-05-18', 5, 17),
(date '2015-09-04', 2, 76),
(date '2015-05-26', 13, 42),
(date '2014-08-01', 9, 74),
(date '2013-06-21', 7, 42),
(date '2015-09-28', 3, 26),
(date '2013-05-14', 4, 27),
(date '2013-05-26', 12, 21),
(date '2015-07-15', 13, 20),
(date '2014-05-02', 2, 85),
(date '2014-10-21', 7, 52),
(date '2014-05-04', 5, 3),
(date '2014-07-11', 5, 79),
(date '2014-05-31', 3, 10),
(date '2015-01-28', 9, 2),
(date '2013-11-13', 3, 85),
(date '2015-09-11', 5, 40),
(date '2015-09-20', 11, 70),
(date '2014-12-05', 5, 86),
(date '2014-04-24', 3, 86),
(date '2014-11-05', 5, 52),
(date '2013-11-22', 9, 72),
(date '2015-09-28', 8, 27),
(date '2014-08-02', 8, 48),
(date '2014-05-26', 1, 35),
(date '2014-10-16', 11, 6),
(date '2013-11-18', 1, 58),
(date '2014-08-03', 8, 90),
(date '2013-09-02', 5, 47),
(date '2013-12-11', 11, 88),
(date '2014-09-26', 3, 71),
(date '2015-06-13', 14, 66),
(date '2015-08-16', 6, 27),
(date '2015-01-30', 4, 42),
(date '2014-12-09', 10, 67),
(date '2015-10-08', 3, 75),
(date '2013-11-09', 9, 68),
(date '2014-11-08', 9, 87),
(date '2014-02-05', 5, 12),
(date '2013-04-23', 13, 87),
(date '2015-05-25', 3, 72),
(date '2015-12-18', 3, 95),
(date '2013-04-14', 4, 43),
(date '2014-06-28', 6, 17),
(date '2014-01-05', 12, 32),
(date '2013-04-13', 14, 96),
(date '2015-10-29', 1, 76),
(date '2014-08-21', 5, 93),
(date '2013-11-18', 14, 53),
(date '2014-10-25', 14, 20),
(date '2015-10-19', 3, 91),
(date '2015-11-21', 8, 8),
(date '2013-08-20', 13, 34),
(date '2014-05-08', 2, 54),
(date '2014-10-16', 3, 66),
(date '2014-09-16', 3, 57),
(date '2015-04-12', 10, 12),
(date '2014-01-04', 10, 93),
(date '2014-03-18', 6, 20),
(date '2015-08-20', 14, 50),
(date '2014-07-24', 7, 35),
(date '2014-07-08', 9, 25),
(date '2014-12-23', 13, 43),
(date '2014-10-06', 3, 43),
(date '2014-06-10', 3, 58),
(date '2013-07-05', 8, 59),
(date '2014-03-02', 8, 9),
(date '2013-11-12', 12, 11),
(date '2014-12-19', 8, 82),
(date '2014-03-23', 3, 88),
(date '2015-07-01', 10, 81),
(date '2014-05-01', 4, 31),
(date '2013-03-12', 1, 10),
(date '2015-04-21', 7, 98),
(date '2013-05-03', 10, 69),
(date '2014-11-09', 4, 7),
(date '2014-06-05', 11, 57),
(date '2013-08-20', 4, 75),
(date '2014-10-06', 10, 8),
(date '2015-10-06', 9, 48),
(date '2013-04-14', 14, 38),
(date '2014-10-25', 6, 41),
(date '2013-05-07', 5, 14),
(date '2015-05-13', 11, 38),
(date '2014-11-08', 3, 33),
(date '2013-07-25', 1, 72),
(date '2013-04-07', 10, 84),
(date '2014-06-25', 10, 24),
(date '2013-02-06', 3, 50),
(date '2015-10-28', 14, 18),
(date '2014-10-15', 7, 95),
(date '2014-05-05', 13, 86),
(date '2015-08-05', 14, 72),
(date '2015-10-22', 13, 24),
(date '2014-07-06', 10, 19),
(date '2014-12-31', 1, 26),
(date '2014-06-29', 9, 12),
(date '2013-08-04', 8, 32),
(date '2015-09-19', 3, 28),
(date '2014-10-23', 15, 37),
(date '2014-09-16', 8, 8),
(date '2014-01-19', 7, 100),
(date '2014-03-31', 8, 85),
(date '2014-02-18', 8, 23),
(date '2015-03-03', 4, 95),
(date '2013-10-28', 11, 93),
(date '2014-07-25', 6, 75),
(date '2013-08-27', 10, 18),
(date '2013-02-20', 14, 68),
(date '2015-02-14', 12, 13),
(date '2013-02-27', 4, 2),
(date '2013-04-16', 7, 81),
(date '2013-04-07', 3, 21),
(date '2014-09-30', 6, 43),
(date '2014-11-29', 5, 73),
(date '2014-08-09', 2, 38),
(date '2014-04-29', 14, 60),
(date '2015-12-29', 10, 90),
(date '2015-06-27', 7, 3),
(date '2014-10-14', 2, 18),
(date '2013-05-27', 4, 95),
(date '2014-06-24', 4, 65),
(date '2014-08-02', 10, 32),
(date '2013-02-22', 13, 72),
(date '2014-02-07', 4, 9),
(date '2014-11-18', 12, 49),
(date '2014-06-29', 11, 99),
(date '2014-04-21', 10, 30),
(date '2014-03-26', 12, 5),
(date '2014-01-04', 7, 56),
(date '2013-10-11', 9, 16),
(date '2013-11-11', 6, 44),
(date '2015-03-18', 2, 27),
(date '2014-11-08', 12, 25),
(date '2015-05-29', 1, 7),
(date '2015-06-18', 7, 91),
(date '2015-11-16', 6, 89),
(date '2013-10-01', 8, 12),
(date '2013-04-18', 5, 9),
(date '2014-05-01', 3, 81),
(date '2013-03-26', 7, 53),
(date '2014-02-13', 6, 45),
(date '2015-04-20', 8, 84),
(date '2013-10-02', 5, 2),
(date '2014-09-10', 8, 7),
(date '2013-07-19', 15, 41),
(date '2014-07-24', 13, 18),
(date '2015-09-18', 14, 54),
(date '2014-08-13', 11, 84),
(date '2014-03-29', 7, 56),
(date '2014-05-21', 13, 37),
(date '2014-04-30', 4, 96),
(date '2014-09-16', 6, 76),
(date '2014-07-08', 5, 21),
(date '2014-03-10', 8, 61),
(date '2014-09-05', 5, 26),
(date '2013-05-29', 8, 100),
(date '2014-05-08', 3, 47),
(date '2015-10-04', 7, 46),
(date '2014-02-10', 5, 73),
(date '2014-02-08', 1, 54),
(date '2014-06-29', 12, 46),
(date '2014-10-16', 14, 46),
(date '2015-10-29', 10, 69),
(date '2013-06-03', 1, 39),
(date '2014-03-09', 3, 23),
(date '2014-07-13', 10, 43),
(date '2014-04-17', 14, 95),
(date '2014-03-17', 10, 75),
(date '2013-02-18', 4, 50),
(date '2013-11-01', 12, 43),
(date '2015-07-02', 9, 33),
(date '2013-04-02', 4, 91),
(date '2014-04-12', 15, 16),
(date '2014-02-10', 3, 42),
(date '2014-03-20', 12, 65),
(date '2015-07-22', 13, 72),
(date '2015-05-01', 13, 86),
(date '2013-03-19', 13, 93),
(date '2013-12-19', 10, 49),
(date '2014-12-05', 13, 8),
(date '2015-08-09', 15, 52),
(date '2013-12-11', 7, 95),
(date '2014-10-10', 9, 90),
(date '2015-03-05', 8, 50),
(date '2014-01-12', 6, 11),
(date '2014-08-25', 13, 26),
(date '2014-10-14', 3, 39),
(date '2015-11-13', 8, 36),
(date '2014-05-20', 5, 97),
(date '2014-05-07', 10, 35),
(date '2015-04-06', 11, 74),
(date '2013-04-28', 15, 75),
(date '2014-01-18', 2, 88),
(date '2014-04-16', 9, 58),
(date '2014-11-05', 6, 41),
(date '2015-04-11', 10, 44),
(date '2013-07-20', 10, 64),
(date '2014-02-12', 10, 19),
(date '2014-03-01', 4, 13),
(date '2014-04-02', 13, 27),
(date '2013-03-28', 15, 33),
(date '2015-09-05', 3, 6),
(date '2014-03-08', 7, 63),
(date '2014-09-23', 12, 94),
(date '2014-04-03', 7, 38),
(date '2014-02-17', 11, 85),
(date '2014-07-13', 9, 76),
(date '2014-05-28', 8, 83),
(date '2015-02-03', 14, 42),
(date '2014-03-25', 4, 35),
(date '2014-03-25', 7, 58),
(date '2014-02-25', 3, 54),
(date '2014-12-16', 5, 60),
(date '2014-05-20', 9, 100),
(date '2014-04-09', 12, 6),
(date '2013-07-29', 3, 76),
(date '2013-04-26', 8, 73),
(date '2014-11-03', 13, 33),
(date '2014-05-17', 6, 45),
(date '2014-10-07', 5, 87),
(date '2015-07-21', 5, 90),
(date '2015-08-26', 9, 36),
(date '2015-05-21', 7, 57),
(date '2013-10-03', 9, 20),
(date '2013-05-18', 4, 13),
(date '2014-03-22', 13, 63),
(date '2015-08-22', 5, 42),
(date '2015-03-02', 9, 49),
(date '2014-10-02', 6, 15),
(date '2013-07-18', 7, 17),
(date '2014-02-17', 11, 63),
(date '2013-02-26', 3, 90),
(date '2013-06-08', 13, 90),
(date '2014-03-24', 6, 46),
(date '2014-02-19', 15, 91),
(date '2014-10-10', 10, 65),
(date '2014-05-08', 3, 76),
(date '2014-02-11', 13, 43),
(date '2015-07-09', 7, 15),
(date '2014-03-03', 1, 36),
(date '2014-08-03', 9, 59),
(date '2015-04-02', 5, 86),
(date '2014-07-11', 14, 63),
(date '2013-11-24', 5, 94),
(date '2014-08-03', 14, 54),
(date '2014-08-02', 2, 37),
(date '2015-11-08', 4, 62),
(date '2013-10-01', 7, 17),
(date '2014-01-03', 13, 59),
(date '2013-03-14', 4, 22),
(date '2015-12-16', 3, 94),
(date '2014-06-06', 14, 89),
(date '2015-08-19', 15, 23),
(date '2015-03-17', 8, 12),
(date '2015-05-29', 8, 93),
(date '2013-05-20', 3, 20),
(date '2013-04-03', 9, 2),
(date '2014-06-30', 13, 73),
(date '2015-05-04', 10, 5),
(date '2014-08-29', 4, 98),
(date '2015-04-15', 5, 38),
(date '2014-10-19', 3, 41),
(date '2013-06-21', 2, 53),
(date '2015-11-03', 12, 97),
(date '2013-05-06', 15, 68),
(date '2013-08-16', 15, 22),
(date '2013-05-01', 11, 57),
(date '2015-02-22', 6, 91),
(date '2014-04-22', 2, 63),
(date '2013-03-06', 13, 70),
(date '2013-11-02', 11, 86),
(date '2015-05-26', 13, 23),
(date '2013-11-17', 12, 5),
(date '2015-12-02', 5, 43),
(date '2014-03-26', 11, 96),
(date '2013-12-03', 2, 90),
(date '2014-08-24', 10, 21),
(date '2014-10-28', 11, 20),
(date '2015-09-11', 13, 44),
(date '2014-08-02', 11, 57),
(date '2014-09-29', 6, 45),
(date '2014-08-03', 13, 68),
(date '2015-07-24', 9, 75),
(date '2014-10-06', 7, 37),
(date '2014-11-06', 6, 21),
(date '2013-11-22', 14, 49),
(date '2014-08-03', 7, 67),
(date '2014-10-20', 4, 75),
(date '2015-08-26', 13, 13),
(date '2014-09-01', 2, 58),
(date '2013-03-19', 2, 23),
(date '2014-10-03', 4, 38),
(date '2015-10-06', 7, 26),
(date '2014-10-23', 2, 93),
(date '2014-07-02', 2, 41),
(date '2014-10-18', 7, 99),
(date '2014-09-10', 14, 64),
(date '2014-10-25', 10, 9),
(date '2014-12-25', 6, 48),
(date '2014-02-18', 8, 58),
(date '2014-08-25', 3, 35),
(date '2014-07-01', 6, 98),
(date '2013-09-16', 8, 97),
(date '2014-09-22', 13, 26),
(date '2014-04-15', 2, 91),
(date '2015-06-30', 6, 20),
(date '2014-06-13', 15, 74),
(date '2014-10-13', 7, 62),
(date '2014-06-03', 7, 95),
(date '2014-10-16', 1, 96),
(date '2013-10-20', 9, 84),
(date '2014-09-24', 4, 55),
(date '2014-02-16', 13, 86),
(date '2015-02-05', 14, 9),
(date '2014-06-19', 9, 37),
(date '2015-11-13', 3, 12),
(date '2014-06-10', 10, 91),
(date '2013-10-29', 1, 13),
(date '2013-05-10', 4, 57),
(date '2014-05-28', 5, 57),
(date '2013-06-18', 14, 31),
(date '2014-06-16', 3, 29),
(date '2015-06-07', 7, 93),
(date '2015-11-21', 7, 87),
(date '2015-09-26', 9, 53),
(date '2014-10-20', 14, 93),
(date '2014-08-14', 14, 37),
(date '2013-03-21', 3, 30),
(date '2013-06-05', 10, 82),
(date '2015-07-17', 4, 40),
(date '2014-09-08', 8, 45),
(date '2013-02-15', 6, 84),
(date '2015-11-06', 11, 87),
(date '2014-12-24', 10, 93),
(date '2014-08-02', 2, 54),
(date '2014-05-07', 3, 34),
(date '2014-10-01', 13, 48),
(date '2014-10-24', 4, 48),
(date '2015-04-25', 1, 46),
(date '2015-03-15', 14, 85),
(date '2014-03-05', 4, 37),
(date '2014-02-20', 6, 62),
(date '2014-08-20', 2, 73),
(date '2013-09-29', 2, 14),
(date '2013-09-01', 6, 83),
(date '2013-10-16', 11, 89),
(date '2013-12-04', 3, 58),
(date '2014-06-22', 3, 36),
(date '2015-06-26', 5, 96),
(date '2014-04-22', 5, 18),
(date '2014-10-29', 4, 54),
(date '2013-09-29', 9, 31),
(date '2015-04-19', 12, 49),
(date '2013-01-26', 3, 38),
(date '2013-01-03', 4, 88),
(date '2015-11-25', 12, 58),
(date '2015-08-24', 12, 58),
(date '2015-05-22', 15, 3),
(date '2013-05-04', 10, 17),
(date '2013-08-10', 6, 85),
(date '2015-07-09', 7, 18),
(date '2015-06-15', 12, 67),
(date '2015-02-22', 8, 96),
(date '2015-02-13', 15, 88),
(date '2015-12-22', 8, 70),
(date '2014-10-04', 8, 48),
(date '2013-06-05', 3, 91),
(date '2014-11-06', 8, 83),
(date '2013-11-28', 12, 5),
(date '2014-03-29', 13, 88),
(date '2014-11-02', 2, 73),
(date '2013-10-22', 7, 13),
(date '2015-06-16', 13, 17),
(date '2014-03-09', 7, 11),
(date '2014-03-06', 2, 84),
(date '2014-06-13', 8, 79),
(date '2014-04-10', 2, 77),
(date '2014-05-11', 3, 40),
(date '2013-03-06', 8, 30),
(date '2014-12-07', 1, 47),
(date '2014-12-21', 11, 49),
(date '2014-10-31', 5, 39),
(date '2014-10-22', 3, 98),
(date '2015-04-09', 9, 20),
(date '2013-07-23', 13, 66),
(date '2013-04-26', 15, 18),
(date '2013-02-06', 9, 37),
(date '2014-09-07', 12, 79),
(date '2014-04-26', 8, 49),
(date '2015-07-01', 6, 87),
(date '2015-09-27', 2, 70),
(date '2014-11-05', 7, 44),
(date '2014-11-27', 6, 65),
(date '2015-09-07', 8, 51),
(date '2015-08-21', 6, 11),
(date '2014-05-21', 11, 76),
(date '2014-09-20', 5, 94),
(date '2015-04-05', 1, 97),
(date '2014-11-21', 2, 20),
(date '2014-06-03', 9, 25),
(date '2013-09-21', 4, 10),
(date '2013-09-14', 14, 78),
(date '2014-05-30', 6, 34),
(date '2014-03-30', 1, 16),
(date '2014-09-23', 15, 36),
(date '2013-08-21', 8, 5),
(date '2014-10-10', 11, 39),
(date '2014-03-16', 4, 66),
(date '2014-10-07', 12, 74),
(date '2015-08-09', 6, 76),
(date '2015-07-22', 14, 62),
(date '2015-08-13', 14, 98),
(date '2014-04-03', 8, 40),
(date '2014-11-13', 3, 33),
(date '2014-05-09', 12, 42),
(date '2015-09-24', 8, 77),
(date '2014-12-09', 2, 16),
(date '2015-05-29', 4, 29),
(date '2014-03-05', 11, 49),
(date '2014-04-29', 13, 58),
(date '2014-05-04', 9, 34),
(date '2015-04-16', 12, 5),
(date '2015-02-07', 7, 67),
(date '2014-06-03', 2, 92);

