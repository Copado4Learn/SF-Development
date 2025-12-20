public class AccountHandler{
    public static void insertAccount(Integer accNum)
    {
        List<Account> addAccounts = new List<Account>();
        Integer counter = 1;
        while(counter <= accNum)
        {
            System.debug('Counter Value before Incrementing ' + counter);
            Account shop = new Account();
            shop.Name = 'Acme Inc N' + counter;
            shop.AccountNumber = 'A000N' +counter;
            addAccounts.add(shop);
            System.debug('List after '+counter+' iteration is :'+ addAccounts);
            //increm
            counter ++;
            System.debug('Counter Value after Incrementing ' + counter);
        }
        System.debug('Size of Account List: ' + addAccounts.size() );
        System.debug('Final elements in Account List: ' + addAccounts);
        //insert all of the accounts in the list
        insert addAccounts;
    }
}