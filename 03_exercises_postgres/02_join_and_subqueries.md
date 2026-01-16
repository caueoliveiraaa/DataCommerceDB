# Joins and Queries

This category deals primarily with a foundational concept in relational database systems: joining. Joining allows you to combine related information from multiple tables to answer a question. This isn't just beneficial for ease of querying: a lack of join capability encourages denormalisation of data, which increases the complexity of keeping your data internally consistent. This topic covers inner, outer, and self joins, as well as spending a little time on subqueries (queries within queries).

Down below you can find the tables used in the exercises:

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

## 1. Retrieve the start times of members' bookings

### ℹ️ 1.1 - Description

How can you produce a list of the start times for bookings by members named 'David Farrell'?

### ☑️ 1.2 Expected Results

| Date       | Start Times                                |
|------------|--------------------------------------------|
| 2012-09-18 | 09:00, 13:30, 17:30, 20:00                 |
| 2012-09-19 | 09:30, 12:00, 15:00                        |
| 2012-09-20 | 11:30, 14:00, 15:30                        |
| 2012-09-21 | 10:30, 14:00                               |
| 2012-09-22 | 08:30, 17:00                               |
| 2012-09-23 | 08:30, 17:30, 19:00                        |
| 2012-09-24 | 08:00, 12:30, 16:30                        |
| 2012-09-25 | 15:30, 17:00                               |
| 2012-09-26 | 13:00, 17:00                               |
| 2012-09-27 | 08:00                                      |
| 2012-09-28 | 09:30, 11:30, 13:00                        |
| 2012-09-29 | 10:30, 13:30, 14:30, 16:00, 17:30          |
| 2012-09-30 | 14:30                                      |

### ✅ 1.3 - My Solution

```sql
SELECT b.starttime FROM cd.members AS m
INNER JOIN cd.bookings AS b ON m.memid = b.memid
WHERE m.firstname = 'David' 
    AND m.surname = 'Farrell';
```

### 🛜 1.4 - Website's Solutions

```sql
select bks.starttime 
from 
    cd.bookings bks
    inner join cd.members mems
        on mems.memid = bks.memid
where 
    mems.firstname='David' 
    and mems.surname='Farrell';     
```

```sql
select bks.starttime
from
        cd.bookings bks,
        cd.members mems
where
        mems.firstname='David'
        and mems.surname='Farrell'
        and mems.memid = bks.memid;   
```

👉 This is functionally exactly the same as the approved answer.</br>
If you feel more comfortable with this syntax, feel free to use it!

### ❇️ 1.5 - Filtering first with a subquery

```sql
SELECT b.starttime FROM cd.bookings AS b
WHERE b.memid = (
    SELECT memid
    FROM cd.members
    WHERE firstname = 'David'
      AND surname = 'Farrell'
);
```

👉 This avoids the explicit join by pulling the memid directly from the subquery.

### ❇️ 1.6 - Common Table Expression (CTE)

```sql
WITH target_member AS (
    SELECT memid
    FROM cd.members
    WHERE firstname = 'David'
      AND surname = 'Farrell'
)
SELECT b.starttime FROM cd.bookings b
JOIN target_member tm ON b.memid = tm.memid;
```

### ❇️ 1.7 - NATURAL JOIN

```sql
SELECT b.starttime FROM cd.members m
NATURAL JOIN cd.bookings b
WHERE m.firstname = 'David'
  AND m.surname = 'Farrell';
```

👉 Automatic matching and no explicit condition.

## 2. Work out the start times of bookings for tennis courts

### ℹ️ 2.1 - Description

How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'?</br>
Return a list of start time and facility name pairings, ordered by the time.

### ☑️ 2.2 Expected Results

