/*
File: ~/DataCommerceDB/scripts/01_create_database.sql
Purpose:
    - Creates "commerce_database" database, whether it exists or not.
Notes: 
    - Drops the "commerce_database" database if it exsits.
    - Creates the "commerce_database" database.
*/

DROP DATABASE IF EXISTS commerce_database WITH (FORCE);
CREATE DATABASE commerce_database;
