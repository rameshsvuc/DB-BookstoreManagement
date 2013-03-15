DROP TABLE vendors CASCADE CONSTRAINTS;
DROP TABLE merchandise CASCADE CONSTRAINTS;
DROP TABLE vendor_payments CASCADE CONSTRAINTS;
DROP TABLE vendor_order CASCADE CONSTRAINTS;
--DROP TABLE vendor_order_contents CASCADE CONSTRAINTS;
DROP TABLE warehouse_contents CASCADE CONSTRAINTS;
--DROP TABLE customer_order_contents CASCADE CONSTRAINTS;
DROP TABLE customer_order CASCADE CONSTRAINTS;
DROP TABLE people cascade constraints;
DROP TABLE store cascade constraints;
DROP TABLE staff cascade constraints;
DROP TABLE customer cascade constraints;
DROP TABLE cust_payments cascade constraints;
DROP TABLE contracts  cascade constraints;

CREATE TABLE store(
id RAW (16) PRIMARY KEY,
short_name VARCHAR2(64) NOT NULL UNIQUE,
address VARCHAR2(128) NOT NULL
);

INSERT INTO store values (SYS_GUID(), 'Avent Ferry', '1 Avent Ferry Shopping Complex, Raleigh, NC');
INSERT INTO store values (SYS_GUID(), 'Hillsborough', '989 Hillsborough Street, Raleigh, NC');
INSERT INTO store values (SYS_GUID(), 'NewYork', 'Tower 1, Times Square,New York');
INSERT INTO store values (SYS_GUID(), 'California', '1007, Caltech shopping complex, California');
INSERT INTO store values (SYS_GUID(), 'Delhi', '219 Cannought Place, New Delhi, India');
INSERT INTO store values (SYS_GUID(), 'Books-A-Thousand-1', '219 Cannought Place, New Delhi, India');
INSERT INTO store values (SYS_GUID(), 'Books-A-Thousand-2', '219 Cannought Place, New Delhi, India');


CREATE TABLE people (
pid RAW(16) PRIMARY KEY,
name VARCHAR(64) NOT NULL,
ssn VARCHAR(20) UNIQUE,
gender VARCHAR2(64) NOT NULL,
address VARCHAR2(128) NOT NULL,
phone VARCHAR2(20),
date_of_birth DATE NOT NULL,
UNIQUE (name, phone)
);

/*
INSERT INTO people VALUES ( SYS_GUID(),'John', '1234567', 'Male', '123 CREST RD, RALEIGH, NC', '919-111-1111',TO_DATE('1985/01/01 16:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Joseph', '1234589', 'Male', '123 HILLS, RALEIGH, NC', '919-111-2222',TO_DATE('1981/01/01 16:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Michael', '1231234', 'Male', '123 AVENT FERRY RD, RALEIGH, NC', '222-333-1111',TO_DATE('1987/01/01 16:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Andy', '1253432', 'Male', 'MOUNT ABU, Rajesthan, India', '555-111-5555',TO_DATE('1984/01/01 16:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Jim', '1234789', 'Male', '1621 Times Square, Newyork', '444-222-3333',TO_DATE('1983/01/01 16:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Fodu', '1432123', 'Male', '23, Nai Sarak, Old Delhi, India', '555-666-7777',TO_DATE('1980/01/01 16:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Sam', '1238783', 'Male', '2838, Fernor Street, Allentown, PA', '666-444-2222',TO_DATE('1984/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Nick', '1432323', 'Male', '2312, Champion Court, Raleigh, NC', '764-234-1234',TO_DATE('1984/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Chotu', '1487623', 'Male', '1233, Champion Court, Raleigh, NC', '445-243-2112',TO_DATE('1984/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Christie' , '1568923', 'Female', '1233, Champion Court, Raleigh,NC', '445-243-2111',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Jack', '14212453', 'Male', '2512, Avery Close, Raleigh, NC', '445-243-9877',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Lucy' , '14323435', 'Female', '2512, Avery Close, Raleigh, NC', '445-243-9878',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Abraham' , '6433453', 'Female', '2512, Avery Close, Raleigh, NC', '445-243-9879',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Narla' , '9333453', 'Female', '2512, Avery Close, Raleigh, NC', '445-243-9880',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(),'Smith' , '8333453', 'Female', '2512, Avery Close, Raleigh, NC', '445-243-9881',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
*/
INSERT INTO people VALUES ( SYS_GUID(), 'Eddie Murphy' 	, '143234359', 'Male', '132 Red Street',	'430-324-0943',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Tiny Fey' 		, '64334539', 'Female', '111 Rose Dr.', 	'324-192-8765',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'George Carlin' 	, '93334539', 'Male', '54 Purple road', 	'129-430-3784',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Eddie Izzard' 	, '83334539', 'Male', '98 Jester Ct.', 		'774-398-3421',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Richard Pryor', '3234359', 'Male', '34 Pinewood st.', 	'102-394-3243',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Sam Kinison' 	, '334539', 'Male', '13 Oakland lane', 	'888-321-5843',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Karl Pilkington' 	, '444551323', 'Male', '13 Idiot Abroad', 	'514-323-1830',TO_DATE('1982/06/05 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));

