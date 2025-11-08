/*
*******************Get Started with SOQL***********

-> To read a record from Salesforce, you must write a query. Salesforce provides the Salesforce Object Query Language.
-> Because Apex has direct access to Salesforce records that are stored in the database, you can embed SOQL queries in 
    your Apex code and get results in a straightforward fashion. When SOQL is embedded in Apex, it is referred to as 
    inline SOQL.
-> To include SOQL queries within your Apex code, wrap the SOQL statement within square brackets and assign the return value 
    to an array of sObjects.
*/

Account[] acct = [select Name, Phone from Account];


// This is the syntax of a basic SOQL query:

SELECT fields FROM ObjectName [WHERE Condition] //WHERE clause is optional

SELECT Name,Phone FROM Account

/*
The query has two parts:

1.  SELECT Name,Phone: This part lists the fields that you would like to retrieve. The fields are specified after the 
SELECT keyword in a comma-delimited list. Or you can specify only one field, in which case no comma is necessary 
(e.g. SELECT Phone).
2.  FROM Account: This part specifies the standard or custom object that you want to retrieve. In this example, 
it’s Account. For a custom object called Invoice_Statement, it is Invoice_Statement__c.

*/

/*
**************** More Useful Points****************

1.  Unlike other SQL languages, you can’t specify * to retrieve all fields on an object.
2.  Instead, use the FIELDS() keyword to retrieve all standard fields (FIELDS(STANDARD)), 
    all custom fields (FIELDS(CUSTOM)), or all (FIELDS(ALL)) fields on an object.
3.  If you try to access a field you haven’t specified in the SELECT clause 
    (either explicitly or with the FIELDS() keyword), you’ll get an error because the field hasn’t been retrieved.
4.  You don’t need to specify the Id field in the query as it is always returned in Apex queries, 
    whether it is specified in the query or not.
5.  For example: SELECT Id,Phone FROM Account and SELECT Phone FROM Account are equivalent statements.
6.  The only time you may want to specify the Id field is when it's the only field you’re retrieving because you have to list 
    at least one field: SELECT Id FROM Account
7.  You may want to specify the Id field also when running a query in the Query Editor as the Id field won’t be 
    displayed unless specified.
*/

/*
*********Filter Query Results with Conditions *********

If you have more than one account in the org, they will all be returned. If you want to limit the accounts returned 
to accounts that fulfill a certain condition, you can add this condition inside the WHERE clause.
*/

select id, Name, Phone from Account where Name = 'SFDC Computing'

// The WHERE clause can contain multiple conditions that are grouped by using logical operators (AND, OR) and parentheses.
select id, Name, NumberOfEmployees, Phone from Account where (Name = 'SFDC Computing' AND NumberOfEmployees>30)

/*
Another example -
1. All SFDC Computing accounts
2. All accounts with more than 25 employees whose billing city is Los Angeles
*/

Select Name, Phone from Account where (Name = 'SFDC Computing' OR (NumberOfEmployees > 25 AND BillingCity = 'Los Angeles'))


/*
Instead of using the equal operator (=) for comparison, you can perform fuzzy matches by using the LIKE operator. 
For example, you can retrieve all accounts whose names start with SFDC by using this condition: WHERE Name LIKE 'SFDC%'. 
The % wildcard character matches any or no character. The _ character in contrast can be used to match just one character.
*/
Select Name, Phone from Account where Name LIKE 'SFDC%' 

/*
*****Order Query Results********

When a query executes, it returns records from Salesforce in no particular order, so you can’t rely on the order of 
records in the returned array to be the same each time the query is run. You can however choose to sort the returned 
record set by adding an ORDER BY clause and specifying the field by which the record set should be sorted. 
This example sorts all retrieved accounts based on the Name field.

*/

Select Name, Phone from Account ORDER BY Name

// The default sort order is in alphabetical order, specified as ASC. To reverse the order, use the DESC
// You can sort on most fields, including numeric and text fields. You can’t sort on fields like rich text and multi-select picklists.

/*
********Limit the Number of Records Returned**********

You can limit the number of records returned to an arbitrary number by adding the LIMIT n clause where n is the 
number of records you want returned. Limiting the result set is handy when you don’t care which records are returned, 
but you just want to work with a subset of records. For example, this query retrieves the first account that is returned.
Notice that the returned value is one account and not an array when using LIMIT 1.
*/

Account onlyOneAccount = [Select Name, Phone from Account LIMIT 1];

//You can combine the optional clauses in one query, in the following order:

Select Name, Phone from Account where (Name = 'SFDC Computing' AND NumberOfEmployees >25) ORDER BY Name LIMIT 10

/*
**********Access Variables in SOQL Queries******

SOQL statements in Apex can reference Apex code variables and expressions if they are preceded by a colon (:). 
The use of a local variable within a SOQL statement is called a bind.

*/

String departmentName = 'Wingo';

Contact [] depContact = [Select FirstName, LastName from Contact where Department=:departmentName];

System.debug(depContact);

/*
************Query Related Records*************

Records in Salesforce can be linked to each other through relationships: lookup relationships or master-detail relationships.
For example, the Contact has a lookup relationship to Account. When you create or update a contact, you can associate 
it with an account. The contacts that are associated with the same account appear in a related list on the account’s page. 
In the same way you can view related records in the Salesforce user interface, you can query related records in SOQL.

To get child records related to a parent record, add an inner query for the child records. The FROM clause of the inner 
query runs against the relationship name, rather than a Salesforce object name. This example contains an inner query to 
get all contacts that are associated with each returned account. The FROM clause specifies the Contacts relationship, 
which is a default relationship on Account that links accounts and contacts.
*/

Select Name, (select LastName from Contacts) from Account Where Name ='SFDC Computing'

// This example embeds the example SOQL query in Apex and shows how to get the child records from the SOQL 
// result by using the Contacts relationship name on the sObject.
Account[] acctsWithContacts = [SELECT Name, (SELECT FirstName,LastName FROM Contacts)
                               FROM Account
                               WHERE Name = 'SFDC Computing'];
// Get child records
Contact[] cts = acctsWithContacts[0].Contacts;
System.debug('Name of first associated contact: '
             + cts[0].FirstName + ', ' + cts[0].LastName);

/*
*********Query Record in Batches By Using SOQL For Loops**********

With a SOQL for loop, you can include a SOQL query within a for loop. The results of a SOQL query can be iterated over 
within the loop. SOQL for loops use a different method for retrieving records—records are retrieved using efficient 
chunking with calls to the query and queryMore methods of the SOAP API. By using SOQL for loops, you can avoid hitting 
the heap size limit.

SOQL for loops iterate over all of the sObject records returned by a SOQL query.
*/

// The syntax of a SOQL forloop is either:

for(variable : [soql_query]){

    code_block;

}

// or

for(variable_list : [soql_query]){

    code_block;
}

// Both  variable and  variable_list must be of the same type as the sObjects that are returned by the  soql_query.