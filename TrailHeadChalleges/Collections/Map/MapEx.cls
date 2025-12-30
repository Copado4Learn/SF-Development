/*
-> A map is a more complex collection than either a list or a set.
-> Each item in a map has two parts: a key and a value, known as a key-value pair. 
    Keys and values can be any data type.

-> Although each key is unique, values can be repeated within a map.

->Imagine a map of telephone country codes. The country code is the key and 
    the name of the country is the value
*/

public class Tea {
    public static String orderTea()
    {
      Map<String, String> teaTypes = new Map<String, String>();
        teaTypes.put('Black', 'Earthy');
        teaTypes.put('White','Sweet');
        teaTypes.put('Herbal','Sweet');
        String flavorProfile = teaTypes.get('Herbal');
        System.debug('Flavor profile for Herbal Tea is '+flavorProfile);
        return flavorProfile;
        
    }

}
/* ******* PUT *************
-> To add key-value pairs to a map, use the put method. 
-> It expects two parameters: key and value.
*/

/* ******** Get ************
-> When provided with an existing key, the get method returns the value of the key. 
-> If the provided key is not mapped to a value, the get method returns null.
*/