/*
INSERT INTO people VALUES ( SYS_GUID(), 'Bob'	, '1432343599', 'Male',		'101 Russet St',	'392-82-1942',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Susie'	, '643345399', 'Female', 	'102 Golden Lane',	'292-81-8782',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Bill'	, '933345399', 'Male', 		'103 Sweet Ct', 	'122-02-1342',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO people VALUES ( SYS_GUID(), 'Beavis', '833345399', 'Male', 		'104 Mashed Road',	'735-82-1232',TO_DATE('1987/01/01 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
*/



CREATE TABLE staff (
pid RAW(16) PRIMARY KEY,
salary NUMBER,
job_title VARCHAR2(64) NOT NULL,
dept_name VARCHAR2(64) NOT NULL,
store_id RAW(16) NOT NULL,
CONSTRAINT staff_pid_fk
FOREIGN KEY (pid)
REFERENCES people(pid)
ON DELETE CASCADE,
CONSTRAINT staff_store_id_fk
FOREIGN KEY (store_id)
REFERENCES store(id)
ON DELETE CASCADE
);

INSERT INTO staff VALUES ((SELECT pid FROM people p WHERE p.Name= 'Eddie Murphy' 	 AND p.phone = '430-324-0943'),43000,'M-Unit-01', 'Management',  (SELECT id FROM store WHERE short_name ='Books-A-Thousand-1'));
INSERT INTO staff VALUES ((SELECT pid FROM people p WHERE p.Name= 'Tiny Fey' 		 AND p.phone = '324-192-8765'),40000,'M-Unit-02', 'Management',  (SELECT id FROM store WHERE short_name = 'Books-A-Thousand-1'));
INSERT INTO staff VALUES ((SELECT pid FROM people p WHERE p.Name= 'George Carlin' 	 AND p.phone = '129-430-3784'),30000,'S-Unit-01', 'Sales',  (SELECT id FROM store WHERE short_name =		 'Books-A-Thousand-1'));
INSERT INTO staff VALUES ((SELECT pid FROM people p WHERE p.Name= 'Eddie Izzard' 	 AND p.phone = '774-398-3421'),42000,'M-Unit-01', 'Management',(SELECT id FROM store WHERE short_name = 	 'Books-A-Thousand-2'));
INSERT INTO staff VALUES ((SELECT pid FROM people p WHERE p.Name= 'Richard Pryor' 	 AND p.phone = '102-394-3243'),29000,'S-Unit-01', 'Sales',  (SELECT id FROM store WHERE short_name = 	 'Books-A-Thousand-2'));
INSERT INTO staff VALUES ((SELECT pid FROM people p WHERE p.Name= 'Sam Kinison' 	 AND p.phone = '888-321-5843'),25000,'S-Unit-02', 'Sales',  (SELECT id FROM store WHERE short_name =      'Books-A-Thousand-2'));
INSERT INTO staff VALUES ((SELECT pid FROM people p WHERE p.Name= 'Karl Pilkington' 	 AND p.phone = '514-323-1830'),30000,'A-Unit-01', 'Accounts',  (SELECT id FROM store WHERE short_name =		 'Books-A-Thousand-1'));


CREATE TABLE customer (
pid RAW(16) PRIMARY KEY,
balance NUMBER DEFAULT 0 NOT NULL,
is_preferred_cust VARCHAR2(1),
CONSTRAINT customer_pid_fk
FOREIGN KEY (pid)
REFERENCES people(pid)
ON DELETE CASCADE
);


