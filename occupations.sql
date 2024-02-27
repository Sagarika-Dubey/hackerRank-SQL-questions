select 
min(Doctor),min(Professor),min(Singer),min(Actor )
from(
    SELECT Name, Occupation,
    CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END as Doctor,
    CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END as Professor,
    CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END as Singer,
    CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END as Actor,
    row_number() over (partition by Occupation order by Name) as r1
    FROM Occupations
    Order by r1) X
Group by r1
order by r1 asc
;