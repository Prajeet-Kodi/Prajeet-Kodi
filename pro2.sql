create database pro2;
use pro2;
create table Customers(Customer_ID varchar(20)PRIMARY KEY ,Address_ID varchar(20) ,foreign key(Address_ID) references Addresses(Address_ID),Branch_ID varchar(20) ,foreign key(Branch_ID) references Branches(Branch_ID),Personal_Details varchar(30),Contact_Details varchar(40));
create table addresses(Address_ID varchar(20) PRIMARY KEY,Line1 varchar(20),Line2 varchar(20),Town_City varchar(20),Zip_Postcode varchar(40),State_Province_country varchar(20),Country varchar(20),Other_Details varchar(20));
create table Branches(Branch_ID varchar(20) PRIMARY KEY,Address_ID varchar(20) ,foreign key(Address_ID) references Addresses(Address_ID),Bank_ID varchar(20), foreign key(Bank_ID) references Banks(Bank_ID),Branch_Type_Code varchar (20) ,foreign key(Branch_Type_Code) references Ref_Branch_Types(Branch_Type_Code),Branch_Details varchar(20));
create table Banks(Bank_ID varchar(20) PRIMARY KEY,Bank_Details varchar(20));
create table Accounts(Account_Number varchar(20) PRIMARY KEY,Account_Status_Code varchar(30),FOREIGN KEY(Account_Status_Code) references Ref_Account_Status(Account_Status_Code),Account_Type_Code varchar(40) ,foreign key(Account_Type_Code) references Ref_Account_Types(Account_Type_Code),Customer_ID varchar(20), foreign key(Customer_ID) references Customers(Customer_ID),Current_Balance varchar(40),Other_Details varchar(20));
create table Ref_Branch_Types(Branch_Type_Code varchar(40) PRIMARY KEY,Branch_Type_Description varchar(40));
create table Ref_Transaction_Types(Transaction_Type_Code varchar(40) PRIMARY KEY,Transaction_Type_Description varchar(30));
create table Transactions(Transaction_ID varchar(40) PRIMARY KEY,Account_Number varchar(30) ,foreign key(Account_Number) references Accounts(Account_Number),Transaction_Type_Code varchar(40) ,foreign key(Transaction_Type_Code) references Ref_Transaction_Types(Transaction_Type_Code),Transaction_Date_Time varchar(60),Transaction_Amount int(30),Other_Details varchar(40));
create table Ref_Account_Status(Account_Status_Code varchar(40) PRIMARY KEY,Account_Status_Description varchar(30));
create table Ref_Account_Types(Account_Type_Code varchar(40) PRIMARY KEY,Account_Type_Description varchar(60));
create table Employee(Employee_ID int(20) primary key,Employee_Name varchar(255),Address_ID varchar(20) ,foreign key(Address_ID) references Addresses(Address_ID),DOB date,Branch_ID varchar(20),foreign key(Branch_ID) references Branches(Branch_ID),Designation char(20),salary float(10,2),DOJ date);
desc Employee;
insert into Transactions values('7P612','02345','40','2020-6-8 8:50',45000,'Ntg'),
('3T498','12786','42','2020-8-10 9:07',60000,'Ntg'),
('9I067','45780','44','2020-1-1 13:15',9000,'Ntg'),
('1Y675','04567','46','2020-10-17 17:56',4500,'Ntg'),
('6V843','09876','50','2020-12-12 15:45',10000,'Ntg');
insert into Ref_Account_Status values('05','Active'),
('11','Active'),
('99','Closed'),
('13','Closed'),
('61','Active');
insert into Ref_Transaction_Types values('40','Deposit'),
('42','withdrawl'),
('44','Deposit'),
('46','Withdrawl'),
('50','Deposit');
insert into Ref_Account_Types values ('1001','Savings'),
('4003','Current'),
('9034','Checking'),
('5070','Savings'),
('8041','Current');
insert into Ref_Branch_Types values ('469','Small Rural'),
('300','Large Urban'),
('415','Large Urban'),
('261','Small Rural'),
('173','Large Urban');
insert into  Banks values('1045','SBI'),
('2765','ICICI'),
('4312','UNION'),
('9705','AXIS'),
('2486','HDFC');
insert into Branches values 
('6676','532','2765','261','tenali branch'),
('2134','596','9705','469','vizag main branch'),
('0098','543','4312','300','vijayawada branch'),
('4453','542','1045','415','guntur  branch'),
('3321','522','2486','173',' hyderabad branch');
insert into Customers values('12345678','522','0098','Joy','9441786636'),
('78123456','532','4453','Mathew','9298765427'),
('56782341','542','4567','Smith','9089765443'),
('34519847','543','6676','Kareem','9078643561'),
('12389653','596','2134','Bobby','7890678954');
insert into Addresses values('522','4','4A','Tenali','522201','AP','India','Ntg'),
('532','1','1C','Guntur','522901','AP','India','Ntg'),
('542','5','5B','Sattenapalli','520936','AP','India','Ntg'),
('596','7','7C','Vijayawada','502345','AP','India','Ntg'),
('543','8','8F','Khammam','500091','Telangana','India','Ntg');
insert into Accounts values('02345','05','1001','12345678','25000','Ntg'),
('12786','11','4003','78123456','45000','Ntg'),
('45780','99','9034','56782341','200000','Ntg'),
('04567','13','5070','34519847','175000','Ntg'),
('09876','61','8041','12389653','4400','Ntg');
insert into Employee values
('642','Narendra','542','2012-05-17','4567','Manager','1000000','2021-01-01'),
('789','Akhilesh','532','1989-10-10','4453','Loan_Recovery_Agent','1223123','2001-11-23'),
('295','Vasu','532','2122-04-14','6676','Assistant_Manager','1232340','2231-01-09'),
('230','Vivek','542','2002-01-23','3321','Cashier','1234324','2021-12-19'),
('987','Prajaet','543','2012-02-12','2134','Accountant','100000','2021-04-02');
desc Employee;
select * from Banks;
select * from Customers;
select * from Accounts;
select * from Branches;
select * from Ref_Account_Types;
select * from Ref_Account_Status;
select * from  Ref_Branch_Types;
select * from Ref_Transaction_Types;
select * from Addresses;
select * from Transactions;
select * from Employee;
desc Transactions;
use pro2;
desc employee;
select * from employee;