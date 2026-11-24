
-- =====================================================
-- MYSQL DATABASE BACKUP OPERATIONS
-- Database: sales
-- =====================================================


-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
--
-- Command:
-- mysqldump -u root -p sales > sales_backup.sql
--
-- Explanation:
-- mysqldump is a MySQL command-line utility used to
-- create database backups.
-- -u root specifies the MySQL root username.
-- -p prompts the user to enter the database password.
-- sales specifies the database to be backed up.
-- > redirects the backup output into a file.
-- sales_backup.sql is the backup filename.
--
-- Importance of regular database backups:
-- Regular backups protect against accidental data
-- deletion, hardware failure, database corruption and
-- unexpected system failures. They allow databases
-- to be restored when data is lost.


-- QUESTION 2: BACKING UP ALL DATABASES
--
-- Command:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql
--
-- Explanation:
-- mysqldump is used to export MySQL databases.
-- -u root specifies the MySQL root username.
-- -p prompts for the database password.
-- --all-databases exports all databases on the server.
-- > redirects the output into a backup file.
-- all_databases_backup.sql is the backup filename.
--
-- Importance before server migration:
-- Backing up all databases ensures that database
-- structures and data can be transferred to the new
-- server. It reduces the risk of data loss and supports
-- recovery if migration fails.
