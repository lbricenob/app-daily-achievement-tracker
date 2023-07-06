USE DailyAchievementsDB;
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Identities')
BEGIN
    CREATE TABLE dbo.Identities (
        Id UNIQUEIDENTIFIER PRIMARY KEY NOT NULL,
        Email NVARCHAR(255) NOT NULL,
        Password CHAR(60) NULL,
        Created DATETIME NOT NULL
    ); 
    PRINT 'Identities Table created.';
END
ELSE
BEGIN
    PRINT 'Identities Table already exists.';
END