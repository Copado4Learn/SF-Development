/*
*******************Database Methods*********************
Apex contains the built-in Database class, which provides methods that perform DML operations and mirror the DML statement counterparts.

These Database methods are static and are called on the class name.

Database.insert()
Database.update()
Database.upsert()
Database.delete()
Database.undelete()
Database.merge()(available only for the Lead, Contact, Case, and Account sObjects)

Unlike DML statements, Database methods have an optional allOrNone parameter that allows you to specify whether 
the operation should partially succeed. When this parameter is set to false, if errors occur on a partial set of records,
the successful records will be committed and errors will be returned for the failed records. Also, no exceptions 
are thrown with the partial success option.
*/

//This is how you call the insert method with the allOrNone set to false
Database.insert(recordList, false);

//The Database methods return result objects containing success or failure information for each record. For example, 
//insert and update operations each return an array of Database.SaveResult objects.
Database.SaveResult[] results = Database.insert(recordList, false);

//Upsert returns Database.UpsertResult objects, and delete returns Database.DeleteResult objects.

//By default, the allOrNone parameter is true, which means that the Database method behaves like its DML 
//statement counterpart and will throw an exception if a failure is encountered.

//The following two statements are equivalent to the insert recordList; statement.

Database.insert(recordList);
//AND
Database.insert(recordList, true);