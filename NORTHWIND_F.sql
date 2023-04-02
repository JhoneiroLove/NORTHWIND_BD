CREATE TABLE Region(
        Region NUMBER(1) NOT NULL PRIMARY KEY, 
        RegionDescription varchar2(50) NOT NULL
);
insert into Region values (1, 'Eastern');
insert into Region values (2, 'western');
insert into Region values (3, 'Northern');
insert into Region values (4, 'Southern');       

CREATE TABLE Territories(
       TerritoryID varchar2(20) NOT NULL PRIMARY KEY,
       TerritoryDescription varchar2(50) NOT NULL,
       RegionID number(1) NOT NULL 
);
insert into Territories values ('01581','Westboro',1);
insert into Territories values ('01730','Bedford',1);
insert into Territories values ('01833','Georgetow',1);
insert into Territories values ('02116','Boston',1);
insert into Territories values ('02139','Cambridge',1);
insert into Territories values ('02184','Braintree',1);
insert into Territories values ('02903','Providence',1);
insert into Territories values ('03049','Hollis',3);
insert into Territories values ('03801','Portsmouth',3);
insert into Territories values ('06987','wilton',1);
insert into Territories values ('07960','Morristown',1);
insert into Territories values ('08837','Edison',1);
insert into Territories values ('10019','New York',1);
insert into Territories values ('10038','New York',1);
insert into Territories values ('11747','Mellvile',1);
insert into Territories values ('14450','Fairport',1);
insert into Territories values ('19428','Philadelphia',3);
insert into Territories values ('19713','Neward',1);
insert into Territories values ('20852','Rockville',1);
insert into Territories values ('27403','Greensboro',1);
insert into Territories values ('27511','Cary',1);
insert into Territories values ('29202','Columbia',4);
insert into Territories values ('30346','Atlanta',4);
insert into Territories values ('31406','Savannah',4);
insert into Territories values ('32859','Orlando',4);
       
CREATE TABLE Employees(
        EmployeesID number(3) NOT NULL PRIMARY KEY,
        LastName varchar2(20) NOT NULL,
        FIrstName varchar2(10) NOT NULL,
        Title varchar2(30)NULL,
        TitleOfCourtesy varchar2(25) NULL,
        BirthDate date NULL,
        HireDate date NULL,
        Addres varchar2(60) NULL,
        City varchar2(15) NULL,
        Region varchar2(15) NULL,
        PostalCode varchar2(10) NULL,
        Country varchar2(15) NULL,
        HomePhone varchar2(24) NULL,
        Extension varchar2(4) NULL,
        Photo blob NULL,
        Notes VARCHAR2(2000) NULL,
        ReportsIO number NULL,
        PhotoPath varchar2(255) NULL 
);
     
CREATE INDEX LastName ON Employees(LastName);
CREATE INDEX PostalCode ON Employees(PostalCode);

