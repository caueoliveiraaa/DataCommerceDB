# PostgreSQL & SQL: Transaction Control (TCL)

This documentation provides an overview of the Transaction Control Language (TCL) commands available in standard SQL and PostgreSQL.</br>
It highlights how they work, how they differ, and when to use each one. Practical examples are included to help you understand their behavior in real database designs.

## ▶️ COMMIT

### 1. COMMIT – PostgreSQL

| Command     | Description                                                                  |
|:------------|:-----------------------------------------------------------------------------|
| `commit`    | Ends the current transaction and makes all changes permanent in the database |

### 2. COMMIT – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                                  |
|:--------------|:------------|:-----------------------------------------------------------------------|
| `commit`      | `commit`    | Same in both; ensures durability of changes once transaction is closed |

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

-- after commit, the new customer and balance update are permanently stored
-- the begin keyword must be paired with commit and rollback, to avoid locks or unexpected behavior and close the transaction.
```

## ▶️ ROLLBACK

### 1. ROLLBACK – PostgreSQL

| Command     | Description                                                                   |
|:------------|:------------------------------------------------------------------------------|
| `rollback`  | Undoes all changes made in the current transaction, restoring the prior state |

### 2. ROLLBACK – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                                   |
|:--------------|:------------|:------------------------------------------------------------------------|
| `rollback`    | `rollback`  | Same in both; cancels all operations since the last commit or savepoint |

### 3. ROLLBACK - Example

```sql
begin;

insert into customers (id, name)
values (2, 'Gabriel');

update accounts 
set balance = balance - 200
where customer_id = 2;

-- cancel all changes made in this transaction
rollback;

-- the insert and update are undone; the database returns to its prior state
```

## ▶️ SAVEPOINT

### 1. SAVEPOINT – PostgreSQL

| Command        | Description                                                           |
|:---------------|:----------------------------------------------------------------------|
| `savepoint sp` | Defines a point within a transaction to which you can later roll back |

### 2. SAVEPOINT – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                      |
|:--------------|:------------|:-----------------------------------------------------------|
| `savepoint`   | `savepoint` | Same in both; allows partial rollback within a transaction |

### 3. SAVEPOINT - Example

```sql
begin;

insert into orders (id, product)
values (101, 'Laptop');

savepoint spl;

insert into orders (id, product)
values (102, 'Phone');

-- roll back only to the savepoint, undoing the second insert
rollback to spl;

commit;

-- the laptop order remains, but the phone order is discarded
```

## ▶️ RELEASE SAVEPOINT

### 1. RELEASE SAVEPOINT – PostgreSQL

| Command                | Description                                                                |
|:-----------------------|:---------------------------------------------------------------------------|
| `release savepoint sp` | Removes a previously defined savepoint, making it unavailable for rollback |

### 2. RELEASE SAVEPOINT – Standard x PostgreSQL

| Standard SQL        | PostgreSQL          | Notes                                                    |
|:--------------------|:--------------------|:---------------------------------------------------------|
| `release savepoint` | `release savepoint` | Same in both; PostgreSQL fully supports the SQL standard |

### 3. RELEASE SAVEPOINT - Example

```sql
begin;

insert into orders (id, product)
values (201, 'Tablet');

savepoint sp2;

-- once released, you cannot rool back to sp2 anymore
release savepoint sp2;

commit;

-- the savepoint is removed; transaction continues normally
```

## ▶️ SET TRANSACTION

### 1. SET TRANSACTION – PostgreSQL

The ***set transaction*** command defines the behavior of the current transaction in terms of:

- Isolation level: How much the transaction is protected from changes made by other concurrent transactions.
- Read/Write mode: Whether the transaction can modify data or is restricted to reading only.

It must be issued right after begin, before executing queries.</br>
Once queries run, you cannot change isolation or read/write mode for that transaction.

| Command                                | Description                                                                                      |
|:---------------------------------------|:-------------------------------------------------------------------------------------------------|
| `set transaction isolation level ...`  | Sets isolation level for the current transaction (read committed, repeatable read, serializable) |
| `set transaction read write`           | Allows both read and write operations                                                            |
| `set transaction read only`            | Restricts the transaction to read-only queries (no data modifications allowed).                  |

### 2. READ COMMITED (DEFAULT)

- Each statement sees only data that was commited before it started.
- Other transactions' commits become visible immediately in subsequent statements.

Senario:

- Two users are checking account balances
- Transaction A reads balance = 100
- Transaction B deposits +50 and commits
- Transaction A runs another query and now sees balance = 150

Example:

```sql
begin;

set transaction isolation level read commited;

-- first query sees old balance
select balance
from accounts 
where id = 1; -- returns 100

-- meanwhile, another transaction commits a deposit of 50

-- Second query sees updated balance
select balance
from accounts 
where id = 1; -- returns 150

commit;

-- useful when you want fresh data visibility but can tolerate changes between queries
```

### 3. REPEATABLE READ

- Ensures all quries in the transaction see a consistent snapshot
- Prevents non-repeatable reads (same query always returns same result)
- But phantom rows (new rows added by others) may still appear in range queries
- A range query is a query that retrieves rows where a column’s value falls within a specified range of values (ex: using between)

Senario

- Transaction A checks all customers with balance > 100
- Transaction B inserts a new customer with balance 200 and commits
- Transaction A repeats the query; still sees the same original set (no new row)

Example:

```sql
begin;