/*
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Sam' AND p.phone = '666-444-2222'), 0, 1);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Nick' AND p.phone = '764-234-1234'), 0, 1);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Chotu' AND p.phone = '445-243-2112'), 0, 0);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Jack' AND p.phone = '445-243-9877'), 0, 1);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Lucy' AND p.phone = '445-243-9878'), 0, 0);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Narla' AND p.phone = '445-243-9880'), 0, 1);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Bob'		AND p.phone = '392-82-1942'), 0, 0);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Susie'	AND p.phone = '292-81-8782'), 0, 1);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Bill'	AND p.phone = '122-02-1342'), 0, 0);
INSERT INTO customer VALUES ((SELECT pid FROM people p WHERE p.name = 'Beavis' 	AND p.phone = '735-82-1232'), 0, 1);
*/



CREATE TABLE vendors (
id RAW(16) PRIMARY KEY,
name VARCHAR2(64) NOT NULL UNIQUE,
address VARCHAR2(128),
phone_number VARCHAR2(20)
);


INSERT INTO vendors VALUES (SYS_GUID(), 'Harper Collins', '5126 Bur Oak Cir, Raleigh, NC', '919-666-7777');
INSERT INTO vendors VALUES (SYS_GUID(), 'Schiel and Denver', '5122 Bur Oak Cir, Raleigh, NC', '919-555-6666');
INSERT INTO vendors VALUES (SYS_GUID(), 'Random House', '3101 Hillsborough St, Raleigh, NC', '919-444-5555');
INSERT INTO vendors VALUES (SYS_GUID(), 'Ivy House', '3618 Cannold Ct, Raleigh, NC', '919-111-2222');
INSERT INTO vendors VALUES (SYS_GUID(), 'Turners Inc', 	'34 Page St','505-435-1029');
INSERT INTO vendors VALUES (SYS_GUID(), 'Print and Go', '432 Letter Lane','234-432-9485');

CREATE TABLE merchandise (
id RAW(16) PRIMARY KEY,
name VARCHAR2(64) NOT NULL UNIQUE,
author VARCHAR2(64) NOT NULL,
price NUMBER NOT NULL,
ISBN NUMBER,
vendor_id RAW(16),
CONSTRAINT mer_vendor_id_fk
FOREIGN KEY (vendor_id)
REFERENCES vendors (id)
ON DELETE CASCADE,
CONSTRAINT mer_pri_con
CHECK (price > 0)
);


