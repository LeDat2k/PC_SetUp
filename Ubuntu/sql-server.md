https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15
https://www.youtube.com/watch?v=x6pYoWwtVAY


# Follow all step above to install `sql-server`

- set sql-server Password: Sqlmatkhau$1

# Install `sqlcmd`: follow all above step

- After install sqlcmd set PATH to *zsh* instead of *bash*:
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.zshrc
source ~/.zshrc

- sqlcmd -S localhost -U SA -P 'Sqlmatkhau$1'

# sqlcmd: 
	SELECT name from sys.databases;
	GO 

	SELECT name from sys.tables;
	GO 

	<!-- current db_name -->
	select DB_NAME()
	GO

	exit

# Turn on/off sql-server

sudo systemctl status mssql-server
sudo systemctl start mssql-server
sudo systemctl stop mssql-server
sudo systemctl disable mssql-server
sudo systemctl enable mssql-server