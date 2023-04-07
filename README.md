# README - Fraud Detection
Project to detect fraud in transactions through two rules.
__Rule 1:__ Identify abnormally high transactions in a customers’ spending. For example, if a customer has spending at Kroger’s Grocery Store of $55.39, $74.42, $2300, $42.51, and $15.75, the transaction for $2300 is flagged. 
__Rule 2:__ Identify customer transactions that occurred in a different state from the customers’ primary state. For example, if a customer’s state in the account info table is Texas, but there is a transaction in California, the transaction is flagged.

#### Pre-requisites:
- Java 8 or higher
- MySQL
- OpenCSV
- IDE (like VSCode)
- MySQL Workbench

#### Installation Steps:
##### Java:
 - MacOS: ``` https://www.java.com/en/download/help/mac_install.html ```
 - VSCode extension: ```Extension Pack for Java``` from Microsoft

##### MySQL:
- Connect to MySQL database from JAVA Project:  ``` https://stackoverflow.com/questions/2839321/connect-java-to-a-mysql-database ```
- Add mysql-connector jar to classpath in VSCode: ``` https://www.youtube.com/watch?v=yBhBaya7tF4 ```

##### OpenCSV:
- Download the opencsv jar from: ``` https://sourceforge.net/projects/opencsv/files/opencsv/ ```
- Add the jar file to classpath in VSCode like done for MySQL

#### Load MySQL dump file to MySQL Workbench:
- Connect to your MySQL database.
- Click Server on the main tool bar.
- Select Data Import.
- Click the ... next to Import from Dump Project Folder and navigate to ```database_dump```, and click OK.
- Select schema ```customer```
- Select Start Import on the bottom right.

#### Running the project:
- Before running the project update the userName and password in the ```src/database/DBConnection.java``` file with the MySQL databse userName and password.
- Use the ```Run Java``` file to run the ```src/FraudDetection.java``` file

#### Outputs:
All output files (console logs and csv files are stored in ```output``` folder)

#### Further Readings:
- IQR - Inter Quartile Range Method: ``` https://www.scribbr.com/statistics/outliers/ ```