-- Q1
-- Find out the average sleep duration of top 15 male candidates who's sleep duration are equal to 7.5 or greater than 7.5.
-- sorting data 
-- SELECT avg(`Sleep duration`) as "average sleep duration" FROM campusx_task.task_33_sleep_efficiency
-- insurance_datawhere 'Sleep duration' >=7.5
-- WHERE `Sleep duration` >= 7.5 and Gender = 'Male' -- `` must have to use this where we have to find the space in column name sql treat them single string then
-- order by `Sleep duration` desc
-- limit 15 
-- ;
-- --------------------------------------------------------------------------------------------

-- Q2 
-- Show avg deep sleep time for both gender. Round result at 2 decimal places.
-- Note: sleep time and deep sleep percentage will give you, deep sleep time.

-- SELECT 
-- Gender,
-- avg(	
-- 	round(
-- 			((`Deep sleep percentage`*`Sleep duration`)	/100)
--     ,2)
-- ),as `deep sleep time`

-- FROM campusx_task.task_33_sleep_efficiency
-- group by Gender
-- --------------------------------------------------------------------------------
-- Q3 
-- Find out the lowest 10th to 30th light sleep percentage records where deep sleep percentage values are between 25 to 45. 
-- Display age, light sleep percentage and deep sleep percentage columns only.

-- SELECT `Age`,`Light sleep percentage`,`Deep sleep percentage`FROM campusx_task.task_33_sleep_efficiency
-- where  `Deep sleep percentage` BETWEEN 25 AND  45 
-- order by `Light sleep percentage` 
-- limit 10, 20 -- start from 11 column end on 30 th colum 
-- --------------------------------------------------------------------------------------
-- Q4 Group by on exercise frequency and smoking status and show average deep sleep time,
-- average light sleep time and avg rem sleep time.
-- SELECT `Exercise frequency`,`Smoking status`,
-- ROUND(
-- 		AVG(
--         ((`Deep sleep percentage` * `Sleep duration`) / 100)),
--         2)
-- 		AS `deep sleep time`,
-- round(avg(((`Light sleep percentage`*`Sleep duration`)	/100)),2)
-- as `Light sleep time`,
-- round(avg(((`REM sleep percentage`*`Sleep duration`)	/100)
--     ),2)as `REM sleep time`

-- FROM campusx_task.task_33_sleep_efficiency
-- Group by `Exercise frequency`,`Smoking status`
