/*
Purpose: Sets up the schema commerce and all its tables and table settings.
Steps:
    - Create the schema commerce.
    - Drop tables if they exist.
    - Create the table commerce.users and writes its comments.
    - Create the table commerce.products and writes its comments.
    - Create the table commerce.orders and writes its comments.
    - Add uniqueness to commerce.orders, allowing one order per user/product per day.
    - Create the table commerce.stock and writes its comments.
    - Create constraint that only allows one product per registered stock.
*/

CREATE SCHEMA IF NOT EXISTS commerce;

DROP TABLE IF EXISTS commerce.stock CASCADE;
DROP TABLE IF EXISTS commerce.orders CASCADE;
DROP TABLE IF EXISTS commerce.products CASCADE;
DROP TABLE IF EXISTS commerce.users CASCADE;

CREATE TABLE IF NOT EXISTS commerce.users(
    user_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    age INTEGER CHECK (age > 0),
    address VARCHAR(255),
    updated_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS commerce.products(
    product_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(70) UNIQUE NOT NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price > 0.0),
    category VARCHAR(50),
    updated_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS commerce.orders(
    order_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES commerce.users(user_id) ON DELETE RESTRICT,
    product_id INTEGER NOT NULL REFERENCES commerce.products(product_id) ON DELETE RESTRICT,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    updated_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_date DATE GENERATED ALWAYS AS (created_at::date) STORED,
    CONSTRAINT unique_user_product_day UNIQUE (user_id, product_id, created_date)
);

CREATE TABLE IF NOT EXISTS commerce.stock(
    stock_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_id INTEGER NOT NULL REFERENCES commerce.products(product_id) ON DELETE CASCADE,
    stock_quantity INTEGER NOT NULL CHECK (stock_quantity >= 0),
    last_restock TIMESTAMP
);

ALTER TABLE commerce.stock
ADD CONSTRAINT unique_product_stock UNIQUE (product_id);
