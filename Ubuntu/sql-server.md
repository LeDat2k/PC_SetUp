https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15
https://www.youtube.com/watch?v=x6pYoWwtVAY


- follow all step above to install `sql-server` and `sqlcmd`

- sql-server Password: LinD2019$$$

- turn on/off sql-server

sudo systemctl status mssql-server
sudo systemctl start mssql-server
sudo systemctl stop mssql-server
sudo systemctl disable mssql-server
sudo systemctl enable mssql-server

- sqlcmd -S localhost -U SA -P '<Password>'

# sqlcmd: 
	SELECT name from sys.databases;
	GO 

	SELECT name from sys.tables;
	GO 

	<!-- current db_name -->
	select DB_NAME()
	GO

	exit

