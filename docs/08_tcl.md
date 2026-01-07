# PostgreSQL & SQL: TRANSACTION Control (TCL)

This documentation provides an overview of the TRANSACTION Control Language (TCL) commands available IN standard SQL AND PostgreSQL.</br>
It highlights how they work, how they differ, AND WHEN to use each one. Practical examples are included to help you understand their behavior IN REAL database designs.

## ▶️ COMMIT

### 1. COMMIT – PostgreSQL

| Command     | Description                                                                  |
|:------------|:-----------------------------------------------------------------------------|
| `COMMIT`    | Ends the current TRANSACTION AND makes ALL changes permanent IN the database |

### 2. COMMIT – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                                  |
|:--------------|:------------|:-----------------------------------------------------------------------|
| `COMMIT`      | `COMMIT`    | Same IN both; ensures durability of changes once TRANSACTION IS closed |

### 3. COMMIT - Example

```sql
BEGIN;

INSERT INTO customers (id, name)
VALUES (1, 'Alice');

UPDATE accounts 
SET balance = balance - 100
WHERE customer_id = 1;

-- Make ALL changes permanent
COMMIT;

-- after COMMIT, the new customer AND balance UPDATE are permanently stored
-- the BEGIN keyword must be paired with COMMIT AND ROLLBACK, to avoid locks OR unexpected behavior AND close the TRANSACTION.
```

## ▶️ ROLLBACK

### 1. ROLLBACK – PostgreSQL

| Command     | Description                                                                   |
|:------------|:------------------------------------------------------------------------------|
| `ROLLBACK`  | Undoes ALL changes made IN the current TRANSACTION, restoring the prior state |

### 2. ROLLBACK – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                                   |
|:--------------|:------------|:------------------------------------------------------------------------|
| `ROLLBACK`    | `ROLLBACK`  | Same IN both; cancels ALL operations since the last COMMIT OR SAVEPOINT |

### 3. ROLLBACK - Example

```sql
BEGIN;

INSERT INTO customers (id, name)
VALUES (2, 'Gabriel');

UPDATE accounts 
SET balance = balance - 200
WHERE customer_id = 2;

-- cancel ALL changes made IN this TRANSACTION
ROLLBACK;

-- the INSERT AND UPDATE are undone; the database returns to its prior state
```

## ▶️ SAVEPOINT

### 1. SAVEPOINT – PostgreSQL

| Command        | Description                                                           |
|:---------------|:----------------------------------------------------------------------|
| `SAVEPOINT sp` | Defines a POINT within a TRANSACTION to which you can later roll back |

### 2. SAVEPOINT – Standard x PostgreSQL

| Standard SQL  | PostgreSQL  | Notes                                                      |
|:--------------|:------------|:-----------------------------------------------------------|
| `SAVEPOINT`   | `SAVEPOINT` | Same IN both; allows partial ROLLBACK within a TRANSACTION |

### 3. SAVEPOINT - Example

```sql
BEGIN;

INSERT INTO orders (id, product)
VALUES (101, 'Laptop');

SAVEPOINT spl;

INSERT INTO orders (id, product)
VALUES (102, 'Phone');

-- roll back only to the SAVEPOINT, undoing the second INSERT
ROLLBACK TO spl;

COMMIT;

-- the laptop ORDER remains, but the phone ORDER IS discarded
```

## ▶️ RELEASE SAVEPOINT

### 1. RELEASE SAVEPOINT – PostgreSQL

| Command                | Description                                                                |
|:-----------------------|:---------------------------------------------------------------------------|
| `RELEASE SAVEPOINT sp` | Removes a previously defined SAVEPOINT, making it unavailable for ROLLBACK |

### 2. RELEASE SAVEPOINT – Standard x PostgreSQL

| Standard SQL        | PostgreSQL          | Notes                                                    |
|:--------------------|:--------------------|:---------------------------------------------------------|
| `RELEASE SAVEPOINT` | `RELEASE SAVEPOINT` | Same IN both; PostgreSQL fully supports the SQL standard |

### 3. RELEASE SAVEPOINT - Example

```sql
BEGIN;

INSERT INTO orders (id, product)
VALUES (201, 'Tablet');

SAVEPOINT sp2;

-- once released, you cannot roll back to sp2 anymore
RELEASE SAVEPOINT sp2;

COMMIT;

-- the SAVEPOINT IS removed; TRANSACTION continues normally
```

## ▶️ SET TRANSACTION

### 1. SET TRANSACTION – PostgreSQL

