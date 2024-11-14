select students.name
from students, register
where register.regtime = 'Fall2020' and register.snum = students.snum;