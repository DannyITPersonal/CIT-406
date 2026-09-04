CIT 406 Database Design
Module 1 — Task 1: PostgreSQL Data Type Selection
#	Column	PostgreSQL Data Type	Justification
1	student_id	integer GENERATED ALWAYS AS IDENTITY	An identity integer automatically generates a unique sequential number for each student.
2	first_name	varchar(50)	varchar(50) stores names as text while limiting the value to a reasonable maximum of 50 characters.
3	email_address	varchar(255)	varchar(255) provides enough space for standard email addresses while storing them as text.
4	date_of_birth	date	The date type stores a calendar date without storing an unnecessary time of day.
5	account_balance	numeric(10,2)	numeric(10,2) stores monetary values accurately with exactly two decimal places without floating-point rounding errors.
6	is_active	boolean	The boolean type is appropriate because the account can have only two states: active or inactive.
7	event_start	timestamptz	timestamptz stores the exact date and time along with time-zone information, which is important for students participating from different time zones.
8	event_description	text	text is appropriate because event descriptions can contain multiple paragraphs and have no fixed maximum length.
9	maximum_attendees	integer	An integer is appropriate for storing the whole-number maximum number of people allowed at an event.
10	student_attended	boolean	boolean is appropriate because attendance has only two possible values: yes or no.
11	phone_number	text	text is appropriate because phone numbers can contain plus signs, parentheses, hyphens, and leading zeros and should not be used for arithmetic.
12	postal_code	varchar(10)	varchar(10) can store postal codes as text so leading zeros are preserved and different postal-code formats can be supported.
13	event_status	text	text is appropriate because the system may add additional event statuses in the future without requiring a database type change.
14	student_number	char(6)	char(6) preserves leading zeros in university-assigned numbers such as 001245 and ensures each value has six characters.
