SELECT
    COUNT(students.snum)
FROM
    students
JOIN
    major ON students.snum = major.snum
LEFT JOIN
    minor ON students.snum = minor.snum
WHERE
    (major.name = 'Software Engineering' OR minor.name = 'Software Engineering')
    AND students.gender = 'F';