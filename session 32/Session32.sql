-- usersuser_idSELECT model, resolution_width*resolution_width as 'w',resolution_height*resolution_height as 'h',
-- sqrt(resolution_width*resolution_width+resolution_height*resolution_height )/screen_size as 'ppi' FROM campusx.smartphones; 
-- SELECT model, rating/10 FROM campusx.smartphones;
-- SELECT 
-- model, 'Smartphone' as 'type' 
-- FROM campusx.smartphones;


-- # distinct value  
-- SELECT distinct(brand_name) as 'All_brands'
-- FROM campusx.smartphones;

-- Group me agar find karna hai 
-- Select distinct(brand_name,processor_brand) as 'Processor_brands' FROM campusx.smartphones;


-- unique combination
-- SELECT distinct brand_name, processor_brand,num_cores, processor_speed

-- FROM campusx.smartphones; 

-- SELECT * FROM campusx.smartphones 
-- -- you this where to filter the rows 
-- where brand_name = 'apple'

-- ;-- 

-- SELECT * FROM campusx.smartphones
-- where  price >50000;

-- SELECT * FROM campusx.smartphones
-- -- where  price > 10000 and price <20000 ;
-- where  price between 10000 and 20000 ;


-- SELECT * FROM campusx.smartphones
-- where  brand_name = 'samsung' and  ram_capacity< 8 and processor_brand ='snapdragon';

-- SELECT distinct brand_name FROM campusx.smartphones
-- where price >10 0000;


-- SELECT * FROM campusx.smartphones
-- where processor_brand IN('snapdragon','dimensity') and processor_speed >=2 ;


-- SELECT * FROM campusx.smartphones
-- where processor_brand Not IN('snapdragon','dimensity') and processor_speed >=2.2 ;



-- UPDATE campusx.smartphones
-- SET processor_brand = 'Local' -- blank processor 
-- WHERE processor_brand = 'tiger';


-- update campusx.users
--  set name ='swanra',email = 'nitish@lulu.com', password = '12356'
--  where name ='munda' 


-- Delete FROM campusx.smartphones
-- where price >200000;



-- SELECT model, resolution_width*resolution_width as 'w',resolution_height*resolution_height as 'h',
-- round(sqrt(resolution_width*resolution_width+resolution_height*resolution_height )/screen_size,1) as 'ppi' 
-- FROM campusx.smartphones; 


-- -- SELECT ABS ('1000000' - price as 'temp' )FROM campusx.smartphones
-- -- -- SELECT count(distinct(brand_name)) FROM campusx.smartphones;


-- -- -- -- SELECT count(*) FROM campusx.smartphones
-- -- -- -- where brand_name='oneplus'

-- -- -- -- -- SELECT avg(rating) FROM campusx.smartphones
-- -- -- -- -- where	 brand_name = 'apple';
-- -- -- -- -- -- SELECT max(price) FROM campusx.smartphones
-- -- -- -- -- -- where brand_name= 'samsung' ;

-- -- -- -- -- -- -- SELECT max(price) FROM campusx.smartphones;
-- -- -- -- -- -- -- SELECT min(price) FROM campusx.smartphones;
-- -- -- -- -- -- -- SELECT avg(price) FROM campusx.smartphones;


-- -- -- -- -- -- -- -- Delete FROM campusx.smartphones
-- -- -- -- -- -- -- -- Where primary_camera_rear >150 and brand_name = 'samsung'
