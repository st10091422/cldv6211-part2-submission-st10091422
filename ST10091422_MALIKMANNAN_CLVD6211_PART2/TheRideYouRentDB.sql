--Question 1
USE master
IF EXISTS (SELECT * FROM Sys.databases WHERE name = 'Malik_1')
DROP DATABASE Malik_1
CREATE DATABASE Malik_1	
USE Malik_1

create table CarMake(
	CarMakeId int not null IDENTITY(1,1),
	[description] varchar(50) not null,
	primary key (carMakeId)
);

select * from CarMake;

create table CarBodyType(
	CarBodyTypeId int not null IDENTITY(1,1),
	[Description] varchar(50) not null,
	primary key (CarBodyTypeId)
);

select * from CarBodyType;

--question two
create table Car(
	CarId int IDENTITY(1,1) not null,
	CarNo varchar(20) not null,
	CarMakeId int not null,
	CarModel varchar(50) not null,
	CarBodyTypeId int not null,
	KilometresTravelled decimal(10, 2),
	serviceKilometres decimal (10, 2),
	Available varchar(50) not null,
	CONSTRAINT Car_pk PRIMARY KEY (
	CarId, CarNo),
	FOREIGN KEY(CarMakeId) REFERENCES CarMake(CarMakeId),
	FOREIGN KEY(CarBodyTypeId) REFERENCES CarBodyType(CarBodyTypeId)
);
select * from Car;




create table Driver(
	DriverId int IDENTITY(1,1) not null PRIMARY KEY,
	[FullName] varchar(50) not null,
	[Address] varchar(100) not null,
	Email varchar(50) not null,
	Mobile varchar(10) not null,
);


select * from Driver;



create table Inspector(
	InspectorId int IDENTITY(1,1) not null,
	InspectorNo varchar(20) not null,
	[FullName] varchar(50) not null,
	Email varchar(50) not null,
	Mobile varchar(10) not null,
	CONSTRAINT Inspector_pk PRIMARY KEY (InspectorId, InspectorNo)
);
select * from Inspector;



create table Rental(
	RentalId int IDENTITY(1,1) not null,
	CarNo varchar(20) not null,
	CarId int not null,
	InspectorNo varchar(20) not null,
	InspectorId int not null,
	DriverId int not null,
	RentalFee Decimal(20, 2) not null,
	StartDate Date not null,
	EndDate Date not null,
	CONSTRAINT Rental_pk PRIMARY KEY (
	RentalId),
	FOREIGN KEY (CarId, CarNo) REFERENCES Car(CarId, CarNo),
	FOREIGN KEY (InspectorId, InspectorNo) 
	REFERENCES Inspector(InspectorId, InspectorNo),
	FOREIGN KEY (DriverId) REFERENCES Driver(DriverId)
); 
select * from Rental;



create table [Return](
	ReturnId int IDENTITY(1,1) not null PRIMARY KEY,
	CarId int not null,
	CarNo varchar(20) not null,
	InspectorNo varchar(20) not null,
	InspectorId int not null,
	DriverId int not null,
	ReturnDate Date not null,
	ElapsedDate int not null,
	Fine Decimal(20, 2) not null,
	FOREIGN KEY (CarId, CarNo)REFERENCES Car(CarId, CarNo),
	FOREIGN KEY(InspectorId, InspectorNo) 
	REFERENCES Inspector(InspectorId, InspectorNo),
	FOREIGN KEY(DriverId) REFERENCES Driver(DriverId),
);

--question three

insert into CarMake(
	[description]
) values (
	 'Hyundai'
);

insert into CarMake(
	[description]
) values (
	 'BMW'
);

insert into CarMake(
	[description]
) values (
	'Mercedes Benz'
);

insert into CarMake(
	[description]
) values (
	'Toyota'
);

insert into CarMake(
	[description]
) values (
	'Ford'
);

select * from CarMake;

insert into CarBodyType(
	[description]
) values (
	 'Hatchback'
);

