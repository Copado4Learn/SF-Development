public class AccountHandler {

public static void insertNewAccount(String accName)
{
    Account accName2 = new Account(Name = accName);
    try {
 
    insert accName2;
} catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
}
}
}

