create table delivery_table
(
tacking_number number(16) primary key,
order_id nvarchar2(20) not null,
delivery_company_id nvarchar2(20) not null,
delivery_person_name nvarchar2(20) not null,
delivery_person_phone nvarchar2(20) not null
);

create table delivery_company_table
(
delivery_company_id nvarchar2(20) primary key,
company_name nvarchar2(20) not null,
company_phone nvarchar2(20) not null,
compnay_address nvarchar2(20) not null,
installation_available nvarchar2(20) not null,
business_number nvarchar2(20) not null
);

create table event_table
(
event_id nvarchar2(20) primary key,
event_name nvarchar2(20) not null,
event_contents nvarchar2(20) not null,
start_date date,
end_date date
);

create table category_event_table
(
c_event_seq int primary key,
category_id nvarchar2(20) not null,
event_id nvarchar2(20) not null
);

create table product_event_table
(
p_event_seq int primary key,
product_id nvarchar2(20) not null,
event_id nvarchar2(20) not null
);

create table agency_event_table
(
a_event_seq int primary key,
agency_id nvarchar2(20) not null,
event_id nvarchar2(20) not null
);

create table usable_hub_table
(
info_seq int primary key,
agency_id nvarchar2(20) not null,
hub_id nvarchar2(20) not null,
distance number(10,2) not null
);

create table hub_table
(
hub_id nvarchar2(20) primary key,
hub_name nvarchar2(20) not null,
hub_phone nvarchar2(20) not null,
hub_address nvarchar2(20) not null
);

create table product_table
(
product_id nvarchar2(20) primary key,
product_name nvarchar2(20) not null,
product_price int not null,
product_category nvarchar2(20) not null,
is_required_installation nvarchar2(20) not null,
weight int not null,
height int not null,
width int not null,
depth int not null
);

create table category_table
(
product_category nvarchar2(20) primary key,
category_name nvarchar2(20) not null,
category_level nvarchar2(20) not null
);

create table agency_table
(
agency_id nvarchar2(20) primary key,
business_number nvarchar2(20) not null,
agency_name nvarchar2(20) not null,
agency_phone nvarchar2(20) not null,
agency_address nvarchar2(20) not null,
manager_id nvarchar2(20) not null
);

create table manager_table
(
manager_id nvarchar2(20) primary key,
manager_name nvarchar2(20) not null,
manager_phone nvarchar2(20) not null,
manager_address nvarchar2(20) not null,
manager_position nvarchar2(20) not null
);

create table stock_table
(
stock_seq nvarchar2(20) primary key,
product_id nvarchar2(20) not null,
hub_id nvarchar2(20) not null,
stock_quantity int not null
);

create table customer_table
(
customer_id nvarchar2(20) primary key,
customer_name nvarchar2(20) not null,
customer_phone nvarchar2(20) not null,
customer_address nvarchar2(20) not null,
delivery_address nvarchar2(20)
);

create table payment_table
(
payment_id nvarchar2(20) primary key,
customer_id nvarchar2(20) not null,
payment_type nvarchar2(20) not null,
paid_amnount nvarchar2(20) not null
);

create table cart_table
(
cart_weq nvarchar2(20) primary key,
customer_id nvarchar2(20) not null,
product_id nvarchar2(20) not null,
quantity int not null,
selected nvarchar2(20) not null
);

create table order_table
(
order_id nvarchar2(20) primary key,
customer_id nvarchar2(20) not null,
total_price int not null,
order_status nvarchar2(20) not null,
payment_id nvarchar2(20),
order_datetime date not null
);

create table order_confirm_table
(
order_confirm_id nvarchar2(20) primary key,
product_id nvarchar2(20) not null,
order_id nvarchar2(20) not null,
quantity int not null
);
