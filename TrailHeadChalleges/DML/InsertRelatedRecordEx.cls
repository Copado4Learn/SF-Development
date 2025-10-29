/*
********** Insert Related Records ***********
You can insert records related to existing records if a relationship has already been defined between the two objects, 
such as a lookup or master-detail relationship. A record is associated with a related record through a foreign key ID. 
For example, if inserting a new contact, you can specify the contact's related account record by setting the value of 
the AccountId field.
*/

Account acct = new Account(Name='SFDC Account');
insert acct;
// Once the account is inserted, the sObject will be
// populated with an ID.
// Get this ID.
ID acctID = acct.ID;
// Add a contact to this account.
Contact mario = new Contact(
    FirstName='Mario',
    LastName='Ruiz',
    Phone='415.555.1212',
    AccountId=acctID);
insert mario;