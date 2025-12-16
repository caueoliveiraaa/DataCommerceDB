/* 
File: ~/DataCommerceDB/schema/tables/products.sql
Table: products
Purpose: Stores all registered products of the system.
Notes:
    - 'price' must be a positive numeric value.
    - 'updated_at' is automatically maintained by a trigger.
*/

CREATE TABLE products (
    product_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name       VARCHAR(50) NOT NULL,
    price      NUMERIC(10, 2) NOT NULL CHECK (price > 0.0),
    category   VARCHAR(20),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE products             IS 'All registered products that can be bought by users';
COMMENT ON COLUMN products.product_id IS 'Unique identifier of each product';
COMMENT ON COLUMN products.name       IS 'product name (cannot be null)';
COMMENT ON COLUMN products.price      IS 'Product price (cannot be null or negative)';
COMMENT ON COLUMN products.category   IS 'Category or classification of the product';
COMMENT ON COLUMN products.updated_at IS 'Timestamp of the last update to this row';
COMMENT ON COLUMN products.created_at IS 'Timestamp when the row was created';
