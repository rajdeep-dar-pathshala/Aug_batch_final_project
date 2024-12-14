create database aug_python_project_MSM;
use aug_python_project_MSM;
CREATE TABLE cust_details (
    cust_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_full_name VARCHAR(255) NOT NULL,
    cust_ph_no VARCHAR(15) NOT NULL,
    cust_address TEXT
)AUTO_INCREMENT=1;
select * from cust_details;
insert into cust_details(cust_full_name,cust_ph_no,cust_address)
values("rajdeep bhadra",'89563265','kolkata');
Truncate cust_details;

select * from cust_details
where cust_ph_no='898767656';

CREATE TABLE p_details (
    p_id INT AUTO_INCREMENT PRIMARY KEY,
    p_name VARCHAR(255) NOT NULL,
    p_price DECIMAL(10, 2) NOT NULL
)AUTO_INCREMENT=1;

select * from p_details;

INSERT INTO p_details (p_name, p_price) VALUES ('Rice - 1 Kg', 40.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Wheat - 1 Kg', 35.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Sugar - 1 Kg', 45.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Salt - 1 Kg', 20.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Cooking Oil - 1 Litre', 120.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Pulses - 500g', 40.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Flour - 1 Kg', 30.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Spices (Mixed) - 200g', 150.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Tea Powder - 250g', 250.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Coffee Powder - 200g', 300.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Biscuits - 150g Pack', 25.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Chocolates - 100g Pack', 50.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Milk - 1 Litre', 25.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Butter - 500g', 50.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Cheese - 200g Pack', 80.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Eggs - 1 Dozen', 60.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Chicken - 1 Kg', 200.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Fish - 1 Kg', 300.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Vegetables (Mixed) - 1 Kg', 50.00);
INSERT INTO p_details (p_name, p_price) VALUES ('Fruits (Mixed) - 1 Kg', 80.00);

select * from p_details where p_id=3;

CREATE TABLE invoice_table (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(255) NOT NULL,
    bill_amount DECIMAL(10, 2) NOT NULL,
    bill_date_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)AUTO_INCREMENT=1;

select * from invoice_table;

INSERT INTO invoice_table (cust_id, cust_name, bill_amount) 
VALUES (101, 'John Doe', 1754.75);


select * from invoice_table
where bill_amount=(select max(bill_amount) from invoice_table)