insert into CarBodyType(
	[description]
) values(
	 'Sedan'
);

insert into CarBodyType(
	[description]
) values(
	'Coupe'
);

insert into CarBodyType(
	[description]
) values(
	'SUV'
);

select * from CarBodyType;

--question four 
insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'HYU001',
	1,
	'Grand i10 1.0 Motion',
	1,
	1500, 
	15000,
	'Yes'
)

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'HYU002',
	1,
	'i20 1.2 Fluid',
	1,
	3000, 
	15000,
	'Yes'
);

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'BMW001',
	2,
	'320d 1.2',
	2,
	20000, 
	50000,
	'Yes'
);

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'BMW002',
	2,
	'240d 1.4',
	2,
	9500, 
	15000,
	'Yes'
);

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'TOY001',
	4,
	'Corolla 1.0',
	2,
	15000, 
	50000,
	'Yes'
);

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'TOY002',
	4,
	'Avanza 1.0',
	4,
	98000, 
	15000,
	'Yes'
);

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'TOY003',
	4,
	'Corolla Quest 1.0',
	2,
	15000, 
	50000,
	'Yes'
)

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'MER001',
	3,
	'c180',
	2,
	5200, 
	15000,
	'Yes'
);

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'MER002',
	3,
	'A200 Sedan',
	2,
	4080, 
	15000,
	'Yes'
);

insert into Car(
	CarNo,
	CarMakeId,
	CarModel,
	CarBodyTypeId,
	KilometresTravelled,
	ServiceKilometres,
	Available
) values(
	'FOR001',
	5,
	'Fiesta 1.0',
	2,
	7600, 
	15000,
	'Yes'
);
select * from Car;



--insert into Driver
insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values (
	'Gabrielle Clarke',
	'917 Heuvel St Botshabelo Free State 9781',
	'gorix10987@macauvpn.com',
	'0837113269'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Geoffrey Franklin',
	'1114 Dorp St Paarl Western Cape 7655',
	'noceti8743@drlatvia.com',
	'0847728052'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Fawn Cooke',
	'2158 Prospect St Garsfontein Gauteng 0042',
	'yegifav388@enamelme.com',
	'0821966584'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Darlene Peters',
	'2529 St John Street Somerset West Western 
	Cape 7110',
	'mayeka4267@macauvpn.com',
	'0841221244'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Vita Soto',
	'1474 Wolmarans St Sundra Mpumalanga 2200',
	'wegog55107@drlatvia.com',
	'0824567924'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Opal Rehbein',
	'697 Thutlwa St Letaba Limpopo 0870',
	'yiyow34505@enpaypal.com',
	'0826864938'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	
	'Vernon Hodgson',
	'1935 Thutlwa St Letsitele Limpopo 0885',
	'gifeh11935@enamelme.com',
	'0855991446'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Crispin Wheatly',
	'330 Sandown Rd Cape Town Western Cape 8018',
	'likon78255@macauvpn.com',
	'0838347945'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Melanie Cunningham',
	'616 Loop St Atlantis Western Cape 7350',
	'sehapeb835@macauvpn.com',
	'0827329001'
);

insert into Driver(
	[FullName],
	[Address],
	Email,
	Mobile
) values(
	'Kevin Peay',
	'814 Daffodil Dr Elliotdale Eastern Cape 5118',
	'xajic53991@enpaypal.com',
	'0832077149'
);
select * from Driver;

--insert into Inspector
insert into Inspector(
	InspectorNo,
	[FullName],
	Email,
	Mobile
) values (
	'I101',
	'Bud Barnes',
	'bud@therideyourent.com',
	'0821585359'
);

insert into Inspector(
	InspectorNo,
	[FullName],
	Email,
	Mobile
) values(
	'I102',
	'Tracy Reeves',
	'tracy@therideyourent.com',
	'0822889988'
);

insert into Inspector(
	InspectorNo,
	[FullName],
	Email,
	Mobile
) values(
	'I103',
	'Sandra Goodwin',
	'sandra@therideyourent.com',
	'0837695468'
);


