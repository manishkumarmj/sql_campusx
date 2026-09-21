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


