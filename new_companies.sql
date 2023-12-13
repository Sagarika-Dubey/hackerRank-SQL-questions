SELECT c.company_code, c.founder, COUNT(DISTINCT(e.lead_manager_code)) clm, COUNT(DISTINCT(e.senior_manager_code)) csm, COUNT(DISTINCT(e.manager_code)) cm, COUNT(DISTINCT(e.employee_code)) ce
FROM 
Employee e 
INNER JOIN
Company c 
ON
e.company_code = c.company_code
GROUP BY c.company_code,c.founder
ORDER BY c.company_code