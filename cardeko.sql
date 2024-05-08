create schema cars;
use cars;
select*from car_dekho;
-- Total cars: To get a count of total records
select count(*) from car_dekho;
-- the manager asked the employee how many cars will be available in 2023?--
select count(*) from car_dekho where year = 2023;
-- the manager asked the employee how many cars wil be available in 2021,2022,2023?
select count(*) from car_dekho where year = 2021;
select count(*) from car_dekho where year = 2022;
select count(*) from car_dekho where year = 2020;
-- we will use group by on that condition..
select count(*) from car_dekho where year in (2020,2021,2023) group by year;
-- client asked me to print the total of all cars by year . I don't see all the details..
select year, count(*) from car_dekho group by year;
-- client asked to car dealer agent how many diesel cars will there be in 2020?
select count(*) from car_dekho where year = 2020 and fuel ="Diesel";
-- client asked to car dealer agent how many petrol cars will there be in 2020?
select count(*) from car_dekho where year = 2020 and fuel ="Petrol";
-- the manager told the employee to give print all the fuel cars(petrol,disel and CnG) come by all year
select year, count(*) from car_dekho where fuel="Petrol" group by year;
select year, count(*) from car_dekho where fuel="Diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;


-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;



-- the manager said to the employee all cars count details between 2015 and 2023; we need a complete list.
select count(*) from car_dekho where year between 2015 and 2023;
