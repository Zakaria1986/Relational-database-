

DROP database staff1;

CREATE DATABASE staff1;

USE staff1; 


CREATE TABLE officeStaff(
repId int NOT NULL AUTO_INCREMENT, 
firstName varchar(100),
lastName varchar(100),
jobTitle varchar(150),
PRIMARY KEY (repId)
);

CREATE TABLE customers(
customerId int NOT NULL AUTO_INCREMENT,
firstName varchar(100), 
lastName varchar(100),
address varchar (150),
city varchar (50),
PRIMARY KEY (customerId));

CREATE TABLE projects(
projectId int NOT NULL AUTO_INCREMENT,
startDate date,
endDate date, 
repId int,
customerId int,
PRIMARY KEY (projectId)

  );