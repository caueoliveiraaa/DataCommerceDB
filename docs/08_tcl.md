# PostgreSQL & SQL: Transaction Control (TCL)

This documentation provides an overview of the Transaction Control Language (TCL) commands available in standard SQL and PostgreSQL.</br>
It highlights how they work, how they differ, and when to use each one. Practical examples are included to help you understand their behavior in real database designs.

</br>

## ▶️ COMMIT

### 1. COMMIT – PostgreSQL

| Command     | Description                                                                  |
|:------------|:-----------------------------------------------------------------------------|
| `COMMIT`    | Ends the current transaction and makes all changes permanent in the database |

### 2. COMMIT – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                                  |
|:--------------|:------------|:-----------------------------------------------------------------------|
| `COMMIT`      | `COMMIT`    | Same in both; ensures durability of changes once transaction is closed |

### 3. COMMIT - Example

```sql
begin;

insert into customers (id, name)
values (1, 'Alice');

update accounts 
set balance = balance - 100
where customer_id = 1;

-- Make all changes permanent
commit;

-- After COMMIT, the new customer and balance update are permanently stored
-- The BEGIN keyword must be paired with COMMIT and ROLLBACK, to avoid locks or unexpected behavior and close the transaction.
```

## ▶️ ROLLBACK

### 1. ROLLBACK – PostgreSQL

| Command     | Description                                                                   |
|:------------|:------------------------------------------------------------------------------|
| `ROLLBACK`  | Undoes all changes made in the current transaction, restoring the prior state |

### 2. ROLLBACK – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                                   |
|:--------------|:------------|:------------------------------------------------------------------------|
| `ROLLBACK`    | `ROLLBACK`  | Same in both; cancels all operations since the last COMMIT or SAVEPOINT |

### 3. ROLLBACK - Example

```sql
begin;

insert into customers (id, name)
values (2, 'Gabriel');

update accounts 
set balance = balance - 200
where customer_id = 2;

-- Cancel all changes made in this transaction
rollback;

-- The insert and update are undone; the database returns to its prior state
```

## ▶️ SAVEPOINT

### 1. SAVEPOINT – PostgreSQL

| Command        | Description                                                           |
|:---------------|:----------------------------------------------------------------------|
| `SAVEPOINT sp` | Defines a point within a transaction to which you can later roll back |

### 2. SAVEPOINT – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                      |
|:--------------|:------------|:-----------------------------------------------------------|
| `SAVEPOINT`   | `SAVEPOINT` | Same in both; allows partial rollback within a transaction |

### 3. SAVEPOINT - Example

```sql
begin;

insert into orders (id, product)
values (101, 'Laptop');

savepoint spl;

insert into orders (id, product)
values (102, 'Phone');

-- Roll back only to the savepoint, undoing the second insert
rollback to spl;

commit;

-- The Laptop order remains, but the Phone order is discarded
```

## ▶️ RELEASE SAVEPOINT

### 1. RELEASE SAVEPOINT – PostgreSQL

| Command                | Description                                                                |
|:-----------------------|:---------------------------------------------------------------------------|
| `RELEASE SAVEPOINT sp` | Removes a previously defined savepoint, making it unavailable for rollback |

### 2. RELEASE SAVEPOINT – Standard x PostgreSQL

| Standard SQL        | PostgreSQL          | Notes                                                    |
|:--------------------|:--------------------|:---------------------------------------------------------|
| `RELEASE SAVEPOINT` | `RELEASE SAVEPOINT` | Same in both; PostgreSQL fully supports the SQL standard |

### 3. RELEASE SAVEPOINT - Example

```sql
begin;

insert into orders (id, product)
values (201, 'Tablet');

savepoint sp2;

-- Once released, you cannot rool back to sp2 anymore
release savepoint sp2;

commit;

-- The savepoint is removed; transaction continues normally
```

## ▶️ SET TRANSACTION

### 1. SET TRANSACTION – PostgreSQL

| Command                                | Description                                                                                      |
|:---------------------------------------|:-------------------------------------------------------------------------------------------------|
| `SET TRANSACTION ISOLATION LEVEL ...`  | Sets isolation level for the current transaction (READ COMMITTED, REPEATABLE READ, SERIALIZABLE) |
| `SET TRANSACTION READ WRITE/READ ONLY` | Defines whether the transaction can modify data or only read                                     |

### 2. SET TRANSACTION – Standard x PostgreSQL

| Standard SQL      | PostgreSQL        | Notes                                                    |
|:------------------|:------------------|:---------------------------------------------------------|
| `SET TRANSACTION` | `SET TRANSACTION` | Same in both; PostgreSQL fully supports the SQL standard |

### 3. SET TRANSACTION - Example

```sql
begin;

set transaction isolation level serializable;
set transaction read only;

-- This query will run a read-only, serializable transaction
select * from accounts
where balance > 1000;

commit;

-- Ensures the transaction cannot modify data and uses the strictest isolation
```

## ▶️ SET CONSTRAINTS

### 1. SET CONSTRAINTS – PostgreSQL

| Command                                | Description                                                              |
|:---------------------------------------|:-------------------------------------------------------------------------|
| `SET CONSTRAINTS ALL DEFERRED`         | Defers checking of constraints until transaction commit                  |
| `SET CONSTRAINTS constraint_name ...`  | Controls when specific constraints are enforced (IMMEDIATE or DEFERRED)  |

### 2. SET CONSTRAINTS – Standard x PostgreSQL

| Standard SQL      | PostgreSQL        | Notes                                                                        |
|:------------------|:------------------|:-----------------------------------------------------------------------------|
| `SET CONSTRAINTS` | `SET CONSTRAINTS` | Same in both; PostgreSQL supports deferred and immediate constraint checking |

### 3. SET CONSTRAINTS - Example

```sql
begin;

set constraint all deferred;

insert into orders (id, customer_id) -- customer doesn’t exist yet
values (301, 999);

insert into customers (id, name)
values (999, 'Charlie');

-- Constraints checked deferred unit commit, so both inserts succeed
commit;
```

## ▶️ MORE EXAMPLES

### Processing an order with multiple steps, using savepoints, constraints, and transaction settings

```sql
begin;

-- Set transactions properties
set transaction isolation level serializable;
set transaction read write;

-- Insert customer and order
insert into customers (id, name)
values (1001, 'Alice');

insert into orders (id, customer_id, product)
values (5001, 1001, 'Laptop');

-- Defines a savepoint before payment
savepoint before_payment;

-- Try to insert payment
insert into payments (id, order_id, amount) 
values (9001, 5001, 1200);

-- Suppose something goes wrong: rollback only payment 
rollback to before_payment;

-- Release the savepoint (no longer needed) 
release savepoint before_payment;

-- Defer constraints until commit 
set constraints all deferred;

-- Insert dependent data out of order 
insert into orders (id, customer_id, product) 
values (5002, 9999, 'phone'); -- customer not yet created

insert into customers (id, name) 
values (9999, 'bob');

-- Finally commit everything 
commit;
```
