//Below is an example of partial sucess method of database class

// Create a list of contacts
List<Contact> conList = new List<Contact> {
        new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
        new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
        new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
        new Contact()};
// Bulk insert all contacts with one DML call
Database.SaveResult[] srList = Database.insert(conList, false);
// Iterate through each returned result
for (Database.SaveResult sr : srList) {
    if (sr.isSuccess()) {
        // Operation was successful, so get the ID of the record that was processed
        System.debug('Successfully inserted contact. Contact ID: ' + sr.getId());
    } else {
        // Operation failed, so get all errors
        for(Database.Error err : sr.getErrors()) {
            System.debug('The following error has occurred.');
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Contact fields that affected this error: ' + err.getFields());
	 }
    }
}

/*
***** Use DML statements when -
Use DML statements if you want any error that occurs during bulk DML processing to be thrown as an Apex exception that 
immediately interrupts control flow (by using try. . .catch blocks). This behavior is similar to the way exceptions are 
handled in most database procedural languages.

***** Use Database methods when -
Use Database class methods if you want to allow partial success of a bulk DML operation—if a record fails, 
the remainder of the DML operation can still succeed. Your application can then inspect the rejected records and 
possibly retry the operation. When using this form, you can write code that never throws DML exception errors. 
Instead, your code can use the appropriate results array to judge success or failure. Note that Database methods 
also include a syntax that supports thrown exceptions, similar to DML statements.

*/