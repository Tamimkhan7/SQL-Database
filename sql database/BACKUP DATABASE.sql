-- The BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.

-- A differential back up only backs up the parts of the database that have changed since the last full database backup.

backup database testDB
to disk = 'D:\backups\testDB.back';--basically that is file name, where i am store this

-- Tip: Always back up the database to a different drive than the actual database. Then, if you get a disk crash, you will not lose your backup file along with the database.

backup database testDB
to disk = 'D:\backups\testDB.back'
with differential;
--  A differential back up reduces the back up time (since only the changes are backed up).

