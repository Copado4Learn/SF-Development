public class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String matchName)
    {
        List<List<SObject>> searchConAndLead = [FIND :matchName IN NAME FIELDS 
        RETURNING Contact(Id, FirstName, LastName), Lead(Id, FirstName, LastName)];

        return searchConAndLead;

    }
}