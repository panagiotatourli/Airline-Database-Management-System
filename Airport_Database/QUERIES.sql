--1. Names of all passengers who have booked a flight for 25/12.
SELECT DISTINCT P.PNAME
FROM PASSENGER P
INNER JOIN TICKET T ON P.PSSN = T.PSSN
INNER JOIN FLIGHT F ON F.FID = T.FID
WHERE F.FDATE = '2023-12-25';

--2. IDs of passengers who live in Canada and travel to Spain.
SELECT P.PSSN
FROM PASSENGER P
INNER JOIN TICKET T ON P.PSSN = T.PSSN
INNER JOIN FLIGHT F ON T.FID = F.FID
WHERE P.PADDRESS LIKE '%Canada%' AND F.FDESTINATION LIKE '%Madrid%';

--3. Find the IDs of airline employees who are over 50 years old.
SELECT SSSN FROM Staff
WHERE SAGE>50;

--4. Find the name of the youngest employee who works as a pilot.
SELECT SNAME FROM Staff
WHERE SJOBTITLE='Pilot'
ORDER BY SAGE ASC
LIMIT 1;

--5. What is the total number of staff that all the airline companies employ?
SELECT COUNT(*) FROM Staff

--6. Which are the airports that are located in Greece?
SELECT ANAME
FROM AIRPORT
WHERE ALOCATION = 'Greece';

--7. Which tickets cost over 300 euros?
SELECT TID
FROM TICKET
WHERE TCOST > 300;

--8. What is the average ticket cost for every flight?
SELECT F.FID, AVG(T.TCOST) FROM TICKET T
INNER JOIN FLIGHT F
ON T.FID=F.FID
GROUP BY F.FID


--9. How many flights will be scheduled during 25/12 – 31/12?
SELECT COUNT(F.FID) FROM FLIGHT F
WHERE FDATE BETWEEN '2023-12-25' AND '2023-12-31';

--10. Models of airplanes manufactured after 2010 and have capacity over 100 seats?
SELECT PMODEL
FROM AIRPLANE
WHERE PYEAR > 2010 AND PCAPACITY > 100;



















