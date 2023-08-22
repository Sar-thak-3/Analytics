-- Count number of athletes from each country
SELECT Country,COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Average number of Females and Males from each country
SELECT Discipline,
AVG(Female) AVG_FEMALE,
AVG(Male) AVG_MALE
FROM gender
GROUP BY Discipline;

-- Calculate total medals won by each country
SELECT Team_Country,
SUM(GOLD) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
FROM medals
GROUP BY Team_Country
ORDER BY Total_Gold DESC;
