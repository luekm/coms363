select courses.number, courses.name
from courses, departments
where courses.department_code = departments.code and departments.name = 'Computer Science'
order by courses.number;