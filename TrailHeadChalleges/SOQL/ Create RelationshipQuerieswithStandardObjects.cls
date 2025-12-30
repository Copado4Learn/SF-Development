/*
To get records for a:
-> Child object, and include fields from a related parent object, use a child-to-parent query.
-> Parent object, and include fields from a related child object, use a parent-to-child query.
*/

// -> For ex, Contact is the child and Account is the parent. Below is query

Select Name, Account.Name from Contact

/*
-> In a parent-to-child query, we use a subquery to get fields from the child object. 
-> A subquery is a SELECT statement enclosed in parentheses and nested within another query.
-> Within a subquery, instead of the related object's field name, we use the child relationship name. 
-> So as the final step, we change the subquery to use the child relationship name Contacts, instead of the object name Contact.
*/

Select Name,(Select Name from Contacts) from Account

// Filtering the subquery

Select Name,(select name from contacts) from Account where id in (select accountid from contact where lastname ='Forbes')
