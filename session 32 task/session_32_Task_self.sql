-- Question 1 


-- SELECT * FROM campusx_task.insurance_data
-- Show records of 'male' patient from 'southwest' region.
-- where gender = 'male' and region = 'southwest'


-- -- Q2
-- SELECT * FROM campusx_task.insurance_data
-- Show all records having bmi in range 30 to 45 both inclusive.
-- where bmi between 30 and 45.1


-- Q3 
--  Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
-- SELECT min(bloodpressure),max(bloodpressure) FROM campusx_task.insurance_data
-- WHERE	 smoker = 'Yes'



-- Q4

-- Find no of unique patients who are not from southwest region.
-- SELECT count('PatientID') FROM campusx_task.insurance_data
-- where region Not in ('southwest')

-- Q5 

-- Total claim amount from male smoker.
-- SELECT sum(claim) FROM campusx_task.insurance_data
-- where gender = 'male' and smoker = 'Yes'



-- Q6
-- Select all records of south region.

-- SELECT * FROM campusx_task.insurance_data
-- where region LIKE '%south%' +ve result 
-- where region NOt LIKE '%south%' -- -veresult  - 


-- Q7
-- No of patient having normal blood pressure. Normal range[90-120]
-- count()
-- SELECT  count(PatientID) FROM campusx_task.insurance_data
-- where bloodpressure between 90 and 120;


-- -- Q8


-- No of pateint belo 17 years of age having normal blood pressure as per below formula -
-- BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)
-- Note: Formula taken just for practice, don't take in real sense.


-- SELECT  * FROM campusx_task.insurance_data
-- where age <'50' and  (bloodpressure BETWEEN 80+(age * 2) AND 100 + (age * 2));



-- Q9

-- What is the average claim amount for non-smoking female patients who are diabetic?
-- SELECT  avg(claim) FROM campusx_task.insurance_data
-- where smoker ='No'and gender ='female'and diabetic= 'yes';


-- Q10

-- Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.
-- UPDATE  campusx_task.insurance_data
-- SET claim = 5000
-- WHERE PatientID = 1234;


-- Q11 Write a SQL query to delete all records for patients who are smokers and have no children.

-- delete FROM campusx_task.insurance_data
-- where smoker = 'Yes' and children = '0';


