/* 
File: ~/DataCommerceDB/schema/tables/users.sql
Table: users
Purpose: Stores all registered users of the system.
Notes:
    - 'user_id' is referenced by the 'orders' table.
    - 'email' is unique and used for identification.
    - 'name' must not be null.
    - 'updated_at' is automatically maintained by a trigger.
*/

create table users (
    user_id    integer generated always as identity primary key,
    email      varchar(255) unique not null,
    name       varchar(255) not null,
    age        integer check (age > 0),
    address    varchar(255),
    updated_at timestamp not null default now(),
    created_at timestamp not null default now()
);

comment on table users             is 'All users of the system';
comment on column users.user_id    is 'Unique identifier for the user';
comment on column users.email      is 'Unique email address for identification';
comment on column users.name       is 'First name of the user (cannot be null)';
comment on column users.age        is 'Age of the user (must be greater than zero)';
comment on column users.address    is 'Residential address of the user';
comment on column users.updated_at is 'Timestamp of the last update to this row';
comment on column users.created_at is 'Timestamp when the row was created';
