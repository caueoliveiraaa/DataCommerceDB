/*
File: ~/DataCommerceDB/scripts/insert_users.sql
Purpose: Injects all users into the users table.
*/

begin try
    begin transaction;
    set transaction isolation level serializable;
    set transaction read write;
    set constraints all deferred;

    insert into users (email, name, age, address) 
    values ('aallmark0@over-blog.com', 'Andromache Allmark', 84, 'Rua das Palmeiras, 108 - Campinas, SP');
    insert into users (email, name, age, address) 
    values ('ssemorad1@1688.com', 'Stepha Semorad', 13, 'Avenida Brasil, 642 - Porto Alegre, RS');
    insert into users (email, name, age, address) 
    values ('eedelheid2@arizona.edu', 'Egbert Edelheid', 6, 'Rua Monte Alegre, 33 - São Paulo, SP');
    insert into users (email, name, age, address) 
    values ('bivins3@virginia.edu', 'Bobby Ivins', 91, 'Rua das Acácias, 711 - Curitiba, PR');
    insert into users (email, name, age, address) 
    values ('sizzard4@archive.org', 'Sheilakathryn Izzard', 98, 'Rua Anhangabaú, 514 - Jundiaí, SP');
    insert into users (email, name, age, address) 
    values ('aneames5@mysql.com', 'Andrea Neames', 32, 'Rua Coronel Dulcídio, 770 - Curitiba, PR');
    insert into users (email, name, age, address) 
    values ('mwaine6@businessinsider.com', 'Melvyn Waine', 23, 'Rua do Comércio, 519 - Maceió, AL');
    insert into users (email, name, age, address) 
    values ('vpowell7@odnoklassniki.ru', 'Venus Powell', 98, 'Rua Tupinambás, 280 - Belo Horizonte, MG');
    insert into users (email, name, age, address) 
    values ('jrobert8@ow.ly', 'Jewel Robert', 34, 'Rua das Laranjeiras, 746 - Rio de Janeiro, RJ');
    insert into users (email, name, age, address) 
    values ('prounsefull9@tumblr.com', 'Peyter Rounsefull', 66, 'Rua XV de Novembro, 1 - Blumenau, SC');
    insert into users (email, name, age, address) 
    values ('cpapachristophoroua@omniture.com', 'Chrystal Papachristophorou', 25, 'Rua La Salle, 33 - Canoas, RS');
    insert into users (email, name, age, address) 
    values ('gcartmailb@wikispaces.com', 'Ginni Cartmail', 67, 'Rua Thomaz Gonzaga, 775 - Ouro Preto, MG');
    insert into users (email, name, age, address) 
    values ('hbaudetc@zdnet.com', 'Horatius Baudet', 34, 'Rua Mandacaru, 763 - Maringá, PR');
    insert into users (email, name, age, address) 
    values ('rhoyerd@independent.co.uk', 'Renaud Hoyer', 5, 'Rua Shelley, 682 - Recife, PE');
    insert into users (email, name, age, address) 
    values ('bditchette@paginegialle.it', 'Bendick Ditchett', 5, 'Rua Portal do Sol, 11 - João Pessoa, PB');
    insert into users (email, name, age, address) 
    values ('nbrighamf@nps.gov', 'Nathanial Brigham', 71, 'Rua das Hortênsias, 94 - Gramado, RS');
    insert into users (email, name, age, address) 
    values ('iprandinig@storify.com', 'Idette Prandini', 82, 'Rua Warner, 3257 - São Paulo, SP');
    insert into users (email, name, age, address) 
    values ('achatth@fc2.com', 'Artur Chatt', 12, 'Rua dos Pinheiros, 3 - São Paulo, SP');
    insert into users (email, name, age, address) 
    values ('tconstanti@google.cn', 'Tiertza Constant', 71, 'Rua Kingsford, 847 - Fortaleza, CE');
    insert into users (email, name, age, address) 
    values ('cfilasovj@chronoengine.com', 'Celinka Filasov', 83, 'Rua Eastwood, 531 - Salvador, BA');
    insert into users (email, name, age, address) 
    values ('gbroodk@geocities.com', 'Georgetta Brood', 33, 'Rua Iowa, 579 - Florianópolis, SC');
    insert into users (email, name, age, address) 
    values ('kcuseickl@time.com', 'Keefer Cuseick', 63, 'Rua Lakewood, 962 - Vitória, ES');
    insert into users (email, name, age, address) 
    values ('mnuzzim@zdnet.com', 'Margareta Nuzzi', 34, 'Rua Corry, 35 - Manaus, AM');
    insert into users (email, name, age, address) 
    values ('dklehnn@nifty.com', 'Dur Klehn', 77, 'Rua Westport, 3 - Goiânia, GO');
    insert into users (email, name, age, address) 
    values ('dwheeltono@blogger.com', 'Darci Wheelton', 50, 'Rua Judy, 8 - Belém, PA');
    insert into users (email, name, age, address) 
    values ('kbarensenp@yahoo.co.jp', 'Katuscha Barensen', 17, 'Rua Dapin, 74 - Santos, SP');
    insert into users (email, name, age, address) 
    values ('lgrabertq@dot.gov', 'Lesli Grabert', 51, 'Rua Kedzie, 732 - Campinas, SP');
    insert into users (email, name, age, address) 
    values ('mpritchardr@hp.com', 'Mei Pritchard', 59, 'Rua Leroy, 220 - Curitiba, PR');
    insert into users (email, name, age, address) 
    values ('jkiellors@sciencedaily.com', 'Joanie Kiellor', 4, 'Rua Merrick, 456 - Natal, RN');
    insert into users (email, name, age, address) 
    values ('ibiggst@wikimedia.org', 'Ingaberg Biggs', 49, 'Rua Springview, 2 - Joinville, SC');
    insert into users (email, name, age, address) 
    values ('geadmeadu@bizjournals.com', 'Gibbie Eadmead', 26, 'Rua Park Meadow, 316 - Campo Grande, MS');
    insert into users (email, name, age, address) 
    values ('cportalv@feedburner.com', 'Cynthy Portal', 91, 'Rua Meadow Vale, 384 - Londrina, PR');
    insert into users (email, name, age, address) 
    values ('lwehnerrw@wordpress.org', 'Liliane Wehnerr', 74, 'Rua Manufacturers, 4 - Sorocaba, SP');
    insert into users (email, name, age, address) 
    values ('dbumpusx@mit.edu', 'Dilly Bumpus', 71, 'Rua Cascade, 73 - Blumenau, SC');
    insert into users (email, name, age, address) 
    values ('rantrumy@ning.com', 'Ritchie Antrum', 72, 'Rua Manufacturers, 475 - São José, SC');
    insert into users (email, name, age, address) 
    values ('rrecherz@sbwire.com', 'Rosco Recher', 80, 'Rua Russell, 9 - Curitiba, PR');
    insert into users (email, name, age, address) 
    values ('fstot10@wordpress.org', 'Filide Stot', 70, 'Rua Lillian, 2 - Recife, PE');
    insert into users (email, name, age, address) 
    values ('fblindt11@storify.com', 'Fredric Blindt', 92, 'Rua Stuart, 871 - Fortaleza, CE');
    insert into users (email, name, age, address) 
    values ('sboyn12@twitpic.com', 'Shauna Boyn', 8, 'Rua Village Green, 669 - São Paulo, SP');
    insert into users (email, name, age, address) 
    values ('bmcilvenna13@tuttocitta.it', 'Bettye McIlvenna', 30, 'Rua Rieder, 5 - Curitiba, PR');
    insert into users (email, name, age, address) 
    values ('mralton14@intel.com', 'Mariellen Ralton', 40, 'Rua Alpine, 851 - Florianópolis, SC');
    insert into users (email, name, age, address) 
    values ('tenrietto15@springer.com', 'Tab Enrietto', 80, 'Rua Fulton, 42 - São Paulo, SP');
    insert into users (email, name, age, address) 
    values ('kstickells16@boston.com', 'Keeley Stickells', 34, 'Rua Hudson, 2 - Rio de Janeiro, RJ');
    insert into users (email, name, age, address) 
    values ('telsie17@dion.ne.jp', 'Terri Elsie', 64, 'Rua Derek, 38 - Salvador, BA');
    insert into users (email, name, age, address) 
    values ('mpierrepont18@indiegogo.com', 'Maud Pierrepont', 54, 'Rua Autumn Leaf, 147 - Belo Horizonte, MG');
    insert into users (email, name, age, address) 
    values ('cchilders19@cafepress.com', 'Caye Childers', 58, 'Rua Surrey, 85 - Curitiba, PR');
    insert into users (email, name, age, address) 
    values ('walden1a@rakuten.co.jp', 'Wolfgang Alden', 23, 'Rua Vidon, 3 - São Paulo, SP');
    insert into users (email, name, age, address) 
    values ('worgill1b@icio.us', 'Win Orgill', 34, 'Rua Jenifer, 4 - Porto Alegre, RS');
    insert into users (email, name, age, address) 
    values ('tjimmes1c@joomla.org', 'Traci Jimmes', 1, 'Rua Waywood, 538 - Fortaleza, CE');
    insert into users (email, name, age, address) 
    values ('pgoodfield1d@telegraph.co.uk', 'Prentice Goodfield', 55, 'Rua Cherokee, 743 - São Paulo, SP');
    
    commit;
end try

begin catch
    rollback;
    print 'Error during "users" insert';
    print error_message();
end catch
