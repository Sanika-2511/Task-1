# Task-1
In SQL, To create a table of students and courses &amp; maintain relationship between them.

# To perform thses task we need to create a database using command like
create database if not exists database_name;
# (here we created database -->stud)

# To use database
use database_name;

# create table of students using create keyword
create table table_name(
column_name data_type(size) constrant,.......);

# to create foreign key
foreign key(column) refrences table_name(refered_colum) on update cascade on delete cascade;

# to retrieve data
select * from table_name;

