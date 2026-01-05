/* 
File: ~/DataCommerceDB/schema/tables/products.sql
Table: products
Purpose: Stores all registered products of the system.
Notes:
    - 'price' must be a positive numeric value.
    - 'updated_at' is automatically maintained by a trigger.
*/

create table products (
    product_id integer generated always as identity primary key,
    name       varchar(50) not null,
    price      numeric(10, 2) not null check (price > 0.0),
    category   varchar(20),
    updated_at timestamp not null default now(),
    created_at timestamp not null default now()
);

comment on table products             is 'All registered products that can be bought by users';
comment on column products.product_id is 'Unique identifier of each product';
comment on column products.name       is 'product name (cannot be null)';
comment on column products.price      is 'Product price (cannot be null or negative)';
comment on column products.category   is 'Category or classification of the product';
comment on column products.updated_at is 'Timestamp of the last update to this row';
comment on column products.created_at is 'Timestamp when the row was created';
