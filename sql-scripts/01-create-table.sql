-- use database 
USE ynov_app

CREATE TABLE Articles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    data DATE
);