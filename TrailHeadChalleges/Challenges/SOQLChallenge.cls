public Class ContactSearch {

    public static Contact[] searchForContacts(String serName, String postNum)
    {
        String pattern = serName + '%';
        List<Contact> results = [Select id, FirstName from Contact where LastName LIKE :pattern AND MailingPostalCode = '27215'];
        return results;

    }
}