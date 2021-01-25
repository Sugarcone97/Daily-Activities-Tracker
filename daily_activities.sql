CREATE DATABASE daily_activities
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE daily_activities;

CREATE TABLE activitytypes (
  id int not NULL AUTO_INCREMENT PRIMARY KEY,
  activityname varchar(40) NOT NULL UNIQUE,
  activitytype varchar(40) NOT NULL);

INSERT INTO activitytypes(activityname, activitytype)
  VALUES ('Basketball', 'Sport'),
         ('Football', 'Sport'),
         ('Tennis', 'Sport'),
         ('Piano', 'Music'),
         ('Guitar', 'Music'),
         ('Drums', 'Music'),
         ('Drawing', 'Art'),
         ('Painting', 'Art'),
         ('Sculpting', 'Art');

CREATE TABLE dailydata (
  id int not NULL AUTO_INCREMENT PRIMARY KEY,
  activityid int not NULL,
  startdate datetime,
  enddate datetime,
  comment varchar(100) NOT NULL,
  CONSTRAINT fk_dailydata_activityid FOREIGN key (activityid)
    REFERENCES activitytypes (id)
);
