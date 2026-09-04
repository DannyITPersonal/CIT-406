# CIT 406 - Task 2
## PostgreSQL Constraint Error Testing

### Test 1: Missing First Name

SQL used:

```sql
INSERT INTO club_members (first_name, last_name, email, major, join_date)
VALUES (NULL, 'Smith', 'smith@example.com', 'Computer Science', '2026-09-03')

### Test 2: Missing Email

ERROR:  null value in column "email" of relation "club_members" violates not-null constraint
Failing row contains (7, Alex, Brown, null, Cybersecurity, 2026-09-03). 

SQL state: 23502
Detail: Failing row contains (7, Alex, Brown, null, Cybersecurity, 2026-09-03).
