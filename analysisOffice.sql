SELECT * FROM TheOffice.dbo.the_office

SELECT AVG(Ratings) FROM TheOffice.dbo.the_office

SELECT  MAX(Ratings), EpisodeTitle FROM TheOffice.dbo.the_office

SELECT  MIN(Ratings) FROM TheOffice.dbo.the_office

SELECT TOP 1 EpisodeTitle, Ratings
FROM TheOffice.dbo.the_office
ORDER BY Ratings DESC;

SELECT TOP 1 EpisodeTitle, Ratings
FROM TheOffice.dbo.the_office
ORDER BY Ratings

SELECT  column1 , Season, EpisodeTitle , Ratings
FROM TheOffice.dbo.the_office
ORDER BY Ratings DESC





SELECT * FROM TheOffice.dbo.the_office
WHERE GuestStars IS NOT NULL
ORDER BY Ratings DESC

SELECT * FROM TheOffice.dbo.the_office
WHERE Ratings > 8

SELECT (SUM(Duration)/60)/24.0 AS Totalduration FROM TheOffice.dbo.the_office



SELECT Writers, SUM(Ratings)/COUNT(Ratings) AS Promedio , COUNT(Ratings) as Episodios FROM TheOffice.dbo.the_office

GROUP BY Writers
HAVING COUNT(Ratings) > 4
ORDER BY Promedio DESC






SELECT * FROM TheOffice.dbo.the_office
WHERE Writers LIKE 'Steve Carell'

SELECT * FROM TheOffice.dbo.the_office
WHERE About LIKE '%Stanley%'


SELECT * , YEAR(Date) AS Ano  FROM TheOffice.dbo.the_office

SELECT *, 
CASE WHEN Duration >25 THEN 'Long' ELSE 'Normal' END AS durationtype
FROM TheOffice.dbo.the_office
WHERE Duration > 25


SELECT COUNT(Duration) FROM TheOffice.dbo.the_office
WHERE Duration > 25

SELECT * FROM TheOffice.dbo.the_office
WHERE Duration IN (23, 21)

SELECT * FROM TheOffice.dbo.the_office
WHERE NOT Duration IN (23, 21)
