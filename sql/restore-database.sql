  
USE [master]
GO
ALTER DATABASE [DbName] SET OFFLINE WITH ROLLBACK IMMEDIATE
GO	



USE [master]
RESTORE DATABASE [DbName] FROM  DISK = N'C:\.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 5
GO
