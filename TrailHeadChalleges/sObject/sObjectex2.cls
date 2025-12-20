// An object's fields in an org are called sObject properties in Apex code.
Account myAcct = new Account(); // creating myAcct sObject of Account data type
myAcct.Name = 'The Tea Factory'; // assigning value to sObject property.
myAcct.Phone = '555-0129';
myAcct.AccountNumber = '356281';

// get the field name
String accName = myAcct.Name;

// Declaring an sObject is like adding a row to a spreadsheet. 
// When you're ready to create another account, give the Account object a new name. For example:
Account myAcct2 = new Account();
myAcct2.Name = 'Tina\'s Teas';
myAcct2.AccountNumber = '623956';
myAcct2.Phone = '555-0129';


/* 
The Apex code snippet you provided only creates an instance of a new Account record 
in memory; it does not insert this data into your Salesforce organization's database.
To actually insert the data into the Salesforce database, you must explicitly use a 
DML (Data Manipulation Language) statement, such as insert, update, upsert, 
or delete
*/