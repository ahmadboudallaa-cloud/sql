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