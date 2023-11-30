SELECT 
CASE 
WHEN a+b<=c or a+c<=b or c+b<=a THEN 'Not A Triangle' 
WHEN a=b and b=c and a=c THEN 'Equilateral' 
WHEN a=b or b=c or a=c THEN 'Isosceles' 
ELSE 'Scalene' 
END 
FROM TRIANGLES;