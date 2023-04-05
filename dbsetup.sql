-- cd /usr/local/mysql/bin
-- mysql -u root -p

-- show databases;
create database customer;
use customer;

-- show tables;

-- Contains all customer information
create table account_info (
    account_number  INT(5) PRIMARY KEY,
    first_name	    VARCHAR(20) NOT NULL,
    last_name	    VARCHAR(20),
    street_address  VARCHAR(100),
    unit	        VARCHAR(10),
    city	        VARCHAR(20),
    state	        VARCHAR(2) NOT NULL,
    zip	            INT(5) NOT NULL,
    dob	            DATE NOT NULL,
    ssn	            VARCHAR(11) NOT NULL,
    email_address   VARCHAR(50),
    mobile_number   BIGINT(10)
);
-- describe account_info;
-- select * from account_info;

-- contains all customer transaction data
create table transactions (
    transaction_number      INT(5) PRIMARY KEY,
    account_number          INT(5) NOT NULL,
    merchant_number         BIGINT NOT NULL,
    merchant_description    VARCHAR(100) NOT NULL,
    merchant_category_code  INT(4),
    transaction_datetime    DATE NOT NULL,
    transaction_amount      FLOAT NOT NULL,
    post_date               DATE,
    FOREIGN KEY(account_number) REFERENCES account_info(account_number)
);

-- describe transactions;
-- select * from transactions;


-- stores range for customer transactions at a merchant for fraud-detection



-- detected frauds according to rule 1
-- abnormally high transactions in a customers’ spending.



-- detected frauds according to rule 1
-- customer transactions that occurred in a different state 
-- from the customers’ primary state.