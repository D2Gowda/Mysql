There are four different type of SQL Commands
1) DDL(Data Definition Language)
2) DML(Data Manipulation Language)
3) DQL(Data Query Language)
4) DCL(Data Control Language)

Here are some commands that come under DDL:
-> CREATE
-> DROP
-> ALTER
-> TRUNCATE
-> RENAME

a) CREATE: It is used to create a new table in the database
   syntax to create Database:
   -> CREATE DATABASE Database_Name;
      ex:
      -> CREATE DATABASE github;
   
   syntax to create  a new table:
   -> CREATE TABLE Table_Name(
      Column_name1 data_type(SIZE),
      Column_name2 data_type(SIZE),
      Column_name2 data_type(SIZE),
      Column_name3 data_type(SIZE)
      );
      ex:
      -> CREATE TABLE student(
         ID int primary key,
         Name varchar(100),
         Dept Varchar(20),
         Phone_Number int
         );

   syntax

b) DROP: It is used to delete both the structure and record stored in the table

c) ALTER: It is used to alter the structure of the database. This change could be either to modify the characteristics of an existing attribute or probably to add a new attribute.
   synatx to add newfield in the table:
   -> ALTER TABLE Table_Name add Column_name [data_type(SIZE)]
       ex:
       ALTER TABLE add 

d) TRUNCATE: 