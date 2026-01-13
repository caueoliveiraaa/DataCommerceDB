# Basic Exercises

This category deals with the basics of SQL. It covers select and where clauses, case expressions, unions, and a few other related SQL clauses and concepts. If you're already educated in SQL you will probably find these exercises fairly easy. If not, you should find them a good point to start learning for the more difficult categories ahead! Down below you can find the tables used in the exercises:

🧑‍🤝‍🧑 cd.members

| memid | surname           | firstname   | address                          | zipcode | telephone     | recommendedby | joindate             |
|-------|-------------------|-------------|----------------------------------|---------|---------------|---------------|----------------------|
| INT   | VARCHAR(200)      | VARCHAR(200)| VARCHAR(300)                     | INT     | VARCHAR(20)   | INT (nullable)| TIMESTAMP            |

🏟️ cd.facilities

| facid | name             | membercost | guestcost | initialoutlay | monthlymaintenance |
|-------|------------------|------------|-----------|---------------|--------------------|
| INT   | VARCHAR(100)     | NUMERIC    | NUMERIC   | NUMERIC       | NUMERIC            |

📅 cd.bookings

| bookid | facid | memid | starttime           | slots |
|--------|-------|-------|---------------------|-------|
| INT    | INT   | INT   | TIMESTAMP           | INT   |

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

How can you produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost?</br>
Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.

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
WITH threshold_cte AS (
    SELECT facid, name, membercost, monthlymaintenance, monthlymaintenance / 50 AS threshold
    FROM cd.facilities
)
SELECT facid, name, membercost, monthlymaintenance
FROM threshold_cte
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

👉 Returns rows where "Tennis" occurs anywhere in the string.

### ❇️ 5.6 Using Regular Expressions (~ operator in PostgreSQL)

```sql
SELECT *
FROM cd.facilities
WHERE name ~ 'Tennis';
```

👉 Powerful if you want more complex pattern matching.

## 6. Matching against multiple possible values

### ℹ️ 6.1 Description

How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.

### ☑️ 6.2 Expected Results

| facid | name             | membercost | guestcost | initialoutlay | monthlymaintenance |
|-------|------------------|------------|-----------|---------------|--------------------|
| 1     | Tennis Court 2   | 5          | 25        | 8000          | 200                |
| 5     | Massage Room 2   | 35         | 80        | 4000          | 3000               |

### ✅ 6.3 My Solution

```sql
SELECT * 
FROM cd.facilities
WHERE facid IN (1, 5);
```

### 🛜 6.4 Website's Solution

```sql
select *
from cd.facilities 
where 
    facid in (1,5);          
```

### ❇️ 6.5 Using BETWEEN (only works if values are consecutive)

```sql
SELECT *
FROM cd.facilities
WHERE facid BETWEEN 1 AND 5;
```

⚠️ This will also include facid = 2, 3, 4, so only use if that’s acceptable.

### ❇️ 6.6 Using ANY (PostgreSQL)

```sql
SELECT *
FROM cd.facilities
WHERE facid = ANY (ARRAY[1, 5]);
```

## 7. Classify results into buckets

### ℹ️ 7.1 Description

How can you produce a list of facilities, with each labelled as 'cheap' or 'expensive' depending on if their monthly maintenance cost is more than $100? Return the name and monthly maintenance of the facilities in question.

### ☑️ 7.2 Expected Results

| name             | cost      |
|------------------|-----------|
| Tennis Court 1   | expensive |
| Tennis Court 2   | expensive |
| Badminton Court  | cheap     |
| Table Tennis     | cheap     |
| Massage Room 1   | expensive |
| Massage Room 2   | expensive |
| Squash Court     | cheap     |
| Snooker Table    | cheap     |
| Pool Table       | cheap     |

### ✅ 7.3 My Solution

```sql
SELECT name,
  CASE
    WHEN monthlymaintenance > 100 THEN 'expensive'
    ELSE 'cheap'
  END AS cost
FROM cd.facilities;
```

### 🛜 7.4 Website's Solution

```sql
select name, 
    case when (monthlymaintenance > 100) then
        'expensive'
    else
        'cheap'
    end as cost
from cd.facilities;       
```

### ❇️ 7.5 Using CASE with shorthand

```sql
SELECT name,
    CASE WHEN monthlymaintenance <= 100 THEN 'cheap'
        ELSE 'expensive'
    END AS cost
FROM cd.facilities;
```

👉 Just flips the condition order.

## 8. Working with dates

### ℹ️ 8.1 Description

How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname, and joindate of the members in question.

### ☑️ 8.2 Expected Results

| memid | surname           | firstname   | joindate             |
|-------|-------------------|-------------|----------------------|
| 24    | Sarwin            | Ramnaresh   | 2012-09-01 08:44:42  |
| 26    | Jones             | Douglas     | 2012-09-02 18:43:05  |
| 27    | Rumney            | Henrietta   | 2012-09-05 08:42:35  |
| 28    | Farrell           | David       | 2012-09-15 08:22:05  |
| 29    | Worthington-Smyth | Henry       | 2012-09-17 12:27:15  |
| 30    | Purview           | Millicent   | 2012-09-18 19:04:01  |
| 33    | Tupperware        | Hyacinth    | 2012-09-18 19:32:05  |
| 35    | Hunt              | John        | 2012-09-19 11:32:45  |
| 36    | Crumpet           | Erica       | 2012-09-22 08:36:38  |
| 37    | Smith             | Darren      | 2012-09-26 18:08:45  |

### ✅ 8.3 My Solution

```sql
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate > '2012-09-01';
```

### 🛜 8.4 Website's Solution

```sql
select memid, surname, firstname, joindate 
from cd.members
where joindate >= '2012-09-01';    
```

👉 This gets automatically cast by postgres into the full timestamp 2012-09-01 00:00:00.

### ❇️ 8.5 Using EXTRACT function

```sql
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE EXTRACT(YEAR FROM joindate) = 2012
AND EXTRACT(MONTH FROM joindate) >= 9;
```

👉 Filters by year/month components.

### ❇️ 8.6 Using a subquery

```sql
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate > (SELECT DATE '2012-09-01');
```

## 9. Removing duplicates, and ordering results

### ℹ️ 9.1 Description

How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.

### ☑️ 9.2 Expected Results

| Surname  |
|----------|
| Bader    |
| Baker    |
| Boothe   |
| Butters  |
| Coplin   |
| Crumpet  |
| Dare     |
| Farrell  |
| GUEST    |
| Genting  |

### ✅ 9.3 My Solution

```sql
SELECT DISTINCT surname 
FROM cd.members
ORDER BY surname
LIMIT 10;
```

### 🛜 9.4 Website's Solution

```sql
select distinct surname 
from cd.members
order by surname
limit 10;   
```

### ❇️ 9.5 Using a CTE (Common Table Expression)

```sql
WITH unique_surnames AS (
    SELECT DISTINCT surname
    FROM cd.members
)
SELECT surname
FROM unique_surnames
ORDER BY surname
LIMIT 10;
```

## 10. Combining results from multiple queries

## 11. Simple aggregation

## 12. More aggregation
