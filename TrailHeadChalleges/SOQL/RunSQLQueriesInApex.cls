/*
Sequence of below code execution
1. We've queried the salesforce database.
2. Selected data from contact object, here the first anf last name.
3. Stored the data in a list, in the listOfContacts variable of contact datatype.
4. Created a for loop to iterate through the list and print each item from list.
*/

public class ContactUtility {
    public static void viewContacts() {
        List<Contact> listOfContacts = [SELECT FirstName, LastName FROM Contact];
        for(Contact con : listOfContacts) {
            String fullName = 'First Name: ' + con.FirstName + ', Last Name: ' + con.LastName;
            System.debug(fullName);
        }
    }
}