-- MySQL ADDDATE() Function

-- Add 10 days to a date and return the date:
select  ADDDATE("2017-06-16", Interval 10 day);

-- MySQL ADDTIME() Function
-- Add 2 seconds to a time and return the datetime:

select ADDTIME ("2017-06-15 09:34:21", "2");

-- MySQL CURDATE() Function
-- Return the current date:
select CURDATE();
SELECT CURRENT_DATE();
--both are correct

-- MySQL CURRENT_TIME() Function
-- Return current time:
select CURRENT_TIME();
SELECT CURTIME();


-- MySQL CURRENT_TIMESTAMP() Function
-- Return the current date and time:
select CURRENT_TIMESTAMP();


-- MySQL DATE() Function
-- Extract the date part:
select Date("2017-06-15");


-- MySQL DATEDIFF() Function
-- Return the number of days between two date values:
select DATEDIFF ("2017-06-25", "2017-06-15");

-- MySQL DATE_FORMAT() Function
-- Format a date:
select DATE_FORMAT("2017-06-15", "%y");--find just year from the date


-- MySQL DAYNAME() Function
-- Return the weekday name for a date:
select DAYNAME("2017-06-15");

-- MySQL DAYOFMONTH() Function
-- Return the day of the month for a date:

select DAYOFMONTH("2017-06-15");

-- MySQL DAYOFWEEK() Function
-- Return the weekday index for a date:
select DAYOFWEEK("2017-06-15");--means how much week of the month

-- MySQL DAYOFYEAR() Function
-- Return the day of the year for a date:
select dayofyear("2017-06-15");

-- MySQL EXTRACT() Function
-- Extract the month from a date:
select  extract(month from "2017-06-15");

-- MySQL FROM_DAYS() Function
-- Return a date from a numeric representation of the day:

SELECT FROM_DAYS(685467);

-- MySQL HOUR() Function
-- Return the hour part of a datetime:
select hour ("2017-06-20 09:34:00");

-- MySQL LAST_DAY() Function
-- Extract the last day of the month for the given date:
select LAST_DAY("2017-06-20");

-- MySQL LOCALTIME() Function
-- Return current date and time:

select localtime();
SELECT LOCALTIMESTAMP();
SELECT NOW();

-- MySQL MAKEDATE() Function
-- Create and return a date based on  a year and a number of days value:
select MAKEDATE(2017,3);

-- MySQL MAKETIME() Function
-- Create and return a time value based on an hour, minute, and second value:


-- MySQL MINUTE() Function
-- Return the minute part of a datetime value:
select minute("2017-06-20 09:34:00");


-- MySQL MONTHNAME() Function
-- Return the name of the month for a date:
select monthname("2017-06-15");