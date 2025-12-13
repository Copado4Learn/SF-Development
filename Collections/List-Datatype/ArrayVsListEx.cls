/*
*******Using Array Notation for One-Dimensional Lists***********
-> When using one-dimensional lists of primitives or objects.
-> You can also use more traditional array notation to declare and reference list elements. 
-> For example, you can declare a one-dimensional list of primitives or objects by following 
   the data type name with the [] characters:
*/


List<String> str1 = new String[1]; // List size is already defined

str1.add('Apple');
str1.add('Orange');
str1.add('Grape');
System.debug('The value of the str1 is :'+str1);

/*
How Apex Handles This Code

The key is how Apex treats the variable declaration versus the memory allocation:
******1. Declaration vs. Allocation******
List<String> str1 = new String[1]; 
List<String> str1: This declares that the variable str1 is a data type that can behave like a dynamic List and access all the standard list methods (like add(), remove(), sort(), etc.).
new String[1]: This allocates a fixed block of memory (an Array) with one slot, initialized to null. 

2. The Apex Nuance: Arrays are implicitly Lists
In Apex, an Array (String[]) is essentially syntax sugar for a List data type, allowing arrays to be treated as lists in many contexts. When you assign that array memory to a variable explicitly declared as a List<String>, the variable str1 gains all the functional capabilities of a standard, dynamic List collection. 
3. The add() Method Takes Over
When you call str1.add('Apple');, you are using the List.add() method. This method is designed to dynamically resize the underlying collection in memory as needed, regardless of how much memory was initially allocated. 
The initial size of 1 (which meant null) is ignored as soon as a dynamic List method that changes the size is called.
What the Debug Log Shows
When you run your code, this is the final output:
The value of the str1 is :(null, Apple, Orange, Grape)
Explanation of the output:
(null, ...): The first element in the list is still the original null value that was created when you initialized the size to 1. The add() method appended items after that initial slot.
Apple, Orange, Grape: These are the elements you dynamically added using the add() method.
The resulting list has a total size of 4, demonstrating that the "fixed size" of the array was overcome by the dynamic nature of the List variable's methods.
Summary
The code doesn't fail because the List<String> variable type is flexible enough to use its dynamic methods (add()) on the memory block (array) it references, allowing the collection to grow beyond its initial declaration.

*/

String[] Str2 = new String[1]; // this is the array notation 
// Array size is already defined
// You cannot assign the array values using add method(), array doesn't have add().
// Instead use the indexes to add the values
str2.add('Apple');
str2.add('Orange');
str2.add('Grape');
System.debug('The value of the str2 is :'+str2);

//
String[] groceries = new String[4];
System.debug('Groceries: ' + groceries);//(null,null,null,null)
groceries.add('Tea');
groceries.add('Sugar');
System.debug('Added 2 items: ' + groceries);//(null,null,null,null, Tea, Sugar)
groceries.add(1, 'Honey');
System.debug('Added Honey in index 1: ' + groceries);//(null,Honey,null,null, Tea, Sugar)
System.debug('Item 0: ' + groceries[0]);//(null)