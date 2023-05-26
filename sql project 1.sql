
-- schema name= ecommerce
-- table name = user_data
-- Follower = socialNbFollowers
-- Follows = socialNbFollows
-- buyer = productsBought
-- seller = productsSold

use ecommerce;
-- 3rd
use ecommerce;
desc user_data;

-- 4th
use ecommerce;
select * from user_data limit 100;

-- 5th
use ecommerce;
select distinct country,language from user_data; 

-- 6th
use ecommerce;
select count(socialNbFollowers) from user_data where gender='M'; 
-- followers = 15079
select count(socialNbFollowers) from user_data where gender='F'; 
-- followers = 50776
-- Females have maximum followers

-- 7th
-- 7.a
use ecommerce;
select count(hasProfilePicture) from user_data where hasProfilePicture = 'True';
-- total user with profile pictures = 64597

-- 7.b
use ecommerce;
select count(hasAnyApp) from user_data where hasAnyApp = 'True';
-- total people use apps on phone = 17290

-- 7.c
use ecommerce;
select count(hasAndroidApp) from user_data where hasAndroidApp = 'True';
-- total people using android = 3172

-- 7.d
use ecommerce;
select count(hasIosApp) from user_data where hasIosApp = 'True';
-- total people usinf Ios = 14240

-- 8th
use ecommerce;
select distinct country, sum(productsBought) from user_data group by country order by sum(productsBought) desc ;

-- 9th
use ecommerce;
select distinct country, avg(productsSold)  from user_data group by country order by avg(productsSold) asc ;

-- 10th
use ecommerce;
select distinct country, sum(productsPassRate)
from user_data group by country order by sum(productsPassRate) desc limit 10;

-- 11th
use ecommerce;
select language, COUNT(*) FROM user_data group by language;

-- 12th
-- both columns are present in same table..therefore no point in using union
use ecommerce;
select sum(productsWished),sum(socialProductsLiked) from user_data where gender = 'F';

-- 13th
use ecommerce;
select sum(productsSold),sum(productsBought) from user_data where gender='M';

-- 14th
use ecommerce;
select country,sum(productsBought) from user_data group by country order by sum(productsBought) desc;

-- 15th
use ecommerce;
select country,productsSold from user_data where productsSold=0 limit 10;

-- 16th
use ecommerce;
select daysSinceLastLogin from user_data order by daysSinceLastLogin asc limit 110;

-- 17th
use ecommerce;
select gender,count(daysSinceLastLogin) from user_data where gender='F' and daysSinceLastLogin>100;

-- 18th
use ecommerce;
select country,count(*) from user_data where gender = 'F' group by country;

-- 19th
use ecommerce;
select country,count(*) from user_data where gender = 'M' group by country;

-- 20th
use ecommerce;
select country,avg(productsBought), avg(productsSold) from user_data where gender='M' group by country;
