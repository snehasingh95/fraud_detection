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
    dob_string	    VARCHAR(10) NOT NULL,
    dob				DATE,
    ssn	            VARCHAR(11) NOT NULL,
    email_address   VARCHAR(50),
    mobile_number   BIGINT(10)
);

update account_info set dob = STR_TO_DATE(dob_string,'%m/%d/%Y');
alter table account_info modify column dob DATE NOT NULL;
alter table account_info drop column dob_string;
-- describe account_info;
-- select * from account_info;


-- Contains all customer transaction data
create table transactions (
    account_number              INT(5) NOT NULL,
    transaction_number          INT(5) NOT NULL,
    merchant_number             VARCHAR(30) NOT NULL,
    merchant_description        VARCHAR(100) NOT NULL,
    merchant_category_code      INT(4),
    transaction_datetime_string TEXT NOT NULL,
    transaction_datetime        DATETIME,
    transaction_amount          FLOAT NOT NULL,
    post_date_string		    VARCHAR(8),
    post_date                   DATE,
    PRIMARY KEY (account_number, transaction_number),
    FOREIGN KEY(account_number) REFERENCES account_info(account_number)
);
update transactions set transaction_datetime = STR_TO_DATE(transaction_datetime_string,'%m%d%Y %H:%i:%s');
update transactions set post_date = STR_TO_DATE(LPAD(post_date_string, 8, 0), '%m%d%Y');
-- select count(*) from transactions where transaction_datetime is NULL or post_date is null;
alter table transactions modify column transaction_datetime date NOT NULL;
alter table transactions drop column transaction_datetime_string, drop column post_date_string;
alter table transactions add column transaction_state VARCHAR(2);
-- describe transactions;
-- select * from transactions;

commit;

-- stores valid range for customer transactions at various merchant
create table transaction_range (
    account_number      INT(5) NOT NULL, 
    merchant_number     VARCHAR(30) NOT NULL, 
    min_amt             FLOAT NOT NULL, 
    max_amt             FLOAT NOT NULL,
    PRIMARY KEY(account_number, merchant_number)
);

-- detected frauds according to rule 1
-- abnormally high transactions in a customers’ spending.
create table abnormal_amount_frauds (
    first_name                      VARCHAR(20) NOT NULL, 
    last_name                       VARCHAR(20), 
    account_number                  INT(5) NOT NULL, 
    transaction_number              INT(5) NOT NULL, 
    merchant_number                 VARCHAR(30) NOT NULL,
    merchant_description            VARCHAR(100),
    transaction_amount              FLOAT NOT NULL,
    PRIMARY KEY(account_number, transaction_number),
    FOREIGN KEY(account_number) REFERENCES account_info(account_number),
    FOREIGN KEY(account_number, transaction_number) REFERENCES transactions(account_number, transaction_number)
);


-- detected frauds according to rule 2
-- customer transactions that occurred in a different state 
-- from the customers’ primary state.
create table mismatch_state_frauds (
    first_name                      VARCHAR(20) NOT NULL, 
    last_name                       VARCHAR(20), 
    account_number                  INT(5) NOT NULL, 
    transaction_number              INT(5) NOT NULL, 
    expected_transaction_location   VARCHAR(2) NOT NULL, 
    actual_transaction_location     VARCHAR(2) NOT NULL,
    PRIMARY KEY(account_number, transaction_number),
    FOREIGN KEY(account_number) REFERENCES account_info(account_number),
    FOREIGN KEY(account_number, transaction_number) REFERENCES transactions(account_number, transaction_number)
);

commit;