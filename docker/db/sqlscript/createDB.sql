
drop database if exists moodledb; 
create database moodledb;  
use moodledb;

drop user if exists 'moodleuser'@'%'; 
create user 'moodleuser'@'%' identified by '1234'; 

grant all privileges on `moodledb`.* to 'moodleuser'@'%';