insert into Inspector(
	InspectorNo,
	[FullName],
	Email,
	Mobile
) values(
	'I104',
	'Shannon Burke',
	'shannon@therideyourent.com',
	'0836802514'
);

select * from Inspector;





select * from Rental;

insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'HYU001', 1,'i101', 1, 1, 5000, '2021-08-30', '2021-08-31'
);


insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'HYU002', 2, 'i101', 1, 1, 5000, '2021-09-01', '2021-09-10'
);


insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'FOR001', 10, 'i101', 1, 2, 6500, '2021-09-01', '2021-09-10'
);


insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'BMW002', 4, 'i102', 2, 5, 7000, '2021-09-20', '2021-09-25'
);


insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'TOY002', 6, 'i102', 2, 4, 5000, '2021-10-03', '2021-10-31'
);

insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'MER002',  9, 'i103', 3, 4, 8000, '2021-10-05', '2021-10-15'
);

insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'HYU002', 2, 'i104', 4, 7, 5000, '2021-12-01', '2021-02-10'
);

insert into Rental(
	CarNo, CarId, InspectorNo, InspectorId, DriverId, RentalFee, StartDate, EndDate
)values(
	'TOY003', 7, 'i104', 4, 9, 5000, '2021-08-10', '2021-08-31'
);

select * from Rental;



--insert into return
select * from Car;
insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'HYU001', 1,'i101', 1, 1, '2021-08-31', 0, 0
);

insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'HYU002', 2, 'i101', 1, 1, '2021-09-10', 0, 0
);

insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'FOR001', 10, 'i101', 1, 2, '2021-09-10', 0, 0
);

insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'BMW002', 4, 'i102', 2, 5, '2021-09-30', 5, 2500
);

insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'TOY002', 6, 'i102', 2, 4, '2021-10-31', 2, 1000
);


insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'MER002', 9, 'i103', 3, 4, '2021-10-15', 1, 500
);

insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'HYU002', 2, 'i104', 4, 7, '2021-02-10', 0, 0
);

insert into [Return]
(CarNo, CarId, InspectorNo, InspectorId, DriverId, ReturnDate, ElapsedDate, Fine) 
values(
	'TOY003', 7, 'i104', 4, 9, '2021-09-10', 0, 0
);

--question five
select * from Rental 
where(StartDate >= '2021-08-01' and 
StartDate <= '2021-10-30');


--question six

SELECT * FROM Rental
WHERE RentalId = (
  SELECT RentalId FROM Inspector
  WHERE FullName = 'Bud Barnes');

  --question seven

  SELECT * FROM [Return] WHERE CarId=4;

  --question eight

  select COUNT(RentalId) from Rental
inner join car on car.CarNo = Rental.CarNo
inner join CarMake on Car.CarMakeId = CarMake.CarMakeId
where CarMake.[description] = 'Hyundai';

--question nine

UPDATE Car SET CarModel = 'Focus' WHERE CarNo = 'FOR001';

--question ten
select RentalId, a.CarNo, 
b.FullName as DriverName,
a.RentalFee, a.StartDate,
a.EndDate, c.Available from Rental as a
INNER JOIN Driver as b ON b.DriverId=a.DriverId
inner join car as c on c.CarNo = a.CarNo;



--question eleven 
select distinct CarMake.[description] as car from car 
inner join CarMake on Car.CarMakeId = CarMake.CarMakeId
where Available = 'Yes';


--question twelve 

SELECT * FROM car WHERE (serviceKilometres - KilometresTravelled) <= 9000;


--question thirteen


SELECT ReturnId, DriverId, DATEDIFF(day, 
[Return].ReturnDate, CAST(GETDATE() As Date)) + ElapsedDate as [date]
, (DATEDIFF(day, 
[Return].ReturnDate, CAST(GETDATE() As Date)) + ElapsedDate) * 500 
as fine
from [Return];