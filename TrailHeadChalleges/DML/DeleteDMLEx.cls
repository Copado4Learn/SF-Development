/*
************Delete Records************
You can delete persisted records using the delete statement. Deleted records aren’t immediately deleted from the 
Salesforce Platform. First, they’re placed in the Recycle Bin for 15 days, from where they can be restored. 
After 15 days, the records are scheduled for permanent deletion. Salesforce doesn’t guarantee the exact time that 
the Recycle Bin permanently deletes these items.
*/

Contact[] contactsDel = [SELECT Id,FirstName, LastName FROM Contact WHERE LastName='Smith'];
delete contactsDel;