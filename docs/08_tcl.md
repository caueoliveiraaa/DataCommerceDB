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
BEGIN;

INSERT INTO customers (id, name)
VALUES (1, 'Alice');

UPDATE accounts 
SET balance = balance - 100
WHERE customer_id = 1;

-- Make all changes permanent
COMMIT;

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
BEGIN;

INSERT INTO customers (id, name)
VALUES (2, 'Gabriel');

UPDATE accounts 
SET balance = balance - 200
WHERE customer_id = 2;

-- Cancel all changes made in this transaction
ROLLBACK;

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
BEGIN;

INSERT INTO orders (id, product)
VALUES (101, 'Laptop');

SAVEPOINT spl;

INSERT INTO orders (id, product)
VALUES (102, 'Phone');

-- Roll back only to the savepoint, undoing the second insert
ROLLBACK TO spl;

COMMIT;

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
BEGIN;

INSERT INTO orders (id, product)
VALUES (201, 'Tablet');

SAVEPOINT sp2;

-- Once released, you cannot rool back to sp2 anymore
RELEASE SAVEPOINT sp2;

COMMIT;

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
BEGIN;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET TRANSACTION READ ONLY;

-- This query will run a read-only, serializable transaction
SELECT * FROM accounts
WHERE balance > 1000;

COMMIT;

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
BEGIN;

SET CONSTRAINT ALL DEFERRED;

INSERT INTO orders (id, customer_id) -- customer doesn’t exist yet
VALUES (301, 999);

INSERT INTO customers (id, name)
VALUES (999, 'Charlie');

-- Constraints checked deferred unit commit, so both inserts succeed
COMMIT;
```

## ▶️ MORE EXAMPLES
