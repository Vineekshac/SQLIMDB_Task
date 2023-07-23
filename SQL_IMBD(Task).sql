CREATE DATABASE IMDBDataBase;
USE IMDBDataBase;

-- Create the Movie Table
CREATE TABLE Movie (
    Movie_ID INT PRIMARY KEY,
    Movie_Title VARCHAR(255),
    Release_Date DATE,
    Duration INT,
    Director VARCHAR(255));
select * from Movie;

-- Create the Media Table
CREATE TABLE Media (
    Media_ID INT PRIMARY KEY,
    Movie_ID INT,
    Media_Type VARCHAR(70),
    Media_URL VARCHAR(255),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID));
  
-- create the Genre Table
CREATE TABLE Genre (
    Genre_ID INT PRIMARY KEY,
    Genre_Name VARCHAR(50)
);

-- Create the Movie_Genre Table
CREATE TABLE Movie_Genre (
    Movie_ID INT,
    Genre_ID INT,
    PRIMARY KEY (Movie_ID, Genre_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID),
    FOREIGN KEY (Genre_ID) REFERENCES Genre(Genre_ID)
);


-- Create the Review Table
CREATE TABLE Review (
    Review_ID INT PRIMARY KEY,
    Movie_ID INT,
    User_ID INT,
    Review_Text VARCHAR(255),
    Rating INT,
    Review_Date DATE,
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
   );
   
-- Create the User Table
CREATE TABLE User (
    User_ID INT PRIMARY KEY,
    UserName VARCHAR(255),
    Email VARCHAR(255)
);

-- Create the Artist Table
CREATE TABLE Artist (
    Artist_ID INT PRIMARY KEY,
    Artist_Name VARCHAR(255)
 );
 
 -- Create the Skill Table
CREATE TABLE Skill (
    Skill_ID INT PRIMARY KEY,
    Skill_Name VARCHAR(50)
);

-- Create the Artist_Skill Table
CREATE TABLE Artist_Skill (
    Artist_ID INT,
    Skill_ID INT,
    PRIMARY KEY (Artist_ID, Skill_ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID),
    FOREIGN KEY (Skill_ID) REFERENCES Skill(Skill_ID)
);

-- Create the Role Table
CREATE TABLE Role (
    Role_ID INT PRIMARY KEY,
    Role_Name VARCHAR(50)
);

-- Create the Artist_Role Table
CREATE TABLE Artist_Role (
    Artist_ID INT,
    Role_ID INT,
    Movie_ID INT,
    PRIMARY KEY (Artist_ID, Role_ID, Movie_ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID),
    FOREIGN KEY (Role_ID) REFERENCES Role(Role_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID)
);











    