/*
File: ~/DataCommerceDB/scripts/insert_products.sql
Purpose: Injects all products into the products table.
*/

begin try
    begin transaction;
    set transaction isolation level serializable;
    set transaction read write;
    set constraints all deferred;

    insert into products (name, price, category)
    values ('Spicy Avocado Salsa', 4.49, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Under Desk Footrest', 29.99, 'Office');
    insert into products (name, price, category)
    values ('Peanut Butter Chocolate Clusters', 2.99, 'Food - Desserts');
    insert into products (name, price, category)
    values ('Silicone Baking Mat Set', 24.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Tomato Basil Soup', 3.49, 'Food - Canned Goods');
    insert into products (name, price, category)
    values ('Chickpeas', 1.29, 'Food - Canned Goods');
    insert into products (name, price, category)
    values ('Fitness Smartwatch', 99.99, 'Wearable Tech');
    insert into products (name, price, category)
    values ('Organic Coconut Flakes', 3.49, 'Food - Baking');
    insert into products (name, price, category)
    values ('Cinnamon Raisin Bread', 3.79, 'Food - Bakery');
    insert into products (name, price, category)
    values ('Lentil Soup', 2.49, 'Food - Canned Goods');
    insert into products (name, price, category)
    values ('Banana Chips', 1.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Lemon Dill Chicken Skewers', 9.99, 'Food - Meat');
    insert into products (name, price, category)
    values ('Rolling Cooler', 59.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Vegetable Lasagna', 6.99, 'Food - Frozen Foods');
    insert into products (name, price, category)
    values ('Balsamic Vinaigrette', 2.69, 'Food - Dressings');
    insert into products (name, price, category)
    values ('Essential White Button-Up', 44.99, 'Clothing - Shirts');
    insert into products (name, price, category)
    values ('Non-Stick Grill Mat', 19.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Buffalo Cauliflower Wings', 6.99, 'Food - Frozen Foods');
    insert into products (name, price, category)
    values ('Black Bean & Corn Salad', 3.99, 'Food - Salads');
    insert into products (name, price, category)
    values ('Recipe Book Stand', 22.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Folding Pocket Knife', 24.99, 'Tools');
    insert into products (name, price, category)
    values ('Coconut Rice', 2.29, 'Food - Frozen');
    insert into products (name, price, category)
    values ('Magic Color-Changing Mug', 14.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Yoga Mat', 25, 'Fitness');
    insert into products (name, price, category)
    values ('Spaghetti Sauce', 2.99, 'Food - Canned Goods');
    insert into products (name, price, category)
    values ('Smartphone Gimbal', 89.99, 'Electronics');
    insert into products (name, price, category)
    values ('Travel Pillow', 22.99, 'Travel');
    insert into products (name, price, category)
    values ('Camping Lantern', 34.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Vegan Tacos', 7.49, 'Food - Frozen Foods');
    insert into products (name, price, category)
    values ('Coconut Macaroons', 4.99, 'Food - Confectionery');
    insert into products (name, price, category)
    values ('Electric Knife', 39.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Kale Caesar Salad Kit', 5.99, 'Food - Salads');
    insert into products (name, price, category)
    values ('Artisan Pickles', 2.49, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Electric Heating Pad', 20.99, 'Health');
    insert into products (name, price, category)
    values ('Spicy Snack Mix', 4.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Cocktail Shaker and Mixing Glass Set', 39.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Granola', 4.79, 'Food - Breakfast');
    insert into products (name, price, category)
    values ('Air Mattress', 49.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Crafting Kit', 29.99, 'Art Supplies');
    insert into products (name, price, category)
    values ('Strawberry Rhubarb Jam', 4.29, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Rustic Italian Bread', 3.59, 'Food - Bakery');
    insert into products (name, price, category)
    values ('Cinnamon Spiced Almonds', 5.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Garden Vegetable Soup', 3.29, 'Food - Canned Goods');
    insert into products (name, price, category)
    values ('Baked Falafel Balls', 5.99, 'Food - Frozen Vegetables');
    insert into products (name, price, category)
    values ('Oversized Denim Shirt', 49.99, 'Clothing - Shirts');
    insert into products (name, price, category)
    values ('Mediterranean Chickpea Salad', 5.99, 'Food - Salads');
    insert into products (name, price, category)
    values ('Bamboo Cotton Tank Top', 22.99, 'Clothing - Tops');
    insert into products (name, price, category)
    values ('Buffalo Wing Sauce', 3.99, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Casual Long Cardigan', 45.99, 'Clothing - Outerwear');
    insert into products (name, price, category)
    values ('Kettle Corn Popcorn', 2.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Portable Leaf Blower', 149.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Air Mattress', 49.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Sweet and Sour Sauce', 2.79, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Sweet and Sour Sauce', 2.79, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Grilled Vegetable Medley', 4.49, 'Food - Vegetables');
    insert into products (name, price, category)
    values ('Elderberry Syrup Kit', 22.99, 'Health');
    insert into products (name, price, category)
    values ('Cinnamon Roll Protein Bar', 2.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Crispy Kale Chips', 2.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('White Rice', 1.49, 'Food - Grains');
    insert into products (name, price, category)
    values ('Lemon Dill Salmon', 9.99, 'Food - Seafood');
    insert into products (name, price, category)
    values ('Corn Tortillas', 2.49, 'Food - Bakery');
    insert into products (name, price, category)
    values ('Fried Rice', 4.29, 'Food - Frozen Foods');
    insert into products (name, price, category)
    values ('Field Journal', 14.99, 'Books');
    insert into products (name, price, category)
    values ('Honey Sesame Chicken Mix', 8.99, 'Food - Frozen Meals');
    insert into products (name, price, category)
    values ('Fresh Lemons', 0.75, 'Food - Fresh Produce');
    insert into products (name, price, category)
    values ('Sporty Slide Sandals', 24.99, 'Clothing - Footwear');
    insert into products (name, price, category)
    values ('Sporty Cap', 15.99, 'Clothing - Accessories');
    insert into products (name, price, category)
    values ('Electric Wax Warmer', 22.99, 'Home');
    insert into products (name, price, category)
    values ('Insulated Sport Tumbler', 22.99, 'Fitness');
    insert into products (name, price, category)
    values ('Chipotle Sauce', 3.29, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Electric Griddle', 54.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Coconut Cream Pie Mix', 4.99, 'Food - Baking');
    insert into products (name, price, category)
    values ('Vegan Caesar Dressing', 3.99, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Fruit Infuser Water Bottle', 15.99, 'Fitness');
    insert into products (name, price, category)
    values ('Vintage Graphic Tee', 25.99, 'Clothing - Tops');
    insert into products (name, price, category)
    values ('Fresh Cilantro', 1.49, 'Food - Produce');
    insert into products (name, price, category)
    values ('Stainless Steel Travel Mug', 19.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Stuffed Bell Peppers', 5.99, 'Food - Frozen Meals');
    insert into products (name, price, category)
    values ('Compressible Packing Cubes', 29.99, 'Travel');
    insert into products (name, price, category)
    values ('Backpack', 49.99, 'Accessories');
    insert into products (name, price, category)
    values ('Pistachios', 6.99, 'Food - Nuts');
    insert into products (name, price, category)
    values ('Sweet and Spicy Barbecue Sauce', 3.99, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Portable Pet Stroller', 89.99, 'Pets');
    insert into products (name, price, category)
    values ('Electric Milk Frother', 19.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Tandoori Chicken Skewers', 7.99, 'Food - Meat');
    insert into products (name, price, category)
    values ('Ultra-Thin Laptop Sleeve', 19.99, 'Accessories');
    insert into products (name, price, category)
    values ('Electric Meat Grinder', 89.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Coconut Cream Pie Yogurt', 1.99, 'Food - Dairy Alternatives');
    insert into products (name, price, category)
    values ('Sweetened Condensed Milk', 1.89, 'Food - Baking Goods');
    insert into products (name, price, category)
    values ('Toilet Paper (12 rolls)', 8.99, 'Food - Household');
    insert into products (name, price, category)
    values ('DIY Organic Gardening Kit', 39.99, 'Garden');
    insert into products (name, price, category)
    values ('Honey Sesame Chicken', 8.99, 'Food - Frozen Food');
    insert into products (name, price, category)
    values ('Mini Air Purifier', 49.99, 'Health');
    insert into products (name, price, category)
    values ('Electric Griddle with Removable Plates', 59.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Coconut Chips', 3.59, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Chili Con Carne Mix', 2.99, 'Food - Spices & Seasonings');
    insert into products (name, price, category)
    values ('Classic Pumps', 64.99, 'Clothing - Footwear');
    insert into products (name, price, category)
    values ('Chickpea Snack Mix', 3.49, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Manual Coffee Grinder', 22.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Trendy Bomber Jacket', 69.99, 'Clothing - Outerwear');
    insert into products (name, price, category)
    values ('Scented Candle Set', 24.99, 'Home');
    insert into products (name, price, category)
    values ('Potting Soil', 15.99, 'Garden');
    insert into products (name, price, category)
    values ('Coconut Curry Chicken', 9.99, 'Food - Frozen Foods');
    insert into products (name, price, category)
    values ('Coconut Oil Spray', 4.99, 'Food - Cooking Oils');
    insert into products (name, price, category)
    values ('Pressure Washer Accessories Kit', 39.99, 'Home Improvement');
    insert into products (name, price, category)
    values ('Organic Honeycrisp Apples', 1.99, 'Food - Fruits');
    insert into products (name, price, category)
    values ('Chickpea Flour', 3.29, 'Food - Baking');
    insert into products (name, price, category)
    values ('Lemon Basil Pasta Sauce', 4.99, 'Food - Sauces');
    insert into products (name, price, category)
    values ('High-Quality Yoga Block', 12.99, 'Fitness');
    insert into products (name, price, category)
    values ('Berry Smoothie Mix', 4.99, 'Food - Frozen Foods');
    insert into products (name, price, category)
    values ('Sweet Chili Thai Sauce', 3.49, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Red Lentil Pasta', 3.99, 'Food - Pasta');
    insert into products (name, price, category)
    values ('Dishwasher Safe Cutting Board', 22.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Comfortable Jogger Pants', 29.99, 'Clothing - Bottoms');
    insert into products (name, price, category)
    values ('Handheld Garment Steamer', 34.99, 'Home');
    insert into products (name, price, category)
    values ('Wine Decanter', 34.99, 'Home');
    insert into products (name, price, category)
    values ('Children''s Musical Instrument Set', 39.99, 'Toys');
    insert into products (name, price, category)
    values ('Decorative Throw Pillows', 29.99, 'Home');
    insert into products (name, price, category)
    values ('Beef Jerky', 5.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Lemon Dill Salmon', 9.99, 'Food - Seafood');
    insert into products (name, price, category)
    values ('Gingerbread House Kit', 6.99, 'Food - Baking');
    insert into products (name, price, category)
    values ('Strawberry Banana Smoothie Pack', 4.99, 'Food - Frozen');
    insert into products (name, price, category)
    values ('Streaming Device', 49.99, 'Electronics');
    insert into products (name, price, category)
    values ('Outdoor Portable Fire Pit', 149.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Organic Brown Rice Cakes', 3.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Fleece Lined Leggings', 29.99, 'Clothing');
    insert into products (name, price, category)
    values ('Chicken Fajita Kit', 8.99, 'Food - Prepared Foods');
    insert into products (name, price, category)
    values ('Feta Cheese', 4.99, 'Food - Dairy');
    insert into products (name, price, category)
    values ('Car Seat Organizer', 14.99, 'Automotive');
    insert into products (name, price, category)
    values ('Peanut Butter Chocolate Clusters', 2.99, 'Food - Desserts');
    insert into products (name, price, category)
    values ('Mini Air Purifier', 49.99, 'Health');
    insert into products (name, price, category)
    values ('Portable Speaker Stand', 39.99, 'Audio');
    insert into products (name, price, category)
    values ('Canvas High-Top Sneakers', 49.99, 'Clothing - Footwear');
    insert into products (name, price, category)
    values ('Children''s Gardening Set', 19.99, 'Toys');
    insert into products (name, price, category)
    values ('Indian Curry Sauce', 3.69, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Video Camera', 199, 'Electronics');
    insert into products (name, price, category)
    values ('Safety Goggles', 14.99, 'Safety');
    insert into products (name, price, category)
    values ('Chocolate Chip Cookie Dough', 5.49, 'Food - Baking');
    insert into products (name, price, category)
    values ('Classic Chicken Noodle Soup', 3.49, 'Food - Canned Goods');
    insert into products (name, price, category)
    values ('Blender Bottle', 12.99, 'Fitness');
    insert into products (name, price, category)
    values ('Digital Food Thermometer', 19.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Electric Hot Pot', 49.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Rain Jacket', 64.99, 'Clothing');
    insert into products (name, price, category)
    values ('Almond Butter Crunch Bar', 1.99, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Red Lentil Pasta', 3.99, 'Food - Pasta');
    insert into products (name, price, category)
    values ('Motion Sensor Light', 19.99, 'Home');
    insert into products (name, price, category)
    values ('Nutty Granola Clusters', 2.49, 'Food - Cereal');
    insert into products (name, price, category)
    values ('LED Camping Lantern with USB Charging', 34.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Chocolate Syrup', 2.99, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Organic Sweet Potatoes', 1.99, 'Food - Produce');
    insert into products (name, price, category)
    values ('Peanut Butter Granola', 4.99, 'Food - Breakfast');
    insert into products (name, price, category)
    values ('Granola', 4.79, 'Food - Breakfast');
    insert into products (name, price, category)
    values ('Magnetic Spice Jars', 24.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Quinoa Salad', 5.99, 'Food - Prepared Foods');
    insert into products (name, price, category)
    values ('Multi-Purpose Plant Care Tool', 24.99, 'Garden');
    insert into products (name, price, category)
    values ('Zesty Cilantro Lime Dressing', 3.29, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Protein Powder', 44.99, 'Fitness');
    insert into products (name, price, category)
    values ('Chipotle Lime Salsa', 3.99, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Spinach and Cheese Stuffed Shells', 5.99, 'Food - Frozen Meals');
    insert into products (name, price, category)
    values ('Rain Jacket', 64.99, 'Clothing');
    insert into products (name, price, category)
    values ('Maxi Wrap Dress', 49.99, 'Clothing - Dresses');
    insert into products (name, price, category)
    values ('Noise Cancelling Ear Muffs', 24.99, 'Safety');
    insert into products (name, price, category)
    values ('Coconut Chips', 3.59, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Smartphone Gimbal Stabilizer', 89.99, 'Photography');
    insert into products (name, price, category)
    values ('Slingback Sandals', 29.99, 'Clothing - Footwear');
    insert into products (name, price, category)
    values ('Dog Collar', 15.99, 'Pets');
    insert into products (name, price, category)
    values ('Rechargeable Electric Screwdriver', 39.99, 'Tools');
    insert into products (name, price, category)
    values ('Cinnamon Ice Cream', 4.99, 'Food - Frozen Desserts');
    insert into products (name, price, category)
    values ('Electric Stir Fry Pan', 49.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Apple Cinnamon Breakfast Muffins', 3.49, 'Food - Bakery');
    insert into products (name, price, category)
    values ('Peanut Butter Chocolate Chip Bars', 4.59, 'Food - Snacks');
    insert into products (name, price, category)
    values ('Vegetable Curry', 5.99, 'Food - Frozen Foods');
    insert into products (name, price, category)
    values ('Outdoor String Lights', 24.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Fitness Resistance Bands Set', 34.99, 'Fitness');
    insert into products (name, price, category)
    values ('Herbal Tea Infuser', 9.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Graphic Tee', 19.99, 'Clothing');
    insert into products (name, price, category)
    values ('Classic Leather Wallet', 34.99, 'Clothing - Accessories');
    insert into products (name, price, category)
    values ('Outdoor Inflatable Pool', 149.99, 'Outdoor');
    insert into products (name, price, category)
    values ('Smartphone Tripod', 29.99, 'Photography');
    insert into products (name, price, category)
    values ('Zucchini Noodles', 3.99, 'Food - Vegetables');
    insert into products (name, price, category)
    values ('Hibiscus Tea Bags', 3.79, 'Food - Beverages');
    insert into products (name, price, category)
    values ('Tahini', 5.49, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Wall-Mounted Wine Rack', 39.99, 'Home');
    insert into products (name, price, category)
    values ('Comfort Flats', 44.99, 'Clothing - Shoes');
    insert into products (name, price, category)
    values ('Almond Milk Yogurt', 1.99, 'Food - Dairy Alternatives');
    insert into products (name, price, category)
    values ('Himalayan Salt Grinder', 4.99, 'Food - Spices');
    insert into products (name, price, category)
    values ('Wireless Security Camera', 109.99, 'Home');
    insert into products (name, price, category)
    values ('Antique Style Clock', 39.99, 'Home');
    insert into products (name, price, category)
    values ('Smartphone Tripod', 29.99, 'Photography');
    insert into products (name, price, category)
    values ('Organic Tomato Ketchup', 3.49, 'Food - Condiments');
    insert into products (name, price, category)
    values ('Foldable Yoga Mat Carry Bag', 18.99, 'Fitness');
    insert into products (name, price, category)
    values ('Spice Rack', 39.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Yoga Strap', 12.99, 'Fitness');
    insert into products (name, price, category)
    values ('Sketchbook', 14.99, 'Art Supplies');
    insert into products (name, price, category)
    values ('Rice Noodles', 3.49, 'Food - Grains');
    insert into products (name, price, category)
    values ('Sturdy Bookends', 22.99, 'Office');
    insert into products (name, price, category)
    values ('Shredded Cheese', 4.29, 'Food - Dairy');
    insert into products (name, price, category)
    values ('Kitchen Knife Sharpening System', 39.99, 'Kitchen');
    insert into products (name, price, category)
    values ('Decorative Throw Blanket', 39.99, 'Home');
    insert into products (name, price, category)
    values ('Coconut Rice', 2.29, 'Food - Frozen');

    commit;
end try

begin catch
    rollback;
    print 'Error during "products" insert';
    print error_message();
end catch
