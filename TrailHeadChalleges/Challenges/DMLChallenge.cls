public class AccountHandler {
    public static Account insertNewAccount(String accName) {
        Account a = new Account(Name = accName);
        try {
            insert a;            // attempts DML even if accName is empty
            return a;            // on success, returns the inserted record (Id populated)
        } catch (DmlException e) {
            return null;         // on any DML failure (e.g., required field missing), return null
        }
    }
}
