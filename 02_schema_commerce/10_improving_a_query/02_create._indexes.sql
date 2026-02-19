/*
Purpose: Create indexes that improve the query in 01_improve_select.sql.
Steps:
    - Create index on users.created_at for month filtering
    - Create index on users.age if filtering often
    - Create index on orders.user_id for joins
    - Create index on orders.product_id for joins
    - Create index on products.category for filtering
    - Create index on stock.product_id for joins
    - Call the procedure that creates the indexes
    - Query the indexes created
*/

-- Create indexes for the query in 
CREATE OR REPLACE PROCEDURE create_indexes()
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_indexes 
        WHERE schemaname = 'commerce' AND indexname = 'idx_users_created_at'
    ) THEN
        EXECUTE 'CREATE INDEX idx_users_created_at ON commerce.users(created_at)';
    END IF;

    IF NOT EXISTS (
        SELECT 1 FROM pg_indexes 
        WHERE schemaname = 'commerce' AND indexname = 'idx_users_age'
    ) THEN
        EXECUTE 'CREATE INDEX idx_users_age ON commerce.users(age)';
    END IF;

    IF NOT EXISTS (
        SELECT 1 FROM pg_indexes 
        WHERE schemaname = 'commerce' AND indexname = 'idx_orders_user_id'
    ) THEN
        EXECUTE 'CREATE INDEX idx_orders_user_id ON commerce.orders(user_id)';
    END IF;

    IF NOT EXISTS (
        SELECT 1 FROM pg_indexes 
        WHERE schemaname = 'commerce' AND indexname = 'idx_orders_product_id'
    ) THEN
        EXECUTE 'CREATE INDEX idx_orders_product_id ON commerce.orders(product_id)';
    END IF;

    IF NOT EXISTS (
        SELECT 1 FROM pg_indexes 
        WHERE schemaname = 'commerce' AND indexname = 'idx_products_category'
    ) THEN
        EXECUTE 'CREATE INDEX idx_products_category ON commerce.products(category)';
    END IF;

    IF NOT EXISTS (
        SELECT 1 FROM pg_indexes 
        WHERE schemaname = 'commerce' AND indexname = 'idx_stock_product_id'
    ) THEN
        EXECUTE 'CREATE INDEX idx_stock_product_id ON commerce.stock(product_id)';
    END IF;
END;
$$;

-- Call indexes creation
CALL create_indexes();

--  Query indexes
SELECT schemaname, tablename, indexname, indexdef
FROM pg_indexes
WHERE schemaname = 'commerce'
AND indexname LIKE 'idx%' 
ORDER BY schemaname, tablename, indexname;