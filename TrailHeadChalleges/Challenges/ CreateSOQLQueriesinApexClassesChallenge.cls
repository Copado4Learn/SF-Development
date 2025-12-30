public class AccountUtility
{
    public static void viewAnnualRevenue()
    {
        List<Account> accountsList = [Select Name, AnnualRevenue from Account];
        for(Account accRev : accountsList)
        {
            String acctRev = accRev.AccountName +' : '+accRev.AnnualRevenue;
            System.debug(acctRev);
        }
    }
}