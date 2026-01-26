/*
Purpose: Insert data into all tables, avoiding errors.
Steps:
    - Insert data into the commerce.users table.
    - Insert data into the commerce.products table.
    - Insert data into the commerce.orders table.
    - Insert data into the commerce.stock table.
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
VALUES ('sizzard4@archive.org', 'Sheilakathryn Izzard', 98, NULL)
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

INSERT INTO commerce.users (email, name, age, address, active) 
VALUES ('prounsefull9@tumblr.com', 'Peyter Rounsefull', 66, 'Rua XV de Novembro, 1 - Blumenau, SC', FALSE)
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
VALUES ('rhoyerd@independent.co.uk', 'Bobby Ivins', NULL, 'Rua Shelley, 682 - Recife, PE')
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
VALUES ('cfilasovj@chronoengine.com', 'Celinka Filasov', 83, NULL)
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

INSERT INTO commerce.users (email, name, age, address, active) 
VALUES ('dklehnn@nifty.com', 'Dur Klehn', 77, 'Rua Westport, 3 - Goiânia, GO', FALSE)
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('dwheeltono@blogger.com', 'Darci Wheelton', 50, 'Rua Judy, 8 - Belém, PA')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('kbarensenp@yahoo.co.jp', 'Katuscha Barensen', NULL, 'Rua Dapin, 74 - Santos, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('lgrabertq@dot.gov', 'Bobby Ivins', 51, 'Rua Kedzie, 732 - Campinas, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('mpritchardr@hp.com', 'Mei Pritchard', 59, 'Rua Leroy, 220 - Curitiba, PR')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('jkiellors@sciencedaily.com', 'Joanie Kiellor', NULL, 'Rua Merrick, 456 - Natal, RN')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('ibiggst@wikimedia.org', 'Ingaberg Biggs', 49, 'Rua Springview, 2 - Joinville, SC')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('geadmeadu@bizjournals.com', 'Gibbie Eadmead', 26, 'Rua Park Meadow, 316 - Campo Grande, MS')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('cportalv@feedburner.com', 'Cynthy Portal', 91, NULL)
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('lwehnerrw@wordpress.org', 'Liliane Wehnerr', 74, 'Rua Manufacturers, 4 - Sorocaba, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address, active) 
VALUES ('dbumpusx@mit.edu', 'Dilly Bumpus', 71, 'Rua Cascade, 73 - Blumenau, SC', FALSE)
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
VALUES ('tenrietto15@springer.com', 'Tab Enrietto', NULL, 'Rua Fulton, 42 - São Paulo, SP')
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
VALUES ('cchilders19@cafepress.com', 'Caye Childers', NULL, NULL)
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address) 
VALUES ('walden1a@rakuten.co.jp', 'Wolfgang Alden', 23, 'Rua Vidon, 3 - São Paulo, SP')
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address, active) 
VALUES ('worgill1b@icio.us', 'Win Orgill', 34, 'Rua Jenifer, 4 - Porto Alegre, RS', FALSE)
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address, active) 
VALUES ('tjimmes1c@joomla.org', 'Traci Jimmes', NULL, 'Rua Waywood, 538 - Fortaleza, CE', FALSE)
ON CONFLICT (email) DO NOTHING;

INSERT INTO commerce.users (email, name, age, address, active) 
VALUES ('pgoodfield1d@telegraph.co.uk', 'Prentice Goodfield', 55, 'Rua Cherokee, 743 - São Paulo, SP', FALSE)
ON CONFLICT (email) DO NOTHING;

COMMIT;

BEGIN;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE READ WRITE;
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO commerce.products (name, price, category)
VALUES ('Spicy Avocado Salsa', 4.49, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Under Desk Footrest', 29.99, 'Office')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Peanut Butter Chocolate Clusters', 2.99, 'Food - Desserts')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Silicone Baking Mat Set', 24.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Tomato Basil Soup', 3.49, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chickpeas', 1.29, 'Food - Canned Goods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Fitness Smartwatch', 99.99, 'Wearable Tech')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Organic Coconut Flakes', 3.49, 'Food - Baking')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Cinnamon Raisin Bread', 3.79, 'Food - Bakery')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Lentil Soup', 2.49, 'Food - Canned Goods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Banana Chips', 1.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Lemon Dill Chicken Skewers', 9.99, 'Food - Meat')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Rolling Cooler', 59.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Vegetable Lasagna', 6.99, 'Food - Frozen Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Balsamic Vinaigrette', 2.69, 'Food - Dressings')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Essential White Button-Up', 44.99, 'Clothing - Shirts')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Non-Stick Grill Mat', 19.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Buffalo Cauliflower Wings', 6.99, 'Food - Frozen Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Black Bean & Corn Salad', 3.99, 'Food - Salads')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Recipe Book Stand', 22.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Folding Pocket Knife', 24.99, 'Tools')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Coconut Rice', 2.29, 'Food - Frozen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Magic Color-Changing Mug', 14.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Yoga Mat', 25, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Spaghetti Sauce', 2.99, 'Food - Canned Goods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Smartphone Gimbal', 89.99, 'Electronics')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Travel Pillow', 22.99, 'Travel')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Camping Lantern', 34.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Vegan Tacos', 7.49, 'Food - Frozen Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Coconut Macaroons', 4.99, 'Food - Confectionery')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Knife', 39.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Kale Caesar Salad Kit', 5.99, 'Food - Salads')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Artisan Pickles', 2.49, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Heating Pad', 20.99, 'Health')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Spicy Snack Mix', 4.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Cocktail Shaker and Mixing Glass Set', 39.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Black Granola', 4.79, 'Food - Breakfast')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Crafting Kit', 29.99, 'Art Supplies')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Strawberry Rhubarb Jam', 4.29, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Rustic Italian Bread', 3.59, 'Food - Bakery')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Cinnamon Spiced Almonds', 5.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Garden Vegetable Soup', 3.29, 'Food - Canned Goods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Baked Falafel Balls', 5.99, 'Food - Frozen Vegetables')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Oversized Denim Shirt', 49.99, 'Clothing - Shirts')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Mediterranean Chickpea Salad', 5.99, 'Food - Salads')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Bamboo Cotton Tank Top', 22.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Buffalo Wing Sauce', 3.99, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Casual Long Cardigan', 45.99, 'Clothing - Outerwear')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Kettle Corn Popcorn', 2.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Portable Leaf Blower', 149.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Air Mattress', 49.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sweet and Sour Sauce', 2.79, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Grilled Vegetable Medley', 4.49, 'Food - Vegetables')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Elderberry Syrup Kit', 22.99, 'Health')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Cinnamon Roll Protein Bar', 2.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Crispy Kale Chips', 2.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('White Rice', 1.49, 'Food - Grains')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Lemon Dill Salmon', 9.99, 'Food - Seafood')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Corn Tortillas', 2.49, 'Food - Bakery')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Fried Rice', 4.29, 'Food - Frozen Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Field Journal', 14.99, 'Books')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Honey Sesame Chicken Mix', 8.99, 'Food - Frozen Meals')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Fresh Lemons', 0.75, 'Food - Fresh Produce')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sporty Slide Sandals', 24.99, 'Clothing - Footwear')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sporty Cap', 15.99, 'Clothing - Accessories')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Wax Warmer', 22.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Insulated Sport Tumbler', 22.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chipotle Sauce', 3.29, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Griddle', 54.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Coconut Cream Pie Mix', 4.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Vegan Caesar Dressing', 3.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Fruit Infuser Water Bottle', 15.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Vintage Graphic Tee', 25.99, 'Clothing - Tops')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Fresh Cilantro', 1.49, 'Food - Produce')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Stainless Steel Travel Mug', 19.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Stuffed Bell Peppers', 5.99, 'Food - Frozen Meals')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Compressible Packing Cubes', 29.99, 'Travel')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Backpack', 49.99, 'Accessories')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Pistachios', 6.99, 'Food - Nuts')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sweet and Spicy Barbecue Sauce', 3.99, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Portable Pet Stroller', 89.99, 'Pets')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Milk Frother', 19.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Tandoori Chicken Skewers', 7.99, 'Food - Meat')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Ultra-Thin Laptop Sleeve', 19.99, 'Accessories')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Meat Grinder', 89.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Coconut Cream Pie Yogurt', 1.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sweetened Condensed Milk', 1.89, 'Food - Baking Goods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Toilet Paper (12 rolls)', 8.99, 'Food - Household')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('DIY Organic Gardening Kit', 39.99, 'Garden')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Honey Sesame Chicken', 8.99, 'Food - Frozen Food')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Mini Air Purifier', 49.99, 'Health')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Griddle with Removable Plates', 59.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Coconut Chips', 3.59, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chili Con Carne Mix', 2.99, 'Food - Spices & Seasonings')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Classic Pumps', 64.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chickpea Snack Mix', 3.49, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Manual Coffee Grinder', 22.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Trendy Bomber Jacket', 69.99, 'Clothing - Outerwear')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Scented Candle Set', 24.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Potting Soil', 15.99, 'Garden')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Coconut Curry Chicken', 9.99, 'Food - Frozen Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Coconut Oil Spray', 4.99, 'Food - Cooking Oils')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Pressure Washer Accessories Kit', 39.99, 'Home Improvement')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Organic Honeycrisp Apples', 1.99, 'Food - Fruits')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chickpea Flour', 3.29, 'Food - Baking')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Lemon Basil Pasta Sauce', 4.99, 'Food - Sauces')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('High-Quality Yoga Block', 12.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Berry Smoothie Mix', 4.99, 'Food - Frozen Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sweet Chili Thai Sauce', 3.49, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Red Lentil Pasta', 3.99, 'Food - Pasta')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Dishwasher Safe Cutting Board', 22.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Comfortable Jogger Pants', 29.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Handheld Garment Steamer', 34.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Wine Decanter', 34.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Children''s Musical Instrument Set', 39.99, 'Toys')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Decorative Throw Pillows', 29.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Beef Jerky', 5.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Gingerbread House Kit', 6.99, 'Food - Baking')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Strawberry Banana Smoothie Pack', 4.99, 'Food - Frozen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Streaming Device', 49.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Outdoor Portable Fire Pit', 149.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Organic Brown Rice Cakes', 3.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Fleece Lined Leggings', 29.99, 'Clothing')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chicken Fajita Kit', 8.99, 'Food - Prepared Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Feta Cheese', 4.99, 'Food - Dairy')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Car Seat Organizer', 14.99, 'Automotive')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Portable Speaker Stand', 39.99, 'Audio')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Canvas High-Top Sneakers', 49.99, 'Clothing - Footwear')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Children''s Gardening Set', 19.99, 'Toys')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Indian Curry Sauce', 3.69, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Video Camera', 199, 'Electronics')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Safety Goggles', 14.99, 'Safety')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chocolate Chip Cookie Dough', 5.49, 'Food - Baking')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Classic Chicken Noodle Soup', 3.49, 'Food - Canned Goods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Blender Bottle', 12.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Digital Food Thermometer', 19.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Hot Pot', 49.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Rain Jacket', 64.99, 'Clothing')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Almond Butter Crunch Bar', 1.99, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Motion Sensor Light', 19.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Nutty Granola Clusters', 2.49, 'Food - Cereal')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('LED Camping Lantern with USB Charging', 34.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chocolate Syrup', 2.99, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Organic Sweet Potatoes', 1.99, 'Food - Produce')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Peanut Butter Granola', 4.99, 'Food - Breakfast')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Granola', 4.79, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Magnetic Spice Jars', 24.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Quinoa Salad', 5.99, 'Food - Prepared Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Multi-Purpose Plant Care Tool', 24.99, 'Garden')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Zesty Cilantro Lime Dressing', 3.29, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Protein Powder', 44.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Chipotle Lime Salsa', 3.99, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Spinach and Cheese Stuffed Shells', 5.99, 'Food - Frozen Meals')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Maxi Wrap Dress', 49.99, 'Clothing - Dresses')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Noise Cancelling Ear Muffs', 24.99, 'Safety')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Smartphone Gimbal Stabilizer', 89.99, 'Photography')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Slingback Sandals', 29.99, 'Clothing - Footwear')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Dog Collar', 15.99, 'Pets')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Rechargeable Electric Screwdriver', 39.99, 'Tools')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Cinnamon Ice Cream', 4.99, 'Food - Frozen Desserts')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Electric Stir Fry Pan', 49.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Apple Cinnamon Breakfast Muffins', 3.49, 'Food - Bakery')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Peanut Butter Chocolate Chip Bars', 4.59, 'Food - Snacks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Vegetable Curry', 5.99, 'Food - Frozen Foods')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Outdoor String Lights', 24.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Fitness Resistance Bands Set', 34.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Herbal Tea Infuser', 9.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Graphic Tee', 19.99, 'Clothing')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Classic Leather Wallet', 34.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Outdoor Inflatable Pool', 149.99, 'Outdoor')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Smartphone Tripod', 29.99, 'Photography')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Zucchini Noodles', 3.99, 'Food - Vegetables')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Hibiscus Tea Bags', 3.79, 'Food - Beverages')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Tahini', 5.49, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Wall-Mounted Wine Rack', 39.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Comfort Flats', 44.99, 'Clothing - Shoes')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Almond Milk Yogurt', 1.99, 'Food - Dairy Alternatives')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Himalayan Salt Grinder', 4.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Wireless Security Camera', 109.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Antique Style Clock', 39.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Organic Tomato Ketchup', 3.49, 'Food - Condiments')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Foldable Yoga Mat Carry Bag', 18.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Spice Rack', 39.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Yoga Strap', 12.99, 'Fitness')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sketchbook', 14.99, 'Art Supplies')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Rice Noodles', 3.49, 'Food - Grains')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Sturdy Bookends', 22.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Shredded Cheese', 4.29, 'Food - Dairy')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Kitchen Knife Sharpening System', 39.99, 'Kitchen')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Decorative Throw Blanket', 39.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Baby shirt', 12.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Workout Pills', 66.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Remote Car', 40.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('TV Remote Control', 200.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Mini bedroom TV', 666.99, NULL)
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Blue Cloth Scarf', 8.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Throw Asian Blanket', 96.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Indigenous Flute', 75.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Decorative Blanket', 23.99, 'Home')
ON CONFLICT (name) DO NOTHING;

INSERT INTO commerce.products (name, price, category)
VALUES ('Plastic Pot', 13.99, 'Home')
ON CONFLICT (name) DO NOTHING;

COMMIT;

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
