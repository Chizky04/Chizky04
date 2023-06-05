**“Education for All”(EFA)** is an international initiative that was launched to bring the benefits of education to “every citizen n every society” To realize this aim, a broad coalition of national governments, civil society groups, and development agencies such as UNESCO and world Bank gets funding’s for this scheme.

**Project Objectives**
This project focuses on finding useful insights from the datasets provided by the organization, to assist the fundraising team to make inform strategies to meet the following objectives for the following year;
1. To increase the number of donors.
2. To increase the donation frequency of donors.
3. To increase the value of donations to the charity

**Business Problem**
The business problem discovered is that it is very difficult to grow funds for charity organizations due to the non-availability of enough frequent donations of fund from individuals which is a major factor. Hence, the need to search for more dnors who can donate regularly via a fundraising initiative, is an efficient solution that will help increase the value of donations available for the organization for the following year.

**Datasets Gathered**
We could say that the available data source provided during the research is known as a Primary and Internal data source which was gotten from the organization’s database and it contains two tables ‘Donation data’ and ‘donors data’.
Below are the data/attributes contained in the datasets provided
Donation Data:
Donor ID, Donor First name, last name, Email, Gender, Job-field, Donation, State and Shirt size
Donors Data:
Donor ID, Donation Frequency, University, Car, Second Language, Favorite color and Movie genre
When merged together, they contain 1000 records and 15 attributes. The dataset contains information of registered donors from 49 US states, before the analysis, the dataset was cleaned by checking for null records, duplicate records, inconsistent data types and misspellings.
The following are some questions asked to analyze the dataset and get deeper insights and further understand the business problem.
1. What is the total amount of donors and donations gotten for the database?
2. What is the frequency of their donations based on the donors?
3. What region (state) recorded the lowest ad highest amount of doors and donations?
4. What job fields had the highest donations and donors who donated more frequently?
5. What gender recorded the highest amount of donors and donations?
6. Is the amount of donations depended on gender, job field, university degree, and car?

**Root Cause Analysis**
The application of the five whys (5whys) root cause technique was used to determine the underlying cause of the business problem. The following why questions were asked:
1. Why is the organization lacking enough donations as required for their ongoing projects?
 Because the donations are not coming frequently as expected
2. Why do we have infrequent number of donations recorded?
 Because we have less frequent donors than the frequent donors
3. Why do we record high number of less frequent donors?
 Because there are many inactive donors that have not fulfilled their pledges
4. Why have they refuse to donate?
 Maybe they have forgotten or hey are been preoccupied with other bills
5. Why were they not reminded of their donation
 This might be as a result of no further engagement across to them via different mediums and channels
Insights and Visualization Analysis
The below insights from the datasets provided were gotten by querying the data using SQL Lite Database Management System. The query codes can be found in below in this report. Also the insights from the queries were graphically represented using Tableau public.

The Datasets were imported and queried using SQL Lite

Visualization
Tableau public was a very powerful tool used for data analysis and visualization.

![Main Dashboard](https://github.com/Chizky04/Education-For-All-Organisation/assets/119705578/05384ce8-5597-4d33-85e5-f8d4eb2c4cb4)
https://public.tableau.com/app/profile/umebosi.chisom/viz/EducationForAllDashboard_16710655267570/Dashboard12
