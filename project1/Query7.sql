select
    students.name,
    students.snum
from
    students
join
    register on students.snum = register.snum
join
    courses on register.course_number = courses.number
join
    major on students.snum = major.snum
where
    courses.name = 'Database'
    and major.level = 'PhD' or major.level = 'MS'
order by students.snum;