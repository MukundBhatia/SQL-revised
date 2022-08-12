SELECT E.Location                   
FROM Employee E 
LEFT JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.Location
ORDER BY COUNT(DISTINCT E.Name)*3 - COUNT(DISTINCT S.ID, S.Swipe_Date) DESC    
LIMIT 1;
