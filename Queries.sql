/*Query number 1*/
SELECT  
    e.employee_id AS EmployeeID, 
    e.first_name AS FirstName, 
    e.last_name AS LastName, 
    e.role AS Role, 
    COUNT(DISTINCT ce.contest_id) AS ContestsParticipated, 
    SUM(ce.payment) AS TotalSalary, 
    MIN(ce.payment) AS MinSalary, 
    MAX(ce.payment) AS MaxSalary
FROM employees e
JOIN contest_employee ce ON e.employee_id = ce.employee_id
JOIN contest c ON ce.contest_id = c.contest_id
GROUP BY e.employee_id, e.first_name, e.last_name, e.role
ORDER BY SUM(ce.payment) DESC, COUNT(DISTINCT ce.contest_id) DESC;


/*Query number 2*/
SELECT  
    YEAR(c.contest_date) AS year, 
    MONTH(c.contest_date) AS month, 
    COALESCE(SUM(ce.payment), 0) AS TotalPayment,
    COUNT(DISTINCT c.contest_id) AS TotalContests,
    COUNT(DISTINCT ce.employee_id) AS TotalEmployees
FROM contest_employee ce
JOIN contest c ON ce.contest_id = c.contest_id
WHERE YEAR(c.contest_date) = 2024
GROUP BY YEAR(c.contest_date), MONTH(c.contest_date)
ORDER BY year, month;
 
 
/*Query number 3*/ 
SELECT 
    s.school_name AS schoolName,
    COUNT(DISTINCT r.contest_id) AS totalContests
FROM school s
JOIN students st ON st.school_id = s.school_id
LEFT JOIN results r ON r.student_id = st.student_id
WHERE NOT EXISTS (
    SELECT * 
    FROM students st_sub
    WHERE st_sub.school_id = s.school_id
    AND NOT EXISTS (
        SELECT * 
        FROM results r_sub
        WHERE r_sub.student_id = st_sub.student_id
    )
)
GROUP BY s.school_name
ORDER BY totalContests DESC, schoolName;



/*Query number 4*/ 
SELECT 
    sp.sport_name AS SportName,
    sp.sport_type AS SportType,
    ROUND(AVG(r.result), 2) AS AverageScore,
    CONCAT(MIN(r.result), ' ', sp.record_type) AS MeasuredRecord,
    COUNT(DISTINCT c.contest_id) AS TotalContests,
    COUNT(r.student_id) AS TotalParticipants,
    COUNT(DISTINCT r.student_id) AS UniqueParticipants
FROM sports sp
LEFT JOIN contest c ON sp.sport_id = c.sport_id
LEFT JOIN results r ON c.contest_id = r.contest_id
GROUP BY sp.sport_name
ORDER BY sp.sport_type, MeasuredRecord DESC, sp.sport_name;


/*Query number 5*/ 
SELECT 
    st.student_id AS StudentID,
    CONCAT(st.first_name, ' ', st.last_name) AS FullName,
    c.contest_date AS ContestDate,
    CONCAT(r.result, ' ', sp.record_type) AS ResultWithType,
    c.city AS ContestCity,
    sp.sport_name AS ContestName,
    sp.sport_type AS SportType
FROM students st
JOIN results r ON st.student_id = r.student_id
JOIN contest c ON r.contest_id = c.contest_id
JOIN sports sp ON c.sport_id = sp.sport_id
WHERE c.city = st.city
  AND r.result = (
      SELECT MIN(r1.result)
      FROM results r1
      JOIN contest c1 ON r1.contest_id = c1.contest_id
      WHERE c1.contest_id = c.contest_id
  )
ORDER BY c.contest_date, sp.sport_type;


/*Query number 6*/ 
 SELECT 
    sc.school_name AS SchoolName,
    sc.city AS City,
    COUNT(sc.school_id) AS TotalWins
FROM school sc
JOIN students st ON sc.school_id = st.school_id
JOIN results r ON st.student_id = r.student_id
JOIN contest c ON r.contest_id = c.contest_id
WHERE r.result = (
      SELECT MIN(r1.result)
      FROM results r1
      WHERE r1.contest_id = c.contest_id
  )
GROUP BY sc.school_name
HAVING COUNT(sc.school_id) > 3
ORDER BY TotalWins DESC
