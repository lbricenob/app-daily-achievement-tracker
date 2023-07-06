IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DailyAchievementsDB')
BEGIN
    CREATE DATABASE DailyAchievementsDB;
    PRINT 'Database created.';
END
ELSE
BEGIN
    PRINT 'Database already exists.';
END;

USE DailyAchievementsDB;
IF NOT EXISTS (SELECT name FROM sys.syslogins WHERE name = 'db_dev')
BEGIN
    CREATE LOGIN db_dev WITH PASSWORD = 'YourStrong!Passw0rd';
    PRINT 'Login created.';
END
ELSE
BEGIN
    PRINT 'Login already exists.';
END;