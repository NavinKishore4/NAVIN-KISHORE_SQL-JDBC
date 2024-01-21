create database Ecommerce;
use ecommerce;
create table supplier(
SUPP_ID int primary key,
SUPP_NAME varchar(50),
SUPP_CITY varchar(50),
SUPP_PHONE varchar(50) not null
);
create table customer(
CUS_ID int primary key,
CUS_NAME varchar(20)  not null,
CUS_PHONE varchar(10) not null,
CUS_CITY varchar(30) not null,
CUS_GENDER CHAR
);

create table category(
CAT_ID int primary key,
CAT_NAME varchar(20) not null
);

create table product(
PRO_ID int primary key,
PRO_NAME varchar(20) not null default "Dummy",
PRO_DESC varchar(60),
CAT_ID int,
foreign key (CAT_ID) references category(CAT_ID)
);

create table supplier_pricing (
PRICING_ID int primary key,
PRO_ID int,
SUPP_ID int,
SUPP_PRICE int default 0,
foreign key (PRO_ID) references product(PRO_ID),
foreign key (SUPP_ID) references supplier(SUPP_ID)
);

create table orders(
ORD_ID int primary key,
ORD_AMOUNT int not null,
ORD_DATE date not null,
CUS_ID int,
PRICING_ID int,
foreign key (CUS_ID) references customer(CUS_ID),
foreign key (PRICING_ID) references supplier_pricing(PRICING_ID)
);

create table rating(
RAT_ID int primary key,
ORD_ID int ,
RAT_RATSTARS int not null,
foreign key (ORD_ID) references orders(ORD_ID)
);

insert into supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (1,"Rajesh Retails","Delhi","1234567890");
insert into supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (2,"Appario Ltd","Mumbai","2589631470");
insert into supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (3,"Knome products","Banglore","9785462315"); 
insert into supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (4,"Bansal Retails","Kochi","8975463285");
insert into supplier (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (5,"Mittal Ltd","Lucknow","7898456532"); 
 
 
insert into customer (CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(1,"AAKASH","9999999999","DELHI","M");
insert into customer (CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(2,"AMAN","9785463215","NOIDA","M");
insert into customer (CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(3,"NEHA","9999999999","MUMBAI","F");
insert into customer (CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(4,"MEGHA","9994562399","KOLKATA","F");
insert into customer (CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values(5,"PULKIT","7895999999","LUCKNOW","M");

insert into category(CAT_ID,CAT_NAME) values(1,"BOOKS");
insert into category(CAT_ID,CAT_NAME) values(2,"GAMES");
insert into category(CAT_ID,CAT_NAME) values(3,"GROCERIES");
insert into category(CAT_ID,CAT_NAME) values(4,"ELECTRONICS");
insert into category(CAT_ID,CAT_NAME) values(5,"CLOTHES");


insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(4,"OATS","Highly Nutritious from Nestle, 1TB SSD",3);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(6,"MILK","1L Toned MIlk",3);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(7,"Boat Earphones","1.5Meter long Dolby Atmos",4);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(9,"Project IGI","compatible with windows 7 and above",2);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
insert into product (PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values(12,"Train Your Brain","By Shireen Stephen",1);

insert into supplier_pricing(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) values
(1,1,2,1500),
(2,3,5,30000),
(3,5,1,3000),
(4,2,3,2500),
(5,4,1,1000),
(6,12,2,780),
(7,12,4,789),
(8,3,1,31000),
(9,1,5,1450),
(10,4,2,999),
(11,7,3,549),
(12,7,4,529),
(13,6,2,105),
(14,6,1,99),
(15,2,5,2999),
(16,5,2,2999);


insert into orders(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values 
(101,1500,'2021-10-06',2,1),
(102,1000,'2021-10-12',3,5),
(103,30000,'2021-09-16',5,2),
(104,1500,'2021-10-05',1,1),
(105,3000,'2021-08-16',4,3),
(106,1450,'2021-08-18',1,9),
(107,789,'2021-09-01',3,7),
(108,780,'2021-09-07',5,6),
(109,3000,'2021-01-10',5,3),
(110,2500,'2021-09-10',2,4),
(111,1000,'2021-09-15',4,5),
(112,789,'2021-09-16',4,7),
(113,31000,'2021-09-16',1,8),
(114,1000,'2021-09-16',3,5),
(115,3000,'2021-09-16',5,3),
(116,99,'2021-09-17',2,14);

insert into rating (RAT_ID,ORD_ID,RAT_RATSTARS) values
(1,101,4),
(2,102,3),
(3,103,1),
(4,104,2),
(5,105,4),
(6,106,3),
(7,107,4),
(8,108,4),
(9,109,3),
(10,110,5),
(11,111,3),
(12,112,4),
(13,113,2),
(14,114,1),
(15,115,1),
(16,116,0);

/* Display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000. */

select cus_gender,count(cus_id) as count from customer where cus_id in (select distinct  cus_id from orders where ord_amount >= 3000) group by cus_gender;

/* Display all the orders along with product name ordered by a customer having Customer_Id=2 */
select o.ord_id as order_id , p.pro_name as product_name from orders o join supplier_pricing sp on o.pricing_id = sp.pricing_id join product p on sp.pro_id = p.pro_id where o.cus_id = 2; 

/* Display the Supplier details who can supply more than one product.*/
select * from supplier where supp_id in (select  supp_id from supplier_pricing  group by supp_id having count(pro_id)>1) ;

/*  Display the Id and Name of the Product ordered after “2021-10-05”. */
select p.pro_id, p.pro_name from product p join supplier_pricing sp on p.pro_id = sp.pro_id join orders o on sp.pricing_id = o.pricing_id where o.ord_date > '2021-10-05';

/*  Display customer name and gender whose names start or end with character 'A'. */
select cus_name, cus_gender from customer where cus_name like 'A%' or cus_name like '%A';

/* Create a stored procedure to display supplier id, name, Rating(Average rating of all the products sold by every customer) and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”. Note that there should be one rating per supplier */
call procedureRating();

/* CREATE DEFINER=`root`@`localhost` PROCEDURE `procedureRating`()
BEGIN
select
        s.supp_id,
        s.supp_name,
        avg(r.rat_ratstars) as rating,
        case
            when avg(r.rat_ratstars) = 5 then 'Excellent Service'
            when avg(r.rat_ratstars) > 4 then 'Good Service'
            when avg(r.rat_ratstars) > 2 then 'Average Service'
            else 'Poor Service'
        end as type_of_service
    from
        supplier s
    left join
        supplier_pricing sp on s.supp_id = sp.supp_id
    left join
        orders o on sp.pricing_id = o.pricing_id
    left join
        rating r on o.ord_id = r.ord_id
    group by
        s.supp_id, s.supp_name;

END */









