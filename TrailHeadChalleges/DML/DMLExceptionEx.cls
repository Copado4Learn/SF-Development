/*
DML Statement Exceptions

If a DML operation fails, it returns an exception of type DmlException. You can catch exceptions in your code to 
handle error conditions.
*/

try {
    // This causes an exception because
    //   the required Name field is not provided.
    Account acct = new Account();
    // Insert the account
    insert acct;
} catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
}