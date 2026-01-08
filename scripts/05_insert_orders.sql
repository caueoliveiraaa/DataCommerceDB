/*
File: ~/DataCommerceDB/scripts/insert_orders.sql
Purpose: Injects all orders into the orders table.
*/

BEGIN;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE READ WRITE;
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (12, 144, 160)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 33, 3)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 122, 760)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (3, 88, 987)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 11, 117)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 177, 557)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (46, 52, 356)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 101, 149)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (33, 67, 364)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (2, 150, 318)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (25, 13, 610)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 199, 387)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 45, 829)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (6, 172, 146)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (37, 84, 886)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (11, 190, 508)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (49, 63, 124)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (22, 118, 124)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (15, 7, 819)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (30, 166, 451)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (44, 92, 34)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 187, 679)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 39, 350)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 121, 239)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (27, 14, 697)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (8, 173, 224)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (31, 58, 617)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 142, 564)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (40, 19, 977)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 133, 259)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 75, 298)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 186, 873)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 49, 800)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 159, 595)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 26, 32)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 112, 840)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (29, 5, 92)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (20, 198, 825)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 64, 258)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (13, 147, 99)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (24, 32, 802)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (45, 181, 564)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 93, 861)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 120, 716)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (26, 41, 177)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (32, 160, 715)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (3, 12, 724)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 199, 778)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 88, 339)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 176, 875)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 54, 218)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 143, 367)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (6, 9, 937)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (23, 115, 849)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (11, 70, 895)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 102, 822)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 37, 790)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 151, 784)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 4, 114)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (2, 167, 687)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (46, 23, 834)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (15, 195, 360)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (30, 66, 872)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (44, 140, 548)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 110, 147)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 72, 198)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (27, 184, 886)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (8, 21, 211)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (31, 170, 307)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 97, 249)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (40, 12, 254)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 193, 277)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 44, 709)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 158, 600)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 3, 816)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 187, 966)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 52, 841)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 129, 182)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (29, 74, 496)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (20, 118, 727)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 15, 185)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (13, 200, 437)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (24, 91, 202)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (45, 17, 405)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 134, 961)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 48, 485)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (26, 176, 58)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (32, 69, 980)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (3, 105, 659)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 41, 642)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 123, 656)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 8, 275)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 196, 365)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 57, 249)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (6, 182, 218)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (23, 11, 794)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (11, 155, 766)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 99, 323)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 14, 11)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 188, 177)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (44, 12, 672)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 144, 316)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 55, 825)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (33, 98, 424)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (12, 187, 613)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 76, 494)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (25, 33, 667)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (3, 141, 925)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 199, 873)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 88, 782)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (29, 120, 996)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 14, 96)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (22, 77, 318)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 63, 780)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 102, 729)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 55, 925)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 181, 487)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 19, 128)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 198, 935)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 72, 222)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 111, 904)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 166, 688)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (31, 45, 510)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 133, 777)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 195, 433)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 89, 608)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 144, 317)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 7, 313)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 173, 236)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 91, 824)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 166, 907)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 33, 357)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 140, 356)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (31, 199, 741)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 12, 151)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (40, 177, 889)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 88, 705)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 41, 728)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 133, 138)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 102, 321)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 199, 963)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 77, 232)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 181, 947)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 63, 18)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (31, 12, 851)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 144, 228)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (40, 98, 372)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 55, 126)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 187, 555)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 76, 836)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 33, 995)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 141, 865)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 88, 569)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 120, 435)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 12, 96)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (49, 61, 456)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 29, 26)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 71, 251)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (15, 36, 755)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 174, 759)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 23, 605)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 9, 31)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (6, 56, 239)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (33, 155, 28)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 51, 734)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (42, 180, 559)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (27, 57, 460)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 72, 829)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 41, 715)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 88, 285)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 56, 981)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (49, 87, 105)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (6, 98, 100)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (23, 89, 619)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 12, 748)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (30, 138, 128)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (25, 21, 566)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 161, 634)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (24, 148, 197)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (46, 18, 47)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 59, 792)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 21, 876)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (15, 26, 390)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 117, 651)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (24, 42, 380)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (23, 54, 687)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 180, 960)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (44, 166, 74)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (39, 163, 176)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 187, 251)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (11, 119, 389)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 164, 705)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 57, 702)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 15, 235)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (3, 81, 411)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 17, 217)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (37, 184, 323)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 168, 512)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (26, 165, 470)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 68, 143)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 144, 552)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 150, 439)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 103, 371)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (32, 24, 774)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 29, 157)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 41, 812)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (44, 109, 611)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 99, 391)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (39, 120, 542)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 142, 882)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 175, 739)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (8, 175, 907)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 69, 788)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (42, 88, 115)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 112, 162)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (30, 1, 977)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 185, 270)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (33, 46, 520)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 161, 306)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 130, 624)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (13, 40, 383)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (49, 42, 553)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 136, 941)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 154, 332)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (32, 5, 115)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (24, 79, 246)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 62, 900)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (37, 21, 88)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 125, 836)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 137, 785)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 122, 970)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 43, 272)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 156, 434)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 139, 774)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 177, 206)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (46, 80, 409)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 167, 383)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (29, 133, 463)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (8, 64, 231)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 87, 22)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 142, 236)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 57, 8)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 182, 647)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 59, 70)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (3, 85, 73)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (33, 61, 286)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 125, 220)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 34, 741)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (37, 148, 485)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 122, 827)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (27, 49, 97)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 169, 442)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (23, 109, 421)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (30, 187, 56)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (44, 168, 662)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 16, 413)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 87, 820)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 64, 197)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (13, 138, 460)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 109, 188)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 119, 256)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 114, 828)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 26, 52)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (42, 139, 857)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 24, 949)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (11, 105, 498)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (31, 55, 886)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (26, 16, 169)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (25, 1, 400)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 117, 293)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 179, 981)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 143, 678)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (46, 125, 159)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (13, 76, 223)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 149, 754)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 16, 766)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 123, 515)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (34, 41, 59)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (33, 21, 872)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (12, 18, 610)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 173, 883)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 104, 123)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (37, 64, 593)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (39, 11, 635)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (6, 108, 674)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (38, 145, 536)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 67, 210)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 184, 322)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 68, 406)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 172, 661)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (21, 19, 10)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (30, 160, 577)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 19, 551)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 130, 272)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 90, 903)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 63, 379)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (19, 41, 449)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 181, 310)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (40, 168, 542)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (1, 171, 837)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 77, 955)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 27, 962)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 68, 119)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 142, 160)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 73, 620)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 184, 352)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (14, 176, 650)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 130, 501)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 14, 95)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (41, 109, 850)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (18, 12, 4)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (22, 34, 653)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 42, 760)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (29, 142, 723)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 144, 10)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (8, 20, 968)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (45, 39, 559)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (3, 95, 597)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (36, 38, 441)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (9, 11, 316)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (24, 11, 921)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (16, 171, 106)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (23, 144, 906)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (27, 159, 768)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (10, 61, 886)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (11, 46, 903)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (27, 7, 184)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 86, 802)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (27, 172, 885)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 64, 274)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (11, 180, 111)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (25, 10, 880)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (31, 57, 205)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (30, 90, 313)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (15, 58, 25)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (43, 50, 409)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (22, 72, 886)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 72, 360)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (42, 131, 410)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (44, 138, 340)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (2, 30, 899)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 46, 595)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (17, 10, 112)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (39, 112, 354)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (47, 81, 447)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (39, 131, 119)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (25, 148, 195)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (28, 1, 533)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 176, 737)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (48, 189, 687)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (13, 94, 442)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (5, 171, 943)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (4, 69, 90)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (50, 105, 273)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (7, 10, 389)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

INSERT INTO commerce.orders (user_id, product_id, quantity)
VALUES (35, 144, 341)
ON CONFLICT (user_id, product_id, created_date) DO NOTHING;

COMMIT;
