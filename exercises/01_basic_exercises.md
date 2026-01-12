# Basic Exercises

This category deals with the basics of SQL. It covers select and where clauses, case expressions, unions, and a few other odds and ends. If you're already educated in SQL you will probably find these exercises fairly easy. If not, you should find them a good point to start learning for the more difficult categories ahead!

## 1. Retrieve everything from a table

### ℹ️ 1.1 Description

How can you retrieve all the information from the cd.facilities table?

### ☑️ 1.2 Expected Results

| facid | name            | membercost | guestcost | initialoutlay | monthlymaintenance |
|-------|-----------------|------------|-----------|---------------|--------------------|
| 0     | Tennis Court 1  | 5          | 25        | 10000         | 200                |
| 1     | Tennis Court 2  | 5          | 25        | 8000          | 200                |
| 2     | Badminton Court | 0          | 15.5      | 4000          | 50                 |
| 3     | Table Tennis    | 0          | 5         | 320           | 10                 |
| 4     | Massage Room 1  | 35         | 80        | 4000          | 3000               |
| 5     | Massage Room 2  | 35         | 80        | 4000          | 3000               |
| 6     | Squash Court    | 3.5        | 17.5      | 5000          | 80                 |
| 7     | Snooker Table   | 0          | 5         | 450           | 15                 |
| 8     | Pool Table      | 0          | 5         | 400           | 15                 |

### ✅ 1.3 My Solution

```sql
SELECT * FROM cd.facilities
```

### 🛜 1.4 Website's Solution

```sql
select * from cd.facilities;    
```

## 2. Retrieve specific columns from a table

## 3. Control which rows are retrieved

## 4. Control which rows are retrieved - part 2

## 5. Basic string searches

## 6. Matching against multiple possible values

## 7. Classify results into buckets

## 8. Working with dates

## 9. Removing duplicates, and ordering results

## 10. Combining results from multiple queries

## 11. Simple aggregation

## 12. More aggregation
