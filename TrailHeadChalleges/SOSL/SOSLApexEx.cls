/*
***********SOSL Apex Example********
-> This example shows how to run a SOSL query in Apex. 
-> First, the variable soslFindClause is assigned the search query, which consists of two terms (Wingo and SFDC) combined by the OR logical operator. 
-> The SOSL query references this local variable by preceding it with a colon(:), also called binding. 
-> The resulting SOSL query searches for Wingo or SFDC in any field. 
-> This example returns all the sample accounts because they each have a field containing one of the words. 
-> The SOSL search results are returned in a list of lists. Each list contains an array of the returned records. 
-> In this case, the list has two elements. At index 0, the list contains the array of accounts. 
-> At index 1, the list contains the array of contacts.

*/

// Example class

String soslFindClause = 'Wingo OR SFDC';

List<List<SObject>> searchList = [Find :soslFindClause IN ALL FIELDS RETURNING Account(Name), Contact(FirstName, LastName, Department)];
//List of list Sojbects is the standard return structure for any SOSL query.
Account[] searchAccounts = (Account[]) searchList[0]; // type casting the generic SObject to specific SObject to Account
Contact[] searchContacts = (Contact[]) searchList[1]; // type casting the generic SObject to specific SObject to Contact

// Note - Compiler will not allow you to assign generic SObject to specific SObject without type casting 

System.debug('Found these Acconts: ');
for(Account a : searchAccounts)
{
    System.debug(a.Name);
}

System.debug('Found these Contacts: ');
for(Contact c : searchContacts)
{
    System.debug(c.FirstName+' '+c.LastName);
}

/*
********* More *********
You can filter, reorder, and limit the returned results of a SOSL query. Because SOSL queries can return 
multiple sObjects, those filters are applied within each sObject inside the RETURNING clause.

-> You can filter SOSL results by adding conditions in the WHERE clause for an object. 
-> For example, this results in only accounts whose industry is Apparel to be returned: RETURNING Account(Name, Industry WHERE Industry='Apparel').
-> Likewise, ordering results for one sObject is supported by adding ORDER BY for an object. 
-> For example this causes the returned accounts to be ordered by the Name field: RETURNING Account(Name, Industry ORDER BY Name).
-> The number of returned records can be limited to a subset of records. 
-> This example limits the returned accounts to 10 only: RETURNING Account(Name, Industry LIMIT 10)
*/