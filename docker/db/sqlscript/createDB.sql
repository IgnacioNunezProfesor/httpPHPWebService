
drop database if exists moodledb; 
create database moodledb;  
use moodledb;

drop user if exists 'moodleuser'@'localhost'; 
create user 'moodleuser'@'localhost' identified by '1234'; 

grant select, delete, insert, update on `moodledb`.* to 'moodleuser'@'localhost';