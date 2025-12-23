/*
File: ~/DataCommerceDB/triggers/update_timestamp.sql
Purpose: Updates the column 'updated_at' for all tables when a row is modifed.
*/

-- Function for updating columns
CREATE TRIGGER update_modified_column()
RETURN TRIGGER AS $$
BEGIN
    NEW.updated_at := NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql

-- Trigger for table orders
CREATE TRIGGER trg_orders_updated_at
BEFORE UPDATE ON orders
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();

-- Trigger for table products
CREATE TRIGGER trg_products_updated_at
BEFORE UPDATE ON products
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();

-- Trigger for table users
CREATE TRIGGER trg_users_updated_at
BEFORE UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();
