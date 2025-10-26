//The following example creates an sObject of type Account with the name Acme and assigns it to the acct variable.
Account acc = new Account(Name='Acme');

/*
For custom objects and custom fields, the API Name always ends with the __c suffix. For custom relationship fields, the API Name ends with the __r suffix. For example:

A custom object with a label of Merchandise has an API Name of Merchandise__c.
A custom field with a label of Description has an API Name of Description__c.
A custom relationship field with a label of Items has an API Name of Items__r.

*/



//Before you can insert a Salesforce record, you must create it in memory first as an sObject. Like with any other object, sObjects are created with the new operator:
Account acct2 = new Account();
//The API object name becomes the data type of the sObject variable in Apex. In this example, Account is the data type of the acct2 variable.


//There are two ways to add fields: through the constructor or by using dot notation.

//The fastest way to add fields is to specify them as name-value pairs inside the constructor
Account acct3 = new Account(Name='Acme');

//Adding values through the constructor
Account acct4 = new Account(Name='Acme', Phone='(415)555-1212', NumberOfEmployees=100);

// Adding values using dot notation
Account acct5 = new Account();
acct.Name = 'Acme';
acct.Phone = '(415)555-1212';
acct.NumberOfEmployees = 100;

/*
***********Work with the Generic sObject Data Type*********

Typically, you use the specific sObject data type, such as Account for a standard object or Book__c for a custom object 
called Book, when working with sObjects. However, when you don’t know the type of sObject your method is handling,
you can use the generic sObject data type.

Variables that are declared with the generic sObject data type can reference any Salesforce record, whether it is a 
standard or custom object record.
*/

//This example shows how any Salesforce object, such as an account or a custom object called Book__c, can be assigned to a generic sObject variable.

sObject sobj1 = new Account(Name = 'Trailhead');
sObject sobj2 = new Book__c(Name = 'Workbook 1');


/*
**********.  Cast Generic sObjects to Specific sObject Types. **************

When you’re dealing with generic sObjects, you sometimes need to cast your sObject variable to a specific sObject type. 
One of the benefits of doing so is to be able to access fields using dot notation, which is not available on the generic 
sObject. Since sObject is a parent type for all specific sObject types, you can cast a generic sObject to a 
specific sObject. This example shows how to cast a generic sObject to Account.
*/

//Cast a generic sObject to an Account

Account sobj2 = (Account)myGenericSObject;

// Now, you can use the dot notation to access fields on Account
String name = sobj2.Name;
String phone = sobj2.Phone;

//The fields of a generic sObject can be accessed only through the put() and get() methods.