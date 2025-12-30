/*
*********Required SOQL Clauses*******

SELECT
-> Every SOQL query has a SELECT clause that begins with the SELECT keyword. 
-> The SELECT clause specifies one or more fields (separated by commas) in a Salesforce record.

FROM
-> Starting with the FROM keyword, the FROM clause specifies an object in your Salesforce database.

*/

/*
**********Optional SOQL Clauses **********
WHERE
-> The WHERE clause sets the conditions that a record must match to be selected and returned.
-> Use the WHERE clause the same way you use filters to limit the data shown in a list view or report.
*/

// Couple of Where clause conditions using AND, OR and IN operations

SELECT Name, Email FROM Contact WHERE FirstName = 'Stella'

//AND 
SELECT Name, Email
FROM Contact
WHERE FirstName = 'Stella' AND LastName = 'Pavlova'

// OR
SELECT Name, Email
FROM Contact
WHERE LastName = 'James' OR LastName = 'Barr'

// IN
SELECT Name, Email FROM Contact
WHERE LastName IN ('James', 'Barr', 'Nedaerk', 'Forbes')

/* 
**** LIMIT *****

-> The LIMIT keyword sets the maximum number of records to return. 
-> LIMIT is helpful when you're testing and don't want to wait for a query to process a large set of data.
*/

SELECT Email, Name FROM Contact LIMIT 5

/*
****** ORDER BY ******
-> Now that you have a handle on the quantity of results, how can you organize those results? 
-> Use the ORDER BY clause to sort results by the value of a specific field.

*/
// NULLS First
Select Name, Email from Contact ORDER BY EMAIL NULLS FIRST
// ASC
Select Name, Email from Contact ORDER BY Name ASC Limit 5
