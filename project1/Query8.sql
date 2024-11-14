select students.name, students.snum, students.ssn
from students
where (students.name like "%n%" or students.name like "%N%")
order by students.snum;