| start               | name           |
|---------------------|----------------|
| 2012-09-21 08:00:00 | Tennis Court 1 |
| 2012-09-21 08:00:00 | Tennis Court 2 |
| 2012-09-21 09:30:00 | Tennis Court 1 |
| 2012-09-21 10:00:00 | Tennis Court 2 |
| 2012-09-21 11:30:00 | Tennis Court 2 |
| 2012-09-21 12:00:00 | Tennis Court 1 |
| 2012-09-21 13:30:00 | Tennis Court 1 |
| 2012-09-21 14:00:00 | Tennis Court 2 |
| 2012-09-21 15:30:00 | Tennis Court 1 |
| 2012-09-21 16:00:00 | Tennis Court 2 |
| 2012-09-21 17:00:00 | Tennis Court 1 |
| 2012-09-21 18:00:00 | Tennis Court 2 |

### ✅ 2.3 - My Solution

```sql
SELECT b.starttime start, f.name FROM cd.bookings b
INNER JOIN cd.facilities f ON f.facid = b.facid
WHERE name ILIKE '%tennis court%'
AND b.starttime::date = '2012-09-21' 
ORDER BY b.starttime;
```

### 🛜 2.4 - Website's Solution

```sql
select bks.starttime as start, facs.name as name
from 
    cd.facilities facs
    inner join cd.bookings bks
        on facs.facid = bks.facid
where 
    facs.name in ('Tennis Court 2','Tennis Court 1') and
    bks.starttime >= '2012-09-21' and
    bks.starttime < '2012-09-22'
order by bks.starttime;    
```

### ❇️ 2.5 - Common Table Expression (CTE)

```sql
WITH tennis_facilities AS (
    SELECT facid, name
    FROM cd.facilities
    WHERE name ILIKE '%Tennis Court%'
)
SELECT b.starttime AS start, f.name FROM cd.bookings b
JOIN tennis_facilities f ON b.facid = f.facid
WHERE b.starttime::date = '2012-09-21'
ORDER BY b.starttime;
```

👉 Improves readability by isolating facility filtering logic.

### ❇️ 2.6 - Subquery for Facility Filtering

```sql
SELECT b.starttime AS start, f.name FROM cd.bookings b
JOIN (
    SELECT facid, name
    FROM cd.facilities
    WHERE name ILIKE '%Tennis Court%'
) f ON b.facid = f.facid
WHERE b.starttime::date = '2012-09-21'
ORDER BY b.starttime;
```

👉 Filters facilities first, then joins only relevant rows.

## 3. Produce a list of all members who have recommended another member

### ℹ️ 3.1 - Description

How can you output a list of all members who have recommended another member?</br>
Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).

### ☑️ 3.2 Expected Results

| firstname  | surname   |
|------------|-----------|
| Florence   | Bader     |
| Timothy    | Baker     |
| Gerald     | Butters   |
| Jemima     | Farrell   |
| Matthew    | Genting   |
| David      | Jones     |
| Janice     | Joplette  |
| Millicent  | Purview   |
| Tim        | Rownam    |
| Darren     | Smith     |
| Tracy      | Smith     |
| Ponder     | Stibbons  |
| Burton     | Tracy     |

### ✅ 3.3 - My Solution

```sql
SELECT DISTINCT t1.firstname, t1.surname FROM cd.members t1
INNER JOIN cd.members t2 ON t1.memid = t2.recommendedby 
ORDER BY t1.surname, t1.firstname;
```

### 🛜 3.4 - Website's Solution

```sql
select distinct recs.firstname as firstname, recs.surname as surname
from 
    cd.members mems
    inner join cd.members recs
        on recs.memid = mems.recommendedby
order by surname, firstname;    
```

### ❇️ 3.5 - Using a Subquery with IN

```sql
SELECT DISTINCT firstname, surname FROM cd.members
WHERE memid IN (
    SELECT recommendedby
    FROM cd.members
    WHERE recommendedby IS NOT NULL
)
ORDER BY surname, firstname;
```

👉 Pulls all memid values that appear in the recommendedby column, then filters members by those IDs.

