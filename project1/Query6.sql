select students.snum, students.name, students.ssn
from students, minor
where exists(select students.snum from students where students.snum = minor.snum)
order by students.snum DESC
limit 1;