Insert into Employees(EmployeesID, LastName,FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Addres, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsIO) 
Values(1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', TO_DATE('08-12-68', 'DD-MM-YY'), TO_DATE('01-05-92', 'DD-MM-YY'), '507 - 20Th Ave. E.Apt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467','Education incluides a BA in psychology from Colorado State University. She also Completed "The Art of the Cold Call." Nancy is member of Toastmasters International.', 2);   
Insert into Employees(EmployeesID, LastName,FIrstName, Title, TitleOfCourtesy, BirthDate, HireDate, Addres, City, Region, PostalCode, Country, HomePhone, Extension, Notes, ReportsIO)
Values(2,'Fuller','Andrew','Vice President, Sales','Dr.',TO_DATE('19-02-52','DD/MM/YY'),TO_DATE('14-08-92','DD-MM-YY'),'908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',null);
Insert into Employees(EmployeesID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,Addres,City,Region,PostalCode,Country,HomePhone,Extension,Notes,ReportsIO) 
values(3,'Leverling','Janet','Sales Representative','Ms.',to_date('30-08-63','DD-MM-YY'),to_date('01-04-92','DD-MM-YY'),'722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355','Janet has a BS degree in chemistry from Boston College).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate and was promoted to sales representative.',2);
Insert into Employees(EmployeesID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,Addres,City,Region,PostalCode,Country,HomePhone,Extension,Notes,ReportsIO) 
values(4,'Peacock','Margaret','Sales Representative','Mrs.',to_date('19-09-58','DD-MM-YY'),to_date('03-05-93','DD-MM-YY'),'4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.',2);
Insert into Employees(EmployeesID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,Addres,City,Region,PostalCode,Country,HomePhone,Extension,Notes,ReportsIO) 
values(5,'Buchanan','Steven','Sales Manager','Mr.',to_date('04-03-55','DD-MM-YY'),to_date('17-10-93','DD-MM-YY'),'14 Garrett Hill','London',null,'SW1 8JR','UK','(71) 555-4848','3453','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree.  Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.',2);
Insert into Employees(EmployeesID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,Addres,City,Region,PostalCode,Country,HomePhone,Extension,Notes,ReportsIO) 
values(6,'Suyama','Michael','Sales Representative','Mr.',to_date('02-07-63','DD-MM-YY'),to_date('17-10-93','DD-MM-YY'),'Coventry House Miner Rd.','London',null,'EC2 7JR','UK','(71) 555-7773','428','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',5);
Insert into Employees(EmployeesID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,Addres,City,Region,PostalCode,Country,HomePhone,Extension,Notes,ReportsIO)
values(7,'King','Robert','Sales Representative','Mr.',to_date('29-05-60','DD-MM-YY'),to_date('02-01-94','DD-MM-YY'),'Edgeham Hollow Winchester Way','London',null,'RG1 9SP','UK','(71) 555-5598','465','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office.',5);
Insert into Employees(EmployeesID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,Addres,City,Region,PostalCode,Country,HomePhone,Extension,Notes,ReportsIO)
values(8,'Callahan','Laura','Inside Sales Coordinator','Ms.',to_date('09-01-58','DD-MM-YY'),to_date('05-03-94','DD-MM-YY'),'4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344','Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.',2);
Insert into Employees(EmployeesID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,Addres,City,Region,PostalCode,Country,HomePhone,Extension,Notes,ReportsIO) 
values(9,'Dodsworth','Anne','Sales Representative','Ms.',to_date('02-07-69','DD-MM-YY'),to_date('15-11-94','DD-MM-YY'),'7 Houndstooth Rd.','London',null,'WG2 7LT','UK','(71) 555-4444','452','Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.',5);

CREATE TABLE EmployeeTerritories(
        EmployeeID NUMBER(3) NOT NULL,
        TerritoryID varchar2(20) NOT NULL,
    CONSTRAINT PK_EmployeeTerritories PRIMARY KEY (EmployeeID, TerritoryID)
);
Insert into EmployeeTerritories values (1, '06897');
Insert into EmployeeTerritories values (1, '19713');
Insert into EmployeeTerritories values (2, '01581');
Insert into EmployeeTerritories values (2, '01730');
Insert into EmployeeTerritories values (2, '01833');
Insert into EmployeeTerritories values (2, '02116');
Insert into EmployeeTerritories values (2, '02139');
Insert into EmployeeTerritories values (2, '02184');
Insert into EmployeeTerritories values (2, '40222');
Insert into EmployeeTerritories values (3, '30346');
Insert into EmployeeTerritories values (3, '31406');
Insert into EmployeeTerritories values (3, '32859');
Insert into EmployeeTerritories values (3, '33607');
Insert into EmployeeTerritories values (4, '20852');
Insert into EmployeeTerritories values (4, '27403');   
    
CREATE TABLE Suppliers(
        SupplierID number(3) NOT NULL PRIMARY KEY,
        CompanyName varchar2(40) NOT NULL,
        ContactName varchar2(30) NULL,
        ContactTitle varchar2(30) NULL,
        Addres varchar2(60) NULL,
        City varchar2(15) NULL,
        Region varchar2(15) NULL,
        PostalCode varchar2(10) NULL,
        Country varchar2(15) NULL,
        Phone varchar2(24) NULL,
        Fax varchar2(24) NULL,
        HomePage varchar2(2000) NULL 
);
        
CREATE INDEX CompanyNameSuppl ON Suppliers(CompanyName);
CREATE INDEX PostalCodeSuppl ON Suppliers(PostalCode);

Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',null,'EC1 4SD','UK','(171) 555-2222',null,null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822',null,null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (3,'Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 SekimaiMusashino-shi','Tokyo',null,'100','Japan','(03) 3555-5011',null,null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra ','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',null,null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (6,'Mayumi''s','Mayumi Ohno','Marketing Representative','92 SetsukoChuo-ku','Osaka',null,'545','Japan','(06) 431-7877',null,null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St.Moonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588',null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (8,'Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','29 King''s Way','Manchester',null,'M14 GSD','UK','(161) 555-4448',null,null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (9,'PB Kn?ckebr?d AB','Lars Peterson','Sales Agent','Kaloadagatan 13','G?teborg',null,'S-345 67','Sweden ','031-987 65 43','031-987 65 91',null);
Insert into Suppliers (SupplierID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax,HomePage) 
values (10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av. das Americanas 12.890','S?o Paulo',null,'5442','Brazil','(11) 555 4640',null,null);

CREATE TABLE Categories(
        CategoryID number(1) NOT NULL PRIMARY KEY,
        CategoryName varchar2(15) NOT NULL,
        Description varchar2(2000) NULL,
        Picture blob NULL 
);
        
CREATE INDEX CategoryName ON Categories(CategoryName);

Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (1,'Beverages','Soft drinks, coffees, teas, beers, and ales',null);
Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings',null);
Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (3,'Confections','Desserts, candies, and sweet breads',null);
Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (4,'Dairy Products','Cheeses',null);
Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (5,'Grains/Cereals','Breads, crackers, pasta, and cereal',null);
Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (6,'Meat/Poultry','Prepared meats',null);
Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (7,'Produce','Dried fruit and bean curd',null);
Insert into Categories (CategoryID,CategoryName,Description,Picture) 
values (8,'Seafood','Seaweed and fish',null);

CREATE TABLE Products(
    ProductID number(3) NOT NULL PRIMARY KEY,
    ProductName varchar2(40) NOT NULL,
    SupplierID number(3) NULL,
    CategoryID number(1) NULL,
    QuantityPerUnit varchar2(20) NULL,
    UnitPrice number(10, 4) NULL,
    UnitsInStock number(10, 4)NULL,
    UnitsOnOrder number(10, 4)NULL,
    ReorderLevel number(10, 4)NULL,
    Discontinued number(1) NOT NULL,
    CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID)
    REFERENCES Categories (CategoryID),
    CONSTRAINT FK_Products_Suppliers FOREIGN KEY (SupplierID)
    REFERENCES Suppliers (SupplierID),
    CONSTRAINT CK_Products_UnitPrice CHECK (UnitPrice >= 0),
    CONSTRAINT CK_ReorderLevel CHECK (ReorderLevel >=0),
    CONSTRAINT CK_UnitsInStock CHECK (UnitsInStock >=0),
    CONSTRAINT CK_UnitsOnOrder CHECK (UnitsOnOrder >=0)  
);
    
CREATE INDEX CategoriesProducts ON Products(CategoryID);
CREATE INDEX ProductName ON Products(ProductName);
CREATE INDEX SupplierID ON Products(SupplierID);

Insert into Products (ProductID,ProductName ,SupplierID ,CategoryID ,QuantityPerUnit ,UnitPrice,UnitsInStock ,UnitsOnOrder,ReorderLevel ,Discontinued ) 
values (1,'Chai',1,1,'10 boxes x 20 bags',18,39,0,10,'0');
Insert into Products (ProductID,ProductName ,SupplierID ,CategoryID ,QuantityPerUnit ,UnitPrice,UnitsInStock ,UnitsOnOrder,ReorderLevel ,Discontinued ) 
values (2,'Chang',1,1,'24 - 12 oz bottles',19,17,40,25,'0');
Insert into Products (ProductID,ProductName ,SupplierID ,CategoryID ,QuantityPerUnit ,UnitPrice,UnitsInStock ,UnitsOnOrder,ReorderLevel ,Discontinued ) 
values (3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10,13,70,25,'0');
Insert into Products (ProductID,ProductName ,SupplierID ,CategoryID ,QuantityPerUnit ,UnitPrice,UnitsInStock ,UnitsOnOrder,ReorderLevel ,Discontinued ) 
values (4,'Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22,53,0,0,'0');
Insert into Products (ProductID,ProductName ,SupplierID ,CategoryID ,QuantityPerUnit ,UnitPrice,UnitsInStock ,UnitsOnOrder,ReorderLevel ,Discontinued ) 
values (5,'Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35,0,0,0,'1');

CREATE TABLE Customers(
    CustomerID varchar2(5) NOT NULL PRIMARY KEY,
    CompanyName varchar2(40) NOT NULL,
    ContactName varchar2(30) NULL,
    ContactTitle varchar2(30) NULL,
    Addres varchar2(60) NULL,
    City varchar2(15) NULL,
    Region varchar2(15) NULL,
    PostalCode varchar2(10) NULL,
    Country varchar2(15) NULL,
    Phone varchar(24) NULL,
    Fax varchar2(24) NULL 
);

CREATE INDEX City ON Customers(City);
CREATE INDEX CompanyName ON Customers(CompanyName);
CREATE INDEX PostalCodeCust ON Customers(PostalCode);

Insert into Customers (CustomerID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax) values (14,'Chop-suey Chinese','Yang Wang','Owner','Hauptstr. 29','Bern',null,'3012','Switzerland','0452-076545',null);
Insert into Customers (CustomerID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax) values (15,'Comercio Mineiro','Pedro Afonso','Sales Associate','Av. dos Lus?adas, 23','S?o Paulo','SP','05432-043','Brazil','(11) 555-7647',null);
Insert into Customers (CustomerID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax) values (9,'Bon app''','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille',null,'13008','France','91.24.45.40','91.24.45.41');
Insert into Customers (CustomerID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax) values (3,'Antonio Moreno Taquer?a','Antonio Moreno','Owner','Mataderos  2312','M?xico D.F.',null,'05023','Mexico','(5) 555-3932',null);
Insert into Customers (CustomerID,CompanyName,ContactName,ContactTitle,Addres,City,Region,PostalCode,Country,Phone,Fax) values (4,'Around the Horn','Thomas Hardy','Sales Representative','120 Hanover Sq.','London',null,'WA1 1DP','UK','(171) 555-7788','(171) 555-6750');

CREATE TABLE CustomerDemographics(
    CustomerTypeID char(10) NOT NULL PRIMARY KEY,
    CustomerDesc varchar2(4000) NULL 
);
Insert into CustomerDemographics (CustomerTypeID,CustomerDesc) 
values ('TT', 'jjjj');
Insert into CustomerDemographics (CustomerTypeID,CustomerDesc) 
values ('DD', 'jFFF');
Insert into CustomerDemographics (CustomerTypeID,CustomerDesc) 
values ('CC', 'GHHH');
Insert into CustomerDemographics (CustomerTypeID,CustomerDesc) 
values ('UU', 'IKKK');
Insert into CustomerDemographics (CustomerTypeID,CustomerDesc) 
values ('OO', 'QWWW');


CREATE TABLE CustomerCustomerDemo(
    CustomerID varchar2(5) NOT NULL,
    CustomerTypeID char(10) NOT NULL,
    CustomerDemoValue varchar2(30) NOT NULL,
    CONSTRAINT PK_CustomerCustomerDemo PRIMARY KEY (CustomerID, CustomerTypeID),
    CONSTRAINT FK_CustCustDemo_CustDemograp FOREIGN KEY (CustomerTypeID) REFERENCES CustomerDemographics(CustomerTypeID),
    CONSTRAINT FK_CustomerCustDemo_Customers FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID) 
);
drop table CustomerCustomerDemo;
Insert into CustomerCustomerDemo (CustomerID, CustomerTypeID, CustomerDemoValue) 
values (5, 'SAS',100); 

CREATE TABLE Shippers(
    ShipperID number(1) NOT NULL PRiMARY KEY,
    CompanyName varchar2(40) NOT NULL,
    phone varchar2 (24) NULL
);
Insert into Shippers (ShipperID,CompanyName,phone) values (1,'Speedy Express','(503) 555-9831');
Insert into Shippers (ShipperID,CompanyName,phone) values (2,'United Package','(503) 555-3199');
Insert into Shippers (ShipperID,CompanyName,phone) values (3,'Federal Shipping','(503) 555-9931');
Insert into Shippers (ShipperID,CompanyName,phone) values (4,'Mexic Shipping','(503) 555-5556');
Insert into Shippers (ShipperID,CompanyName,phone) values (5,'Peru Express','(503) 555-7778');

CREATE TABLE Orders(
    OrderID number(6) NOT NULL PRIMARY KEY,
    CustomerID varchar2(5) NULL,
    EmployeeID number(3) NULL,
    OrderDate DATE NULL,
    RequiredDate DATE NULL,
    ShippedDate DATE NULL,
    ShipVia number(1) NULL,
    Freight NUMBER(12, 4) NULL,
    ShipName varchar2(40) NULL,
    ShipAddress varchar2(60) NULL,
    ShipCity varchar2(15) NULL,
    ShipRegion varchar2(15) NULL,
    ShipPostalCode varchar2(10) NULL,
    ShipCountry varchar2(15) NULL,
    CONSTRAINT FK_Orders_Customers FOREIGN KEY(CustomerID) REFERENCES Customers (CustomerID),
    CONSTRAINT FK_Orders_Employees FOREIGN KEY(EmployeeID) REFERENCES Employees (EmployeesID),
    CONSTRAINT FK_Orders_Shippers FOREIGN KEY(ShipVia) REFERENCES Shippers (ShipperID)    
);

CREATE INDEX CustomersOrders ON Orders(CustomerID);
CREATE INDEX EmployeeID ON Orders(EmployeeID);

Insert into Orders (OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry) 
values (11058,6,9, to_date('29-04-98','DD-MM-YY'),to_date('27-05-98','DD-MM-YY'),null,3,31.14,'Blauer See Delikatessen','Forsterstr. 57','Mannheim',null,'68306','Germany');
Insert into Orders (OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry) 
values (11059,67,2,to_date('29-04-98','DD-MM-YY'),to_date('10-06-98','DD-MM-YY'),null,2,85.8,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
Insert into Orders (OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry) 
values (11060,27,2,to_date('30-04-98','DD-MM-YY'),to_date('28-05-98','DD-MM-YY'),to_date('04-05-98','DD-MM-YY'),2,10.98,'Franchi S.p.A.','Via Monte Bianco 34','Torino',null,'10100','Italy');
Insert into Orders (OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry) 
values (11061,32,4,to_date('30-04-98','DD-MM-YY'),to_date('11-06-98','DD-MM-YY'),null,3,14.01,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA');
Insert into Orders (OrderID,CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry) 
values (11062,66,4,to_date('30-04-98','DD-MM-YY'),to_date('28-05-98','DD-MM-YY'),null,2,29.93,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia',null,'42100','Italy');

CREATE TABLE Order_Details(
    OrderID number(6) NOT NULL,
    ProductID number(3) NOT NULL,
    UnitPrice number(10,4) NOT NULL,
    Quantity number(10,4) NOT NULL,
    Discount number(5,2) NOT NULL,
    CONSTRAINT PK_Order_Details PRIMARY KEY (OrderID, ProductID),
    CONSTRAINT FK_Order_Details_Orders FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
    CONSTRAINT FK_Order_Details_Products FOREIGN KEY(ProductID) REFERENCES Products (ProductID),
    CONSTRAINT CK_Discount CHECK (Discount >= 0 and (Discount <=1)),
    CONSTRAINT CK_Quantity CHECK (Quantity > 0),
    CONSTRAINT CK_UnitPrice CHECK (UnitPrice >=0)
);

create synonym "Order Details" for order_Details;
CREATE INDEX OrderID ON Order_Details(OrderID);
CREATE INDEX ProductID ON Order_Details(ProductID);


Insert into Order_Details (OrderID,ProductID ,UnitPrice ,Quantity ,Discount ) values (10997,46,12,20,0.25);
Insert into Order_Details (OrderID,ProductID ,UnitPrice ,Quantity ,Discount ) values (10997,52,7,20,0.25);
Insert into Order_Details (OrderID,ProductID ,UnitPrice ,Quantity ,Discount ) values (10998,24,4.5,12,0);
Insert into Order_Details (OrderID,ProductID ,UnitPrice ,Quantity ,Discount ) values (10998,61,28.5,7,0);
Insert into Order_Details (OrderID,ProductID ,UnitPrice ,Quantity ,Discount ) values (10998,74,10,20,0);

