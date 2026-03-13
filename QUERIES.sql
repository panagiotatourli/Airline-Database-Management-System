-- Names of all passengers who have booked a flight for 25/12.
SELECT DISTINCT PNAME
FROM PASSENGER, TICKET, FLIGHT
WHERE FDATE = '2023-12-25' AND TICKET.FID = FLIGHT.FID AND PASSENGER.PSSN = TICKET.PSSN;

-- IDs of passengers who live in Canada and travel to Spain.
SELECT DISTINCT PASSENGER.PSSN
FROM PASSENGER, FLIGHT, TICKET
WHERE PASSENGER.PADDRESS LIKE '%Canada%' AND FLIGHT.FDESTINATION LIKE '%Madrid%' AND PASSENGER.PSSN = TICKET.PSSN AND TICKET.FID = FLIGHT.FID;

-- Find the IDs of airline employees who are over 50 years old.
SELECT SSSN
FROM STAFF
WHERE SAGE > 50;

-- Find the name of the youngest employee who works as a pilot.
SELECT SNAME
FROM STAFF
WHERE SJOBTITLE = 'pilot'
ORDER BY SAGE ASC
LIMIT 1;

-- What is the total number of staff that all the airline companies employ?
SELECT COUNT(*)
FROM STAFF;

-- Which are the airports that are located in Greece?
SELECT ANAME
FROM AIRPORT
WHERE ALOCATION = 'Greece';

-- Which tickets cost over 300 euros?
SELECT TID
FROM TICKET
WHERE TCOST > 300;

-- What is the average ticket cost for every flight?
SELECT FLIGHT.FID, AVG(TICKET.TCOST)
FROM FLIGHT, TICKET
WHERE FLIGHT.FID = TICKET.FID
GROUP BY FLIGHT.FID
ORDER BY FLIGHT.FID ASC;

-- How many flights will be scheduled during 25/12 – 31/12?
SELECT COUNT(*)
FROM FLIGHT
WHERE FDATE BETWEEN '2023-12-25' AND '2023-12-31';

-- Models of airplanes manufactured after 2010 and have capacity over 100 seats?
SELECT PMODEL
FROM AIRPLANE
WHERE PYEAR > 2010 AND PCAPACITY > 100;

