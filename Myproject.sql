-- Create the SWAC FOOTBALL TEAMS database
CREATE DATABASE FootballDatabase;

-- Switch to the database
USE FootballDatabase;

-- Create the SWAC FOOTBALL TEAMS table
CREATE TABLE `SWAC FOOTBALL TEAMS` (
    TeamID INT PRIMARY KEY AUTO_INCREMENT,
    TeamName VARCHAR(100),
    Mascot VARCHAR(100),
    CoachName VARCHAR(100),
    Record VARCHAR(10),
    City VARCHAR(100),
    StadiumName VARCHAR(100)
);

-- Create the Games table first
CREATE TABLE `Games` (
    `GameID` INT(11) NOT NULL,
    `HomeTeamID` INT(11),
    `AwayTeamID` INT(11),
    `DatePlayed` DATE,
    `Result` VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (`GameID`),
    FOREIGN KEY (`HomeTeamID`) REFERENCES `SWAC FOOTBALL TEAMS` (`TeamID`),
    FOREIGN KEY (`AwayTeamID`) REFERENCES `SWAC FOOTBALL TEAMS` (`TeamID`)
);

-- Create the Players table
CREATE TABLE `Players` (
    `PlayerID` INT(11) NOT NULL,
    `FirstName` VARCHAR(100) DEFAULT NULL,
    `LastName` VARCHAR(100) DEFAULT NULL,
    `Position` VARCHAR(50) DEFAULT NULL,
    `Height` VARCHAR(10) DEFAULT NULL,
    `Weight` VARCHAR(10) DEFAULT NULL,
    `CollegeID` INT(11),
    `TeamID` INT(11),
    PRIMARY KEY (`PlayerID`),
    FOREIGN KEY (`TeamID`) REFERENCES `SWAC FOOTBALL TEAMS` (`TeamID`)
);

-- Create the CollegeStatistics table
CREATE TABLE `CollegeStatistics` (
    `StatID` INT(11) NOT NULL,
    `TeamID` INT(11),
    `GameID` INT(11),
    `Off_YardsGained` INT(11) DEFAULT NULL,
    `Off_Touchdowns` INT(11) DEFAULT NULL,
    `Def_Sacks` INT(11) DEFAULT NULL,
    `Def_Intercepts` INT(11) DEFAULT NULL,
    PRIMARY KEY (`StatID`),
    FOREIGN KEY (`TeamID`) REFERENCES `SWAC FOOTBALL TEAMS` (`TeamID`),
    FOREIGN KEY (`GameID`) REFERENCES `Games` (`GameID`)
);

-- Insert data for Prairie View A&M
INSERT INTO `SWAC FOOTBALL TEAMS` (TeamName, Mascot, CoachName, Record, City, StadiumName)
VALUES ('Prairie View A&M', 'Panthers', 'Bubba McDowell', '3-1', 'Prairie View', 'Panther Stadium');

-- Insert data for Jackson State University
INSERT INTO `SWAC FOOTBALL TEAMS` (TeamName, Mascot, CoachName, Record, City, StadiumName)
VALUES ('Jackson State University', 'Tigers', 'Thomas Taylor', '3-2', 'Jackson State', 'JSU Stadium');

-- Insert data for Southern University A&M
INSERT INTO `SWAC FOOTBALL TEAMS` (TeamName, Mascot, CoachName, Record, City, StadiumName)
VALUES ('Southern University A&M', 'Jaguars', 'Eric Dooley', '2-3', 'Southern University', 'A.W. Mumford Stadium');

-- Insert data for Florida A&M University
INSERT INTO `SWAC FOOTBALL TEAMS` (TeamName, Mascot, CoachName, Record, City, StadiumName)
VALUES ('Florida A&M University', 'Rattlers', 'Willie Simmons', '4-0', 'Tallahassee', 'Bragg Memorial Stadium');

-- Insert data for Grambling State
INSERT INTO `SWAC FOOTBALL TEAMS` (TeamName, Mascot, CoachName, Record, City, StadiumName)
VALUES ('Grambling State', 'Tigers', 'Hugh Jackson', '2-1', 'Grambling', 'Eddie G Robinson Memorial Stadium');
