create table dim_customer(
cust_sk int primary key identity(1,1),
custid_bk int,
fname varchar(200),
lname varchar(200),
email varchar(300),
st_date date,
end_date date,
is_current varchar(3),
SSC varchar(10)
)

create table dim_address(
add_sk int primary key identity(1,1),
addid_bk int,
streetNo varchar(10),
streetName varchar(200),
city varchar(100),
countryid_bk int,
country varchar(200),
st_date date,
end_date date,
is_current varchar(3),
SSC varchar(10)
)

create table dim_add_status(
status_sk int primary key identity(1,1),
statusId_bk int,
add_status varchar(30),
st_date date,
end_date date,
is_current varchar(3),
SSC varchar(10)
)

create table dim_cust_address(
cust_id int,
add_id int,
status_id int,
st_date date,
end_date date,
is_current varchar(3),
SSC varchar(10),
primary key( cust_id,add_id),
foreign key (cust_id) references dim_customer(cust_sk),
foreign key (add_id) references dim_address(add_sk),
foreign key (status_id) references dim_add_status(status_sk)
)

create table dim_book(
book_sk int primary key identity(1,1),
bookId_bk int,
title varchar(400),
no_pages int,
publication_date date,
publisherId_bk int,
publisher_name varchar(1000),
langId_bk int,
lang_code varchar(8),
lang_name varchar(50),
st_date date,
end_date date,
is_current varchar(3),
SSC varchar(10)
)

create table dim_author(
author_sk int primary key identity(1,1),
authorId_bk int,
name varchar(400),
st_date date,
end_date date,
is_current varchar(3),
SSC varchar(10)
)

create table dim_book_author(
book_Id int ,
author_Id int,
primary key( book_Id,author_Id),
foreign key (book_Id) references dim_book(book_sk),
foreign key (author_Id) references dim_author(author_sk)
)

create table dim_cust_order(
order_sk int primary key identity(1,1),
orderId_bk int,
order_date date,
methodId_bk int,
method_name varchar(100),
st_date date,
end_date date,
is_current varchar(3),
SSC varchar(10)
)

create table dim_order_history(
history_id int primary key identity(1,1),
order_id int,
status_id int,
status_date date,
foreign key(order_id) references dim_cust_order(order_sk),
foreign key(status_id) references dim_order_status(status_sk)
)

create table dim_order_status(
status_sk int primary key identity(1,1),
statusId_bk int,
status_value varchar(20)
)

create table fact_order_line (
sales_fact_SK int primary key identity(1,1),
date_sk_fk int,
cust_sk_fk int,
book_sk_fk int,
order_sk_fk int,
price decimal(5,2),
cost_shipping decimal(6,2),
foreign key(cust_sk_fk) references dim_customer(cust_sk),
foreign key(book_sk_fk) references dim_book(book_sk),
foreign key(date_sk_fk) references DimDate(dateSK),
foreign key(order_sk_fk) references dim_cust_order(order_sk)
)