The ***SET TRANSACTION*** command defines the behavior of the current TRANSACTION IN terms of:

- Isolation level: How much the TRANSACTION IS protected FROM changes made BY other concurrent transactions.
- Read/Write mode: Whether the TRANSACTION can modify data OR IS restricted to reading only.

It must be issued right after BEGIN, before executing queries.</br>
Once queries run, you cannot change isolation OR read/write mode for that TRANSACTION.

| Command                                | Description                                                                                      |
|:---------------------------------------|:-------------------------------------------------------------------------------------------------|
| `SET TRANSACTION isolation level ...`  | Sets isolation level for the current TRANSACTION (read committed, repeatable read, SERIALIZABLE) |
| `SET TRANSACTION read write`           | Allows both read AND write operations                                                            |
| `SET TRANSACTION read only`            | Restricts the TRANSACTION to read-only queries (no data modifications allowed).                  |

### 2. READ COMMITED (DEFAULT)

- Each statement sees only data that was commited before it started.
- Other transactions' commits become visible immediately IN subsequent statements.

Senario:

- Two users are checking account balances
- TRANSACTION A reads balance = 100
- TRANSACTION B deposits +50 AND commits
- TRANSACTION A runs another query AND now sees balance = 150

Example:

```sql
BEGIN;

SET TRANSACTION isolation level read commited;

-- first query sees old balance
SELECT balance
FROM accounts 
WHERE id = 1; -- returns 100

-- meanwhile, another TRANSACTION commits a deposit of 50

-- second query sees updated balance
SELECT balance
FROM accounts 
WHERE id = 1; -- returns 150

COMMIT;

-- useful WHEN you want fresh data visibility but can tolerate changes between queries
```

### 3. REPEATABLE READ

- Ensures ALL quries IN the TRANSACTION see a consistent snapshot
- Prevents non-repeatable reads (same query always returns same result)
- But phantom rows (new rows added BY others) may still appear IN range queries
- A range query IS a query that retrieves rows WHERE a column’s value falls within a specified range of VALUES (ex: using between)

Senario

- TRANSACTION A checks ALL customers with balance > 100
- TRANSACTION B inserts a new customer with balance 200 AND commits
- TRANSACTION A repeats the query; still sees the same original SET (no new row)

Example:

```sql
BEGIN;

SET TRANSACTION isolation level repeatable read;

-- snapshot taken here
SELECT *
FROM customers
WHERE balance > 100; -- returns 3 rows

-- another TRANSACTION inserts a new customer with balance 200

-- still sees same snapshot
SELECT *
FROM customers
WHERE balance > 100; -- still returns 3 rows

COMMIT;

-- useful WHEN you need stable results across multiple queries IN one TRANSACTION
```

### 4. SERIALIZABLE

- Strictest level: transactions behave AS if executed one after another
- Prevents anomalies like phantom rows
- May cause rollbacks if concurrent transactions conflict

Senario

- Two users transfer money simultaneously
- Both transactions try to withdraw FROM the same account
- PostgreSQL detects conflict; one TRANSACTION IS rolled back to preserve SERIAL ORDER

Example:

```sql
BEGIN;
SET TRANSACTION isolation level SERIALIZABLE;

-- attempt to withdraw
UPDATE accounts SET balance = balance - 100 WHERE id = 1;

-- if another concurrent TRANSACTION also withdraws, one will fail
COMMIT;

-- best for financial operations WHERE correctness IS critical, even if performance suffers
```

### 5. READ WRITE

- DEFAULT mode
- Allows INSERT, UPDATE, DELETE, AND SELECT.

Example:

```sql
BEGIN;
SET TRANSACTION read write;

UPDATE accounts
SET balance = balance - 50
WHERE id = 1;

INSERT INTO transactions (id, account_id, amount) 
VALUES (101, 1, -50);

COMMIT;
```

### 6. READ ONLY

- Restricts TRANSACTION to queries that do NOT modify data
- Useful for reporting, analytics, OR ensuring accidental writes don’t happen

Example:

```sql
BEGIN;
SET TRANSACTION read only;

-- allowed
SELECT * FROM accounts WHERE balance > 1000;

-- NOT allowed → error
UPDATE accounts SET balance = balance - 50 WHERE id = 1;

COMMIT;
```

### 5. SET TRANSACTION – Standard x PostgreSQL

| Standard SQL      | PostgreSQL        | Notes                                                    |
|:------------------|:------------------|:---------------------------------------------------------|
| `SET TRANSACTION` | `SET TRANSACTION` | Same IN both; PostgreSQL fully supports the SQL standard |

