
// Quering custom object
SELECT Address__c, Picture__c, Broker__c FROM Property__c

//Create a Child-to-Parent Query
/*
-> To specify the Broker__c related object (not the Broker__c field), we change __c to __r (underscore-underscore-r). 
-> Broker__r is the custom relationship name. 
-> It indicates that we want to traverse the relationship from Property__c to the Broker__c object. 

*/
SELECT Address__c, Picture__c, Broker__r.Name FROM Property__c

//Create a Parent-to-Child Query
/*
-> Broker is the parent so the parent-to-child query needs a subquery of the child object. 
-> We use the child relationship name in the subquery.
-> The Child Relationship Name is Properties. Because this is a custom relationship, when we use it in a query, we append __r (Properties__r). 

*/

SELECT Name, (SELECT Address__c, Price__c FROM Properties__r) FROM Broker__c