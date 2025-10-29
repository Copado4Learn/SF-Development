// Create the account sObject
Account acc = new Account(Name='Acme', Phone='(415)555-1212', NumberOfEmployees=100);
// Insert the account by using DML
insert acct;

/*
Each DML statement accepts either a single sObject or a list (or array) of sObjects. Operating on a list of sObjects is a more efficient way 
for processing records.

The insert, update, and delete statements are familiar database operations. The upsert, undelete, and merge statements 
are particular to Salesforce and can be quite handy.

The upsert DML statement creates new records and updates sObject records within a single statement, using a specified field to determine the presence of existing objects, 
or the ID field if no field is specified.

The undelete DML statement restores deleted records that are still in the Recycle Bin.

The merge DML statement merges up to three records of the same sObject type into one of the records, deleting the 
others, and re-parenting any related records. Only leads, contacts, cases, and accounts can be merged.
*/

/*

******************* ID Field Auto-Assigned to New Records *********************

When inserting records, the system assigns an ID for each record. In addition to persisting the ID value in the database, 
the ID value is also auto-populated on the sObject variable that you used as an argument in the DML call.

This example shows how to get the ID on the sObject that corresponds to the inserted account.
*/

// Get the new id on the inserted sObject argument
ID acctID = acct.Id;
// Display this ID in the debug log
System.debug('ID :'+acctID);

/*
Because the sObject variable in the example contains the ID after the DML call, you can reuse this sObject variable to perform further 
DML operations, such as updates, as the system will be able to map the sObject variable to its corresponding record by 
matching the ID.

You can retrieve a record from the database to obtain its fields, including the ID field, but this can’t be done with 
DML. You’ll need to write a query by using SOQL. You’ll learn about SOQL in another unit.
*/

/*
*******Upsert Records********

If you have a list containing a mix of new and existing records, you can process insertions and updates to all records in 
the list by using the upsert statement. Upsert helps avoid the creation of duplicate records and can save you time as you 
don’t have to determine which records exist first.

The upsert statement matches the sObjects with existing records by comparing values of one field. If you don’t specify a 
field when calling this statement, the upsert statement uses the sObject’s ID to match the sObject with existing records 
in Salesforce. Alternatively, you can specify a field to use for matching. For custom objects, specify a custom field 
marked as external ID. For standard objects, you can specify any field that has the idLookup property set to true. 
For example, the Email field of Contact or User has the idLookup property set.
*/

// Upsert syntax
upsert sObject | sObject[]

upsert sObject | sObject[] field

//The optional field is a field token. For example, to specify the MyExternalID field, the statement is:
upsert sObjectList Account.Fields.MyExternalId;

/*
Upsert uses the sObject record's primary key (the ID), an idLookup field, or an external ID field to determine whether it should create a new record or update an existing one:

-> If the key is not matched, a new object record is created.
-> If the key is matched once, the existing object record is updated.
-> If the key is matched multiple times, an error is generated and the object record is neither inserted or updated.

*/
