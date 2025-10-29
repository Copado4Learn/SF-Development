/*
Update Related Records

Fields on related records can't be updated with the same call to the DML operation and require a separate DML call. 
For example, if inserting a new contact, you can specify the contact's related account record by setting the value of 
the AccountId field. However, you can't change the account's name without updating the account itself with a separate 
DML call. Similarly, when updating a contact, if you also want to update the contact’s related account, you must make 
two DML calls. The following example updates a contact and its related account using two update statements.
*/

// Query for the contact, which has been associated with an account.
Contact queriedContact = [SELECT Account.Name
                          FROM Contact
                          WHERE FirstName = 'Mario' AND LastName='Ruiz'
                          LIMIT 1];
// Update the contact's phone number
queriedContact.Phone = '(415)555-1213';
// Update the related account industry
queriedContact.Account.Industry = 'Technology';
// Make two separate calls
// 1. This call is to update the contact's phone.
update queriedContact;
// 2. This call is to update the related account's Industry field.
update queriedContact.Account;