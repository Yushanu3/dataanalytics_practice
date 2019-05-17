CREATE TABLE Children(
    children_no INT PRIMARY KEY AUTO_INCREMENT,
    children_name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    age INT,
    registration_no INT,
    parent_no INT,
    parent_name VARCHAR(100),
    category_id INT,
    category_name VARCHAR(100),
    room_id INT,
    room_name VARCHAR(100),
    FOREIGN KEY (parent_no) REFERENCES Parents(parent_no),
    FOREIGN KEY (registration_no) REFERENCES Registration(registration_no),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id));

CREATE TABLE Categories(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) UNIQUE,
    age_max INT,
    age_min INT,
    no_of_children_in_categ INT,
    children_no INT,
    children_name VARCHAR(255)
    room_id INT,
    room_name VARCHAR(100),
    FOREIGN KEY (children_no) REFERENCES Children(children_no),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id));

CREATE TABLE Rooms(
    room_id INT PRIMARY KEY,
    room_name VARCHAR(100) UNIQUE,
    no_of_children_in_room INT,
    category_id INT,
    category_name VARCHAR(100),
    children_no INT,
    children_name VARCHAR(255),
    staff_no INT,
    staff_name VARCHAR(100),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (children_no) REFERENCES Children(children_no),
    FOREIGN KEY (staff_no) REFERENCES Staffs(staff_no));

CREATE TABLE Staffs(
    staff_no INT PRIMARY KEY AUTO_INCREMENT,
    staff_id VARCHAR(100),
    staff_name VARCHAR(100),
    dob DATE,
    phone_no INT,
    address VARCHAR(100),
    room_id INT,
    room_name VARCHAR(100)
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id));