## 4. Produce a list of all members, along with their recommender

### ℹ️ 4.1 - Description

How can you output a list of all members, including the individual who recommended them (if any)? Ensure that results are ordered by (surname, firstname).

### ☑️ 4.2 Expected Results

| memfname   | memsname             | recfname   | recsname   |
|------------|----------------------|------------|------------|
| Florence   | Bader                | Ponder     | Stibbons   |
| Anne       | Baker                | Ponder     | Stibbons   |
| Timothy    | Baker                | Jemima     | Farrell    |
| Tim        | Boothe               | Tim        | Rownam     |
| Gerald     | Butters              | Darren     | Smith      |
| Joan       | Coplin               | Timothy    | Baker      |
| Erica      | Crumpet              | Tracy      | Smith      |
| Nancy      | Dare                 | Janice     | Joplette   |
| David      | Farrell              |            |            |
| Jemima     | Farrell              |            |            |
| GUEST      | GUEST                |            |            |
| Matthew    | Genting              | Gerald     | Butters    |
| John       | Hunt                 | Millicent  | Purview    |
| David      | Jones                | Janice     | Joplette   |
| Douglas    | Jones                | David      | Jones      |
| Janice     | Joplette             | Darren     | Smith      |
| Anna       | Mackenzie            | Darren     | Smith      |
| Charles    | Owen                 | Darren     | Smith      |
| David      | Pinker               | Jemima     | Farrell    |
| Millicent  | Purview              | Tracy      | Smith      |
| Tim        | Rownam               |            |            |
| Henrietta  | Rumney               | Matthew    | Genting    |
| Ramnaresh  | Sarwin               | Florence   | Bader      |
| Darren     | Smith                |            |            |
| Darren     | Smith                |            |            |
| Jack       | Smith                | Darren     | Smith      |
| Tracy      | Smith                |            |            |
| Ponder     | Stibbons             | Burton     | Tracy      |
| Burton     | Tracy                |            |            |
| Hyacinth   | Tupperware           |            |            |
| Henry      | Worthington-Smyth    | Tracy      | Smith      |

### ✅ 4.3 - My Solution

```sql
SELECT t1.firstname memfname, t1.surname memsname, t2.firstname recfname, t2.surname recsname
FROM cd.members t1
LEFT JOIN cd.members t2
ON t2.memid = t1.recommendedby
ORDER BY memsname, memfname;
```

### 🛜 4.4 - Website's Solution

```sql
select mems.firstname as memfname, mems.surname as memsname, recs.firstname as recfname, recs.surname as recsname
from 
    cd.members mems
    left outer join cd.members recs
        on recs.memid = mems.recommendedby
order by memsname, memfname;    
```

## 5. Produce a list of all members who have used a tennis court

### ℹ️ 5.1 - Description

How can you produce a list of all members who have used a tennis court? Include in your output the name of the court, and the name of the member formatted as a single column. Ensure no duplicate data, and order by the member name followed by the facility name.

### ☑️ 5.2 Expected Results

