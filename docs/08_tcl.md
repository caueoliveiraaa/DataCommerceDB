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
