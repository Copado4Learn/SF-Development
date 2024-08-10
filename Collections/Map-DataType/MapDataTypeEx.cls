/*
******MAP*********
-> Like List and Set, it can store a collection of data but in a key-value pair method.
-> Here, key cannot have duplicates like SET but values can have duplicates like LIST.
-> Like LIST, it doesn't use indexes, we need to refer the key in order to get the values.
*/

Map<Integer, String> class2006 = new Map<Integer, String>();

//adding key-value pairs

class2006.put(278, 'Bunty');
class2006.put(273, 'Rahul');
class2006.put(272, 'Munna');
class2006.put(268, 'Sunny');

System.debug(class2006);

//calling a value based on key
System.debug(class2006.get(273));

// adding same key again, this will replace the value
class2006.put(272, 'Abrar');
System.debug(class2006);

//removing values using remove method()
class2006.remove(272);
System.debug(class2006);

//get all the keys from a MAP dataset and the return type is SET
System.debug('Getting all the keys' +class2006.keySet());

//get all the values from a MAP dataset and the return type is List
System.debug('Getting all the Values' +class2006.values());

//check if the MAP contains key
System.debug('Does key 273 exist? : '+ class2006.containsKey(273));
System.debug('Does key 272 exist? : '+ class2006.containsKey(272));