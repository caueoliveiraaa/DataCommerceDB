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

CREATE TABLE users (
    user_id    INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email      VARCHAR(255) UNIQUE NOT NULL,
    name       VARCHAR(255) NOT NULL,
    age        INTEGER CHECK (age > 0),
    address    VARCHAR(255),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE users             IS 'All users of the system';
COMMENT ON COLUMN users.user_id    IS 'Unique identifier for the user';
COMMENT ON COLUMN users.email      IS 'Unique email address for identification';
COMMENT ON COLUMN users.name       IS 'First name of the user (cannot be null)';
COMMENT ON COLUMN users.age        IS 'Age of the user (must be greater than zero)';
COMMENT ON COLUMN users.address    IS 'Residential address of the user';
COMMENT ON COLUMN users.updated_at IS 'Timestamp of the last update to this row';
COMMENT ON COLUMN users.created_at IS 'Timestamp when the row was created';
