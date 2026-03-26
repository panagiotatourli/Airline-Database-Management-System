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

--Delete/Update/Insert SQL Queries
--1.Delete the connect associated with the airport that has the ID number 9.
DELETE FROM CONNECTS WHERE AID = 9;

--2. Delete the record of the airport with the ID number 9.
DELETE FROM AIRPORT WHERE AID = 9;

--3. Delete the airplane with ID 14 that was manufactured in 1980
DELETE FROM AIRPLANE WHERE PID = 14 AND PYEAR = 1980;

--Updates
--1. Update the phone number to 2109999999 for the staff member with SSN 874514254
UPDATE STAFF SET SPHONE = 2109999999 WHERE SSSN = 874514254;

--2. Update the email address to 'updated@skyairlines.com' for the airline company with ID 10
UPDATE AIRLINE_COMPANY SET CEMAIL = 'updated@skyairlines.com' WHERE CID = 10;

--Insert
--1. Add a new flight with ID 21, scheduled for December 25th, 2023, departing for Madrid Airport, operated by the airline company with ID 8
INSERT INTO FLIGHT VALUES (21, '2023-12-25', 'Madrid Airport', 8);

--2. Register a new passenger named Ariadni Vogkoli, with SSN 785468733, phone number 2101124658, living at Agios Iwannis 33, Thessaloniki, Greece, who is 35 years old.
INSERT INTO PASSENGER VALUES (785468733, 'Ariadni Vogkoli', 2101124658, 'Agios Iwannis 33 Thessaloniki Greece', 35);
























