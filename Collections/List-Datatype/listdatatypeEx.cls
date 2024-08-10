/*
**List** 
-> Is an ordered collection of elements of same datatype.
-> It is a dynamic datatype, that means we can keep adding values to it based on the need.
-> List is a non-primitive datatype, so need to create a instance of it to use it.
-> It stores the values based on the indexes, which starts from 0.
-> You can print values based on the index position.
*/

// new keyword is used to create a instance of the class and allocate memory


List<Integer> rollnumbers = new List<Integer> {11008890, 11008100, 11007231};
System.debug(rollnumbers);

// adding additional values to existing list
rollnumbers.add(11008891);
rollnumbers.add(11008892);
rollnumbers.add(11008893);
System.debug(rollnumbers);

// adding additional values using a method based on index value

rollnumbers.add(4, 444);
System.debug(rollnumbers);

// Printing List value based on the Index
System.debug(rollnumbers[1]);
//another way, using a method
System.debug(rollnumbers.get(1));

//updating List value based on the Index
rollnumbers[1] = 123;
System.debug(rollnumbers);
System.debug(rollnumbers[1]);

// creating empty list
List<Integer> emptyList = new List<Integer> ();

emptyList.add(25512);
emptyList.add(2656450);
System.debug(emptyList);

// size method is used to check the size of a list
// Returns the number of elements in the list.
System.debug('This is the size of rollnumber list variable: '+rollnumbers.size());


//remove method is used to delete a value from list
rollnumbers.remove(4);
System.debug('After removing the index value 4 from rollnumber'+ rollnumbers);
System.debug('This is the size of rollnumber after removing the index value 4 from list: '+rollnumbers.size());

// Set method() sets the specified value for the element at the given index.
rollnumbers.set(1, 111);
System.debug('After setting a value at index 1 '+rollnumbers);


// clear method is used to clear the complete list
rollnumbers.clear();
System.debug('This is the rollnumber list after clearing it '+rollnumbers);
System.debug('This is the size of rollnumber after clearing it: '+rollnumbers.size());