| member            | facility        |
|-------------------|-----------------|
| Anne Baker        | Tennis Court 1  |
| Anne Baker        | Tennis Court 2  |
| Burton Tracy      | Tennis Court 1  |
| Burton Tracy      | Tennis Court 2  |
| Charles Owen      | Tennis Court 1  |
| Charles Owen      | Tennis Court 2  |
| Darren Smith      | Tennis Court 2  |
| David Farrell     | Tennis Court 1  |
| David Farrell     | Tennis Court 2  |
| David Jones       | Tennis Court 1  |
| David Jones       | Tennis Court 2  |
| David Pinker      | Tennis Court 1  |
| Douglas Jones     | Tennis Court 1  |
| Erica Crumpet     | Tennis Court 1  |
| Florence Bader    | Tennis Court 1  |
| Florence Bader    | Tennis Court 2  |
| GUEST GUEST       | Tennis Court 1  |
| GUEST GUEST       | Tennis Court 2  |
| Gerald Butters    | Tennis Court 1  |
| Gerald Butters    | Tennis Court 2  |
| Henrietta Rumney  | Tennis Court 2  |
| Jack Smith        | Tennis Court 1  |
| Jack Smith        | Tennis Court 2  |
| Janice Joplette   | Tennis Court 1  |
| Janice Joplette   | Tennis Court 2  |
| Jemima Farrell    | Tennis Court 1  |
| Jemima Farrell    | Tennis Court 2  |
| Joan Coplin       | Tennis Court 1  |
| John Hunt         | Tennis Court 1  |
| John Hunt         | Tennis Court 2  |
| Matthew Genting   | Tennis Court 1  |
| Millicent Purview | Tennis Court 2  |
| Nancy Dare        | Tennis Court 1  |
| Nancy Dare        | Tennis Court 2  |
| Ponder Stibbons   | Tennis Court 1  |
| Ponder Stibbons   | Tennis Court 2  |
| Ramnaresh Sarwin  | Tennis Court 1  |
| Ramnaresh Sarwin  | Tennis Court 2  |
| Tim Boothe        | Tennis Court 1  |
| Tim Boothe        | Tennis Court 2  |
| Tim Rownam        | Tennis Court 1  |
| Tim Rownam        | Tennis Court 2  |
| Timothy Baker     | Tennis Court 1  |
| Timothy Baker     | Tennis Court 2  |
| Tracy Smith       | Tennis Court 1  |
| Tracy Smith       | Tennis Court 2  |

### ✅ 5.3 - My Solution

```sql
SELECT DISTINCT m.firstname || ' ' || m.surname member, f.name facility
FROM cd.members m
INNER JOIN cd.bookings b ON b.memid = m.memid
INNER JOIN cd.facilities f ON f.facid = b.facid
WHERE f.name ILIKE '%tennis court%'
ORDER BY member, facility;
```

### 🛜 5.4 - Website's Solution

```sql
select distinct mems.firstname || ' ' || mems.surname as member, facs.name as facility
from 
    cd.members mems
    inner join cd.bookings bks
        on mems.memid = bks.memid
    inner join cd.facilities facs
        on bks.facid = facs.facid
where
    facs.name in ('Tennis Court 2','Tennis Court 1')
order by member, facility
```

### ❇️ 5.5 - Using a CTE (Common Table Expression)

```sql
WITH tennis_facilities AS (
    SELECT facid, name
    FROM cd.facilities
    WHERE name ILIKE '%tennis court%'
)
SELECT DISTINCT m.firstname || ' ' || m.surname AS member,
       tf.name AS facility
FROM cd.members m
JOIN cd.bookings b ON b.memid = m.memid
JOIN tennis_facilities tf ON tf.facid = b.facid
ORDER BY member, facility;
```

👉 Cleaner structure if you want to reuse the tennis court filter elsewhere.

## 6. Produce a list of costly bookings

### ℹ️ 6.1 - Description

### ☑️ 6.2 Expected Results

### ✅ 6.3 - My Solution

```sql

```

### 🛜 6.4 - Website's Solution

```sql

```

### ❇️ 6.5 -

```sql
```

👉

## 7. Produce a list of all members, along with their recommender, using no joins

### ℹ️ 7.1 - Description

### ☑️ 7.2 Expected Results

### ✅ 7.3 - My Solution

```sql

```

### 🛜 7.4 - Website's Solution

```sql

```

### ❇️ 7.5 -

```sql
```

👉

## 8. Produce a list of costly bookings, using a subquery

### ℹ️ 8.1 - Description

### ☑️ 8.2 Expected Results

### ✅ 8.3 - My Solution

```sql

```

### 🛜 8.4 - Website's Solution

```sql

```

### ❇️ 8.5 -

```sql
```

👉

---
