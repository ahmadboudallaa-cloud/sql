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
