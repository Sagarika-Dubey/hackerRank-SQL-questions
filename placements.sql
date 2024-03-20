SELECT S.NAME 
FROM STUDENTS S,FRIENDS F,PACKAGES P1,PACKAGES P2
WHERE P2.SALARY>P1.SALARY 
AND P1.ID=F.ID 
AND P2.ID=F.FRIEND_ID
AND S.ID=P1.ID
ORDER BY P2.SALARY;