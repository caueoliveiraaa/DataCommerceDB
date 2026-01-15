/*
File: ~/DataCommerceDB/triggers/update_timestamp.sql
Purpose: Updates the column 'updated_at' for all tables when a row is modifed.
*/

-- Function for updating columns
create trigger update_modified_column()
return trigger as $$
begin
    new.updated_at := now();
    return new;
end;
$$ language plpgsql

-- Trigger for table orders
create trigger trg_orders_updated_at
before update on orders
for each row
execute function update_modified_column();

-- Trigger for table products
create trigger trg_products_updated_at
before update on products
for each row
execute function update_modified_column();

-- Trigger for table users
create trigger trg_users_updated_at
before update on users
for each row
execute function update_modified_column();
