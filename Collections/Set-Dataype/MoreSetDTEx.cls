/*
-> A set is a collection of unique, unordered elements. 
-> It can contain primitive data types, such as String, Integer, Date, and so on. 
-> It can also contain more complex data types, such as sObjects.

*****To create a set:****
-> Use the new keyword.
-> Use the Set keyword followed by the primitive data type contained within <> characters.
*/

Set<String> str1 = new Set<String>{'a','b','c','c'};
System.debug(str1);

/*
****Explanation of below code*****
When this line runs:
Apex creates the Set collection in memory.
It attempts to insert the values in order:
'a' is added successfully (the set is now {'a'}).
'b' is added successfully (the set is now {'a', 'b'}).
'c' is added successfully (the set is now {'a', 'b', 'c'}).
'c' is encountered again. The Set detects this is a duplicate of an existing 
    element and silently ignores the request to add it a second time.
*/
