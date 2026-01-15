/*
File: ~/DataCommerceDB/scripts/06_insert_stocks.sql
Purpose: Injects all orders into the orders table.
*/

BEGIN;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE READ WRITE;
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (1, 120)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (2, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (3, 300)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (4, 45)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (5, 210)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (6, 60)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (7, 500)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (8, 75)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (9, 180)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (10, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (11, 220)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (12, 130)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (13, 400)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (14, 55)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (15, 310)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (16, 70)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (17, 260)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (18, 90)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (19, 150)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (20, 80)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (21, 140)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (22, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (23, 280)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (24, 65)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (25, 320)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (26, 110)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (27, 450)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (28, 70)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (29, 200)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (30, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (31, 260)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (32, 150)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (33, 390)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (34, 55)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (35, 310)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (36, 120)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (37, 270)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (38, 90)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (39, 160)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (40, 75)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (41, 135)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (42, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (43, 280)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (44, 60)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (45, 310)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (46, 125)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (47, 470)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (48, 80)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (49, 190)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (50, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (51, 250)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (52, 145)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (53, 380)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (54, 70)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (55, 295)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (56, 115)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (57, 265)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (58, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (59, 155)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (60, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (61, 140)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (62, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (63, 275)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (64, 65)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (65, 320)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (66, 115)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (67, 460)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (68, 75)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (69, 185)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (70, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (71, 245)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (72, 135)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (73, 370)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (74, 60)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (75, 305)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (76, 125)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (77, 265)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (78, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (79, 150)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (80, 90)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (81, 145)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (82, 105)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (83, 285)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (84, 70)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (85, 330)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (86, 120)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (87, 480)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (88, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (89, 195)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (90, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (91, 255)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (92, 140)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (93, 360)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (94, 65)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (95, 315)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (96, 125)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (97, 275)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (98, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (99, 165)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (100, 90)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (101, 150)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (102, 110)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (103, 290)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (104, 75)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (105, 335)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (106, 125)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (107, 490)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (108, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (109, 205)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (110, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (111, 265)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (112, 145)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (113, 375)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (114, 70)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (115, 320)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (116, 130)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (117, 280)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (118, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (119, 170)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (120, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (121, 155)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (122, 105)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (123, 295)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (124, 80)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (125, 340)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (126, 135)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (127, 495)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (128, 90)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (129, 210)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (130, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (131, 270)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (132, 150)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (133, 385)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (134, 75)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (135, 325)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (136, 130)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (137, 285)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (138, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (139, 175)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (140, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (141, 160)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (142, 110)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (143, 300)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (144, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (145, 345)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (146, 140)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (147, 500)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (148, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (149, 215)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (150, 105)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (151, 275)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (152, 155)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (153, 395)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (154, 80)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (155, 330)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (156, 135)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (157, 290)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (158, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (159, 180)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (160, 90)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (161, 165)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (162, 115)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (163, 305)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (164, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (165, 350)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (166, 145)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (167, 510)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (168, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (169, 220)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (170, 105)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (171, 280)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (172, 150)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (173, 400)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (174, 80)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (175, 335)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (176, 140)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (177, 295)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (178, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (179, 185)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (180, 90)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (181, 170)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (182, 120)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (183, 310)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (184, 85)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (185, 355)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (186, 145)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (187, 515)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (188, 95)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (189, 225)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (190, 105)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (191, 285)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (192, 150)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (193, 405)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (194, 80)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (195, 340)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (196, 135)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (197, 295)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (198, 100)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (199, 190)
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO commerce.stock (product_id, stock_quantity)
VALUES (200, 95)
ON CONFLICT (product_id) DO NOTHING;

COMMIT;
