CREATE TABLE Registration(
    registration_no INT PRIMARY KEY,
    register_date DATE NOT NULL,
    expiry_date DATE,
    days_of_daycare INT NOT NULL,
    children_no INT FOREIGN KEY,
    children_name VARCHAR(100),
    parent_no INT FOREIGN KEY,
    parent_name VARCHAR(100));

CREATE TABLE Children(
    children_no INT PRIMARY KEY,
    children_name VARCHAR(100) NOT NULL,
    dob DATE NOT NULL,
    age INT,
    registration_no INT FOREIGN KEY,
    parent_no INT FOREIGN KEY,
    parent_name VARCHAR(100),
    category_id INT FOREIGN KEY,
    category_name VARCHAR(100),
    room_id INT FOREIGN KEY,
    room_name VARCHAR(100));

CREATE TABLE Categories(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE,
    age_max INT,
    age_min INT,
    no_of_children_in_categ INT,
    children_no INT FOREIGN KEY,
    children_name VARCHAR(100)
    room_id INT FOREIGN KEY,
    room_name VARCHAR(100),);

CREATE TABLE Rooms(
    room_id INT PRIMARY KEY,
    room_name VARCHAR(100) UNIQUE,
    no_of_children_in_room INT,
    category_id INT FOREIGN KEY,
    category_name VARCHAR(100),
    children_no INT FOREIGN KEY,
    children_name VARCHAR(100),
    staff_no INT FOREIGN KEY,
    staff_name VARCHAR(100));

CREATE TABLE Staffs(
    staff_no INT PRIMARY KEY,
    staff_id VARCHAR(100),
    staff_name VARCHAR(100),
    dob DATE,
    phone_no INT,
    address VARCHAR(100),
    room_id INT FOREIGN KEY,
    room_name VARCHAR(100));
