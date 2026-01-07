/*
File: ~/DataCommerceDB/scripts/02_create_schema_and_tables.sql
Purpose:
    - Sets up the schema "commerce" and all its tables and table settings.
Steps:
    - Creates the schema "commerce".
    - Creates the table "commerce.users" and writes its comments.
    - Creates the table "commerce.products" and writes its comments.
    - Creates the table "commerce.orders" and writes its comments.
    - Add uniqueness to "commerce.orders", allowing one order per user/product per day.
*/

-- Create schema commerce
CREATE SCHEMA IF NOT EXISTS commerce;

-- Create table users into schema commerce
CREATE TABLE IF NOT EXISTS commerce.users (
    user_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    age INTEGER CHECK (age > 0),
    address VARCHAR(255),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Create comments for table users
COMMENT ON TABLE commerce.users IS 'All users of the system';
COMMENT ON COLUMN commerce.users.user_id IS 'Unique identifier for the user';
COMMENT ON COLUMN commerce.users.email IS 'Unique email address for identification';
COMMENT ON COLUMN commerce.users.name IS 'First name of the user (cannot be null)';
COMMENT ON COLUMN commerce.users.age IS 'Age of the user (must be greater than zero)';
COMMENT ON COLUMN commerce.users.address IS 'Residential address of the user';
COMMENT ON COLUMN commerce.users.updated_at IS 'Timestamp of the last update to this row';
COMMENT ON COLUMN commerce.users.created_at IS 'Timestamp when the row was created';

-- Create table products into schema commerce
CREATE TABLE IF NOT EXISTS commerce.products (
    product_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(70) UNIQUE NOT NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price > 0.0),
    category VARCHAR(50),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Create comments for table products
COMMENT ON TABLE commerce.products IS 'All registered products that can be bought by users';
COMMENT ON COLUMN commerce.products.product_id IS 'Unique identifier of each product';
COMMENT ON COLUMN commerce.products.name IS 'product name (cannot be null)';
COMMENT ON COLUMN commerce.products.price IS 'Product price (cannot be null or negative)';
COMMENT ON COLUMN commerce.products.category IS 'Category or classification of the product';
COMMENT ON COLUMN commerce.products.updated_at IS 'Timestamp of the last update to this row';
COMMENT ON COLUMN commerce.products.created_at IS 'Timestamp when the row was created';

-- Create table orders into schema commerce
CREATE TABLE IF NOT EXISTS commerce.orders (
    order_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES commerce.users(user_id) ON DELETE RESTRICT,
    product_id INTEGER NOT NULL REFERENCES commerce.products(product_id) ON DELETE RESTRICT,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_date DATE GENERATED ALWAYS AS (created_at::date) STORED,
    CONSTRAINT unique_user_product_day UNIQUE (user_id, product_id, created_date)
);

-- Create comments for table orders
COMMENT ON TABLE commerce.orders IS 'All the orders made by users';
COMMENT ON COLUMN commerce.orders.order_id IS 'Unique identifier for each order';
COMMENT ON COLUMN commerce.orders.user_id IS 'Identifier of the user who placed the order';
COMMENT ON COLUMN commerce.orders.product_id IS 'Identifier of the purchased product';
COMMENT ON COLUMN commerce.orders.quantity IS 'Number of units of the product purchased';
COMMENT ON COLUMN commerce.orders.updated_at IS 'Timestamp of the last update to this row';
COMMENT ON COLUMN commerce.orders.created_at IS 'Timestamp when the row was created';
