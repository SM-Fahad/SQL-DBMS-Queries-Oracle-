select * from student where grade_level is NOT NULL

select * from student where major = 'Physics' AND GRADE_LEVEL IS NULL;

select * from student where major = 'Physics' OR GRADE_LEVEL='1';

select * from student where NOT (GRADE_LEVEL='1');

select * from student ORDER BY ENROLL_DATE;

select * from student ORDER BY 8,1 ASC;

define val = 'Khan';
define order = 1;

SELECT * FROM student where last_name = '&val' order by &order desc;

undefine val, val2;

SELECT * FROM student;