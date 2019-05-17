CREATE TABLE Registration(
    registration_no INT PRIMARY KEY,
    register_date DATE NOT NULL,
    expiry_date DATE,
    days_of_daycare INT NOT NULL,
    children_no INT,
    children_name VARCHAR(255),
    parent_no INT,
    parent_name VARCHAR(100),
    FOREIGN KEY (parent_no) REFERENCES Parents(parent_no));

