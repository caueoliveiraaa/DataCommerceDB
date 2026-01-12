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
SELECT *
FROM cd.facilities
```

### 🛜 1.4 Website's Solution

```sql
select * from cd.facilities;    
```

## 2. Retrieve specific columns from a table

### ℹ️ 2.1 Description

You want to print out a list of all of the facilities and their cost to members. How would you retrieve a list of only facility names and costs?

### ☑️ 2.2 Expected Results

| Name            | Member Cost |
|-----------------|-------------|
| Tennis Court 1  | 5           |
| Tennis Court 2  | 5           |
| Badminton Court | 0           |
| Table Tennis    | 0           |
| Massage Room 1  | 35          |
| Massage Room 2  | 35          |
| Squash Court    | 3.5         |
| Snooker Table   | 0           |
| Pool Table      | 0           |

### ✅ 2.3 My Solution

```sql
SELECT name, membercost
FROM cd.facilities;
```

### 🛜 2.4 Website's Solution

```sql
select name, membercost from cd.facilities;
```

## 3. Control which rows are retrieved

### ℹ️ 3.1 Description

How can you produce a list of facilities that charge a fee to members?

### ☑️ 3.2 Expected Results

| FacID | Name           | Member Cost | Guest Cost | Initial Outlay | Monthly Maintenance |
|-------|----------------|-------------|------------|----------------|---------------------|
| 0     | Tennis Court 1 | 5           | 25         | 10000          | 200                 |
| 1     | Tennis Court 2 | 5           | 25         | 8000           | 200                 |
| 4     | Massage Room 1 | 35          | 80         | 4000           | 3000                |
| 5     | Massage Room 2 | 35          | 80         | 4000           | 3000                |
| 6     | Squash Court   | 3.5         | 17.5       | 5000           | 80                  |

### ✅ 3.3 My Solution

```sql
SELECT * 
FROM cd.facilities
WHERE membercost > 0;
```

### 🛜 3.4 Website's Solution

```sql
select * from cd.facilities where membercost > 0;    
```

## 4. Control which rows are retrieved - part 2

### ℹ️ 4.1 Description

How can you produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.

### ☑️ 4.2 Expected Results

| FacID | Name           | Member Cost | Monthly Maintenance |
|-------|----------------|-------------|---------------------|
| 4     | Massage Room 1 | 35          | 3000                |
| 5     | Massage Room 2 | 35          | 3000                |

### ✅ 4.3 My Solution

```sql
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost < monthlymaintenance / 50
AND membercost > 0;
```

### 🛜 4.4 Website's Solution

```sql
select facid, name, membercost, monthlymaintenance 
from cd.facilities 
where 
    membercost > 0 and 
    (membercost < monthlymaintenance/50.0);   
```

### ❇️ 4.5 Multiply instead of devide

```sql
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0
AND membercost * 50 < monthlymaintenance;
```

### ❇️ 4.6 Use a Common Table Expression (CTE)

```sql
WITH threshold AS (
    SELECT facid, name, membercost, monthlymaintenance, monthlymaintenance / 50 AS threshold
    FROM cd.facilities
)
SELECT facid, name, membercost, monthlymaintenance
FROM threshold
WHERE membercost > 0
AND membercost < threshold;
```

## 5. Basic string searches

### ℹ️ 5.1 Description

How can you produce a list of all facilities with the word 'Tennis' in their name?

### ☑️ 5.2 Expected Results

| FacID | Name           | Member Cost | Guest Cost | Initial Outlay | Monthly Maintenance |
|-------|----------------|-------------|------------|----------------|---------------------|
| 0     | Tennis Court 1 | 5           | 25         | 10000          | 200                 |
| 1     | Tennis Court 2 | 5           | 25         | 8000           | 200                 |
| 3     | Table Tennis   | 0           | 5          | 320            | 10                  |

### ✅ 5.3 My Solution

```sql
SELECT * 
FROM cd.facilities
WHERE NAME LIKE '%Tennis%';
```

### 🛜 5.4 Website's Solution

```sql
select *
from cd.facilities 
where name like '%Tennis%';       
```

### ❇️ 5.5 Using POSITION or STRPOS (PostgreSQL functions)

```sql
SELECT *
FROM cd.facilities
WHERE POSITION('Tennis' IN name) > 0;
```

- or

```sql
SELECT *
FROM cd.facilities
WHERE STRPOS(name, 'Tennis') > 0; 
```

- Returns rows where "Tennis" occurs anywhere in the string.

### ❇️ 5.6 Using Regular Expressions (~ operator in PostgreSQL)

```sql
SELECT *
FROM cd.facilities
WHERE name ~ 'Tennis';
```

- Powerful if you want more complex pattern matching.

## 6. Matching against multiple possible values

## 7. Classify results into buckets

## 8. Working with dates

## 9. Removing duplicates, and ordering results

## 10. Combining results from multiple queries

## 11. Simple aggregation

## 12. More aggregation
