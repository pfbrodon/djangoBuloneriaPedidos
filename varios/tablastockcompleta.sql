BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "stock_producto" (
	"id"	integer NOT NULL,
	"categoria_id"	bigint NOT NULL,
	"codigo"	integer NOT NULL,
	"descripcion"	varchar(150) NOT NULL,
	"cantidad"	integer NOT NULL,
	"precioCosto"	real NOT NULL,
	"utilidad_id"	bigint NOT NULL,
	"precioPublico"	real NOT NULL,
	"marca_id"	bigint NOT NULL,
	FOREIGN KEY("marca_id") REFERENCES "stock_marcas"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("utilidad_id") REFERENCES "stock_utilidad"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("categoria_id") REFERENCES "stock_categorias"("id") DEFERRABLE INITIALLY DEFERRED
);
INSERT INTO "stock_producto" VALUES (8,1,200001,'TORNILLO AUTOPERFORANTE C/WAFER P/AGUJA 8Xl/2',200,17.05,2,0.0,2);
INSERT INTO "stock_producto" VALUES (9,1,200002,'TORNILLO AUTOPERFORANTE C/WAFER P/AGUJA 8Xl',200,28.78,2,0.0,2);
INSERT INTO "stock_producto" VALUES (10,1,200003,'TORNILLO METRICO 3-0.5X4 PH',200,12.2,2,0.0,2);
INSERT INTO "stock_producto" VALUES (11,1,200004,'TORNILLO METRICO 3-0.5X5 PH',200,13.19,2,0.0,2);
INSERT INTO "stock_producto" VALUES (12,1,200005,'TORNILLO METRICO 3-0.5X6 PH',200,14.18,2,0.0,2);
INSERT INTO "stock_producto" VALUES (13,1,200006,'TORNILLO METRICO 3-0.5Xl 0 PH',200,18.12,2,0.0,2);
INSERT INTO "stock_producto" VALUES (14,1,200007,'TORNILLO METRICO 3-0.5Xl 5 PH',200,22.43,2,0.0,2);
INSERT INTO "stock_producto" VALUES (15,1,200008,'TORNILLO METRICO 3-0.5Xl 8 PH',200,24.67,2,0.0,2);
INSERT INTO "stock_producto" VALUES (16,1,200009,'TORNILLO METRICO 3-0.5X20 PH',200,28.04,2,0.0,2);
INSERT INTO "stock_producto" VALUES (17,1,200010,'TORNILLO METRICO 3-0.5X25 PH',200,28.58,2,0.0,2);
INSERT INTO "stock_producto" VALUES (18,1,200011,'TORNILLO METRICO 3-0.5X30 PH',200,32.85,2,0.0,2);
INSERT INTO "stock_producto" VALUES (19,1,200012,'TORNILLO METRICO 4-0.7X5 PH',200,19.44,2,0.0,2);
INSERT INTO "stock_producto" VALUES (20,1,200013,'TORNILLO METRICO 4-0.7X6 PH',200,20.64,2,0.0,2);
INSERT INTO "stock_producto" VALUES (21,1,200014,'TORNILLO METRICO 4-0.7X8 PH',200,22.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (22,1,200015,'TORNILLO METRICO 4-0.7Xl 0 PH',200,25.27,2,0.0,2);
INSERT INTO "stock_producto" VALUES (23,1,200016,'TORNILLO METRICO 4-0.7Xl 2 PH',200,27.51,2,0.0,2);
INSERT INTO "stock_producto" VALUES (24,1,200017,'TORNILLO METRICO 4-0.7Xl 8 PH',200,32.15,2,0.0,2);
INSERT INTO "stock_producto" VALUES (25,1,200018,'TORNILLO METRICO 4-0.7X20 PH',200,36.78,2,0.0,2);
INSERT INTO "stock_producto" VALUES (26,1,200019,'TORNILLO METRICO 4-0.7X30 PH',200,48.3,2,0.0,2);
INSERT INTO "stock_producto" VALUES (27,1,200020,'TORNILLO METRICO 4-0.7X35 PH',200,354.13,2,0.0,2);
INSERT INTO "stock_producto" VALUES (28,1,200021,'TORNILLO METRICO 4-0.7X40 PH',200,59.96,2,0.0,2);
INSERT INTO "stock_producto" VALUES (29,1,200022,'TORNILLO METRICO 4-0.7X45 PH',200,366.09,2,0.0,2);
INSERT INTO "stock_producto" VALUES (30,1,200023,'TORNILLO METRICO 4-0.7X50 PH',200,72.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (31,1,200024,'TORNILLO METRICO 4-0.7X55 PH',200,78.05,2,0.0,2);
INSERT INTO "stock_producto" VALUES (32,1,200025,'TORNILLO METRICO 4-0.7X60 PH',200,384.03,2,0.0,2);
INSERT INTO "stock_producto" VALUES (33,1,200026,'TORNILLO METRICO 4-0.7X65 PH',200,90.02,2,0.0,2);
INSERT INTO "stock_producto" VALUES (34,1,200027,'TORNILLO METRICO 4-0.7X70 PH',200,399.0,2,0.0,2);
INSERT INTO "stock_producto" VALUES (35,1,200028,'TORNILLO METRICO 5-0.8x8 PH',200,28.82,2,0.0,2);
INSERT INTO "stock_producto" VALUES (36,1,200029,'TORNILLO METRICO 5-0.8Xl 0 PH',200,31.51,2,0.0,2);
INSERT INTO "stock_producto" VALUES (37,1,200030,'TORNILLO METRICO 5-0.8Xl 2 PH',200,34.32,2,0.0,2);
INSERT INTO "stock_producto" VALUES (38,1,200031,'TORNILLO METRICO 5-0.8X15PH',200,37.12,2,0.0,2);
INSERT INTO "stock_producto" VALUES (39,1,200032,'TORNILLO METRICO 5-0.8X18PH',200,39.92,2,0.0,2);
INSERT INTO "stock_producto" VALUES (40,1,200033,'TORNILLO METRICO 5-0.8X2OPH',200,45.42,2,0.0,2);
INSERT INTO "stock_producto" VALUES (41,1,200034,'TORNILLO METRICO 5-0.8X25PH',200,52.37,2,0.0,2);
INSERT INTO "stock_producto" VALUES (42,1,200035,'TORNILLO METRICO 5-0.8X30PH',200,59.33,2,0.0,2);
INSERT INTO "stock_producto" VALUES (43,1,200036,'TORNILLO METRICO 5-0.8X35PH',200,66.28,2,0.0,2);
INSERT INTO "stock_producto" VALUES (44,1,200037,'TORNILLO METRICO 5-0.8X40PH',200,73.12,2,0.0,2);
INSERT INTO "stock_producto" VALUES (45,1,200038,'TORNILLO METRICO 5-0.8X45PH',200,80.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (46,1,200039,'TORNILLO METRICO 5-0.8X50PH',200,87.03,2,0.0,2);
INSERT INTO "stock_producto" VALUES (47,1,200040,'TORNILLO METRICO 5-0.8X55PH',200,93.98,2,0.0,2);
INSERT INTO "stock_producto" VALUES (48,1,200041,'TORNILLO METRICO 5-0.8X60PH',200,100.93,2,0.0,2);
INSERT INTO "stock_producto" VALUES (49,1,200042,'TORNILLO METRICO 5-0.8X65PH',200,107.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (50,1,200043,'TORNILLO METRICO 5-0.8X7OPH',200,114.83,2,0.0,2);
INSERT INTO "stock_producto" VALUES (51,1,200044,'TORNILLO METRICO 6-1X10PH',200,49.4,2,0.0,2);
INSERT INTO "stock_producto" VALUES (52,1,200045,'TORNILLO METRICO 6-1X12PH',200,53.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (53,1,200046,'TORNILLO METRICO 6-1X15PH',200,56.73,2,0.0,2);
INSERT INTO "stock_producto" VALUES (54,1,200047,'TORNILLO METRICO 6-1X18PH',200,60.71,2,0.0,2);
INSERT INTO "stock_producto" VALUES (55,1,200048,'TORNILLO METRICO 6-1X30PH',200,86.24,2,0.0,2);
INSERT INTO "stock_producto" VALUES (56,1,200049,'TORNILLO METRICO 6-1X35PH',200,95.46,2,0.0,2);
INSERT INTO "stock_producto" VALUES (57,1,200050,'TORNILLO METRICO 6-1X40PH',200,104.67,2,0.0,2);
INSERT INTO "stock_producto" VALUES (58,1,200051,'TORNILLO METRICO 6-1X45PH',200,114.09,2,0.0,2);
INSERT INTO "stock_producto" VALUES (59,1,200052,'TORNILLO METRICO 6-1X50PH',200,123.51,2,0.0,2);
INSERT INTO "stock_producto" VALUES (60,1,200053,'TORNILLO METRICO 6-1X55PH',200,131.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (61,1,200054,'TORNILLO METRICO 6-1X60PH',200,141.3,2,0.0,2);
INSERT INTO "stock_producto" VALUES (62,1,200055,'TORNILLO METRICO 6-1X65PH',200,150.72,2,0.0,2);
INSERT INTO "stock_producto" VALUES (63,1,200056,'TORNILLO METRICO 6-1X70PH',200,160.14,2,0.0,2);
INSERT INTO "stock_producto" VALUES (64,1,200057,'TORNILLO METRICO 8-1.25X18PH',200,112.15,2,0.0,2);
INSERT INTO "stock_producto" VALUES (65,1,200058,'TORNILLO METRICO 8-1.25X35PH',200,161.49,2,0.0,2);
INSERT INTO "stock_producto" VALUES (66,1,200059,'TORNILLO METRICO 8-1.25X55PH',200,218.91,2,0.0,2);
INSERT INTO "stock_producto" VALUES (67,1,200060,'TORNILLO METRICO 8-1.25X65PH',200,247.62,2,0.0,2);
INSERT INTO "stock_producto" VALUES (68,1,200061,'TORNILLO METRICO 8-1.25X70 PH',200,262.87,2,0.0,2);
INSERT INTO "stock_producto" VALUES (69,1,200062,'TORNILLO METRICO 3-0.5X4 CAB FRESADA',200,12.2,2,0.0,2);
INSERT INTO "stock_producto" VALUES (70,1,200063,'TORNILLO METRICO 3-0.5X5 CAB FRESAD√Ö',200,13.19,2,0.0,2);
INSERT INTO "stock_producto" VALUES (71,1,200064,'TORNILLO METRICO 3-0.5X6 CAB FRESADA',200,14.18,2,0.0,2);
INSERT INTO "stock_producto" VALUES (72,1,200065,'TORNILLO METRICO 3-0.5X8 CAB FRESADA',200,16.15,2,0.0,2);
INSERT INTO "stock_producto" VALUES (73,1,200066,'TORNILLO METRICO 3-0.5XI 2 CAB FRESADA',200,20.1,2,0.0,2);
INSERT INTO "stock_producto" VALUES (74,1,200067,'TORNILLO METRICO 3-0.5XI 5 CAB FRESADA',200,22.43,2,0.0,2);
INSERT INTO "stock_producto" VALUES (75,1,200068,'TORNILLO METRICO 3-0.5XI 8 CAB FRESADA',200,24.67,2,0.0,2);
INSERT INTO "stock_producto" VALUES (76,1,200069,'TORNILLO METRICO 3-0.5X20 CAB FRESADA',200,28.04,2,0.0,2);
INSERT INTO "stock_producto" VALUES (77,1,200070,'TORNILLO METRICO 3-0.5X25 CAB FRESADA',200,28.58,2,0.0,2);
INSERT INTO "stock_producto" VALUES (78,1,200071,'TORNILLO METRICO 3-0.5X30 CAB FRESADA',200,32.85,2,0.0,2);
INSERT INTO "stock_producto" VALUES (79,1,200072,'TORNILLO METRICO 4-0.7X5 CAB FRESADA',200,19.44,2,0.0,2);
INSERT INTO "stock_producto" VALUES (80,1,200073,'TORNILLO METRICO 4-0.7X8 CAB FRESAD√Ö',200,22.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (81,1,200074,'TORNILLO METRICO 4-0.7XI 0 CAB FRESADA',200,25.27,2,0.0,2);
INSERT INTO "stock_producto" VALUES (82,1,200075,'TORNILLO METRICO 4-0.7XI 2 CAB FRESADA',200,27.51,2,0.0,2);
INSERT INTO "stock_producto" VALUES (83,1,200076,'TORNILLO METRICO 4-0.7XI 5 CAB FRESADA',200,29.91,2,0.0,2);
INSERT INTO "stock_producto" VALUES (84,1,200077,'TORNILLO METRICO 4-0.7XI 8 CAB FRESADA',200,32.15,2,0.0,2);
INSERT INTO "stock_producto" VALUES (85,1,200078,'TORNILLO METRICO 4-0.7X20 CAB FRESADA',200,36.78,2,0.0,2);
INSERT INTO "stock_producto" VALUES (86,1,200079,'TORNILLO METRICO 4-0.7X30 CAB FRESADA',200,48.3,2,0.0,2);
INSERT INTO "stock_producto" VALUES (87,1,200080,'TORNILLO METRICO 4-0.7X35 CAB FRESADA',200,54.13,2,0.0,2);
INSERT INTO "stock_producto" VALUES (88,1,200081,'TORNILLO METRICO 4-0.7X45 CAB FRESADA',200,66.09,2,0.0,2);
INSERT INTO "stock_producto" VALUES (89,1,200082,'TORNILLO METRICO 4-0.7X50 CAB FRESADA',200,72.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (90,1,200083,'TORNILLO METRICO 4-0.7X55 CAB FRESADA',200,78.05,2,0.0,2);
INSERT INTO "stock_producto" VALUES (91,1,200084,'TORNILLO METRICO 4-0.7X6O CAB FRESADA',200,84.03,2,0.0,2);
INSERT INTO "stock_producto" VALUES (92,1,200085,'TORNILLO METRICO 4-0.7X65 CAB FRESADA',200,90.02,2,0.0,2);
INSERT INTO "stock_producto" VALUES (93,1,200086,'TORNILLO METRICO 4-0.7X70 CAB FRESADA',200,96.0,2,0.0,2);
INSERT INTO "stock_producto" VALUES (94,1,200087,'TORNILLO METRICO 5-0.8X8 CAB FRESADA',200,28.82,2,0.0,2);
INSERT INTO "stock_producto" VALUES (95,1,200088,'TORNILLO METRICO 5-0.8XI 2 CAB FRESADA',200,34.32,2,0.0,2);
INSERT INTO "stock_producto" VALUES (96,1,200089,'TORNILLO METRICO 5-0.8XI 8 CAB FRESADA',200,39.92,2,0.0,2);
INSERT INTO "stock_producto" VALUES (97,1,200090,'TORNILLO METRICO 5-0.8X25 CAB FRESADA',200,52.37,2,0.0,2);
INSERT INTO "stock_producto" VALUES (98,1,200091,'TORNILLO METRICO 5-0.8X30 CAB FRESADA',200,59.33,2,0.0,2);
INSERT INTO "stock_producto" VALUES (99,1,200092,'TORNILLO METRICO 5-0.8X35 CAB FRESADA',200,66.28,2,0.0,2);
INSERT INTO "stock_producto" VALUES (100,1,200093,'TORNILLO METRICO 5-0.8X4O CAB FRESADA',200,73.12,2,0.0,2);
INSERT INTO "stock_producto" VALUES (101,1,200094,'TORNILLO METRICO 5-0.8X45 CAB FRESADA',200,80.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (102,1,200095,'TORNILLO METRICO 5-0.8X50 CAB FRESADA',200,87.03,2,0.0,2);
INSERT INTO "stock_producto" VALUES (103,1,200096,'TORNILLO METRICO 5-0.8X65 CAB FRESADA',200,107.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (104,1,200097,'TORNILLO METRICO 6-1XI2 CAB FRESADA',200,53.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (105,1,200098,'TORNILLO METRICO 6-1XI5 CAB FRESADA',200,56.73,2,0.0,2);
INSERT INTO "stock_producto" VALUES (106,1,200099,'TORNILLO METRICO 6-1XI8 CAB FRESADA',200,60.71,2,0.0,2);
INSERT INTO "stock_producto" VALUES (107,1,200100,'TORNILLO METRICO 6-1X30 CAB FRESADA',200,86.24,2,0.0,2);
INSERT INTO "stock_producto" VALUES (108,1,200101,'TORNILLO METRICO 6-1X35 CAB FRESADA',200,95.46,2,0.0,2);
INSERT INTO "stock_producto" VALUES (109,1,200102,'TORNILLO METRICO 6-1X40 CAB FRESADA',200,104.67,2,0.0,2);
INSERT INTO "stock_producto" VALUES (110,1,200103,'TORNILLO METRICO 6-1X45 CAB FRESADA',200,114.09,2,0.0,2);
INSERT INTO "stock_producto" VALUES (111,1,200104,'TORNILLO METRICO 6-1X50 CAB FRESADA',200,123.51,2,0.0,2);
INSERT INTO "stock_producto" VALUES (112,1,200105,'TORNILLO METRICO 6-1X55 CAB FRESADA',200,131.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (113,1,200106,'TORNILLO METRICO 6-1X60 CAB FRESADA',200,141.3,2,0.0,2);
INSERT INTO "stock_producto" VALUES (114,1,200107,'TORNILLO METRICO 6-1X65 CAB FRESADA',200,150.72,2,0.0,2);
INSERT INTO "stock_producto" VALUES (115,1,200108,'TORNILLO METRICO 6-1X70 CAB FRESADA',200,160.14,2,0.0,2);
INSERT INTO "stock_producto" VALUES (116,1,200109,'TORNILLOS P/METALES C/TANQUE 1/8XI/4',200,9.51,2,0.0,2);
INSERT INTO "stock_producto" VALUES (117,1,200110,'TORNILLOS P/METALES C/TANQUE I/8X5/I6',200,10.11,2,0.0,2);
INSERT INTO "stock_producto" VALUES (118,1,200111,'TORNILLOS P/METALES C/TANQUE I/8X3/8',200,10.52,2,0.0,2);
INSERT INTO "stock_producto" VALUES (119,1,200112,'TORNILLOS P/METALES C/TANQUE I/8XI/2',200,12.13,2,0.0,2);
INSERT INTO "stock_producto" VALUES (120,1,200113,'TORNILLOS P/METALES C/TANQUE 1/8X5/8',200,12.52,2,0.0,2);
INSERT INTO "stock_producto" VALUES (121,1,200114,'TORNILLOS P/METALES C/TANQUE 1/8X3/4',200,13.12,2,0.0,2);
INSERT INTO "stock_producto" VALUES (122,1,200115,'TORNILLOS P/METALES C/TANQUE I/8X7/8',200,14.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (123,1,200116,'TORNILLOS P/METALES C/TANQUE 1/8XI',200,15.18,2,0.0,2);
INSERT INTO "stock_producto" VALUES (124,1,200117,'TORNILLOS P/METALES C/TANQUE I/8XII/4',200,20.86,2,0.0,2);
INSERT INTO "stock_producto" VALUES (125,1,200118,'TORNILLOS P/METALES C/TANQUE I/8XI3/4',200,28.2,2,0.0,2);
INSERT INTO "stock_producto" VALUES (126,1,200119,'TORNILLOS P/METALES C/TANQUE 1/8X2',200,31.54,2,0.0,2);
INSERT INTO "stock_producto" VALUES (127,1,200120,'TORNILLOS P/METALES C/TANQUE 5/32X1/2',200,19.45,2,0.0,2);
INSERT INTO "stock_producto" VALUES (128,1,200121,'TORNILLOS P/METALES C/TANQUE 5/32X5/8',200,20.59,2,0.0,2);
INSERT INTO "stock_producto" VALUES (129,1,200122,'TORNILLOS P/METALES C/TANQUE 5/32X3/4',200,24.02,2,0.0,2);
INSERT INTO "stock_producto" VALUES (130,1,200123,'TORNILLOS P/METALES C/TANQUE 5/32X7/8',200,28.6,2,0.0,2);
INSERT INTO "stock_producto" VALUES (131,1,200124,'TORNILLOS P/METALES C/TANQUE 5/32Xl',200,30.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (132,1,200125,'TORNILLOS P/METALES C/TANQUE 5/32Xll/4',200,35.46,2,0.0,2);
INSERT INTO "stock_producto" VALUES (133,1,200126,'TORNILLOS P/METALES C/TANQUE 5/32Xl1/2',200,38.9,2,0.0,2);
INSERT INTO "stock_producto" VALUES (134,1,200127,'TORNILLOS P/METALES C/TANQUE 5/32Xl3/4',200,44.61,2,0.0,2);
INSERT INTO "stock_producto" VALUES (135,1,200128,'TORNILLOS P/METALES C/TANQUE 5/32X2',200,49.19,2,0.0,2);
INSERT INTO "stock_producto" VALUES (136,1,200129,'TORNILLOS P/METALES C/TANQUE 3/l6Xl/4',200,18.63,2,0.0,2);
INSERT INTO "stock_producto" VALUES (137,1,200130,'TORNILLOS P/METALES C/TANQUE 3/l6X5/l6',200,20.59,2,0.0,2);
INSERT INTO "stock_producto" VALUES (138,1,200131,'TORNILLOS P/METALES C/TANQUE 3/l6X3/8',200,21.57,2,0.0,2);
INSERT INTO "stock_producto" VALUES (139,1,200132,'TORNILLOS P/METALES C/TANQUE 3/l6Xl/2',200,24.51,2,0.0,2);
INSERT INTO "stock_producto" VALUES (140,1,200133,'TORNILLOS P/METALES C/TANQUE 3/l6X5/8',200,26.47,2,0.0,2);
INSERT INTO "stock_producto" VALUES (141,1,200134,'TORNILLOS P/METALES C/TANQUE 3/l6X3/4',200,30.4,2,0.0,2);
INSERT INTO "stock_producto" VALUES (142,1,200135,'TORNILLOS P/METALES C/TANQUE 3/l6X7/8',200,32.36,2,0.0,2);
INSERT INTO "stock_producto" VALUES (143,1,200136,'TORNILLOS P/METALES C/TANQUE 3/l6Xl',200,37.26,2,0.0,2);
INSERT INTO "stock_producto" VALUES (144,1,200137,'TORNILLOS P/METALES C/TANQUE 3/l6Xl1/4',200,40.2,2,0.0,2);
INSERT INTO "stock_producto" VALUES (145,1,200138,'TORNILLOS P/METALES C/TANQUE 3/l6Xl1/2',200,49.02,2,0.0,2);
INSERT INTO "stock_producto" VALUES (146,1,200139,'TORNILLOS P/METALES C/TANQUE 3/l6Xl3/4',200,53.93,2,0.0,2);
INSERT INTO "stock_producto" VALUES (147,1,200140,'TORNILLOS P/METALES C/TANQUE 3/l6X2',200,59.81,2,0.0,2);
INSERT INTO "stock_producto" VALUES (148,1,200141,'TORNILLOS P/METALES C/TANQUE 3/l6X21/2',200,70.6,2,0.0,2);
INSERT INTO "stock_producto" VALUES (149,1,200142,'TORNILLOS P/METALES C/TANQUE l/4X3/8',200,47.06,2,0.0,2);
INSERT INTO "stock_producto" VALUES (150,1,200143,'TORNILLOS P/METALES C/TANQUE l/4Xl/2',200,52.95,2,0.0,2);
INSERT INTO "stock_producto" VALUES (151,1,200144,'TORNILLOS P/METALES C/TANQUE l/4X5/8',200,56.87,2,0.0,2);
INSERT INTO "stock_producto" VALUES (152,1,200145,'TORNILLOS P/METALES C/TANQUE l/4X3/4',200,62.75,2,0.0,2);
INSERT INTO "stock_producto" VALUES (153,1,200146,'TORNILLOS P/METALES C/TANQUE l/4X7/8',200,67.65,2,0.0,2);
INSERT INTO "stock_producto" VALUES (154,1,200147,'TORNILLOS P/METALES C/TANQUE l/4Xl',200,76.48,2,0.0,2);
INSERT INTO "stock_producto" VALUES (155,1,200148,'TORNILLOS P/METALES C/TANQUE l/4Xl1/4',200,85.3,2,0.0,2);
INSERT INTO "stock_producto" VALUES (156,1,200149,'TORNILLOS P/METALES C/TANQUE l/4Xl1/2',200,97.07,2,0.0,2);
INSERT INTO "stock_producto" VALUES (157,1,200150,'TORNILLOS P/METALES C/TANQUE l/4Xl3/4',200,106.88,2,0.0,2);
INSERT INTO "stock_producto" VALUES (158,1,200151,'TORNILLOS P/METALES C/TANQUE I /4X2',200,111.78,2,0.0,2);
INSERT INTO "stock_producto" VALUES (159,1,200152,'TORNILLOS P/METALES C/TANQUE 1/4X21/2',200,142.17,2,0.0,2);
INSERT INTO "stock_producto" VALUES (160,1,200153,'TORNILLOS P/METALES C/TANQUE I/4X3',200,167.67,2,0.0,2);
INSERT INTO "stock_producto" VALUES (161,1,200154,'TORNILLOS P/METALES C/TANQUE 5/I6XI/2',200,71.02,2,0.0,2);
INSERT INTO "stock_producto" VALUES (162,1,200155,'TORNILLOS P/METALES C/TANQUE 5/16X5/8',200,71.89,2,0.0,2);
INSERT INTO "stock_producto" VALUES (163,1,200156,'TORNILLOS P/METALES C/TANQUE 5/16X3/4',200,89.21,2,0.0,2);
INSERT INTO "stock_producto" VALUES (164,1,200157,'TORNILLOS P/METALES C/TANQUE 5/l6X7/8',200,97.01,2,0.0,2);
INSERT INTO "stock_producto" VALUES (165,1,200158,'TORNILLOS P/METALES C/TAN0UE 5/16X1',200,106.54,2,0.0,2);
INSERT INTO "stock_producto" VALUES (166,1,200159,'TORNILLOS P/METALES C/TANQUE 5/16X1l/4',200,113.46,2,0.0,2);
INSERT INTO "stock_producto" VALUES (167,1,200160,'TORNILLOS P/METALES C/TANQUE 5/I6XI I/2',200,133.39,2,0.0,2);
INSERT INTO "stock_producto" VALUES (168,1,200161,'TORNILLOS P/METALES C/TANQUE 5/I6XI 3/4',200,151.57,2,0.0,2);
INSERT INTO "stock_producto" VALUES (169,1,200162,'TORNILLOS P/METALES C/TANQUE 5/16X2',200,162.83,2,0.0,2);
INSERT INTO "stock_producto" VALUES (170,1,200163,'TORNILLOS P/METALES C/TANQUE 5/I6X2I/2',200,198.35,2,0.0,2);
INSERT INTO "stock_producto" VALUES (171,1,200164,'TORNILLOS P/METALES C/TANQUE 5/I6X3',200,227.79,2,0.0,2);
INSERT INTO "stock_producto" VALUES (172,1,2505035,'TORNILLO 8G MM MA 5 X 35',200,23.31,2,0.0,1);
INSERT INTO "stock_producto" VALUES (173,1,2505040,'TORNILLO 8G MM MA 5 X 40',350,24.22,2,0.0,1);
INSERT INTO "stock_producto" VALUES (174,1,2505045,'TORNILLO 8G MM MA 5 X 45',200,26.88,2,0.0,1);
INSERT INTO "stock_producto" VALUES (175,1,2506025,'TORNILLO 8G MM MA 6 X 25',270,23.59,2,0.0,1);
INSERT INTO "stock_producto" VALUES (176,1,2506030,'TORNILLO 8G MM MA 6 X 30',220,26.39,2,0.0,1);
INSERT INTO "stock_producto" VALUES (177,1,2506035,'TORNILLO 8G MM MA 6 X 35',250,27.93,2,0.0,1);
INSERT INTO "stock_producto" VALUES (178,1,2506040,'TORNILLO 8G MM MA 6 X 40',250,30.1,2,0.0,1);
INSERT INTO "stock_producto" VALUES (179,1,2506045,'TORNILLO 8G MM MA 6 X 45',200,32.62,2,0.0,1);
INSERT INTO "stock_producto" VALUES (180,1,2506050,'TORNILLO 8G MM MA 6 X 50',300,35.14,2,0.0,1);
INSERT INTO "stock_producto" VALUES (181,1,2506055,'TORNILLO 8G MM MA 6 X 55',150,39.83,2,0.0,1);
INSERT INTO "stock_producto" VALUES (182,1,2506060,'TORNILLO 8G MM MA 6 X 60',120,42.77,2,0.0,1);
INSERT INTO "stock_producto" VALUES (183,1,2506070,'TORNILLO 8G MM MA 6 X 70',200,52.57,2,0.0,1);
INSERT INTO "stock_producto" VALUES (184,1,2508015,'TORNILLO 8G MM MA 8 X 15',250,35.14,2,0.0,1);
INSERT INTO "stock_producto" VALUES (185,1,2508020,'TORNILLO 8G MM MA 8 X 20',300,37.45,2,0.0,1);
INSERT INTO "stock_producto" VALUES (186,1,2508025,'TORNILLO 8G MM MA 8 X 25',400,41.02,2,0.0,1);
INSERT INTO "stock_producto" VALUES (187,1,2508030,'TORNILLO 8G MM MA 8 X 30',150,44.45,2,0.0,1);
INSERT INTO "stock_producto" VALUES (188,1,2508035,'TORNILLO 8G MM MA 8 X 35',300,49.56,2,0.0,1);
INSERT INTO "stock_producto" VALUES (189,1,2508040,'TORNILLO 8G MM MA 8 X 40',250,54.11,2,0.0,1);
INSERT INTO "stock_producto" VALUES (190,1,2508050,'TORNILLO 8G MM MA 8 X 50',200,63.0,2,0.0,1);
INSERT INTO "stock_producto" VALUES (191,1,2508080,'TORNILLO 8G MM MA 8 X 80',150,97.51,2,0.0,1);
INSERT INTO "stock_producto" VALUES (192,1,2510020,'TORNILLO 8G MM MA 10 X 20',200,64.12,2,0.0,1);
INSERT INTO "stock_producto" VALUES (193,1,2510030,'TORNILLO 8G MM MA 10 X 30',100,75.39,2,0.0,1);
INSERT INTO "stock_producto" VALUES (194,1,2510040,'TORNILLO 8G MM MA 10 X 40',150,90.58,2,0.0,1);
INSERT INTO "stock_producto" VALUES (195,1,2510050,'TORNILLO 8G MM MA 10 X 50',125,106.75,2,0.0,1);
INSERT INTO "stock_producto" VALUES (196,1,2510060,'TORNILLO 8G MM MA 10 X 60',100,118.86,2,0.0,1);
INSERT INTO "stock_producto" VALUES (197,1,2510080,'TORNILLO 8G MM MA 10 X 80',60,160.83,2,0.0,1);
INSERT INTO "stock_producto" VALUES (198,1,608006,'TUERCA AUTOFR. MA 6 MM C',250,10.12,2,0.0,1);
INSERT INTO "stock_producto" VALUES (199,1,608008,'TUERCA AUTOFR. MA 8 MM C',250,19.89,2,0.0,1);
INSERT INTO "stock_producto" VALUES (200,1,607005,'TUERCA PUL. MA CLASE 6 ZINC  5 X 0.8',1000,6.64,2,0.0,1);
INSERT INTO "stock_producto" VALUES (201,1,607006,'TUERCA PUL. MA CLASE 6 ZINC  6 X 1',1000,7.28,2,0.0,1);
INSERT INTO "stock_producto" VALUES (202,1,607008,'TUERCA PUL. MA CLASE 6 ZINC  8 X 1.25',500,14.55,2,0.0,1);
INSERT INTO "stock_producto" VALUES (203,1,607010,'TUERCA PUL. MA CLASE 6 ZINC  10 X 1.5',300,32.01,2,0.0,1);
INSERT INTO "stock_producto" VALUES (204,1,1806016,'BULON PULIDO UNC 1/4 X 5/8',500,14.71,2,0.0,1);
INSERT INTO "stock_producto" VALUES (205,1,1806020,'BUL.PUL.UNC.ZINC. 1/4 X 3/4 ',500,19.69,2,0.0,1);
INSERT INTO "stock_producto" VALUES (206,1,1806025,'BULON PULIDO UNC 1/4 X 1 ',300,17.64,2,0.0,1);
INSERT INTO "stock_producto" VALUES (207,1,1806032,'BULON PULIDO UNC 1/4 X 1 1/4 ',500,21.15,2,0.0,1);
INSERT INTO "stock_producto" VALUES (208,1,1806038,'BULON PULIDO UNC 1/4 X 1 1/2 ',200,21.96,2,0.0,1);
INSERT INTO "stock_producto" VALUES (209,1,1806051,'BUL.PUL.UNC.ZINC. 1/4 X 2 ',200,29.5,2,0.0,1);
INSERT INTO "stock_producto" VALUES (210,1,1806076,'BULON PULIDO UNC 1/4 X 3 ',100,41.8,2,0.0,1);
INSERT INTO "stock_producto" VALUES (211,1,1809016,'BULON PULIDO UNC 3/8 X 5/8  ',200,28.33,2,0.0,1);
INSERT INTO "stock_producto" VALUES (212,1,1809019,'BULON PULIDO UNC 3/8 X 3/4 ',200,30.16,2,0.0,1);
INSERT INTO "stock_producto" VALUES (213,1,1809025,'BULON PULIDO UNC 3/8 X 1',300,35.43,2,0.0,1);
INSERT INTO "stock_producto" VALUES (214,1,1809032,'BULON PULIDO UNC 3/8 X 1 1/4 ',300,38.72,2,0.0,1);
INSERT INTO "stock_producto" VALUES (215,1,1809038,'BULON PULIDO UNC 3/8 X 1 1/2 ',200,43.41,2,0.0,1);
INSERT INTO "stock_producto" VALUES (216,1,1809044,'BULON PULIDO UNC 3/8 X 1 3/4  ',150,50.0,2,0.0,1);
INSERT INTO "stock_producto" VALUES (217,1,1809050,'BULON PULIDO UNC 3/8 X 2 ',150,53.29,2,0.0,1);
INSERT INTO "stock_producto" VALUES (218,1,1809063,'BULON PULIDO UNC 3/8 X 2 1/2 ',100,63.98,2,0.0,1);
INSERT INTO "stock_producto" VALUES (219,1,1809076,'BULON PULIDO UNC 3/8 X 3 ',100,72.47,2,0.0,1);
INSERT INTO "stock_producto" VALUES (220,1,1809101,'BUL.PUL.UNC.ZINC. 3/8 X 4',100,117.17,2,0.0,1);
INSERT INTO "stock_producto" VALUES (221,1,1808016,'BULON PULIDO UNC 5/16 X 5/8 ',300,22.33,2,0.0,1);
INSERT INTO "stock_producto" VALUES (222,1,1808026,'BUL.PUL.UNC.ZINC. 5/16 X 1 ',400,30.38,2,0.0,1);
INSERT INTO "stock_producto" VALUES (223,1,1808032,'BULON PULIDO UNC 5/16 X 1 1/4 ',300,29.57,2,0.0,1);
INSERT INTO "stock_producto" VALUES (224,1,1808038,'BULON PULIDO UNC 5/16 X 1 1/2 ',300,31.77,2,0.0,1);
INSERT INTO "stock_producto" VALUES (225,1,1808044,'BULON PULIDO UNC 5/16 X 1 3/4 ',250,34.84,2,0.0,1);
INSERT INTO "stock_producto" VALUES (226,1,1808050,'BULON PULIDO UNC 5/16 X 2 ',200,37.7,2,0.0,1);
INSERT INTO "stock_producto" VALUES (227,1,1808064,'BUL.PUL.UNC.ZINC. 5/16 X 2 1/2 ',200,52.94,2,0.0,1);
INSERT INTO "stock_producto" VALUES (228,1,1808077,'BUL.PUL.UNC.ZINC. 5/16 X 3 ',100,61.27,2,0.0,1);
INSERT INTO "stock_producto" VALUES (229,1,1808101,'BUL.PUL.UNC.ZINC. 5/16 X 4 ',100,95.7,2,0.0,1);
INSERT INTO "stock_producto" VALUES (230,1,704006,'TUERCA EST. AC PUL UNC 1/4  ',1000,8.78,2,0.0,1);
INSERT INTO "stock_producto" VALUES (231,1,704008,'TUERCA EST. AC PUL UNC 5/16  ',1000,13.07,2,0.0,1);
INSERT INTO "stock_producto" VALUES (232,1,704009,'TUERCA EST. AC PUL UNC 3/8   ',800,18.43,2,0.0,1);
INSERT INTO "stock_producto" VALUES (233,1,602009,'TUERCA PUL. UNC ZINCADA 3/8   ',500,20.96,2,0.0,1);
INSERT INTO "stock_producto" VALUES (234,1,602008,'TUERCA PUL. UNC ZINCADA 5/16   ',1000,15.4,2,0.0,1);
INSERT INTO "stock_producto" VALUES (235,1,1659,'ABRAZADERA NEON 100 X 2.5 (100 U. )',500,8.42,2,0.0,3);
INSERT INTO "stock_producto" VALUES (236,1,1660,'ABRAZADERA NEON 150 X 3.6 (100 U. )',500,23.3,2,0.0,3);
INSERT INTO "stock_producto" VALUES (237,1,1642,'ABRAZADERA NEON 200 X 3.6 (100 U. )',500,30.57,2,0.0,3);
INSERT INTO "stock_producto" VALUES (238,1,1662,'ABRAZADERA NEON 200 X 4.8 (100 U. )',500,42.1,2,0.0,3);
INSERT INTO "stock_producto" VALUES (239,1,1661,'ABRAZADERA NEON 250 X 3.6 (100 U. )',500,41.89,2,0.0,3);
INSERT INTO "stock_producto" VALUES (240,1,1663,'ABRAZADERA NEON 250 X 4.8 (100 U. )',500,55.09,2,0.0,3);
INSERT INTO "stock_producto" VALUES (241,1,1664,'ABRAZADERA NEON 300 X 4.8 (100 U. )',500,62.89,2,0.0,3);
INSERT INTO "stock_producto" VALUES (242,1,1641,'ABRAZADERA NEON 380 X 4.8 (100 U. )',500,86.53,2,0.0,3);
INSERT INTO "stock_producto" VALUES (243,1,1665,'ABRAZADERA NEON 400 X 4.8 (100 U. )',500,93.41,2,0.0,3);
INSERT INTO "stock_producto" VALUES (244,1,5530,'REMACHE RERAR 3.5 X 6',1000,15.35,2,0.0,3);
INSERT INTO "stock_producto" VALUES (245,1,5531,'REMACHE RERAR 3.5 X 8',1000,15.67,2,0.0,3);
INSERT INTO "stock_producto" VALUES (246,1,5532,'REMACHE RERAR 3.5 X 10',1000,16.71,2,0.0,3);
INSERT INTO "stock_producto" VALUES (247,1,5533,'REMACHE RERAR 3.5 X 12',1000,17.87,2,0.0,3);
INSERT INTO "stock_producto" VALUES (248,1,5534,'REMACHE RERAR 3.5 X 14',1000,18.22,2,0.0,3);
INSERT INTO "stock_producto" VALUES (249,1,5535,'REMACHE RERAR 3.5 X 16',1000,19.4,2,0.0,3);
INSERT INTO "stock_producto" VALUES (250,1,5536,'REMACHE RERAR 3.5 X 19',1000,21.75,2,0.0,3);
INSERT INTO "stock_producto" VALUES (251,1,5537,'REMACHE RERAR 4 X 6',1000,18.95,2,0.0,3);
INSERT INTO "stock_producto" VALUES (252,1,5538,'REMACHE RERAR 4 X 8',1000,19.8,2,0.0,3);
INSERT INTO "stock_producto" VALUES (253,1,5539,'REMACHE RERAR 4 X 10',1000,20.67,2,0.0,3);
INSERT INTO "stock_producto" VALUES (254,1,5540,'REMACHE RERAR 4 X 12',1000,21.48,2,0.0,3);
INSERT INTO "stock_producto" VALUES (255,1,5541,'REMACHE RERAR 4 X 14',1000,21.96,2,0.0,3);
INSERT INTO "stock_producto" VALUES (256,1,5542,'REMACHE RERAR 4 X 16',1000,23.62,2,0.0,3);
INSERT INTO "stock_producto" VALUES (257,1,5543,'REMACHE RERAR 4 X 19',1000,25.68,2,0.0,3);
INSERT INTO "stock_producto" VALUES (258,1,5544,'REMACHE RERAR 4.8 X 8',500,31.25,2,0.0,3);
INSERT INTO "stock_producto" VALUES (259,1,5545,'REMACHE RERAR 4.8 X 10',500,32.35,2,0.0,3);
INSERT INTO "stock_producto" VALUES (260,1,5546,'REMACHE RERAR 4.8 X 12',500,33.87,2,0.0,3);
INSERT INTO "stock_producto" VALUES (261,1,5547,'REMACHE RERAR 4.8 X 14',500,35.94,2,0.0,3);
INSERT INTO "stock_producto" VALUES (262,1,5548,'REMACHE RERAR 4.8 X 16',500,37.58,2,0.0,3);
INSERT INTO "stock_producto" VALUES (263,1,5549,'REMACHE RERAR 4.8 X 20',500,45.81,2,0.0,3);
INSERT INTO "stock_producto" VALUES (264,1,5550,'REMACHE RERAR 4.8 X 25',500,50.84,2,0.0,3);
INSERT INTO "stock_producto" VALUES (265,1,5551,'REMACHE RERAR 4.8 X 28',500,55.98,2,0.0,3);
INSERT INTO "stock_producto" VALUES (266,1,5552,'REMACHE RERAR 4.8 X 30',500,60.46,2,0.0,3);
INSERT INTO "stock_producto" VALUES (267,1,3065,'TENSOR TUBULAR TOTH DE 60 MM.',6,1167.0,2,0.0,3);
INSERT INTO "stock_producto" VALUES (268,1,4802,'TORNILLOS FIX 2.5 X 17 (CAJA X 200)',200,5.28,2,0.0,3);
INSERT INTO "stock_producto" VALUES (269,1,4803,'TORNILLOS FIX 2.5 X 20 (CAJA X 400)',400,11.25,2,0.0,3);
INSERT INTO "stock_producto" VALUES (270,1,4804,'TORNILLOS FIX 3 X 10 (CAJA X 400)',400,9.65,2,0.0,3);
INSERT INTO "stock_producto" VALUES (271,1,4805,'TORNILLOS FIX 3 X 12 (CAJA X 200)',200,20.1,2,0.0,3);
INSERT INTO "stock_producto" VALUES (272,1,4807,'TORNILLOS FIX 3 X 20 (CAJA X 200)',200,11.94,2,0.0,3);
INSERT INTO "stock_producto" VALUES (273,1,4808,'TORNILLOS FIX 3 X 25 (CAJA X 200)',200,12.74,2,0.0,3);
INSERT INTO "stock_producto" VALUES (274,1,4809,'TORNILLOS FIX 3 X 30 (CAJA X 200)',200,13.54,2,0.0,3);
INSERT INTO "stock_producto" VALUES (275,1,4812,'TORNILLOS FIX 3.5 X 12 (CAJA X 400)',400,10.66,2,0.0,3);
INSERT INTO "stock_producto" VALUES (276,1,4813,'TORNILLOS FIX 3.5 X 16 (CAJA X 200)',200,11.69,2,0.0,3);
INSERT INTO "stock_producto" VALUES (277,1,4814,'TORNILLOS FIX 3.5 X 20 (CAJA X 200)',200,12.92,2,0.0,3);
INSERT INTO "stock_producto" VALUES (278,1,4815,'TORNILLOS FIX 3.5 X 25 (CAJA X 200)',200,13.79,2,0.0,3);
INSERT INTO "stock_producto" VALUES (279,1,4816,'TORNILLOS FIX 3.5 X 30 (CAJA X 200)',200,15.1,2,0.0,3);
INSERT INTO "stock_producto" VALUES (280,1,4817,'TORNILLOS FIX 3.5 X 35 (CAJA X 200)',200,15.93,2,0.0,3);
INSERT INTO "stock_producto" VALUES (281,1,4818,'TORNILLOS FIX 3.5 X 40 (CAJA X 200)',200,18.32,2,0.0,3);
INSERT INTO "stock_producto" VALUES (282,1,4819,'TORNILLOS FIX 3.5 X 45 (CAJA X 200)',200,19.75,2,0.0,3);
INSERT INTO "stock_producto" VALUES (283,1,4820,'TORNILLOS FIX 3.5 X 50 (CAJA X 200)',200,21.58,2,0.0,3);
INSERT INTO "stock_producto" VALUES (284,1,4821,'TORNILLOS FIX 4 X 12 (CAJA X 200)',200,11.07,2,0.0,3);
INSERT INTO "stock_producto" VALUES (285,1,4822,'TORNILLOS FIX 4 X 16 (CAJA X 200)',200,12.3,2,0.0,3);
INSERT INTO "stock_producto" VALUES (286,1,4823,'TORNILLOS FIX 4 X 20 (CAJA X 200)',200,13.33,2,0.0,3);
INSERT INTO "stock_producto" VALUES (287,1,4824,'TORNILLOS FIX 4 X 25 (CAJA X 200)',200,15.14,2,0.0,3);
INSERT INTO "stock_producto" VALUES (288,1,4825,'TORNILLOS FIX 4 X 30 (CAJA X 200)',200,17.11,2,0.0,3);
INSERT INTO "stock_producto" VALUES (289,1,4826,'TORNILLOS FIX 4 X 35 (CAJA X 200)',200,19.12,2,0.0,3);
INSERT INTO "stock_producto" VALUES (290,1,4827,'TORNILLOS FIX 4 X 40 (CAJA X 200)',200,19.9,2,0.0,3);
INSERT INTO "stock_producto" VALUES (291,1,4828,'TORNILLOS FIX 4 X 45 (CAJA X 200)',200,22.06,2,0.0,3);
INSERT INTO "stock_producto" VALUES (292,1,4830,'TORNILLOS FIX 4 X 50 (CAJA X 200)',200,24.69,2,0.0,3);
INSERT INTO "stock_producto" VALUES (293,1,4832,'TORNILLOS FIX 4 X 60 (CAJA X 200)',200,34.06,2,0.0,3);
INSERT INTO "stock_producto" VALUES (294,1,4835,'TORNILLOS FIX 4.5 X 25 (CAJA X 200)',200,17.8,2,0.0,3);
INSERT INTO "stock_producto" VALUES (295,1,4836,'TORNILLOS FIX 4.5 X 30 (CAJA X 200)',200,18.89,2,0.0,3);
INSERT INTO "stock_producto" VALUES (296,1,4837,'TORNILLOS FIX 4.5 X 35 (CAJA X 200)',200,21.47,2,0.0,3);
INSERT INTO "stock_producto" VALUES (297,1,4838,'TORNILLOS FIX 4.5 X 40 (CAJA X 200)',200,24.04,2,0.0,3);
INSERT INTO "stock_producto" VALUES (298,1,4839,'TORNILLOS FIX 4.5 X 45 (CAJA X 200)',200,27.65,2,0.0,3);
INSERT INTO "stock_producto" VALUES (299,1,4840,'TORNILLOS FIX 4.5 X 50 (CAJA X 200)',200,33.4,2,0.0,3);
INSERT INTO "stock_producto" VALUES (300,1,4842,'TORNILLOS FIX 4.5 X 60 (CAJA X 200)',200,39.24,2,0.0,3);
INSERT INTO "stock_producto" VALUES (301,1,4846,'TORNILLOS FIX 5 X 30 (CAJA X 200)',200,27.68,2,0.0,3);
INSERT INTO "stock_producto" VALUES (302,1,4847,'TORNILLOS FIX 5 X 35 (CAJA X 200)',200,29.32,2,0.0,3);
INSERT INTO "stock_producto" VALUES (303,1,4848,'TORNILLOS FIX 5 X 40 (CAJA X 200)',200,31.35,2,0.0,3);
INSERT INTO "stock_producto" VALUES (304,1,4849,'TORNILLOS FIX 5 X 45 (CAJA X 200)',200,35.48,2,0.0,3);
INSERT INTO "stock_producto" VALUES (305,1,4850,'TORNILLOS FIX 5 X 50 (CAJA X 200)',200,36.74,2,0.0,3);
INSERT INTO "stock_producto" VALUES (306,1,4851,'TORNILLOS FIX 5 X 60 (CAJA X 200)',200,41.72,2,0.0,3);
INSERT INTO "stock_producto" VALUES (307,1,4852,'TORNILLOS FIX 5 X 70 (CAJA X 200)',200,58.69,2,0.0,3);
CREATE INDEX IF NOT EXISTS "stock_producto_categoria_id_97e4f2a8" ON "stock_producto" (
	"categoria_id"
);
CREATE INDEX IF NOT EXISTS "stock_producto_utilidad_id_3dc0a64e" ON "stock_producto" (
	"utilidad_id"
);
CREATE INDEX IF NOT EXISTS "stock_producto_marca_id_044ca7bc" ON "stock_producto" (
	"marca_id"
);
COMMIT;