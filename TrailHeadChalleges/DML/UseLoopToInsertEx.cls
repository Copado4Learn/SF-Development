public class NewAccounts {
    public static void sObjectsInsert(Integer value){
        Integer counter = 1;
        //create a list to add our accounts
        List<Account> teaFactoryAccounts = new List<Account>();
        while(counter <= value){
            //display the current counter value
            System.debug('Counter Value before Incrementing ' + counter);
            //create a new account
            Account store = new Account();
            store.Name = 'The Tea Factory ' + counter;
            store.AccountNumber = '35629' + counter;
            teaFactoryAccounts.add(store);
            System.debug(teaFactoryAccounts);
            //increment the counter
            counter = counter + 1;
            System.debug('Counter Value after incrementing ' + counter);
        }
        System.debug('Size of Account List: ' + teaFactoryAccounts.size() );
        System.debug('Elements in Account List: ' + teaFactoryAccounts);
        //insert all of the accounts in the list
        insert teaFactoryAccounts;
    }
}
/*
Why all at once? Because resources are limited, you can use the insert statement in your code
 only 150 times. One record at a time, you can insert a total of 150 records. 
 But if each insert statement inserts 10 records, that total increases to 1,500 records. 
 Inserting multiple objects at once helps with bulkification (combining repetitive tasks 
 by writing efficient code). At first you may be inserting as few as 10 records at a time.
  But as your application grows, you might begin to insert 200 records at a time. Using 
  bulkification from the start prepares your application for growth.
*/