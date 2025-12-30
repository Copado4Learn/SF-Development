public class PropertyUtility 
{
    public static void newListedProperties()
    {
        List<Property__c> newPropList = new List<Property__c>();
        newPropList = [Select Name, Broker__r.email__c, Days_On_Market__c from Property__c Where Days_On_Market__c <=30];
        for(Property__c prop : newPropList)
        {
            String propEmail = prop.Name +' : '+ prop.Broker__r.email__c;
            System.debug(propEmail);
        }

    }
}