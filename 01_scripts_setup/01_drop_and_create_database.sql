/*
Purpose:
    - Create commerce_database database, whether it exists or not.
Steps: 
    - Drop the commerce_database database if it exsits.
    - Create the commerce_database database.
*/

DROP DATABASE IF EXISTS commerce_database WITH (FORCE);
CREATE DATABASE commerce_database;
