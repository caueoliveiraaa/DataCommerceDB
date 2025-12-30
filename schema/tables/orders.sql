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

create table orders (
    order_id   integer generated always as identity primary key,
    user_id    integer not null references users(user_id) on delete restrict,
    product_id integer not null references products(product_id) on delete restrict,
    quantity   integer not null check (quantity > 0),
    updated_at timestamp not null default now(),
    created_at timestamp not null default now()
);

comment on table orders             is 'All the orders made by users';
comment on column orders.order_id   is 'Unique identifier for each order';
comment on column orders.user_id    is 'Identifier of the user who placed the order';
comment on column orders.product_id is 'Identifier of the purchased product';
comment on column orders.quantity   is 'Number of units of the product purchased';
comment on column orders.updated_at is 'Timestamp of the last update to this row';
comment on column orders.created_at is 'Timestamp when the row was created';
