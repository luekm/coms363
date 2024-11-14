WITH DegreeCounts AS (
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
),
DegreeTotals AS (
    SELECT
        degree_name,
        SUM(student_count) AS total_students
    FROM
        DegreeCounts
    GROUP BY
        degree_name
)
SELECT
    dc.degree_name,
    dc.degree_level,
    dc.student_count
FROM
    DegreeCounts dc
JOIN
    DegreeTotals dt ON dc.degree_name = dt.degree_name
WHERE
    dc.student_count = dt.total_students
ORDER BY
    dc.degree_name;
