/*
File: ~/DataCommerceDB/scripts/insert_orders.sql
Purpose: Injects all orders into the orders table.
*/

begin try
    begin transaction;
        insert into orders (user_id, product_id, quantity)
        values (12, 144, 160);
        insert into orders (user_id, product_id, quantity)
        values (7, 33, 3);
        insert into orders (user_id, product_id, quantity)
        values (41, 122, 760);
        insert into orders (user_id, product_id, quantity)
        values (3, 88, 987);
        insert into orders (user_id, product_id, quantity)
        values (28, 11, 117);
        insert into orders (user_id, product_id, quantity)
        values (19, 177, 557);
        insert into orders (user_id, product_id, quantity)
        values (46, 52, 356);
        insert into orders (user_id, product_id, quantity)
        values (9, 101, 149);
        insert into orders (user_id, product_id, quantity)
        values (33, 67, 364);
        insert into orders (user_id, product_id, quantity)
        values (2, 150, 318);
        insert into orders (user_id, product_id, quantity)
        values (25, 13, 610);
        insert into orders (user_id, product_id, quantity)
        values (48, 199, 387);
        insert into orders (user_id, product_id, quantity)
        values (14, 45, 829);
        insert into orders (user_id, product_id, quantity)
        values (6, 172, 146);
        insert into orders (user_id, product_id, quantity)
        values (37, 84, 886);
        insert into orders (user_id, product_id, quantity)
        values (11, 190, 508);
        insert into orders (user_id, product_id, quantity)
        values (49, 63, 124);
        insert into orders (user_id, product_id, quantity)
        values (22, 118, 124);
        insert into orders (user_id, product_id, quantity)
        values (15, 7, 819);
        insert into orders (user_id, product_id, quantity)
        values (30, 166, 451);
        insert into orders (user_id, product_id, quantity)
        values (44, 92, 34);
        insert into orders (user_id, product_id, quantity)
        values (5, 187, 679);
        insert into orders (user_id, product_id, quantity)
        values (18, 39, 350);
        insert into orders (user_id, product_id, quantity)
        values (50, 121, 239);
        insert into orders (user_id, product_id, quantity)
        values (27, 14, 697);
        insert into orders (user_id, product_id, quantity)
        values (8, 173, 224);
        insert into orders (user_id, product_id, quantity)
        values (31, 58, 617);
        insert into orders (user_id, product_id, quantity)
        values (4, 142, 564);
        insert into orders (user_id, product_id, quantity)
        values (40, 19, 977);
        insert into orders (user_id, product_id, quantity)
        values (21, 133, 259);
        insert into orders (user_id, product_id, quantity)
        values (16, 75, 298);
        insert into orders (user_id, product_id, quantity)
        values (47, 186, 873);
        insert into orders (user_id, product_id, quantity)
        values (10, 49, 800);
        insert into orders (user_id, product_id, quantity)
        values (34, 159, 595);
        insert into orders (user_id, product_id, quantity)
        values (1, 26, 32);
        insert into orders (user_id, product_id, quantity)
        values (43, 112, 840);
        insert into orders (user_id, product_id, quantity)
        values (29, 5, 92);
        insert into orders (user_id, product_id, quantity)
        values (20, 198, 825);
        insert into orders (user_id, product_id, quantity)
        values (38, 64, 258);
        insert into orders (user_id, product_id, quantity)
        values (13, 147, 99);
        insert into orders (user_id, product_id, quantity)
        values (24, 32, 802);
        insert into orders (user_id, product_id, quantity)
        values (45, 181, 564);
        insert into orders (user_id, product_id, quantity)
        values (36, 93, 861);
        insert into orders (user_id, product_id, quantity)
        values (17, 120, 716);
        insert into orders (user_id, product_id, quantity)
        values (26, 41, 177);
        insert into orders (user_id, product_id, quantity)
        values (32, 160, 715);
        insert into orders (user_id, product_id, quantity)
        values (3, 12, 724);
        insert into orders (user_id, product_id, quantity)
        values (14, 199, 778);
        insert into orders (user_id, product_id, quantity)
        values (48, 88, 339);
        insert into orders (user_id, product_id, quantity)
        values (7, 176, 875);
        insert into orders (user_id, product_id, quantity)
        values (19, 54, 218);
        insert into orders (user_id, product_id, quantity)
        values (41, 143, 367);
        insert into orders (user_id, product_id, quantity)
        values (6, 9, 937);
        insert into orders (user_id, product_id, quantity)
        values (23, 115, 849);
        insert into orders (user_id, product_id, quantity)
        values (11, 70, 895);
        insert into orders (user_id, product_id, quantity)
        values (50, 102, 822);
        insert into orders (user_id, product_id, quantity)
        values (28, 37, 790);
        insert into orders (user_id, product_id, quantity)
        values (9, 151, 784);
        insert into orders (user_id, product_id, quantity)
        values (35, 4, 114);
        insert into orders (user_id, product_id, quantity)
        values (2, 167, 687);
        insert into orders (user_id, product_id, quantity)
        values (46, 23, 834);
        insert into orders (user_id, product_id, quantity)
        values (15, 195, 360);
        insert into orders (user_id, product_id, quantity)
        values (30, 66, 872);
        insert into orders (user_id, product_id, quantity)
        values (44, 140, 548);
        insert into orders (user_id, product_id, quantity)
        values (5, 110, 147);
        insert into orders (user_id, product_id, quantity)
        values (18, 72, 198);
        insert into orders (user_id, product_id, quantity)
        values (27, 184, 886);
        insert into orders (user_id, product_id, quantity)
        values (8, 21, 211);
        insert into orders (user_id, product_id, quantity)
        values (31, 170, 307);
        insert into orders (user_id, product_id, quantity)
        values (4, 97, 249);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 254);
        insert into orders (user_id, product_id, quantity)
        values (21, 193, 277);
        insert into orders (user_id, product_id, quantity)
        values (16, 44, 709);
        insert into orders (user_id, product_id, quantity)
        values (47, 158, 600);
        insert into orders (user_id, product_id, quantity)
        values (10, 3, 816);
        insert into orders (user_id, product_id, quantity)
        values (34, 187, 966);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 841);
        insert into orders (user_id, product_id, quantity)
        values (43, 129, 182);
        insert into orders (user_id, product_id, quantity)
        values (29, 74, 496);
        insert into orders (user_id, product_id, quantity)
        values (20, 118, 727);
        insert into orders (user_id, product_id, quantity)
        values (38, 15, 185);
        insert into orders (user_id, product_id, quantity)
        values (13, 200, 437);
        insert into orders (user_id, product_id, quantity)
        values (24, 91, 202);
        insert into orders (user_id, product_id, quantity)
        values (45, 17, 405);
        insert into orders (user_id, product_id, quantity)
        values (36, 134, 961);
        insert into orders (user_id, product_id, quantity)
        values (17, 48, 485);
        insert into orders (user_id, product_id, quantity)
        values (26, 176, 58);
        insert into orders (user_id, product_id, quantity)
        values (32, 69, 980);
        insert into orders (user_id, product_id, quantity)
        values (3, 105, 659);
        insert into orders (user_id, product_id, quantity)
        values (14, 41, 642);
        insert into orders (user_id, product_id, quantity)
        values (48, 123, 656);
        insert into orders (user_id, product_id, quantity)
        values (7, 8, 275);
        insert into orders (user_id, product_id, quantity)
        values (19, 196, 365);
        insert into orders (user_id, product_id, quantity)
        values (41, 57, 249);
        insert into orders (user_id, product_id, quantity)
        values (6, 182, 218);
        insert into orders (user_id, product_id, quantity)
        values (23, 11, 794);
        insert into orders (user_id, product_id, quantity)
        values (11, 155, 766);
        insert into orders (user_id, product_id, quantity)
        values (50, 99, 323);
        insert into orders (user_id, product_id, quantity)
        values (28, 14, 11);
        insert into orders (user_id, product_id, quantity)
        values (9, 188, 177);
        insert into orders (user_id, product_id, quantity)
        values (44, 12, 672);
        insert into orders (user_id, product_id, quantity)
        values (7, 144, 316);
        insert into orders (user_id, product_id, quantity)
        values (19, 55, 825);
        insert into orders (user_id, product_id, quantity)
        values (33, 98, 424);
        insert into orders (user_id, product_id, quantity)
        values (12, 187, 613);
        insert into orders (user_id, product_id, quantity)
        values (48, 76, 494);
        insert into orders (user_id, product_id, quantity)
        values (25, 33, 667);
        insert into orders (user_id, product_id, quantity)
        values (3, 141, 925);
        insert into orders (user_id, product_id, quantity)
        values (41, 199, 873);
        insert into orders (user_id, product_id, quantity)
        values (16, 88, 782);
        insert into orders (user_id, product_id, quantity)
        values (29, 120, 996);
        insert into orders (user_id, product_id, quantity)
        values (5, 14, 96);
        insert into orders (user_id, product_id, quantity)
        values (22, 77, 318);
        insert into orders (user_id, product_id, quantity)
        values (14, 63, 780);
        insert into orders (user_id, product_id, quantity)
        values (47, 102, 729);
        insert into orders (user_id, product_id, quantity)
        values (10, 55, 925);
        insert into orders (user_id, product_id, quantity)
        values (34, 181, 487);
        insert into orders (user_id, product_id, quantity)
        values (1, 19, 128);
        insert into orders (user_id, product_id, quantity)
        values (43, 198, 935);
        insert into orders (user_id, product_id, quantity)
        values (28, 72, 222);
        insert into orders (user_id, product_id, quantity)
        values (9, 111, 904);
        insert into orders (user_id, product_id, quantity)
        values (50, 166, 688);
        insert into orders (user_id, product_id, quantity)
        values (31, 45, 510);
        insert into orders (user_id, product_id, quantity)
        values (4, 133, 777);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 57);
        insert into orders (user_id, product_id, quantity)
        values (21, 195, 433);
        insert into orders (user_id, product_id, quantity)
        values (16, 89, 608);
        insert into orders (user_id, product_id, quantity)
        values (47, 144, 317);
        insert into orders (user_id, product_id, quantity)
        values (10, 7, 313);
        insert into orders (user_id, product_id, quantity)
        values (34, 173, 236);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 380);
        insert into orders (user_id, product_id, quantity)
        values (43, 91, 824);
        insert into orders (user_id, product_id, quantity)
        values (28, 166, 907);
        insert into orders (user_id, product_id, quantity)
        values (9, 33, 357);
        insert into orders (user_id, product_id, quantity)
        values (50, 140, 356);
        insert into orders (user_id, product_id, quantity)
        values (31, 199, 741);
        insert into orders (user_id, product_id, quantity)
        values (4, 12, 151);
        insert into orders (user_id, product_id, quantity)
        values (40, 177, 889);
        insert into orders (user_id, product_id, quantity)
        values (21, 88, 705);
        insert into orders (user_id, product_id, quantity)
        values (16, 41, 728);
        insert into orders (user_id, product_id, quantity)
        values (47, 133, 138);
        insert into orders (user_id, product_id, quantity)
        values (10, 55, 686);
        insert into orders (user_id, product_id, quantity)
        values (34, 102, 321);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 963);
        insert into orders (user_id, product_id, quantity)
        values (43, 77, 232);
        insert into orders (user_id, product_id, quantity)
        values (28, 14, 584);
        insert into orders (user_id, product_id, quantity)
        values (9, 181, 947);
        insert into orders (user_id, product_id, quantity)
        values (50, 63, 18);
        insert into orders (user_id, product_id, quantity)
        values (31, 12, 851);
        insert into orders (user_id, product_id, quantity)
        values (4, 144, 228);
        insert into orders (user_id, product_id, quantity)
        values (40, 98, 372);
        insert into orders (user_id, product_id, quantity)
        values (21, 55, 126);
        insert into orders (user_id, product_id, quantity)
        values (16, 187, 555);
        insert into orders (user_id, product_id, quantity)
        values (47, 76, 836);
        insert into orders (user_id, product_id, quantity)
        values (10, 33, 995);
        insert into orders (user_id, product_id, quantity)
        values (34, 141, 865);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 160);
        insert into orders (user_id, product_id, quantity)
        values (43, 88, 569);
        insert into orders (user_id, product_id, quantity)
        values (28, 120, 435);
        insert into orders (user_id, product_id, quantity)
        values (9, 12, 96);
        insert into orders (user_id, product_id, quantity)
        values (50, 166, 618);
        insert into orders (user_id, product_id, quantity)
        values (31, 45, 594);
        insert into orders (user_id, product_id, quantity)
        values (4, 133, 68);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 218);
        insert into orders (user_id, product_id, quantity)
        values (21, 195, 524);
        insert into orders (user_id, product_id, quantity)
        values (16, 89, 921);
        insert into orders (user_id, product_id, quantity)
        values (47, 144, 254);
        insert into orders (user_id, product_id, quantity)
        values (10, 7, 67);
        insert into orders (user_id, product_id, quantity)
        values (34, 173, 281);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 674);
        insert into orders (user_id, product_id, quantity)
        values (43, 91, 202);
        insert into orders (user_id, product_id, quantity)
        values (28, 166, 106);
        insert into orders (user_id, product_id, quantity)
        values (9, 33, 392);
        insert into orders (user_id, product_id, quantity)
        values (50, 140, 961);
        insert into orders (user_id, product_id, quantity)
        values (31, 199, 303);
        insert into orders (user_id, product_id, quantity)
        values (4, 12, 38);
        insert into orders (user_id, product_id, quantity)
        values (40, 177, 711);
        insert into orders (user_id, product_id, quantity)
        values (21, 88, 318);
        insert into orders (user_id, product_id, quantity)
        values (16, 41, 604);
        insert into orders (user_id, product_id, quantity)
        values (47, 133, 346);
        insert into orders (user_id, product_id, quantity)
        values (10, 55, 918);
        insert into orders (user_id, product_id, quantity)
        values (34, 102, 803);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 328);
        insert into orders (user_id, product_id, quantity)
        values (43, 77, 983);
        insert into orders (user_id, product_id, quantity)
        values (28, 14, 25);
        insert into orders (user_id, product_id, quantity)
        values (9, 181, 29);
        insert into orders (user_id, product_id, quantity)
        values (50, 63, 870);
        insert into orders (user_id, product_id, quantity)
        values (31, 12, 850);
        insert into orders (user_id, product_id, quantity)
        values (4, 144, 709);
        insert into orders (user_id, product_id, quantity)
        values (40, 98, 207);
        insert into orders (user_id, product_id, quantity)
        values (21, 55, 91);
        insert into orders (user_id, product_id, quantity)
        values (16, 187, 30);
        insert into orders (user_id, product_id, quantity)
        values (47, 76, 397);
        insert into orders (user_id, product_id, quantity)
        values (10, 33, 154);
        insert into orders (user_id, product_id, quantity)
        values (34, 141, 920);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 48);
        insert into orders (user_id, product_id, quantity)
        values (43, 88, 934);
        insert into orders (user_id, product_id, quantity)
        values (28, 120, 604);
        insert into orders (user_id, product_id, quantity)
        values (9, 12, 98);
        insert into orders (user_id, product_id, quantity)
        values (50, 166, 756);
        insert into orders (user_id, product_id, quantity)
        values (31, 45, 550);
        insert into orders (user_id, product_id, quantity)
        values (4, 133, 680);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 912);
        insert into orders (user_id, product_id, quantity)
        values (21, 195, 755);
        insert into orders (user_id, product_id, quantity)
        values (16, 89, 102);
        insert into orders (user_id, product_id, quantity)
        values (47, 144, 746);
        insert into orders (user_id, product_id, quantity)
        values (10, 7, 604);
        insert into orders (user_id, product_id, quantity)
        values (34, 173, 789);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 278);
        insert into orders (user_id, product_id, quantity)
        values (43, 91, 593);
        insert into orders (user_id, product_id, quantity)
        values (28, 166, 821);
        insert into orders (user_id, product_id, quantity)
        values (9, 33, 271);
        insert into orders (user_id, product_id, quantity)
        values (50, 140, 389);
        insert into orders (user_id, product_id, quantity)
        values (31, 199, 708);
        insert into orders (user_id, product_id, quantity)
        values (4, 12, 787);
        insert into orders (user_id, product_id, quantity)
        values (40, 177, 519);
        insert into orders (user_id, product_id, quantity)
        values (21, 88, 718);
        insert into orders (user_id, product_id, quantity)
        values (16, 41, 849);
        insert into orders (user_id, product_id, quantity)
        values (47, 133, 251);
        insert into orders (user_id, product_id, quantity)
        values (10, 55, 517);
        insert into orders (user_id, product_id, quantity)
        values (34, 102, 164);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 497);
        insert into orders (user_id, product_id, quantity)
        values (43, 77, 905);
        insert into orders (user_id, product_id, quantity)
        values (28, 14, 284);
        insert into orders (user_id, product_id, quantity)
        values (9, 181, 696);
        insert into orders (user_id, product_id, quantity)
        values (50, 63, 207);
        insert into orders (user_id, product_id, quantity)
        values (31, 12, 826);
        insert into orders (user_id, product_id, quantity)
        values (4, 144, 606);
        insert into orders (user_id, product_id, quantity)
        values (40, 98, 539);
        insert into orders (user_id, product_id, quantity)
        values (21, 55, 488);
        insert into orders (user_id, product_id, quantity)
        values (16, 187, 122);
        insert into orders (user_id, product_id, quantity)
        values (47, 76, 936);
        insert into orders (user_id, product_id, quantity)
        values (10, 33, 903);
        insert into orders (user_id, product_id, quantity)
        values (34, 141, 66);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 975);
        insert into orders (user_id, product_id, quantity)
        values (43, 88, 159);
        insert into orders (user_id, product_id, quantity)
        values (28, 120, 250);
        insert into orders (user_id, product_id, quantity)
        values (9, 12, 661);
        insert into orders (user_id, product_id, quantity)
        values (50, 166, 626);
        insert into orders (user_id, product_id, quantity)
        values (31, 45, 941);
        insert into orders (user_id, product_id, quantity)
        values (4, 133, 277);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 605);
        insert into orders (user_id, product_id, quantity)
        values (21, 195, 759);
        insert into orders (user_id, product_id, quantity)
        values (16, 89, 398);
        insert into orders (user_id, product_id, quantity)
        values (47, 144, 905);
        insert into orders (user_id, product_id, quantity)
        values (10, 7, 411);
        insert into orders (user_id, product_id, quantity)
        values (34, 173, 417);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 978);
        insert into orders (user_id, product_id, quantity)
        values (43, 91, 844);
        insert into orders (user_id, product_id, quantity)
        values (28, 166, 576);
        insert into orders (user_id, product_id, quantity)
        values (9, 33, 826);
        insert into orders (user_id, product_id, quantity)
        values (50, 140, 524);
        insert into orders (user_id, product_id, quantity)
        values (31, 199, 721);
        insert into orders (user_id, product_id, quantity)
        values (4, 12, 336);
        insert into orders (user_id, product_id, quantity)
        values (40, 177, 420);
        insert into orders (user_id, product_id, quantity)
        values (21, 88, 671);
        insert into orders (user_id, product_id, quantity)
        values (16, 41, 775);
        insert into orders (user_id, product_id, quantity)
        values (47, 133, 947);
        insert into orders (user_id, product_id, quantity)
        values (10, 55, 86);
        insert into orders (user_id, product_id, quantity)
        values (34, 102, 456);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 897);
        insert into orders (user_id, product_id, quantity)
        values (43, 77, 601);
        insert into orders (user_id, product_id, quantity)
        values (28, 14, 912);
        insert into orders (user_id, product_id, quantity)
        values (9, 181, 341);
        insert into orders (user_id, product_id, quantity)
        values (50, 63, 593);
        insert into orders (user_id, product_id, quantity)
        values (49, 61, 456);
        insert into orders (user_id, product_id, quantity)
        values (31, 45, 952);
        insert into orders (user_id, product_id, quantity)
        values (4, 133, 571);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 256);
        insert into orders (user_id, product_id, quantity)
        values (21, 195, 149);
        insert into orders (user_id, product_id, quantity)
        values (16, 89, 742);
        insert into orders (user_id, product_id, quantity)
        values (47, 144, 312);
        insert into orders (user_id, product_id, quantity)
        values (10, 7, 625);
        insert into orders (user_id, product_id, quantity)
        values (34, 173, 743);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 837);
        insert into orders (user_id, product_id, quantity)
        values (43, 91, 398);
        insert into orders (user_id, product_id, quantity)
        values (28, 166, 983);
        insert into orders (user_id, product_id, quantity)
        values (9, 33, 273);
        insert into orders (user_id, product_id, quantity)
        values (50, 140, 420);
        insert into orders (user_id, product_id, quantity)
        values (31, 199, 674);
        insert into orders (user_id, product_id, quantity)
        values (4, 12, 516);
        insert into orders (user_id, product_id, quantity)
        values (40, 177, 358);
        insert into orders (user_id, product_id, quantity)
        values (21, 88, 53);
        insert into orders (user_id, product_id, quantity)
        values (16, 41, 634);
        insert into orders (user_id, product_id, quantity)
        values (47, 133, 30);
        insert into orders (user_id, product_id, quantity)
        values (10, 55, 704);
        insert into orders (user_id, product_id, quantity)
        values (34, 102, 859);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 12);
        insert into orders (user_id, product_id, quantity)
        values (43, 77, 532);
        insert into orders (user_id, product_id, quantity)
        values (28, 14, 173);
        insert into orders (user_id, product_id, quantity)
        values (9, 181, 319);
        insert into orders (user_id, product_id, quantity)
        values (50, 63, 478);
        insert into orders (user_id, product_id, quantity)
        values (31, 12, 273);
        insert into orders (user_id, product_id, quantity)
        values (4, 144, 420);
        insert into orders (user_id, product_id, quantity)
        values (40, 98, 674);
        insert into orders (user_id, product_id, quantity)
        values (21, 55, 516);
        insert into orders (user_id, product_id, quantity)
        values (16, 187, 358);
        insert into orders (user_id, product_id, quantity)
        values (47, 76, 53);
        insert into orders (user_id, product_id, quantity)
        values (10, 33, 634);
        insert into orders (user_id, product_id, quantity)
        values (34, 141, 30);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 704);
        insert into orders (user_id, product_id, quantity)
        values (43, 88, 859);
        insert into orders (user_id, product_id, quantity)
        values (28, 120, 12);
        insert into orders (user_id, product_id, quantity)
        values (9, 12, 532);
        insert into orders (user_id, product_id, quantity)
        values (50, 166, 173);
        insert into orders (user_id, product_id, quantity)
        values (31, 45, 319);
        insert into orders (user_id, product_id, quantity)
        values (4, 133, 478);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 273);
        insert into orders (user_id, product_id, quantity)
        values (21, 195, 420);
        insert into orders (user_id, product_id, quantity)
        values (16, 89, 674);
        insert into orders (user_id, product_id, quantity)
        values (47, 144, 516);
        insert into orders (user_id, product_id, quantity)
        values (10, 7, 358);
        insert into orders (user_id, product_id, quantity)
        values (34, 173, 53);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 634);
        insert into orders (user_id, product_id, quantity)
        values (43, 91, 30);
        insert into orders (user_id, product_id, quantity)
        values (28, 166, 704);
        insert into orders (user_id, product_id, quantity)
        values (9, 33, 859);
        insert into orders (user_id, product_id, quantity)
        values (50, 140, 12);
        insert into orders (user_id, product_id, quantity)
        values (31, 199, 532);
        insert into orders (user_id, product_id, quantity)
        values (4, 12, 173);
        insert into orders (user_id, product_id, quantity)
        values (40, 177, 319);
        insert into orders (user_id, product_id, quantity)
        values (21, 88, 478);
        insert into orders (user_id, product_id, quantity)
        values (16, 41, 273);
        insert into orders (user_id, product_id, quantity)
        values (47, 133, 420);
        insert into orders (user_id, product_id, quantity)
        values (10, 55, 674);
        insert into orders (user_id, product_id, quantity)
        values (34, 102, 516);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 358);
        insert into orders (user_id, product_id, quantity)
        values (43, 77, 53);
        insert into orders (user_id, product_id, quantity)
        values (28, 14, 634);
        insert into orders (user_id, product_id, quantity)
        values (9, 181, 30);
        insert into orders (user_id, product_id, quantity)
        values (50, 63, 704);
        insert into orders (user_id, product_id, quantity)
        values (31, 12, 859);
        insert into orders (user_id, product_id, quantity)
        values (4, 144, 12);
        insert into orders (user_id, product_id, quantity)
        values (40, 98, 532);
        insert into orders (user_id, product_id, quantity)
        values (21, 55, 173);
        insert into orders (user_id, product_id, quantity)
        values (16, 187, 319);
        insert into orders (user_id, product_id, quantity)
        values (47, 76, 478);
        insert into orders (user_id, product_id, quantity)
        values (10, 33, 273);
        insert into orders (user_id, product_id, quantity)
        values (34, 141, 420);
        insert into orders (user_id, product_id, quantity)
        values (1, 199, 674);
        insert into orders (user_id, product_id, quantity)
        values (43, 88, 516);
        insert into orders (user_id, product_id, quantity)
        values (28, 120, 358);
        insert into orders (user_id, product_id, quantity)
        values (9, 12, 53);
        insert into orders (user_id, product_id, quantity)
        values (50, 166, 634);
        insert into orders (user_id, product_id, quantity)
        values (31, 45, 30);
        insert into orders (user_id, product_id, quantity)
        values (4, 133, 704);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 859);
        insert into orders (user_id, product_id, quantity)
        values (21, 195, 12);
        insert into orders (user_id, product_id, quantity)
        values (16, 89, 532);
        insert into orders (user_id, product_id, quantity)
        values (47, 144, 173);
        insert into orders (user_id, product_id, quantity)
        values (10, 7, 319);
        insert into orders (user_id, product_id, quantity)
        values (34, 173, 478);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 273);
        insert into orders (user_id, product_id, quantity)
        values (43, 91, 420);
        insert into orders (user_id, product_id, quantity)
        values (28, 166, 674);
        insert into orders (user_id, product_id, quantity)
        values (9, 33, 516);
        insert into orders (user_id, product_id, quantity)
        values (50, 140, 358);
        insert into orders (user_id, product_id, quantity)
        values (12, 144, 582);
        insert into orders (user_id, product_id, quantity)
        values (7, 33, 952);
        insert into orders (user_id, product_id, quantity)
        values (41, 122, 571);
        insert into orders (user_id, product_id, quantity)
        values (3, 88, 256);
        insert into orders (user_id, product_id, quantity)
        values (28, 11, 149);
        insert into orders (user_id, product_id, quantity)
        values (19, 177, 742);
        insert into orders (user_id, product_id, quantity)
        values (46, 52, 312);
        insert into orders (user_id, product_id, quantity)
        values (9, 101, 625);
        insert into orders (user_id, product_id, quantity)
        values (33, 67, 743);
        insert into orders (user_id, product_id, quantity)
        values (2, 150, 837);
        insert into orders (user_id, product_id, quantity)
        values (25, 13, 398);
        insert into orders (user_id, product_id, quantity)
        values (48, 199, 983);
        insert into orders (user_id, product_id, quantity)
        values (14, 45, 273);
        insert into orders (user_id, product_id, quantity)
        values (6, 172, 420);
        insert into orders (user_id, product_id, quantity)
        values (37, 84, 674);
        insert into orders (user_id, product_id, quantity)
        values (11, 190, 516);
        insert into orders (user_id, product_id, quantity)
        values (49, 63, 358);
        insert into orders (user_id, product_id, quantity)
        values (22, 118, 53);
        insert into orders (user_id, product_id, quantity)
        values (15, 7, 634);
        insert into orders (user_id, product_id, quantity)
        values (30, 166, 30);
        insert into orders (user_id, product_id, quantity)
        values (44, 92, 704);
        insert into orders (user_id, product_id, quantity)
        values (5, 187, 859);
        insert into orders (user_id, product_id, quantity)
        values (18, 39, 12);
        insert into orders (user_id, product_id, quantity)
        values (50, 121, 532);
        insert into orders (user_id, product_id, quantity)
        values (27, 14, 173);
        insert into orders (user_id, product_id, quantity)
        values (8, 173, 319);
        insert into orders (user_id, product_id, quantity)
        values (31, 58, 478);
        insert into orders (user_id, product_id, quantity)
        values (4, 142, 273);
        insert into orders (user_id, product_id, quantity)
        values (40, 19, 420);
        insert into orders (user_id, product_id, quantity)
        values (21, 133, 674);
        insert into orders (user_id, product_id, quantity)
        values (16, 75, 516);
        insert into orders (user_id, product_id, quantity)
        values (47, 186, 358);
        insert into orders (user_id, product_id, quantity)
        values (10, 49, 53);
        insert into orders (user_id, product_id, quantity)
        values (34, 159, 634);
        insert into orders (user_id, product_id, quantity)
        values (1, 26, 30);
        insert into orders (user_id, product_id, quantity)
        values (43, 112, 704);
        insert into orders (user_id, product_id, quantity)
        values (29, 5, 859);
        insert into orders (user_id, product_id, quantity)
        values (20, 198, 12);
        insert into orders (user_id, product_id, quantity)
        values (38, 64, 532);
        insert into orders (user_id, product_id, quantity)
        values (13, 147, 173);
        insert into orders (user_id, product_id, quantity)
        values (24, 32, 319);
        insert into orders (user_id, product_id, quantity)
        values (45, 181, 478);
        insert into orders (user_id, product_id, quantity)
        values (36, 93, 273);
        insert into orders (user_id, product_id, quantity)
        values (17, 120, 420);
        insert into orders (user_id, product_id, quantity)
        values (26, 41, 674);
        insert into orders (user_id, product_id, quantity)
        values (32, 160, 516);
        insert into orders (user_id, product_id, quantity)
        values (3, 12, 358);
        insert into orders (user_id, product_id, quantity)
        values (14, 199, 53);
        insert into orders (user_id, product_id, quantity)
        values (48, 88, 634);
        insert into orders (user_id, product_id, quantity)
        values (7, 176, 30);
        insert into orders (user_id, product_id, quantity)
        values (19, 54, 704);
        insert into orders (user_id, product_id, quantity)
        values (41, 143, 859);
        insert into orders (user_id, product_id, quantity)
        values (6, 9, 12);
        insert into orders (user_id, product_id, quantity)
        values (23, 115, 532);
        insert into orders (user_id, product_id, quantity)
        values (11, 70, 173);
        insert into orders (user_id, product_id, quantity)
        values (50, 102, 319);
        insert into orders (user_id, product_id, quantity)
        values (28, 37, 478);
        insert into orders (user_id, product_id, quantity)
        values (9, 151, 273);
        insert into orders (user_id, product_id, quantity)
        values (35, 4, 420);
        insert into orders (user_id, product_id, quantity)
        values (2, 167, 674);
        insert into orders (user_id, product_id, quantity)
        values (46, 23, 516);
        insert into orders (user_id, product_id, quantity)
        values (15, 195, 358);
        insert into orders (user_id, product_id, quantity)
        values (30, 66, 53);
        insert into orders (user_id, product_id, quantity)
        values (44, 140, 634);
        insert into orders (user_id, product_id, quantity)
        values (5, 110, 30);
        insert into orders (user_id, product_id, quantity)
        values (18, 72, 704);
        insert into orders (user_id, product_id, quantity)
        values (27, 184, 859);
        insert into orders (user_id, product_id, quantity)
        values (8, 21, 12);
        insert into orders (user_id, product_id, quantity)
        values (31, 170, 532);
        insert into orders (user_id, product_id, quantity)
        values (4, 97, 173);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 319);
        insert into orders (user_id, product_id, quantity)
        values (21, 193, 478);
        insert into orders (user_id, product_id, quantity)
        values (16, 44, 273);
        insert into orders (user_id, product_id, quantity)
        values (47, 158, 420);
        insert into orders (user_id, product_id, quantity)
        values (10, 3, 674);
        insert into orders (user_id, product_id, quantity)
        values (34, 187, 516);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 358);
        insert into orders (user_id, product_id, quantity)
        values (43, 129, 53);
        insert into orders (user_id, product_id, quantity)
        values (29, 74, 634);
        insert into orders (user_id, product_id, quantity)
        values (20, 118, 30);
        insert into orders (user_id, product_id, quantity)
        values (38, 15, 704);
        insert into orders (user_id, product_id, quantity)
        values (13, 200, 859);
        insert into orders (user_id, product_id, quantity)
        values (24, 91, 12);
        insert into orders (user_id, product_id, quantity)
        values (45, 17, 532);
        insert into orders (user_id, product_id, quantity)
        values (36, 134, 173);
        insert into orders (user_id, product_id, quantity)
        values (17, 48, 319);
        insert into orders (user_id, product_id, quantity)
        values (26, 176, 478);
        insert into orders (user_id, product_id, quantity)
        values (32, 69, 273);
        insert into orders (user_id, product_id, quantity)
        values (3, 105, 420);
        insert into orders (user_id, product_id, quantity)
        values (14, 41, 674);
        insert into orders (user_id, product_id, quantity)
        values (48, 123, 516);
        insert into orders (user_id, product_id, quantity)
        values (7, 8, 358);
        insert into orders (user_id, product_id, quantity)
        values (19, 196, 53);
        insert into orders (user_id, product_id, quantity)
        values (41, 57, 634);
        insert into orders (user_id, product_id, quantity)
        values (12, 144, 582);
        insert into orders (user_id, product_id, quantity)
        values (7, 33, 952);
        insert into orders (user_id, product_id, quantity)
        values (41, 122, 571);
        insert into orders (user_id, product_id, quantity)
        values (3, 88, 256);
        insert into orders (user_id, product_id, quantity)
        values (28, 11, 149);
        insert into orders (user_id, product_id, quantity)
        values (19, 177, 742);
        insert into orders (user_id, product_id, quantity)
        values (46, 52, 312);
        insert into orders (user_id, product_id, quantity)
        values (9, 101, 625);
        insert into orders (user_id, product_id, quantity)
        values (33, 67, 743);
        insert into orders (user_id, product_id, quantity)
        values (2, 150, 837);
        insert into orders (user_id, product_id, quantity)
        values (25, 13, 398);
        insert into orders (user_id, product_id, quantity)
        values (48, 199, 983);
        insert into orders (user_id, product_id, quantity)
        values (14, 45, 273);
        insert into orders (user_id, product_id, quantity)
        values (6, 172, 420);
        insert into orders (user_id, product_id, quantity)
        values (37, 84, 674);
        insert into orders (user_id, product_id, quantity)
        values (11, 190, 516);
        insert into orders (user_id, product_id, quantity)
        values (49, 63, 358);
        insert into orders (user_id, product_id, quantity)
        values (22, 118, 53);
        insert into orders (user_id, product_id, quantity)
        values (15, 7, 634);
        insert into orders (user_id, product_id, quantity)
        values (30, 166, 30);
        insert into orders (user_id, product_id, quantity)
        values (44, 92, 704);
        insert into orders (user_id, product_id, quantity)
        values (5, 187, 859);
        insert into orders (user_id, product_id, quantity)
        values (18, 39, 12);
        insert into orders (user_id, product_id, quantity)
        values (50, 121, 532);
        insert into orders (user_id, product_id, quantity)
        values (27, 14, 173);
        insert into orders (user_id, product_id, quantity)
        values (8, 173, 319);
        insert into orders (user_id, product_id, quantity)
        values (31, 58, 478);
        insert into orders (user_id, product_id, quantity)
        values (4, 142, 273);
        insert into orders (user_id, product_id, quantity)
        values (40, 19, 420);
        insert into orders (user_id, product_id, quantity)
        values (21, 133, 674);
        insert into orders (user_id, product_id, quantity)
        values (16, 75, 516);
        insert into orders (user_id, product_id, quantity)
        values (47, 186, 358);
        insert into orders (user_id, product_id, quantity)
        values (10, 49, 53);
        insert into orders (user_id, product_id, quantity)
        values (34, 159, 634);
        insert into orders (user_id, product_id, quantity)
        values (1, 26, 30);
        insert into orders (user_id, product_id, quantity)
        values (43, 112, 704);
        insert into orders (user_id, product_id, quantity)
        values (29, 5, 859);
        insert into orders (user_id, product_id, quantity)
        values (20, 198, 12);
        insert into orders (user_id, product_id, quantity)
        values (38, 64, 532);
        insert into orders (user_id, product_id, quantity)
        values (13, 147, 173);
        insert into orders (user_id, product_id, quantity)
        values (24, 32, 319);
        insert into orders (user_id, product_id, quantity)
        values (45, 181, 478);
        insert into orders (user_id, product_id, quantity)
        values (36, 93, 273);
        insert into orders (user_id, product_id, quantity)
        values (17, 120, 420);
        insert into orders (user_id, product_id, quantity)
        values (26, 41, 674);
        insert into orders (user_id, product_id, quantity)
        values (32, 160, 516);
        insert into orders (user_id, product_id, quantity)
        values (3, 12, 358);
        insert into orders (user_id, product_id, quantity)
        values (14, 199, 53);
        insert into orders (user_id, product_id, quantity)
        values (48, 88, 634);
        insert into orders (user_id, product_id, quantity)
        values (7, 176, 30);
        insert into orders (user_id, product_id, quantity)
        values (19, 54, 704);
        insert into orders (user_id, product_id, quantity)
        values (41, 143, 859);
        insert into orders (user_id, product_id, quantity)
        values (6, 9, 12);
        insert into orders (user_id, product_id, quantity)
        values (23, 115, 532);
        insert into orders (user_id, product_id, quantity)
        values (11, 70, 173);
        insert into orders (user_id, product_id, quantity)
        values (50, 102, 319);
        insert into orders (user_id, product_id, quantity)
        values (28, 37, 478);
        insert into orders (user_id, product_id, quantity)
        values (9, 151, 273);
        insert into orders (user_id, product_id, quantity)
        values (35, 4, 420);
        insert into orders (user_id, product_id, quantity)
        values (2, 167, 674);
        insert into orders (user_id, product_id, quantity)
        values (46, 23, 516);
        insert into orders (user_id, product_id, quantity)
        values (15, 195, 358);
        insert into orders (user_id, product_id, quantity)
        values (30, 66, 53);
        insert into orders (user_id, product_id, quantity)
        values (44, 140, 634);
        insert into orders (user_id, product_id, quantity)
        values (5, 110, 30);
        insert into orders (user_id, product_id, quantity)
        values (18, 72, 704);
        insert into orders (user_id, product_id, quantity)
        values (27, 184, 859);
        insert into orders (user_id, product_id, quantity)
        values (8, 21, 12);
        insert into orders (user_id, product_id, quantity)
        values (31, 170, 532);
        insert into orders (user_id, product_id, quantity)
        values (4, 97, 173);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 319);
        insert into orders (user_id, product_id, quantity)
        values (21, 193, 478);
        insert into orders (user_id, product_id, quantity)
        values (16, 44, 273);
        insert into orders (user_id, product_id, quantity)
        values (47, 158, 420);
        insert into orders (user_id, product_id, quantity)
        values (10, 3, 674);
        insert into orders (user_id, product_id, quantity)
        values (34, 187, 516);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 358);
        insert into orders (user_id, product_id, quantity)
        values (43, 129, 53);
        insert into orders (user_id, product_id, quantity)
        values (29, 74, 634);
        insert into orders (user_id, product_id, quantity)
        values (20, 118, 30);
        insert into orders (user_id, product_id, quantity)
        values (38, 15, 704);
        insert into orders (user_id, product_id, quantity)
        values (13, 200, 859);
        insert into orders (user_id, product_id, quantity)
        values (24, 91, 12);
        insert into orders (user_id, product_id, quantity)
        values (45, 17, 532);
        insert into orders (user_id, product_id, quantity)
        values (36, 134, 173);
        insert into orders (user_id, product_id, quantity)
        values (17, 48, 319);
        insert into orders (user_id, product_id, quantity)
        values (26, 176, 478);
        insert into orders (user_id, product_id, quantity)
        values (32, 69, 273);
        insert into orders (user_id, product_id, quantity)
        values (3, 105, 420);
        insert into orders (user_id, product_id, quantity)
        values (14, 41, 674);
        insert into orders (user_id, product_id, quantity)
        values (48, 123, 516);
        insert into orders (user_id, product_id, quantity)
        values (7, 8, 358);
        insert into orders (user_id, product_id, quantity)
        values (19, 196, 53);
        insert into orders (user_id, product_id, quantity)
        values (41, 57, 634);
        insert into orders (user_id, product_id, quantity)
        values (12, 144, 894);
        insert into orders (user_id, product_id, quantity)
        values (7, 33, 497);
        insert into orders (user_id, product_id, quantity)
        values (41, 122, 937);
        insert into orders (user_id, product_id, quantity)
        values (3, 88, 428);
        insert into orders (user_id, product_id, quantity)
        values (28, 11, 3);
        insert into orders (user_id, product_id, quantity)
        values (19, 177, 647);
        insert into orders (user_id, product_id, quantity)
        values (46, 52, 140);
        insert into orders (user_id, product_id, quantity)
        values (9, 101, 193);
        insert into orders (user_id, product_id, quantity)
        values (33, 67, 209);
        insert into orders (user_id, product_id, quantity)
        values (2, 150, 234);
        insert into orders (user_id, product_id, quantity)
        values (25, 13, 516);
        insert into orders (user_id, product_id, quantity)
        values (48, 199, 358);
        insert into orders (user_id, product_id, quantity)
        values (14, 45, 53);
        insert into orders (user_id, product_id, quantity)
        values (6, 172, 634);
        insert into orders (user_id, product_id, quantity)
        values (37, 84, 30);
        insert into orders (user_id, product_id, quantity)
        values (11, 190, 704);
        insert into orders (user_id, product_id, quantity)
        values (49, 63, 859);
        insert into orders (user_id, product_id, quantity)
        values (22, 118, 12);
        insert into orders (user_id, product_id, quantity)
        values (15, 7, 282);
        insert into orders (user_id, product_id, quantity)
        values (30, 166, 582);
        insert into orders (user_id, product_id, quantity)
        values (44, 92, 952);
        insert into orders (user_id, product_id, quantity)
        values (5, 187, 571);
        insert into orders (user_id, product_id, quantity)
        values (18, 39, 256);
        insert into orders (user_id, product_id, quantity)
        values (50, 121, 149);
        insert into orders (user_id, product_id, quantity)
        values (27, 14, 742);
        insert into orders (user_id, product_id, quantity)
        values (8, 173, 312);
        insert into orders (user_id, product_id, quantity)
        values (31, 58, 625);
        insert into orders (user_id, product_id, quantity)
        values (4, 142, 743);
        insert into orders (user_id, product_id, quantity)
        values (40, 19, 837);
        insert into orders (user_id, product_id, quantity)
        values (21, 133, 398);
        insert into orders (user_id, product_id, quantity)
        values (16, 75, 983);
        insert into orders (user_id, product_id, quantity)
        values (47, 186, 273);
        insert into orders (user_id, product_id, quantity)
        values (10, 49, 420);
        insert into orders (user_id, product_id, quantity)
        values (34, 159, 674);
        insert into orders (user_id, product_id, quantity)
        values (1, 26, 516);
        insert into orders (user_id, product_id, quantity)
        values (43, 112, 358);
        insert into orders (user_id, product_id, quantity)
        values (29, 5, 53);
        insert into orders (user_id, product_id, quantity)
        values (20, 198, 634);
        insert into orders (user_id, product_id, quantity)
        values (38, 64, 30);
        insert into orders (user_id, product_id, quantity)
        values (13, 147, 704);
        insert into orders (user_id, product_id, quantity)
        values (24, 32, 859);
        insert into orders (user_id, product_id, quantity)
        values (45, 181, 12);
        insert into orders (user_id, product_id, quantity)
        values (36, 93, 532);
        insert into orders (user_id, product_id, quantity)
        values (17, 120, 173);
        insert into orders (user_id, product_id, quantity)
        values (26, 41, 319);
        insert into orders (user_id, product_id, quantity)
        values (32, 160, 478);
        insert into orders (user_id, product_id, quantity)
        values (3, 12, 273);
        insert into orders (user_id, product_id, quantity)
        values (14, 199, 420);
        insert into orders (user_id, product_id, quantity)
        values (48, 88, 674);
        insert into orders (user_id, product_id, quantity)
        values (7, 176, 516);
        insert into orders (user_id, product_id, quantity)
        values (19, 54, 358);
        insert into orders (user_id, product_id, quantity)
        values (41, 143, 53);
        insert into orders (user_id, product_id, quantity)
        values (6, 9, 634);
        insert into orders (user_id, product_id, quantity)
        values (23, 115, 30);
        insert into orders (user_id, product_id, quantity)
        values (11, 70, 704);
        insert into orders (user_id, product_id, quantity)
        values (50, 102, 859);
        insert into orders (user_id, product_id, quantity)
        values (28, 37, 12);
        insert into orders (user_id, product_id, quantity)
        values (9, 151, 532);
        insert into orders (user_id, product_id, quantity)
        values (35, 4, 173);
        insert into orders (user_id, product_id, quantity)
        values (2, 167, 319);
        insert into orders (user_id, product_id, quantity)
        values (46, 23, 478);
        insert into orders (user_id, product_id, quantity)
        values (15, 195, 273);
        insert into orders (user_id, product_id, quantity)
        values (30, 66, 420);
        insert into orders (user_id, product_id, quantity)
        values (44, 140, 674);
        insert into orders (user_id, product_id, quantity)
        values (5, 110, 516);
        insert into orders (user_id, product_id, quantity)
        values (18, 72, 358);
        insert into orders (user_id, product_id, quantity)
        values (27, 184, 53);
        insert into orders (user_id, product_id, quantity)
        values (8, 21, 634);
        insert into orders (user_id, product_id, quantity)
        values (31, 170, 30);
        insert into orders (user_id, product_id, quantity)
        values (4, 97, 704);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 859);
        insert into orders (user_id, product_id, quantity)
        values (21, 193, 12);
        insert into orders (user_id, product_id, quantity)
        values (16, 44, 532);
        insert into orders (user_id, product_id, quantity)
        values (47, 158, 173);
        insert into orders (user_id, product_id, quantity)
        values (10, 3, 319);
        insert into orders (user_id, product_id, quantity)
        values (34, 187, 478);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 273);
        insert into orders (user_id, product_id, quantity)
        values (43, 129, 420);
        insert into orders (user_id, product_id, quantity)
        values (29, 74, 674);
        insert into orders (user_id, product_id, quantity)
        values (20, 118, 516);
        insert into orders (user_id, product_id, quantity)
        values (38, 15, 358);
        insert into orders (user_id, product_id, quantity)
        values (13, 200, 53);
        insert into orders (user_id, product_id, quantity)
        values (24, 91, 634);
        insert into orders (user_id, product_id, quantity)
        values (45, 17, 30);
        insert into orders (user_id, product_id, quantity)
        values (36, 134, 704);
        insert into orders (user_id, product_id, quantity)
        values (17, 48, 859);
        insert into orders (user_id, product_id, quantity)
        values (26, 176, 12);
        insert into orders (user_id, product_id, quantity)
        values (32, 69, 532);
        insert into orders (user_id, product_id, quantity)
        values (3, 105, 173);
        insert into orders (user_id, product_id, quantity)
        values (14, 41, 319);
        insert into orders (user_id, product_id, quantity)
        values (48, 123, 478);
        insert into orders (user_id, product_id, quantity)
        values (7, 8, 273);
        insert into orders (user_id, product_id, quantity)
        values (19, 196, 420);
        insert into orders (user_id, product_id, quantity)
        values (41, 57, 674);
        insert into orders (user_id, product_id, quantity)
        values (12, 144, 397);
        insert into orders (user_id, product_id, quantity)
        values (7, 33, 154);
        insert into orders (user_id, product_id, quantity)
        values (41, 122, 920);
        insert into orders (user_id, product_id, quantity)
        values (3, 88, 48);
        insert into orders (user_id, product_id, quantity)
        values (28, 11, 934);
        insert into orders (user_id, product_id, quantity)
        values (19, 177, 604);
        insert into orders (user_id, product_id, quantity)
        values (46, 52, 98);
        insert into orders (user_id, product_id, quantity)
        values (9, 101, 756);
        insert into orders (user_id, product_id, quantity)
        values (33, 67, 550);
        insert into orders (user_id, product_id, quantity)
        values (2, 150, 680);
        insert into orders (user_id, product_id, quantity)
        values (25, 13, 912);
        insert into orders (user_id, product_id, quantity)
        values (48, 199, 755);
        insert into orders (user_id, product_id, quantity)
        values (14, 45, 102);
        insert into orders (user_id, product_id, quantity)
        values (6, 172, 746);
        insert into orders (user_id, product_id, quantity)
        values (37, 84, 604);
        insert into orders (user_id, product_id, quantity)
        values (11, 190, 789);
        insert into orders (user_id, product_id, quantity)
        values (49, 63, 278);
        insert into orders (user_id, product_id, quantity)
        values (22, 118, 593);
        insert into orders (user_id, product_id, quantity)
        values (15, 7, 821);
        insert into orders (user_id, product_id, quantity)
        values (30, 166, 271);
        insert into orders (user_id, product_id, quantity)
        values (44, 92, 389);
        insert into orders (user_id, product_id, quantity)
        values (5, 187, 708);
        insert into orders (user_id, product_id, quantity)
        values (18, 39, 787);
        insert into orders (user_id, product_id, quantity)
        values (50, 121, 519);
        insert into orders (user_id, product_id, quantity)
        values (27, 14, 718);
        insert into orders (user_id, product_id, quantity)
        values (8, 173, 849);
        insert into orders (user_id, product_id, quantity)
        values (31, 58, 251);
        insert into orders (user_id, product_id, quantity)
        values (4, 142, 517);
        insert into orders (user_id, product_id, quantity)
        values (40, 19, 164);
        insert into orders (user_id, product_id, quantity)
        values (21, 133, 497);
        insert into orders (user_id, product_id, quantity)
        values (16, 75, 905);
        insert into orders (user_id, product_id, quantity)
        values (47, 186, 284);
        insert into orders (user_id, product_id, quantity)
        values (10, 49, 696);
        insert into orders (user_id, product_id, quantity)
        values (34, 159, 207);
        insert into orders (user_id, product_id, quantity)
        values (1, 26, 826);
        insert into orders (user_id, product_id, quantity)
        values (43, 112, 606);
        insert into orders (user_id, product_id, quantity)
        values (29, 5, 539);
        insert into orders (user_id, product_id, quantity)
        values (20, 198, 488);
        insert into orders (user_id, product_id, quantity)
        values (38, 64, 122);
        insert into orders (user_id, product_id, quantity)
        values (13, 147, 936);
        insert into orders (user_id, product_id, quantity)
        values (24, 32, 903);
        insert into orders (user_id, product_id, quantity)
        values (45, 181, 66);
        insert into orders (user_id, product_id, quantity)
        values (36, 93, 975);
        insert into orders (user_id, product_id, quantity)
        values (17, 120, 159);
        insert into orders (user_id, product_id, quantity)
        values (26, 41, 250);
        insert into orders (user_id, product_id, quantity)
        values (32, 160, 661);
        insert into orders (user_id, product_id, quantity)
        values (3, 12, 626);
        insert into orders (user_id, product_id, quantity)
        values (14, 199, 941);
        insert into orders (user_id, product_id, quantity)
        values (48, 88, 277);
        insert into orders (user_id, product_id, quantity)
        values (7, 176, 605);
        insert into orders (user_id, product_id, quantity)
        values (19, 54, 759);
        insert into orders (user_id, product_id, quantity)
        values (41, 143, 398);
        insert into orders (user_id, product_id, quantity)
        values (6, 9, 905);
        insert into orders (user_id, product_id, quantity)
        values (23, 115, 411);
        insert into orders (user_id, product_id, quantity)
        values (11, 70, 417);
        insert into orders (user_id, product_id, quantity)
        values (50, 102, 978);
        insert into orders (user_id, product_id, quantity)
        values (28, 37, 844);
        insert into orders (user_id, product_id, quantity)
        values (9, 151, 576);
        insert into orders (user_id, product_id, quantity)
        values (35, 4, 826);
        insert into orders (user_id, product_id, quantity)
        values (2, 167, 524);
        insert into orders (user_id, product_id, quantity)
        values (46, 23, 721);
        insert into orders (user_id, product_id, quantity)
        values (15, 195, 336);
        insert into orders (user_id, product_id, quantity)
        values (30, 66, 420);
        insert into orders (user_id, product_id, quantity)
        values (44, 140, 671);
        insert into orders (user_id, product_id, quantity)
        values (5, 110, 775);
        insert into orders (user_id, product_id, quantity)
        values (18, 72, 947);
        insert into orders (user_id, product_id, quantity)
        values (27, 184, 86);
        insert into orders (user_id, product_id, quantity)
        values (8, 21, 456);
        insert into orders (user_id, product_id, quantity)
        values (31, 170, 897);
        insert into orders (user_id, product_id, quantity)
        values (4, 97, 601);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 912);
        insert into orders (user_id, product_id, quantity)
        values (21, 193, 341);
        insert into orders (user_id, product_id, quantity)
        values (16, 44, 593);
        insert into orders (user_id, product_id, quantity)
        values (47, 158, 593);
        insert into orders (user_id, product_id, quantity)
        values (10, 3, 593);
        insert into orders (user_id, product_id, quantity)
        values (34, 187, 593);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 593);
        insert into orders (user_id, product_id, quantity)
        values (43, 129, 593);
        insert into orders (user_id, product_id, quantity)
        values (29, 74, 593);
        insert into orders (user_id, product_id, quantity)
        values (20, 118, 593);
        insert into orders (user_id, product_id, quantity)
        values (38, 15, 593);
        insert into orders (user_id, product_id, quantity)
        values (13, 200, 593);
        insert into orders (user_id, product_id, quantity)
        values (24, 91, 593);
        insert into orders (user_id, product_id, quantity)
        values (45, 17, 593);
        insert into orders (user_id, product_id, quantity)
        values (36, 134, 593);
        insert into orders (user_id, product_id, quantity)
        values (17, 48, 593);
        insert into orders (user_id, product_id, quantity)
        values (26, 176, 593);
        insert into orders (user_id, product_id, quantity)
        values (32, 69, 593);
        insert into orders (user_id, product_id, quantity)
        values (3, 105, 593);
        insert into orders (user_id, product_id, quantity)
        values (14, 41, 593);
        insert into orders (user_id, product_id, quantity)
        values (48, 123, 593);
        insert into orders (user_id, product_id, quantity)
        values (7, 8, 593);
        insert into orders (user_id, product_id, quantity)
        values (19, 196, 593);
        insert into orders (user_id, product_id, quantity)
        values (41, 57, 593);
        insert into orders (user_id, product_id, quantity)
        values (12, 144, 398);
        insert into orders (user_id, product_id, quantity)
        values (7, 33, 905);
        insert into orders (user_id, product_id, quantity)
        values (41, 122, 411);
        insert into orders (user_id, product_id, quantity)
        values (3, 88, 417);
        insert into orders (user_id, product_id, quantity)
        values (28, 11, 978);
        insert into orders (user_id, product_id, quantity)
        values (19, 177, 844);
        insert into orders (user_id, product_id, quantity)
        values (46, 52, 576);
        insert into orders (user_id, product_id, quantity)
        values (9, 101, 826);
        insert into orders (user_id, product_id, quantity)
        values (33, 67, 524);
        insert into orders (user_id, product_id, quantity)
        values (2, 150, 721);
        insert into orders (user_id, product_id, quantity)
        values (25, 13, 336);
        insert into orders (user_id, product_id, quantity)
        values (48, 199, 420);
        insert into orders (user_id, product_id, quantity)
        values (14, 45, 382);
        insert into orders (user_id, product_id, quantity)
        values (6, 172, 95);
        insert into orders (user_id, product_id, quantity)
        values (37, 84, 477);
        insert into orders (user_id, product_id, quantity)
        values (11, 190, 25);
        insert into orders (user_id, product_id, quantity)
        values (49, 63, 321);
        insert into orders (user_id, product_id, quantity)
        values (22, 118, 478);
        insert into orders (user_id, product_id, quantity)
        values (15, 7, 301);
        insert into orders (user_id, product_id, quantity)
        values (30, 166, 382);
        insert into orders (user_id, product_id, quantity)
        values (44, 92, 894);
        insert into orders (user_id, product_id, quantity)
        values (5, 187, 497);
        insert into orders (user_id, product_id, quantity)
        values (18, 39, 937);
        insert into orders (user_id, product_id, quantity)
        values (50, 121, 428);
        insert into orders (user_id, product_id, quantity)
        values (27, 14, 3);
        insert into orders (user_id, product_id, quantity)
        values (8, 173, 647);
        insert into orders (user_id, product_id, quantity)
        values (31, 58, 140);
        insert into orders (user_id, product_id, quantity)
        values (4, 142, 193);
        insert into orders (user_id, product_id, quantity)
        values (40, 19, 209);
        insert into orders (user_id, product_id, quantity)
        values (21, 133, 234);
        insert into orders (user_id, product_id, quantity)
        values (16, 75, 516);
        insert into orders (user_id, product_id, quantity)
        values (47, 186, 358);
        insert into orders (user_id, product_id, quantity)
        values (10, 49, 53);
        insert into orders (user_id, product_id, quantity)
        values (34, 159, 634);
        insert into orders (user_id, product_id, quantity)
        values (1, 26, 30);
        insert into orders (user_id, product_id, quantity)
        values (43, 112, 704);
        insert into orders (user_id, product_id, quantity)
        values (29, 5, 859);
        insert into orders (user_id, product_id, quantity)
        values (20, 198, 12);
        insert into orders (user_id, product_id, quantity)
        values (38, 64, 532);
        insert into orders (user_id, product_id, quantity)
        values (13, 147, 173);
        insert into orders (user_id, product_id, quantity)
        values (24, 32, 319);
        insert into orders (user_id, product_id, quantity)
        values (45, 181, 478);
        insert into orders (user_id, product_id, quantity)
        values (36, 93, 273);
        insert into orders (user_id, product_id, quantity)
        values (17, 120, 420);
        insert into orders (user_id, product_id, quantity)
        values (26, 41, 674);
        insert into orders (user_id, product_id, quantity)
        values (32, 160, 516);
        insert into orders (user_id, product_id, quantity)
        values (3, 12, 358);
        insert into orders (user_id, product_id, quantity)
        values (14, 199, 53);
        insert into orders (user_id, product_id, quantity)
        values (48, 88, 634);
        insert into orders (user_id, product_id, quantity)
        values (7, 176, 30);
        insert into orders (user_id, product_id, quantity)
        values (19, 54, 704);
        insert into orders (user_id, product_id, quantity)
        values (41, 143, 859);
        insert into orders (user_id, product_id, quantity)
        values (6, 9, 12);
        insert into orders (user_id, product_id, quantity)
        values (23, 115, 532);
        insert into orders (user_id, product_id, quantity)
        values (11, 70, 173);
        insert into orders (user_id, product_id, quantity)
        values (50, 102, 319);
        insert into orders (user_id, product_id, quantity)
        values (28, 37, 478);
        insert into orders (user_id, product_id, quantity)
        values (9, 151, 273);
        insert into orders (user_id, product_id, quantity)
        values (35, 4, 420);
        insert into orders (user_id, product_id, quantity)
        values (2, 167, 674);
        insert into orders (user_id, product_id, quantity)
        values (46, 23, 516);
        insert into orders (user_id, product_id, quantity)
        values (15, 195, 358);
        insert into orders (user_id, product_id, quantity)
        values (30, 66, 53);
        insert into orders (user_id, product_id, quantity)
        values (44, 140, 634);
        insert into orders (user_id, product_id, quantity)
        values (5, 110, 30);
        insert into orders (user_id, product_id, quantity)
        values (18, 72, 704);
        insert into orders (user_id, product_id, quantity)
        values (27, 184, 859);
        insert into orders (user_id, product_id, quantity)
        values (8, 21, 12);
        insert into orders (user_id, product_id, quantity)
        values (31, 170, 532);
        insert into orders (user_id, product_id, quantity)
        values (4, 97, 173);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 319);
        insert into orders (user_id, product_id, quantity)
        values (21, 193, 478);
        insert into orders (user_id, product_id, quantity)
        values (16, 44, 273);
        insert into orders (user_id, product_id, quantity)
        values (47, 158, 420);
        insert into orders (user_id, product_id, quantity)
        values (10, 3, 674);
        insert into orders (user_id, product_id, quantity)
        values (34, 187, 516);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 358);
        insert into orders (user_id, product_id, quantity)
        values (43, 129, 53);
        insert into orders (user_id, product_id, quantity)
        values (29, 74, 634);
        insert into orders (user_id, product_id, quantity)
        values (20, 118, 30);
        insert into orders (user_id, product_id, quantity)
        values (38, 15, 704);
        insert into orders (user_id, product_id, quantity)
        values (13, 200, 859);
        insert into orders (user_id, product_id, quantity)
        values (24, 91, 12);
        insert into orders (user_id, product_id, quantity)
        values (45, 17, 532);
        insert into orders (user_id, product_id, quantity)
        values (36, 134, 173);
        insert into orders (user_id, product_id, quantity)
        values (17, 48, 319);
        insert into orders (user_id, product_id, quantity)
        values (26, 176, 478);
        insert into orders (user_id, product_id, quantity)
        values (32, 69, 273);
        insert into orders (user_id, product_id, quantity)
        values (3, 105, 420);
        insert into orders (user_id, product_id, quantity)
        values (14, 41, 674);
        insert into orders (user_id, product_id, quantity)
        values (48, 123, 516);
        insert into orders (user_id, product_id, quantity)
        values (7, 8, 358);
        insert into orders (user_id, product_id, quantity)
        values (19, 196, 53);
        insert into orders (user_id, product_id, quantity)
        values (41, 57, 634);
        insert into orders (user_id, product_id, quantity)
        values (12, 144, 952);
        insert into orders (user_id, product_id, quantity)
        values (7, 33, 571);
        insert into orders (user_id, product_id, quantity)
        values (41, 122, 256);
        insert into orders (user_id, product_id, quantity)
        values (3, 88, 149);
        insert into orders (user_id, product_id, quantity)
        values (28, 11, 742);
        insert into orders (user_id, product_id, quantity)
        values (19, 177, 312);
        insert into orders (user_id, product_id, quantity)
        values (46, 52, 625);
        insert into orders (user_id, product_id, quantity)
        values (9, 101, 743);
        insert into orders (user_id, product_id, quantity)
        values (33, 67, 837);
        insert into orders (user_id, product_id, quantity)
        values (2, 150, 398);
        insert into orders (user_id, product_id, quantity)
        values (25, 13, 983);
        insert into orders (user_id, product_id, quantity)
        values (48, 199, 273);
        insert into orders (user_id, product_id, quantity)
        values (14, 45, 420);
        insert into orders (user_id, product_id, quantity)
        values (6, 172, 674);
        insert into orders (user_id, product_id, quantity)
        values (37, 84, 516);
        insert into orders (user_id, product_id, quantity)
        values (11, 190, 358);
        insert into orders (user_id, product_id, quantity)
        values (49, 63, 53);
        insert into orders (user_id, product_id, quantity)
        values (22, 118, 634);
        insert into orders (user_id, product_id, quantity)
        values (15, 7, 30);
        insert into orders (user_id, product_id, quantity)
        values (30, 166, 704);
        insert into orders (user_id, product_id, quantity)
        values (44, 92, 859);
        insert into orders (user_id, product_id, quantity)
        values (5, 187, 12);
        insert into orders (user_id, product_id, quantity)
        values (18, 39, 532);
        insert into orders (user_id, product_id, quantity)
        values (50, 121, 173);
        insert into orders (user_id, product_id, quantity)
        values (27, 14, 319);
        insert into orders (user_id, product_id, quantity)
        values (8, 173, 478);
        insert into orders (user_id, product_id, quantity)
        values (31, 58, 273);
        insert into orders (user_id, product_id, quantity)
        values (4, 142, 420);
        insert into orders (user_id, product_id, quantity)
        values (40, 19, 674);
        insert into orders (user_id, product_id, quantity)
        values (21, 133, 516);
        insert into orders (user_id, product_id, quantity)
        values (16, 75, 358);
        insert into orders (user_id, product_id, quantity)
        values (47, 186, 53);
        insert into orders (user_id, product_id, quantity)
        values (10, 49, 634);
        insert into orders (user_id, product_id, quantity)
        values (34, 159, 30);
        insert into orders (user_id, product_id, quantity)
        values (1, 26, 704);
        insert into orders (user_id, product_id, quantity)
        values (43, 112, 859);
        insert into orders (user_id, product_id, quantity)
        values (29, 5, 12);
        insert into orders (user_id, product_id, quantity)
        values (20, 198, 532);
        insert into orders (user_id, product_id, quantity)
        values (38, 64, 173);
        insert into orders (user_id, product_id, quantity)
        values (13, 147, 319);
        insert into orders (user_id, product_id, quantity)
        values (24, 32, 478);
        insert into orders (user_id, product_id, quantity)
        values (45, 181, 273);
        insert into orders (user_id, product_id, quantity)
        values (36, 93, 420);
        insert into orders (user_id, product_id, quantity)
        values (17, 120, 674);
        insert into orders (user_id, product_id, quantity)
        values (26, 41, 516);
        insert into orders (user_id, product_id, quantity)
        values (32, 160, 358);
        insert into orders (user_id, product_id, quantity)
        values (3, 12, 53);
        insert into orders (user_id, product_id, quantity)
        values (14, 199, 634);
        insert into orders (user_id, product_id, quantity)
        values (48, 88, 30);
        insert into orders (user_id, product_id, quantity)
        values (7, 176, 704);
        insert into orders (user_id, product_id, quantity)
        values (19, 54, 859);
        insert into orders (user_id, product_id, quantity)
        values (41, 143, 12);
        insert into orders (user_id, product_id, quantity)
        values (6, 9, 532);
        insert into orders (user_id, product_id, quantity)
        values (23, 115, 173);
        insert into orders (user_id, product_id, quantity)
        values (11, 70, 319);
        insert into orders (user_id, product_id, quantity)
        values (50, 102, 478);
        insert into orders (user_id, product_id, quantity)
        values (28, 37, 273);
        insert into orders (user_id, product_id, quantity)
        values (9, 151, 420);
        insert into orders (user_id, product_id, quantity)
        values (35, 4, 674);
        insert into orders (user_id, product_id, quantity)
        values (2, 167, 516);
        insert into orders (user_id, product_id, quantity)
        values (46, 23, 358);
        insert into orders (user_id, product_id, quantity)
        values (15, 195, 53);
        insert into orders (user_id, product_id, quantity)
        values (30, 66, 634);
        insert into orders (user_id, product_id, quantity)
        values (44, 140, 30);
        insert into orders (user_id, product_id, quantity)
        values (5, 110, 704);
        insert into orders (user_id, product_id, quantity)
        values (18, 72, 859);
        insert into orders (user_id, product_id, quantity)
        values (27, 184, 12);
        insert into orders (user_id, product_id, quantity)
        values (8, 21, 532);
        insert into orders (user_id, product_id, quantity)
        values (31, 170, 173);
        insert into orders (user_id, product_id, quantity)
        values (4, 97, 319);
        insert into orders (user_id, product_id, quantity)
        values (40, 12, 478);
        insert into orders (user_id, product_id, quantity)
        values (21, 193, 273);
        insert into orders (user_id, product_id, quantity)
        values (16, 44, 420);
        insert into orders (user_id, product_id, quantity)
        values (47, 158, 674);
        insert into orders (user_id, product_id, quantity)
        values (10, 3, 516);
        insert into orders (user_id, product_id, quantity)
        values (34, 187, 358);
        insert into orders (user_id, product_id, quantity)
        values (1, 52, 53);
        insert into orders (user_id, product_id, quantity)
        values (43, 129, 634);
        insert into orders (user_id, product_id, quantity)
        values (29, 74, 30);
        insert into orders (user_id, product_id, quantity)
        values (20, 118, 704);
        insert into orders (user_id, product_id, quantity)
        values (38, 15, 859);
        insert into orders (user_id, product_id, quantity)
        values (13, 200, 12);
        insert into orders (user_id, product_id, quantity)
        values (24, 91, 532);
        insert into orders (user_id, product_id, quantity)
        values (45, 17, 173);
        insert into orders (user_id, product_id, quantity)
        values (36, 134, 319);
        insert into orders (user_id, product_id, quantity)
        values (17, 48, 478);
        insert into orders (user_id, product_id, quantity)
        values (26, 176, 273);
        insert into orders (user_id, product_id, quantity)
        values (32, 69, 420);
        insert into orders (user_id, product_id, quantity)
        values (3, 105, 674);
        insert into orders (user_id, product_id, quantity)
        values (14, 41, 516);
        insert into orders (user_id, product_id, quantity)
        values (48, 123, 358);
        insert into orders (user_id, product_id, quantity)
        values (7, 8, 53);
        insert into orders (user_id, product_id, quantity)
        values (19, 196, 634);
        insert into orders (user_id, product_id, quantity)
        values (41, 57, 30);
        commit;
end try
begin catch 
    rollback;
    print 'Error during orders insert:';
    print error_message();
end catch;
