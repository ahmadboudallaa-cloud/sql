create database  bankly;
use bankly;



CREATE TABLE advisors (
  advisor_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(250),
  email VARCHAR(250)
);


INSERT INTO advisors (full_name, email) VALUES
('rachid','rachid@gmail.com'),
('hmida','hmida@gmail.com'),
('hanae','hanae@gmail.com'),
('amine','amine@gmail.com'),
('sanae','sanae@gmail.com');



CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(250),
  email VARCHAR(250),
  phone DECIMAL(10,0),
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO customers (full_name, email, phone) VALUES
('ahmed boudallaa','ahmadbd05@gmail.com',706809988),
('ayoub bdhbf','ayoub@gmail.com',677889966),
('reda bd','rada@gmail.com',602124578),
('aya aya','aya@gmail.com',649780215),
('farh','farh@gmail.com',789250102);



CREATE TABLE accounts (
  account_id INT AUTO_INCREMENT PRIMARY KEY,
  account_number DECIMAL(10,0),
  balance DECIMAL(10,0),
  account_type ENUM('Checking','Savings','Business'),
  customerid INT,
  advisorid INT,
  FOREIGN KEY (customerid) REFERENCES customers(customer_id),
  FOREIGN KEY (advisorid) REFERENCES advisors(advisor_id)
);

INSERT INTO accounts (account_number, balance, account_type, customerid, advisorid) VALUES
(12035,15000,'Savings',1,1),
(12548,15996,'Business',2,2),
(56985,200,'Checking',3,3),
(65332,2300,'Savings',4,4),
(56025,500,'Savings',5,5);



CREATE TABLE transactions (
  transaction_id INT AUTO_INCREMENT PRIMARY KEY,
  amount DECIMAL(10,0),
  transaction_type ENUM('debit','credit'),
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  accountid INT,
  FOREIGN KEY (accountid) REFERENCES accounts(account_id)
);


INSERT INTO transactions (amount, transaction_type, accountid) VALUES
(120,'debit',5),
(180,'credit',4),
(122,'credit',3),
(1890,'credit',2),
(3265,'debit',1);