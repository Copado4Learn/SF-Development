/*
******* Bind Variables ********

-> Using bind variables is one way to tailor your code.
-> A bind variable is an Apex variable that you use in a SOQL query. 
-> Use bind variables as placeholders for specific values to be provided later.
-> Notice in below query, the bind variable is preceded by a colon (:).
*/

Integer maxHomeValue = 200000;
List<Property__c> property = [SELECT Name, Price__c FROM Property__c WHERE Price__c < :maxHomeValue];

// Aggregate Functions

