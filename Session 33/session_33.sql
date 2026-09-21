-- Q1
-- find top 5 samsung phones with biggest screen size
-- SELECT * FROM campusx.smartphones
-- where brand_name = 'samsung' 
-- order by screen_size desc
-- limit 5 -- top 5 

-- Q2
-- Sort all the phone with in åecending order of number of total cameras

-- SELECT model ,(num_rear_cameras+num_front_cameras ) as 'total number of camera'FROM campusx.smartphones
-- order by ('total number of camera') desc



-- Q3
-- sort on ppi 
-- SELECT model, resolution_width*resolution_width as 'w',resolution_height*resolution_height as 'h',
-- round(sqrt(resolution_width*resolution_width+resolution_height*resolution_height )/screen_size,1) as 'ppi' 
-- FROM campusx.smartphones
-- order by ppi desc
-- limit 10

--
-- Q4 where 2nd largest battery 
-- SELECT model,battery_capacity FROM campusx.smartphones
-- order by battery_capacity desc
-- limit 1,10 
--  

-- Q5 
-- find the name and rating of the worst rated apple phone
-- brand_name,model,rating/10
-- SELECT model,rating/10 as 'Rating_5'  FROM campusx.smartphones
-- 	where brand_name='apple'
-- 	order by Rating_5 asc
--     limit 2


-- Q6 on multiple columns 

-- SELECT * FROM campusx.smartphones
-- order by brand_name desc, price asc
-- ------------------------------------------------------------------------------------

-- # Group by 
-- Q1
-- -- Group smartphones by brand and set the count, average price, max rating,avg screen size and avg batter capacity
-- SELECT  brand_name, count(*) as 'total_no_phones', round(avg(price)) as 'avrage_price',max(rating/10) as 'rating', round(avg(screen_size),2) as 'average scrren size', round(avg(battery_capacity))  FROM campusx.smartphones
-- Group by brand_name
-- order by total_no_phones desc


-- Q2
-- -- Group smartphones by whether they have an NFC and get the average price and rating
-- SELECT  has_nfc, count(*) as 'total_no_phones', round(avg(price)) as 'avrage_price', max(rating/10) as 'rating'FROM campusx.smartphones
-- Group by has_nfc



-- Q3
-- Group smartphones by the brand and processor brand and get the count of models and the average primary camera resolution
-- SELECT  brand_name,processor_brand, count(*) as 'total_no_phones', round(avg(primary_camera_rear)) as 'Avg mp'FROM campusx.smartphones
-- Group by brand_name,processor_brand
-- order by brand_name

-- Q4
-- Which brand makes the smallest screen smart hone
-- SELECT  brand_name, count(*) as 'total_no_phones', round(avg(screen_size)) as 'Avgsize' FROM campusx.smartphones
-- Group by brand_name
-- order by Avgsize asc
-- limit 10

-- 8 find the phone which has nfc and ir blaster
-- SELECT  brand_name, count(*) as 'count' FROM campusx.smartphones
-- where has_nfc ='True' and has_ir_blaster = 'True'
-- Group by brand_name
-- order by count



-- -
-- Having clause 


-- Q1 average price of the phone which are having model greater than 20  

-- SELECT brand_name,
-- count(*) as 'total_count',
-- avg(price) as'price'
-- FROM campusx.smartphones
-- Group by brand_name  
-- having total_count > 20
-- order by price desc



-- 

-- Q2 Find the avg rating of smartphone brands which have more than 20 phones
-- SELECT brand_name, 
-- count(*) "total_count",
-- round(avg(rating/10),1) as "rating"
-- FROM campusx.smartphones
-- Group by brand_name
-- having total_count >= 19
-- Order by rating asc





-- Find the top 3 brands with the highest avg ram that have a refresh rate of at least qo Hz and fast charging available and dont

-- SELECT brand_name, 
-- count(*) as 'totalcount',
-- round(avg(ram_capacity),1) as 'ram_cap'
-- FROM campusx.smartphones
-- where refresh_rate>89 and fast_charging_available =1
-- group by brand_name 
-- having totalcount>=20
-- order by ram_cap desc
-- limit 10

-- Q3 find the avg price of all the phone brands with avg rating > 70 and num_phones more than 10  among all Sg enabled phones

-- SELECT brand_name,
-- count(*) as "total_count",
-- round(avg(price),0)as 'avg_price'
-- FROM campusx.smartphones
-- where has_5g='True'
-- group by brand_name
-- having avg(rating) >70 and count(*)>10




-- Practice 
-- Q1 Find the top 5 batasman

-- SELECT batter,
-- sum(batsman_run) as 'runs'
-- FROM campusx.ipl_ball
-- Group by batter
-- order by runs desc
-- limit 5


-- Q2
--  2nd best six hitter in ipl
-- SELECT batter,
-- sum(batsman_run) as "total_run",
-- count(*) as 'number_six'
-- FROM campusx.ipl_ball
-- where batsman_run = 6
-- group by batter
-- order by total_run desc
-- limit 1,1 


-- -- Q3 Find top 10 batsman with centuries in IPL
-- SELECT batter ,
-- sum(batsman_run/100) as "total_run"
-- FROM campusx.ipl_ball
-- group by batter
-- order by total_run desc 
-- limit 10

