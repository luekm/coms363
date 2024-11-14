select degrees.name, degrees.level
from degrees, departments
where degrees.department_code = departments.code and departments.name = 'Computer Science'
order by degrees.level;