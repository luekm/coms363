SELECT
    major.name AS degree_name,
    major.level AS degree_level,
    COUNT(DISTINCT students.snum) AS student_count
FROM
    major
JOIN
    students ON major.snum = students.snum
GROUP BY
    major.name, major.level
HAVING
    COUNT(DISTINCT students.snum) = (
        SELECT
            MAX(student_count)
        FROM
            (SELECT
                major.name,
                major.level,
                COUNT(DISTINCT students.snum) AS student_count
            FROM
                major
            JOIN
                students ON major.snum = students.snum
            GROUP BY
                major.name, major.level) AS max_counts
    )
ORDER BY
    degree_name;