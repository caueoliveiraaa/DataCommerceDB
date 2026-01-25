/*
Purpose: Updates the column 'updated_at' for all tables when a row is modifed.
Steps:
    - Define the function logic attached to the procedure.
    - Attach the trigger to each table that has a column updated_at.
*/

-- First create the trigger function
CREATE OR REPLACE FUNCTION update_modified_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at := NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Attach the trigger to the orders table
CREATE TRIGGER trg_orders_updated_at
BEFORE UPDATE ON commerce.orders
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();

-- Attach the trigger to the products table
CREATE TRIGGER trg_products_updated_at
BEFORE UPDATE ON commerce.products
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();

-- Attach the trigger to the users table
CREATE TRIGGER trg_users_updated_at
BEFORE UPDATE ON commerce.users
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();
