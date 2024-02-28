SELECT CASE WHEN GRADE >= 8 THEN NAME ELSE 'NULL' END, GRADE, MARKS
FROM STUDENTS
JOIN GRADES ON MARKS BETWEEN MIN_MARK AND MAX_MARK
ORDER BY GRADE DESC, NAME, MARKS