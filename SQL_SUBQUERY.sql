Select * from students
where age > (Select ROUND(AVG (age)) As avg_age From students);

Select * from students
where grade < (Select Round (AVG (grade),2) As avg_grade From students);

Select department, count('student_id') student_cnt 
	from students
group by department;

select ROUND(AVG(student_cnt), 2), MAX(student_cnt), MIN(student_cnt) FROM
(Select department, count(student_id) student_cnt 
	from students group by department);