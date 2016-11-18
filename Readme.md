# Request Form App

### Summary

My Code Louisivlle C# .Net Project was building a web form application.  The purpose of the request form is to save a client's information pertaining to what type of application they would like to incorporate.  After first getting to the Feature Request Form, click New Form Entry. Then enter the following information:

  - Description of the type of application the client is requesting
  - Name of Client
  - Client Priotrity - based on the severity of the application
  - Target Date
  - Product Area - What type of application (Production, entertainment, etc.)
  
By clicking the save button, the information is saved to a database so that other departments within the company can access the information and decide how to proceed.  There may also be a need to Edit or Delete an entry. You might also like to view the information in anther way by clicking the details navigation.

### Applications needed to create and run the project

1. Download and Install Microsoft SQL Sever 2016 Developer Edition from 
https://www.microsoft.com/en-us/sql-server/sql-server-editions-developers
2. Download and Install SSMS 2016 (SQL Server Management Studio) from 
https://msdn.microsoft.com/en-us/library/mt238290.aspx
3. Download and Install Microsoft Visual Studio Community 2015 from
https://www.visualstudio.com/vs/community/

> This project requires the following NuGet packages: bootstrap, EntityFramework v6, and Microsoft.AspNet.Mvc
They should be downloaded automatically by visual studio, but you may need to re-download them if they don't.
    
### How to view project

1.  Open SSMS and connect to your local copy of SQL and run the CreateFormsAppDB.sql file
2.  Insure the connection string in the web.Config file is correctly pointed at your local instance of SQL
2.  Open Visual Studio and open the RequestFormApp.sln file
3.  Continuing in Visual Studio, click arrow to the left of the Views folder, then click arrow to left of RequestFormApp to show all folders and files
4.  Locate the FormApps folder and click arrow to left to open up files
5.  Click on Index.cshtml
6.  Once the file has been opened successfully, click the green start arrow toward the top of Visual Studio (prefered browser is Google Chrome)
7.  When ran properly, the URL box should show http://localhost:[PORT_NUMBER]/FormApps _(Note, the number that shows here will be specific to your machine)_
8.  Feel free to add, edit, view and delete information
