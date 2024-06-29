select * from students;

select * from students
	Where age > (select AVG(age) from students);

Select * from students
Where grade < (Select AVG(grade)from students);

Select * from students
	where amount_paid >(Select AVG(amount_paid) from students);

SELECT ROUND(AVG(student_cnt)), MAX(student_cnt), MIN(student_cnt)
FROM (SELECT department, COUNT(*) student_cnt
	  FROM students
	  GROUP BY department);

Select * from students st Join projects prj
ON st.student_id = prj.student_id;

Select name, title from students S JOIN projects
P ON S.student_id = P.student_id;

Select * from students st Left Join projects prj
ON st.student_id = prj.student_id;

Select * from students st Right Join projects prj
ON st.student_id = prj.student_id;
