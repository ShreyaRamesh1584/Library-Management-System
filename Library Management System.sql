--Library Management System 
--Creation of Tables 

create table LMS_membership
(member_id varchar(50) not null,
member_name varchar(100) not null,
city varchar(50),
date_register date not null,
date_expire date not null,
membership_status char(50) not null,
primary key(member_id)
);

create table LMS_supplier_details
(supplier_id varchar(5) not null,
supplier_name varchar(20) not null,
Address varchar(80) not null,
contact bigint not null,
email varchar(100),
primary key(supplier_id)
);

create table LMS_fine_details
(fine_range varchar(3) not null,
fine_amount float not null,
primary key (fine_range)
);

create table LMS_booksdetails
(book_code varchar(10) not null,
book_name varchar(50) not null,
category varchar(20) not null,
author varchar(50) not null,
publication varchar(50) not null,
publish_date date not null,
Book_edition int not null,
Price float not null,
Rack_Num varchar(20) not null,
Date_arrival date not null,
supplier_id varchar(5) not null,
Primary key(book_code),
foreign key(supplier_id) references LMS_supplier_details
);

create table LMS_book_issue
(book_issue_no int not null,
member_id varchar(50) not null,
book_code varchar(10) not null,
date_issue date not null,
date_return date not null,
date_returned date not null,
fine_range varchar(3) not null,
primary key(book_issue_no),
foreign key(member_id) references LMS_membership,
foreign key(book_code) references LMS_booksdetails,
foreign key(fine_range) references LMS_fine_details
);


--inserting values into tables 
Insert into LMS_membership
Values('LM001', 'AMIT', 'CHENNAI', '2012-02-12', '2013-02-11','Temporary');
Insert into LMS_membership
Values('LM002', 'ABDHUL', 'DELHI', '2012-04-10', '2013-04-09','Temporary');
Insert into LMS_membership
Values('LM003', 'GAYAN', 'CHENNAI', '2012-05-13','2013-05-12', 'Permanent');
Insert into LMS_membership
Values('LM004', 'RADHA', 'CHENNAI', '2012-04-22', '2013-04-21', 'Temporary');
Insert into LMS_membership
Values('LM005', 'GURU', 'BANGALORE', '2012-03-30', '2013-05-16','Temporary');
Insert into LMS_membership
Values('LM006', 'MOHAN', 'CHENNAI', '2012-04-12', '2013-05-16','Temporary');


Insert into  LMS_supplier_details
Values ('S01','SINGAPORE SHOPPEE', 'CHENNAI', 9894123555,'sing@gmail.com');
Insert into  LMS_supplier_details
Values ('S02','JK Stores', 'MUMBAI', 9940123450 ,'jks@yahoo.com');
Insert into  LMS_supplier_details
Values ('S03','ROSE BOOK STORE', 'TRIVANDRUM', 9444411222,'rose@gmail.com');
Insert into  LMS_supplier_details
Values ('S04','KAVARI STORE', 'DELHI', 8630001452,'kavi@redif.com');
Insert into  LMS_supplier_details
Values ('S05','EINSTEN BOOK GALLARY', 'US', 9542000001,'eingal@aol.com');
Insert into  LMS_supplier_details
Values ('S06','AKBAR STORE', 'MUMBAI',7855623100 ,'akbakst@aol.com');


Insert into LMS_fine_details Values('R0', 0);
Insert into LMS_fine_details Values('R1', 20);
insert into LMS_fine_details Values('R2', 50);
Insert into LMS_fine_details Values('R3', 75);
Insert into LMS_fine_details Values('R4', 100);
Insert into LMS_fine_details Values('R5', 150);
Insert into LMS_fine_details Values('R6', 200);


Insert into LMS_booksdetails
Values('BL000001', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel', 'Prentice Hall', '1999-12-10', 6, 600.00, 'A1', '2011-05-10', 'S01');
Insert into LMS_booksdetails
Values('BL000002', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt',  'Tata Mcgraw Hill ', '2011-10-10', 5, 750.00, 'A1', '2011-05-10', 'S03');
Insert into LMS_booksdetails
Values('BL000003', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel', 'Prentice Hall', '1999-05-10', 6, 600.00, 'A1', '2012-05-10', 'S01');
Insert into LMS_booksdetails
Values('BL000004', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt', 'Tata Mcgraw Hill ', '2011-10-10', 5, 750.00, 'A1', '2012-05-11', 'S01');
Insert into LMS_booksdetails
Values('BL000005', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',  'Prentice Hall', '1999-12-10', 6, 600.00, 'A1', '2012-05-11', 'S01');
Insert into LMS_booksdetails
Values('BL000006', 'Java: The Complete Reference ', 'JAVA', 'Herbert Schildt', 'Tata Mcgraw Hill ', '2011-10-10', 5, 750.00, 'A1', '2012-05-12', 'S03');
Insert into LMS_booksdetails
Values('BL000007', 'Let Us C', 'C', 'Yashavant Kanetkar ', 'BPB Publications', '2010-12-11',  9, 500.00 , 'A3', '2010-11-03', 'S03');
Insert into LMS_booksdetails 
Values('BL000008', 'Let Us C', 'C', 'Yashavant Kanetkar ','BPB Publications', '2010-05-12',  9, 500.00 , 'A3', '2011-08-09', 'S04');


Insert into LMS_book_issue
Values (001, 'LM001', 'BL000001', '2012-05-01', '2012-05-16', '2012-05-16', 'R0');
Insert into LMS_book_issue
Values (002, 'LM002', 'BL000002', '2012-05-01', '2012-05-06','2012-05-16', 'R2');
Insert into LMS_book_issue
Values (003, 'LM003', 'BL000007', '2012-04-01', '2012-04-16', '2012-04-20','R1');
Insert into LMS_book_issue
Values (004, 'LM004', 'BL000005', '2012-04-01', '2012-04-16','2012-04-20', 'R1');
Insert into LMS_book_issue
Values (005, 'LM005', 'BL000008', '2012-03-30', '2012-04-15','2012-04-20' , 'R1');
Insert into LMS_book_issue
Values (006, 'LM005', 'BL000008', '2012-04-20', '2012-05-05','2012-05-05' , 'R0');
Insert into LMS_book_issue
Values (007, 'LM003', 'BL000007', '2012-04-22', '2012-05-07','2012-05-25' , 'R4');


--Write a query to display the member id, member name, city and membership status who are all having life time membership. 
select *
from LMS_membership
where membership_status='permanent'

--Write a query to display the book code, publication, price and supplier name of the book witch is taken frequently.
With NewTable (book_code, publication, price, supplier_name, book_issue_no)
as
(
select c.book_code, b.publication, b.price, a.supplier_name, c.book_issue_no
from LMS_supplier_details a
right join LMS_booksdetails b
on a.supplier_id=b.supplier_id
right join LMS_book_issue c
on b.book_code=c.book_code 
)
select book_code, publication, price, supplier_name
from NewTable
where book_issue_no = (SELECT MAX(book_issue_no) FROM LMS_book_issue)


--Write a query to display the member id, member name who have taken the book with book code ‘BL000008’ or ‘BL000007’ 
With NewTable2 (member_id, member_name, book_code)
as
(
select a.member_id, a.member_name, b.book_code
from LMS_membership a
right join LMS_book_issue b
	on a.member_id=b.member_id
)
select member_id, member_name
from NewTable2 
where book_code='BL000008' or book_code='BL000007'


--Write a query to display the member id, member name, date of registration and expiry date of the members whose membership expiry date is before APR 2013
select member_id, member_name, date_register, date_expire
from LMS_membership
where date_expire <= '2013-04-01'

