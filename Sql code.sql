--The SELECT statement below was used to fetch the datasets records from the database
SELECT * FROM Donation_Data;
SELECT * FROM Donor_Data2;

--The COUNT() function was used to get the total number of donors with the query below
SELECT COUNT(donation) as Total_donor
FROM Donation_Data;

--The SUM() function was used to get the total number of donations
SELECT SUM(donation) as Total_donation
FROM Donation_Data;

--The MAX() function was used to get the maximum amount of donation donated
SELECT MAX(donation) as Maximum_donation
FROM Donation_Data;

--The MIN() function was used to get the minimum amount of donation donated
SELECT MIN(donation) as Minimum_donation
FROM Donation_Data;

--The AVG() function was used to get the average amount donated by the donors
SELECT AVG(donation) as Average_donation
FROM Donation_Data;

--The COUNT() function was used to get the total number of Males and Females as well as the total donations donated respectively
--Males:
SELECT COUNT(gender), SUM(donation) from Donation_Data
WHERE gender ='Male';

--Females:
SELECT COUNT(gender), SUM(donation) from Donation_Data
WHERE gender ='Female';

--The DISTINCT statement was used to fetch distinct states were donations were made along with the GROUPBY, ORDERBY and SUM() function to get the total donations in each state from the highest to the lowest donations with the DESC order statement
SELECT DISTINCT state, SUM(donation) as total_donation FROM Donation_Data
GROUP by state
ORDER by total_donation DESC;

--The LIMIT statement was used to fetch the top 10 states with the highest donors, along with the GROUPBY, ORDERBY and SUM() function to get the total donors and donations in those states
SELECT DISTINCT state, SUM(donation) as total_donation, COUNT (id) as Total_donor FROM Donation_Data
GROUP by state
ORDER by total_donation DESC
LIMIT 10;

--The INNER JOIN clause allows us to join different columns form multiple tables. The WHERE clause was used to filter the results to a set to include only the specified rows where the condition is met.
Total number of Males and Females that went to University along with the total donations donated.
SELECT COUNT(gender), SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Male'
AND university is NOT NULL;
SELECT COUNT(gender), SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Female'
AND university is NOT NULL;

--Total number of Males and Females that never went to University along with the total donations donated
SELECT COUNT(gender), SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Male'
AND university is NULL;

SELECT COUNT(gender), SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Female'
AND university is NULL;

--The INNER JOIN clause was also used to get the total amount of donations made either ONCE, WEEKLY, MONTHLY or YEARLY along with the total donors that donated respectively.
SELECT COUNT(donation), Donor_Data2.donation_frequency, SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency ='Once';

SELECT COUNT(donation), Donor_Data2.donation_frequency, SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency ='Weekly';

SELECT COUNT(donation), Donor_Data2.donation_frequency, SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency ='Monthly';

SELECT COUNT(donation), Donor_Data2.donation_frequency, SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency ='Yearly';

--Also the LEFT JOIN command was used to fetch how many males and females with and without university education donated above $300.
SELECT * FROM Donation_Data
LEFT JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Male'
AND university is NULL AND donation > 300
ORDER BY donation DESC
LIMIT 10;

SELECT * FROM Donation_Data
LEFT JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Female'
AND university is NULL AND donation > 300
ORDER BY donation DESC
LIMIT 10;

SELECT * FROM Donation_Data
LEFT JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Male'
AND university is NOT NULL AND donation > 300
ORDER BY donation DESC
LIMIT 10;

SELECT * FROM Donation_Data
LEFT JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender ='Female'
AND university is not NULL AND donation > 300
ORDER BY donation DESC
LIMIT 10;

--Here we also discovered how many states has more than 50 donors using the HAVING clause to restrict our search to 50 and above.
SELECT state, COUNT(donation) as total_donor FROM Donation_Data
GROUP BY state
HAVING total_donor > 50;

---The total number of donors and the total amount of donations contributed in each Job-Field
SELECT job_field as Occupation, COUNT(donation), SUM(donation) from Donation_Data
GROUP by job_field
ORDER by SUM(donation) DESC;

----The Top 10 donors that donated between $300 to $500 monthly using the BETWEEN clause.
SELECT Donation_Data.id, Donation_Data.gender, Donation_Data.donation, Donor_Data2.donation_frequency, Donor_Data2.university
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency ='Monthly'
AND donation BETWEEN 300 AND 500
AND university is not NULL
ORDER by donation
LIMIT 10;

----The Bottom donors that donated between $5 to $20 monthly using the BETWEEN clause.
SELECT Donation_Data.id, Donation_Data.gender, Donation_Data.donation, Donor_Data2.donation_frequency, Donor_Data2.university
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE donation_frequency ='Monthly'
AND donation BETWEEN 5 AND 20
AND university is not NULL
ORDER by donation;