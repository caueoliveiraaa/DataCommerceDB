/*
File: ~/DataCommerceDB/scripts/insert_users.sql
Purpose: Injects all users into the users table.
*/

BEGIN;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE READ WRITE;
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO commerce.users (email, name, age, address)
VALUES ('aallmark0@over-blog.com', 'Andromache Allmark', 84, 'Rua das Palmeiras, 108 - Campinas, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('ssemorad1@1688.com', 'Stepha Semorad', 13, 'Avenida Brasil, 642 - Porto Alegre, RS')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('eedelheid2@arizona.edu', 'Egbert Edelheid', 6, 'Rua Monte Alegre, 33 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('bivins3@virginia.edu', 'Bobby Ivins', 91, 'Rua das Acácias, 711 - Curitiba, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('sizzard4@archive.org', 'Sheilakathryn Izzard', 98, 'Rua Anhangabaú, 514 - Jundiaí, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('aneames5@mysql.com', 'Andrea Neames', 32, 'Rua Coronel Dulcídio, 770 - Curitiba, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('mwaine6@businessinsider.com', 'Melvyn Waine', 23, 'Rua do Comércio, 519 - Maceió, AL')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('vpowell7@odnoklassniki.ru', 'Venus Powell', 98, 'Rua Tupinambás, 280 - Belo Horizonte, MG')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('jrobert8@ow.ly', 'Jewel Robert', 34, 'Rua das Laranjeiras, 746 - Rio de Janeiro, RJ')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('prounsefull9@tumblr.com', 'Peyter Rounsefull', 66, 'Rua XV de Novembro, 1 - Blumenau, SC')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('cpapachristophoroua@omniture.com', 'Chrystal Papachristophorou', 25, 'Rua La Salle, 33 - Canoas, RS')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('gcartmailb@wikispaces.com', 'Ginni Cartmail', 67, 'Rua Thomaz Gonzaga, 775 - Ouro Preto, MG')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('hbaudetc@zdnet.com', 'Horatius Baudet', 34, 'Rua Mandacaru, 763 - Maringá, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('rhoyerd@independent.co.uk', 'Renaud Hoyer', 5, 'Rua Shelley, 682 - Recife, PE')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('bditchette@paginegialle.it', 'Bendick Ditchett', 5, 'Rua Portal do Sol, 11 - João Pessoa, PB')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('nbrighamf@nps.gov', 'Nathanial Brigham', 71, 'Rua das Hortênsias, 94 - Gramado, RS')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('iprandinig@storify.com', 'Idette Prandini', 82, 'Rua Warner, 3257 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('achatth@fc2.com', 'Artur Chatt', 12, 'Rua dos Pinheiros, 3 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('tconstanti@google.cn', 'Tiertza Constant', 71, 'Rua Kingsford, 847 - Fortaleza, CE')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('cfilasovj@chronoengine.com', 'Celinka Filasov', 83, 'Rua Eastwood, 531 - Salvador, BA')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('gbroodk@geocities.com', 'Georgetta Brood', 33, 'Rua Iowa, 579 - Florianópolis, SC')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('kcuseickl@time.com', 'Keefer Cuseick', 63, 'Rua Lakewood, 962 - Vitória, ES')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('mnuzzim@zdnet.com', 'Margareta Nuzzi', 34, 'Rua Corry, 35 - Manaus, AM')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('dklehnn@nifty.com', 'Dur Klehn', 77, 'Rua Westport, 3 - Goiânia, GO')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('dwheeltono@blogger.com', 'Darci Wheelton', 50, 'Rua Judy, 8 - Belém, PA')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('kbarensenp@yahoo.co.jp', 'Katuscha Barensen', 17, 'Rua Dapin, 74 - Santos, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('lgrabertq@dot.gov', 'Lesli Grabert', 51, 'Rua Kedzie, 732 - Campinas, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('mpritchardr@hp.com', 'Mei Pritchard', 59, 'Rua Leroy, 220 - Curitiba, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('jkiellors@sciencedaily.com', 'Joanie Kiellor', 4, 'Rua Merrick, 456 - Natal, RN')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('ibiggst@wikimedia.org', 'Ingaberg Biggs', 49, 'Rua Springview, 2 - Joinville, SC')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('geadmeadu@bizjournals.com', 'Gibbie Eadmead', 26, 'Rua Park Meadow, 316 - Campo Grande, MS')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('cportalv@feedburner.com', 'Cynthy Portal', 91, 'Rua Meadow Vale, 384 - Londrina, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('lwehnerrw@wordpress.org', 'Liliane Wehnerr', 74, 'Rua Manufacturers, 4 - Sorocaba, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('dbumpusx@mit.edu', 'Dilly Bumpus', 71, 'Rua Cascade, 73 - Blumenau, SC')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('rantrumy@ning.com', 'Ritchie Antrum', 72, 'Rua Manufacturers, 475 - São José, SC')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('rrecherz@sbwire.com', 'Rosco Recher', 80, 'Rua Russell, 9 - Curitiba, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('fstot10@wordpress.org', 'Filide Stot', 70, 'Rua Lillian, 2 - Recife, PE')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('fblindt11@storify.com', 'Fredric Blindt', 92, 'Rua Stuart, 871 - Fortaleza, CE')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('sboyn12@twitpic.com', 'Shauna Boyn', 8, 'Rua Village Green, 669 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('bmcilvenna13@tuttocitta.it', 'Bettye McIlvenna', 30, 'Rua Rieder, 5 - Curitiba, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('mralton14@intel.com', 'Mariellen Ralton', 40, 'Rua Alpine, 851 - Florianópolis, SC')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('tenrietto15@springer.com', 'Tab Enrietto', 80, 'Rua Fulton, 42 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('kstickells16@boston.com', 'Keeley Stickells', 34, 'Rua Hudson, 2 - Rio de Janeiro, RJ')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('telsie17@dion.ne.jp', 'Terri Elsie', 64, 'Rua Derek, 38 - Salvador, BA')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('mpierrepont18@indiegogo.com', 'Maud Pierrepont', 54, 'Rua Autumn Leaf, 147 - Belo Horizonte, MG')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('cchilders19@cafepress.com', 'Caye Childers', 58, 'Rua Surrey, 85 - Curitiba, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('walden1a@rakuten.co.jp', 'Wolfgang Alden', 23, 'Rua Vidon, 3 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('worgill1b@icio.us', 'Win Orgill', 34, 'Rua Jenifer, 4 - Porto Alegre, RS')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('tjimmes1c@joomla.org', 'Traci Jimmes', 1, 'Rua Waywood, 538 - Fortaleza, CE')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('pgoodfield1d@telegraph.co.uk', 'Prentice Goodfield', 55, 'Rua Cherokee, 743 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

COMMIT;
