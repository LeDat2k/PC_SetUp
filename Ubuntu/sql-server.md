https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15

- follow all step above to install `sql-server` and `sqlcmd`

- sql-server Password: LinD2018$$$

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