### 6. SET TRANSACTION - Final example

```sql
BEGIN;
SET TRANSACTION isolation level SERIALIZABLE;
SET TRANSACTION read only;

-- this query will run a read-only, SERIALIZABLE TRANSACTION
SELECT *
FROM accounts
WHERE balance > 1000;

COMMIT;

-- ensures the TRANSACTION cannot modify data AND uses the strictest isolation
```

## ▶️ SET CONSTRAINTS

The ***SET CONSTRAINTS*** command controls WHEN constraints are checked during a TRANSACTION.</br>
This IS specially useful with ***deferred constraints***, which can be postponed until COMMIT.</br>
They can be placed anywhere inside the TRANSACTION, but it only affects subsequent statements.

### 1. SET CONSTRAINTS – PostgreSQL

| Command                                | Description                                                              |
|:---------------------------------------|:-------------------------------------------------------------------------|
| `SET CONSTRAINTS ALL deferred`         | Defers checking of constraints until TRANSACTION COMMIT                  |
| `SET CONSTRAINTS constraint_name ...`  | Controls WHEN specific constraints are enforced (immediate OR deferred)  |

Modes:

- immediate: CONSTRAINT IS checked right after each statement.
- deferred: CONSTRAINT IS checked only at TRANSACTION COMMIT.

Only deferrable constraints (declared with deferrable) can be deferred.</br>
Non-deferrable constraints are always checked immediately.

### 2. SET CONSTRAINTS – Standard x PostgreSQL

| Standard SQL      | PostgreSQL        | Notes                                                                        |
|:------------------|:------------------|:-----------------------------------------------------------------------------|
| `SET CONSTRAINTS` | `SET CONSTRAINTS` | Same IN both; PostgreSQL supports deferred AND immediate CONSTRAINT checking |

Best Practices:

- Use deferred constraints WHEN inserting related rows IN different tables within the same TRANSACTION.
- Use immediate constraints WHEN you want validation at each step.

### 3. SET CONSTRAINTS - Example

```sql
BEGIN;
SET CONSTRAINT ALL deferred;

INSERT INTO orders (id, customer_id) -- customer doesn’t exist yet
VALUES (301, 999);

INSERT INTO customers (id, name)
VALUES (999, 'Charlie');

-- constraints checked deferred until COMMIT, so both inserts succeed
COMMIT;
```

## ▶️ PRACTICAL EXAMPLES

### Banking transfer

```sql
BEGIN;
SET TRANSACTION isolation level repeatable read;

UPDATE accounts
SET balance = balance - 500
WHERE id = 1;

SAVEPOINT after_debit;

UPDATE accounts
SET balance = balance + 500
WHERE id = 2;

-- if credit fails, ROLLBACK only to after_debit
ROLLBACK TO after_debit;

COMMIT;
```

### Inventory management

```sql
BEGIN;

INSERT INTO inventory_log (item_id, action)
VALUES (10, 'reserved');
SAVEPOINT reserve_item;

UPDATE stock
SET quantity = quantity - 1
WHERE item_id = 10;

-- if stock UPDATE fails, ROLLBACK TO reserve_item
ROLLBACK TO reserve_item;

COMMIT;
```

### Processing an ORDER with multiple steps

```sql
BEGIN;
-- SET TRANSACTIONs properties
SET TRANSACTION isolation level SERIALIZABLE;
SET TRANSACTION read write;

-- INSERT customer AND ORDER
INSERT INTO customers (id, name)
VALUES (1001, 'Alice');

INSERT INTO orders (id, customer_id, product)
VALUES (5001, 1001, 'Laptop');

-- defines a SAVEPOINT before payment
SAVEPOINT before_payment;

-- try to INSERT payment
INSERT INTO payments (id, order_id, amount) 
VALUES (9001, 5001, 1200);

-- suppose something goes wrong: ROLLBACK only payment 
ROLLBACK TO before_payment;

-- release the SAVEPOINT (no longer needed) 
RELEASE SAVEPOINT before_payment;

-- defer constraints until COMMIT 
SET CONSTRAINTS ALL deferred;

-- INSERT dependent data out of ORDER 
INSERT INTO orders (id, customer_id, product) 
VALUES (5002, 9999, 'Phone'); -- customer NOT yet created

INSERT INTO customers (id, name) 
VALUES (9999, 'Bob');

-- finally COMMIT everything 
COMMIT;
```
