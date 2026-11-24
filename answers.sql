-- ==========================================
-- DATABASE INDEXING AND OPTIMIZATION
-- Database: sales
-- ==========================================

USE sales;

-- QUESTION 1: Drop IdxPhone index
DROP INDEX IdxPhone ON customers;

-- QUESTION 2: Create Bob's user account
CREATE USER 'bob'@'localhost'
IDENTIFIED BY 'S$cu3r3!';

-- QUESTION 3: Grant INSERT privilege
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- QUESTION 4: Change Bob's password
ALTER USER 'bob'@'localhost'
IDENTIFIED BY 'P$55!23';