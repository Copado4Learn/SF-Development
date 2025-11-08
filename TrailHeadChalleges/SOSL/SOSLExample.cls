/*
*************Get Started with SOSL**********
-> Salesforce Object Search Language (SOSL) is a Salesforce search language that is used to perform text searches in records. 
-> Use SOSL to search fields across multiple standard and custom object records in Salesforce. 
-> SOSL is similar to Apache Lucene.
-> Adding SOSL queries to Apex is simple — you can embed SOSL queries directly in your Apex code. 
-> When SOSL is embedded in Apex, it is referred to as inline SOSL.
*/

// This is an example of a SOSL query that searches for accounts and contacts that have any fields with the word 'SFDC'.

List<List<SObject>> searchList = [FIND 'SFDC' IN ALL FIELDS
                                      RETURNING Account(Name), Contact(FirstName,LastName)];


/*
**********Differences and Similarities Between SOQL and SOSL********

-> Like SOQL, SOSL allows you to search your organization’s records for specific information. 
-> Unlike SOQL, which can only query one standard or custom object at a time, a single SOSL query can search all objects.
-> Another difference is that SOSL matches fields based on a word match while SOQL performs an exact match by default 
(when not using wildcards).
-> For example, searching for 'Digital' in SOSL returns records whose field values are 'Digital' or 'The Digital Company',
 but SOQL returns only records with field values of 'Digital'.

*/

/*
-> SOQL and SOSL are two separate languages with different syntax. Each language has a distinct use case:

    * Use SOQL to retrieve records for a single object.
    * Use SOSL to search fields across multiple objects. SOSL queries can search most text fields on an object.

*/

// Using a bind variable

public class Findthefields
{
    public static List<List<SObject>> getFieldText(String txt)
    {
        List<List<SObject>> results = [ 
            Find :txt IN ALL FIELDS
                                      RETURNING Account(Name), Contact(FirstName,LastName)]; 

            System.debug(results);
            return results;
    }

}

/*
***********Basic SOSL Syntax*********
-> SOSL allows you to specify the following search criteria:

    * Text expression (single word or a phrase) to search for
    * Scope of fields to search
    * List of objects and fields to retrieve
    * Conditions for selecting rows in the source objects
*/

//This is the syntax of a basic SOSL query in Apex: 
FIND 'SearchQuery' [IN SearchGroup] [RETURNING ObjectsAndFields]

//Remember that in the Query Editor and API, the syntax is slightly different:
FIND {SearchQuery} [IN SearchGroup] [RETURNING ObjectsAndFields]

/*

-> SearchQuery is the text to search for (a single word or a phrase).
-> Search terms can be grouped with logical operators (AND, OR) and parentheses.
-> Also, search terms can include wildcard characters (*, ?).
-> The * wildcard matches zero or more characters at the middle or end of the search term.
-> The ? wildcard matches only one character at the middle or end of the search term.
*/