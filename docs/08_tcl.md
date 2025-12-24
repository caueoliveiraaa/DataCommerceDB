# PostgreSQL & SQL: Transaction Control (TCL)

This documentation provides an overview of the Transaction Control Language (TCL) commands available in standard SQL and PostgreSQL. It highlights how they work, how they differ, and when to use each one. Practical examples are included to help you understand their behavior in real database designs.

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

</br>

### 3. COMMIT - Example

```sql
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

</br>

### 3. ROLLBACK - Example

```sql
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

</br>

### 3. SAVEPOINT - Example

```sql
```
