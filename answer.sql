
-- ==========================================
-- WEEK 1 DATABASE ASSIGNMENT
-- Database: Hostel Visitor Management
-- ==========================================

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS hostel_visitor_management;

-- 2. Select the database
USE hostel_visitor_management;

-- 3. Create residents table
CREATE TABLE residents (
    resident_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    room_number VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20)
);

-- 4. Create visitors table
CREATE TABLE visitors (
    visitor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    identification_number VARCHAR(30)
);

-- 5. Create visits table
CREATE TABLE visits (
    visit_id INT AUTO_INCREMENT PRIMARY KEY,
    resident_id INT NOT NULL,
    visitor_id INT NOT NULL,
    check_in DATETIME NOT NULL,
    check_out DATETIME,
    FOREIGN KEY (resident_id) REFERENCES residents(resident_id),
    FOREIGN KEY (visitor_id) REFERENCES visitors(visitor_id)
);

-- 6. Insert sample residents
INSERT INTO residents (full_name, room_number, phone_number)
VALUES
('John Kamau', 'A101', '0712345678'),
('Mary Wanjiku', 'B202', '0723456789');

-- 7. Insert sample visitors
INSERT INTO visitors (full_name, phone_number, identification_number)
VALUES
('Peter Mwangi', '0734567890', '12345678'),
('Jane Njeri', '0745678901', '87654321');

-- 8. Insert sample visit records
INSERT INTO visits (resident_id, visitor_id, check_in)
VALUES
(1, 1, NOW()),
(2, 2, NOW());

-- 9. Display all tables
SHOW TABLES;

-- 10. Display residents
SELECT * FROM residents;

-- 11. Display visitors
SELECT * FROM visitors;

-- 12. Display visit records
SELECT * FROM visits;

-- 13. Display database structure
DESCRIBE residents;
DESCRIBE visitors;
DESCRIBE visits;