INSERT INTO merchandise VALUES (SYS_GUID(), 'Sweet Tooth', 'Ian McEwan', '16.17', 							13241	, (SELECT id FROM vendors where name='Harper Collins'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Proof of Heaven', 'Eben Alexander', '9.35', 					13242	, (SELECT id FROM vendors where name='Harper Collins'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Dear Life: Stories', 'Alice Munro', '16.17', 					13243	, (SELECT id FROM vendors where name='Schiel and Denver'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'The Racketeer', 'John Grisham', '16.53', 						123455	, (SELECT id FROM vendors where name='Schiel and Denver'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Days of Blood and Starlight', 'Laini Taylor', 	'11.39',		123454  ,(SELECT id FROM vendors where name='Random House'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Cloud Atlas', 'David Mitchell', '8.78', 						123453	, (SELECT id FROM vendors where name='Random House'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Hallucinations', 'Oliver Sacks', '15.85', 						123452	, (SELECT id FROM vendors where name='Ivy House'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Gone Girl', 'Gillian Flynn', '13.94', 							123451	, (SELECT id FROM vendors where name='Ivy House'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Computer Networking'				,'Robert Hooke',725	,1234,(SELECT id FROM vendors where name='Random House'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Operating System Concepts'			,'Joe Bob',650		,1235, (SELECT id FROM vendors where name='Random House'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Database Design'					,'Arthur Fry',700	,1236, (SELECT id FROM vendors where name='Ivy House'));
INSERT INTO merchandise VALUES (SYS_GUID(), 'Taking over the world for dummies'	,'Bill Gates',5		,1237, (SELECT id FROM vendors where name='Ivy House'));




CREATE TABLE vendor_order (
id RAW(16) PRIMARY KEY,
status VARCHAR2(20) NOT NULL,
order_date DATE NOT NULL,
cost NUMBER NOT NULL,
vendor_id RAW(16),
mer_id RAW(16),
quantity NUMBER,
CONSTRAINT vendor_order_vendor_id_fk
FOREIGN KEY (vendor_id)
REFERENCES vendors (id)
ON DELETE CASCADE,
CONSTRAINT vendor_order_qtyy
CHECK (quantity>0),
CONSTRAINT mer_id_fky
FOREIGN KEY (mer_id)
REFERENCES merchandise (id)
ON DELETE CASCADE,
CONSTRAINT customer_order_status
CHECK (status='DELIVERED' OR status='CANCELLED' OR status='SHIPPED' OR status='NOT SHIPPED')
);

/*
INSERT INTO vendor_order VALUES (SYS_GUID(), 'NOT SHIPPED', TO_DATE('2012/10/01 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), '715', (SELECT id from vendors where name= 'Turners Inc') ,(SELECT id from merchandise WHERE ISBN=1234),10);
INSERT INTO vendor_order VALUES (SYS_GUID(), 'SHIPPED', 	TO_DATE('2012/10/01 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), '850', (SELECT id from vendors where name= 'Print and Go'),(SELECT id from merchandise WHERE ISBN=1235),12);
INSERT INTO vendor_order VALUES (SYS_GUID(), 'SHIPPED', 	TO_DATE('2012/10/01 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), '950', (SELECT id from vendors where name= 'Print and Go'),(SELECT id from merchandise WHERE ISBN=1236),6);
INSERT INTO vendor_order VALUES (SYS_GUID(), 'DELIVERED', 	TO_DATE('2012/10/01 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), '1050', (SELECT id from vendors where name='Turners Inc') ,(SELECT id from merchandise WHERE ISBN=1237),9);
*/

CREATE TABLE vendor_payments (
id RAW(16) PRIMARY KEY,
payment_date DATE NOT NULL,
amount NUMBER NOT NULL,
vendor_id RAW(16),
CONSTRAINT vendor_payments_vendor_id_fk
FOREIGN KEY (vendor_id)
REFERENCES vendors (id)
ON DELETE CASCADE,
CONSTRAINT ven_pay_amt_cons
CHECK (amount > 0)
);


/*
INSERT INTO vendor_payments VALUES (SYS_GUID(), TO_DATE('2011/10/01 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), '805', (SELECT id FROM vendors where name= 'Harper Collins'));
INSERT INTO vendor_payments VALUES (SYS_GUID(), TO_DATE('2011/11/01 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), '1600', (SELECT id FROM vendors where name='Harper Collins'));
INSERT INTO vendor_payments VALUES (SYS_GUID(), TO_DATE('2011/12/01 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), '2560', (SELECT id FROM vendors where name='Harper Collins'));
INSERT INTO vendor_payments VALUES (SYS_GUID(), TO_DATE('2012/01/01 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), '1750', (SELECT id FROM vendors where name='Harper Collins'));
INSERT INTO vendor_payments VALUES (SYS_GUID(), TO_DATE('2012/02/01 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), '350', (SELECT id FROM vendors where name= 'Harper Collins'));
INSERT INTO vendor_payments VALUES (SYS_GUID(), TO_DATE('2012/03/01 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), '455', (SELECT id FROM vendors where name= 'Harper Collins'));
INSERT INTO vendor_payments VALUES (SYS_GUID(), TO_DATE('2012/04/01 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), '1030', (SELECT id FROM vendors where name='Harper Collins'));
*/

CREATE TABLE warehouse_contents (
mer_id RAW(16),
selling_price VARCHAR2(64) NOT NULL,
qty_in_stock VARCHAR2(64) NOT NULL,
discount NUMBER,
CONSTRAINT mer_id_warehouse_contents_fk
FOREIGN KEY (mer_id)
REFERENCES merchandise (id)
ON DELETE CASCADE,
CONSTRAINT warehouse_order_contents_qty
CHECK (qty_in_stock >=0),
CONSTRAINT warehouse_order_contents_price
CHECK (selling_price >=0),
PRIMARY KEY(mer_id)
);

INSERT INTO warehouse_contents VALUES ((SELECT id from merchandise WHERE ISBN=1234), 725,7,0);
INSERT INTO warehouse_contents VALUES ((SELECT id from merchandise WHERE ISBN=1235), 650,10, 0);
INSERT INTO warehouse_contents VALUES ((SELECT id from merchandise WHERE ISBN=1236), 700, 6, 0);
INSERT INTO warehouse_contents VALUES ((SELECT id from merchandise WHERE ISBN=1237), 5, 6,0);

CREATE TABLE customer_order (
id RAW(16) PRIMARY KEY,
status VARCHAR2(20) NOT NULL,
order_date DATE NOT NULL,
sales_person_pid RAW(16) NOT NULL,
customer_pid RAW(16) NOT NULL,
quantity NUMBER,
mer_id RAW(16),
CONSTRAINT co_person_pid_fky
FOREIGN KEY (sales_person_pid )
REFERENCES people(pid)
ON DELETE CASCADE,
CONSTRAINT co_customer_pid_fky
FOREIGN KEY (customer_pid )
REFERENCES people(pid)
ON DELETE CASCADE,
CONSTRAINT customer_order_statusy
CHECK (status='DELIVERED' OR status='CANCELLED' OR status='SHIPPED' OR status='NOT SHIPPED'),
CONSTRAINT customer_quantityy
CHECK (quantity >0),
CONSTRAINT coc_mer_id_fky
FOREIGN KEY (mer_id)
REFERENCES merchandise (id)
);




/*
INSERT INTO customer_order VALUES (SYS_GUID(), 'NOT SHIPPED', (SELECT to_date(to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'),'yyyy/mm/dd hh24:mi:ss') FROM dual),(SELECT pid FROM people WHERE  name='Eddie Murphy' ),	(SELECT pid FROM people WHERE name='Bob'		),3,(SELECT id from merchandise WHERE ISBN=1234));
INSERT INTO customer_order VALUES (SYS_GUID(), 'NOT SHIPPED', (SELECT to_date(to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'),'yyyy/mm/dd hh24:mi:ss') FROM dual),(SELECT pid FROM people WHERE  name='Eddie Izzard' ),	(SELECT pid FROM people WHERE name='Susie'		),2,(SELECT id from merchandise WHERE ISBN=1235));
INSERT INTO customer_order VALUES (SYS_GUID(), 'NOT SHIPPED', (SELECT to_date(to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'),'yyyy/mm/dd hh24:mi:ss') FROM dual),(SELECT pid FROM people WHERE name='Tiny Fey'	 ),	(SELECT pid FROM people WHERE name='Beavis'		),1,(SELECT id from merchandise WHERE ISBN=1237));
INSERT INTO customer_order VALUES (SYS_GUID(), 'NOT SHIPPED',(SELECT to_date(to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'),'yyyy/mm/dd hh24:mi:ss') FROM dual),(SELECT pid FROM people WHERE  name='Tiny Fey' 	 ),	(SELECT pid FROM people WHERE name='Bill'		),2,(SELECT id from merchandise WHERE ISBN=1237));
*/


CREATE TABLE cust_payments(
id RAW(16) PRIMARY KEY,
cust_id RAW(16) NOT NULL,
payment_amount NUMBER DEFAULT 0,
payment_date DATE DEFAULT sysdate ,
CONSTRAINT payments_pid_fk
FOREIGN KEY (cust_id)
REFERENCES customer(pid)
ON DELETE CASCADE
);


/*
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Chotu' AND p.phone = '445-243-2112'), 0, TO_DATE('2012/03/04 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Chotu' AND p.phone = '445-243-2112'), 0, TO_DATE('2012/04/05 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Lucy' AND  p.phone = '445-243-9878'), 0, TO_DATE('2012/05/06 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Lucy' AND  p.phone = '445-243-9878'), 0, TO_DATE('2012/02/07 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Lucy' AND  p.phone = '445-243-9878'), 0, TO_DATE('2012/03/08 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Bob' AND  p.phone = '392-82-1942'), 50, TO_DATE('2012/05/06 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Bob' AND  p.phone = '392-82-1942'), 60, TO_DATE('2012/02/07 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Bob' AND  p.phone = '392-82-1942'), 70, TO_DATE('2012/03/08 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO cust_payments VALUES (SYS_GUID(), (SELECT pid FROM people p WHERE p.name = 'Bob' AND  p.phone = '392-82-1942'), 70, TO_DATE('2012/05/11 01:01:00', 'yyyy/mm/dd hh24:mi:ss'));
*/

create Table Contracts (
contractID RAW(16),
startDate DATE NOT NULL,
endDate DATE NOT NULL,
vendorID RAW (16),
CONSTRAINT cont_vendorid_fkyy
FOREIGN KEY (vendorID)
REFERENCES vendors(id)
ON DELETE CASCADE
);


INSERT INTO Contracts VALUES (SYS_GUID(),'10-JAN-12','1-JUN-12',(select id FROM vendors where name='Turners Inc') );
INSERT INTO Contracts VALUES (SYS_GUID(),'20-MAR-12','20-SEP-12',(select id FROM vendors where name='Print and Go') );