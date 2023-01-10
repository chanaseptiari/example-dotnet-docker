-- Active: 1652057561302@@127.0.0.1@3306@learn_dotnet_restful_api

-- CREATE DATABASE IF NOT EXISTS learn_dotnet_restful_api;

USE learn_dotnet_restful_api;

CREATE TABLE
    IF NOT EXISTS user(
        id INT(11) PRIMARY KEY AUTO_INCREMENT,
        firstname VARCHAR(200) NOT NULL,
        lastname VARCHAR(200) NOT NULL,
        password VARCHAR(200) NOT NULL,
        username VARCHAR(200) NOT NULL,
        EnrollmentDate DATETIME NOT NULL
    ) engine = InnoDB;

INSERT INTO
    `user` (
        `firstname`,
        `lastname`,
        `password`,
        `username`,
        `EnrollmentDate`
    )
VALUES (
        'User.FirstName',
        'User.LastName',
        'User.Password',
        'User.Username',
        '2022-12-23'
    ), (
        'FirstName',
        'LastName',
        'Password',
        'Username',
        '2022-12-26'
    );