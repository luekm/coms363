select courses.number AS course_number,courses.name AS course_name, COUNT(register.snum) AS student_count
from courses
left join register ON courses.number = register.course_number
group by courses.number, courses.name
order by courses.number;