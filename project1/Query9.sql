select students.name, students.snum, students.ssn
from students
where (students.name < "Becky" and students.name > "Nicole")
order by students.name;