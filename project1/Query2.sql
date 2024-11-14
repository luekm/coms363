select major.name, major.level
from major, students
where students.name = 'Kevin' and  major.snum = students.snum;