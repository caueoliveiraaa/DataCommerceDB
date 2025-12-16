/* 
File: ~/DataCommerceDB/schema/tables/orders.sql
Table: orders
Purpose: Stores all registered orders of the system.
Notes:
    - 'user_id' links each order to a user.
    - 'product_id' links each order to a product.
    - 'quantity' must be a positive integer.
    - 'updated_at' is automatically maintained by a trigger.
*/

CREATE TABLE orders (
    order_id   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id    INTEGER NOT NULL REFERENCES users(user_id) ON DELETE RESTRICT,
    product_id INTEGER NOT NULL REFERENCES products(product_id) ON DELETE RESTRICT,
    quantity   INTEGER NOT NULL CHECK (quantity > 0),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE orders             IS 'All the orders made by users';
COMMENT ON COLUMN orders.order_id   IS 'Unique identifier for each order';
COMMENT ON COLUMN orders.user_id    IS 'Identifier of the user who placed the order';
COMMENT ON COLUMN orders.product_id IS 'Identifier of the purchased product';
COMMENT ON COLUMN orders.quantity   IS 'Number of units of the product purchased';
COMMENT ON COLUMN orders.updated_at IS 'Timestamp of the last update to this row';
COMMENT ON COLUMN orders.created_at IS 'Timestamp when the row was created';