set transaction isolation level repeatable read;

-- snapshot taken here
select *
from customers
where balance > 100; -- returns 3 rows

-- another transaction inserts a new customer with balance 200

-- still sees same snapshot
select *
from customers
where balance > 100; -- still returns 3 rows

commit;

-- useful when you need stable results across multiple queries in one transaction
```

### 4. SERIALIZABLE

- Strictest level: transactions behave as if executed one after another
- Prevents anomalies like phantom rows
- May cause rollbacks if concurrent transactions conflict

Senario

- Two users transfer money simultaneously
- Both transactions try to withdraw from the same account
- PostgreSQL detects conflict; one transaction is rolled back to preserve serial order

Example:

```sql
begin;
set transaction isolation level serializable;

-- attempt to withdraw
update accounts set balance = balance - 100 where id = 1;

-- if another concurrent transaction also withdraws, one will fail
commit;

-- best for financial operations where correctness is critical, even if performance suffers
```

### 5. READ WRITE

- Default mode
- Allows insert, update, delete, and select.

Example:

```sql
begin;
set transaction read write;

update accounts
set balance = balance - 50
where id = 1;

insert into transactions (id, account_id, amount) 
values (101, 1, -50);

commit;
```

### 6. READ ONLY

- Restricts transaction to queries that do not modify data
- Useful for reporting, analytics, or ensuring accidental writes don’t happen

Example:

```sql
begin;
set transaction read only;

-- allowed
select * from accounts where balance > 1000;

-- not allowed → error
update accounts set balance = balance - 50 where id = 1;

commit;
```

### 5. SET TRANSACTION – Standard x PostgreSQL

| Standard SQL      | PostgreSQL        | Notes                                                    |
|:------------------|:------------------|:---------------------------------------------------------|
| `set transaction` | `set transaction` | Same in both; PostgreSQL fully supports the SQL standard |

### 6. SET TRANSACTION - Final example

```sql
begin;
set transaction isolation level serializable;
set transaction read only;

-- this query will run a read-only, serializable transaction
select *
from accounts
where balance > 1000;

commit;

-- ensures the transaction cannot modify data and uses the strictest isolation
```

## ▶️ SET CONSTRAINTS

The ***set constraints*** command controls when constraints are checked during a transaction.</br>
This is specially useful with ***deferred constraints***, which can be postponed until commit.</br>
They can be placed anywhere inside the transaction, but it only affects subsequent statements.

### 1. SET CONSTRAINTS – PostgreSQL

| Command                                | Description                                                              |
|:---------------------------------------|:-------------------------------------------------------------------------|
| `set constraints all deferred`         | Defers checking of constraints until transaction commit                  |
| `set constraints constraint_name ...`  | Controls when specific constraints are enforced (immediate or deferred)  |

Modes:

- immediate: Constraint is checked right after each statement.
- deferred: Constraint is checked only at transaction commit.

Only deferrable constraints (declared with deferrable) can be deferred.</br>
Non-deferrable constraints are always checked immediately.

### 2. SET CONSTRAINTS – Standard x PostgreSQL

| Standard SQL      | PostgreSQL        | Notes                                                                        |
|:------------------|:------------------|:-----------------------------------------------------------------------------|
| `set constraints` | `set constraints` | Same in both; PostgreSQL supports deferred and immediate constraint checking |

Best Practices:

- Use deferred constraints when inserting related rows in different tables within the same transaction.
- Use immediate constraints when you want validation at each step.
- Always declare constraints as deferrable if you plan to use set constraints.

### 3. SET CONSTRAINTS - Example

```sql
begin;
set constraint all deferred;

insert into orders (id, customer_id) -- customer doesn’t exist yet
values (301, 999);

insert into customers (id, name)
values (999, 'Charlie');

-- constraints checked deferred unit commit, so both inserts succeed
commit;
```

## ▶️ PRACTICAL EXAMPLES

### Banking transfer

```sql
begin;
set transaction isolation level repeatable read;

update accounts
set balance = balance - 500
where id = 1;

savepoint after_debit;

update accounts
set balance = balance + 500
where id = 2;

-- if credit fails, rollback only to after_debit
rollback to after_debit;

commit;
```

### Inventory management

```sql
begin;

insert into inventory_log (item_id, action)
values (10, 'reserved');
savepoint reserve_item;

update stock
set quantity = quantity - 1
where item_id = 10;

-- if stock update fails, rollback to reserve_item
rollback to reserve_item;

commit;
```

### Processing an order with multiple steps

```sql
begin;
-- set transactions properties
set transaction isolation level serializable;
set transaction read write;

-- insert customer and order
insert into customers (id, name)
values (1001, 'Alice');

insert into orders (id, customer_id, product)
values (5001, 1001, 'Laptop');

-- defines a savepoint before payment
savepoint before_payment;

-- try to insert payment
insert into payments (id, order_id, amount) 
values (9001, 5001, 1200);

-- suppose something goes wrong: rollback only payment 
rollback to before_payment;

-- release the savepoint (no longer needed) 
release savepoint before_payment;

-- defer constraints until commit 
set constraints all deferred;

-- insert dependent data out of order 
insert into orders (id, customer_id, product) 
values (5002, 9999, 'Phone'); -- customer not yet created

insert into customers (id, name) 
values (9999, 'Bob');

-- finally commit everything 
commit;
```
