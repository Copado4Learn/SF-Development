/*
******* Delete Related Records ********

The delete operation supports cascading deletions. If you delete a parent object, you delete its children automatically, 
as long as each child record can be deleted.
*/

Account[] queriedAccounts = [SELECT Id FROM Account WHERE Name='SFDC Account'];
delete queriedAccounts;

/*
***** About Transactions *******

DML operations execute within a transaction. All DML operations in a transaction either complete successfully, 
or if an error occurs in one operation, the entire transaction is rolled back and no data is committed to the database. 
The boundary of a transaction can be a trigger, a class method, an anonymous block of code, an Apex page, or a custom Web 
service method. For example, if a trigger or class creates two accounts and updates one contact, and the contact update 
fails because of a validation rule failure, the entire transaction rolls back and none of the accounts are persisted 
in Salesforce.
*/