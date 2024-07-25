/*
**List** 
-> Is an ordered collection of elements of same datatype.
-> It is a dynamic datatype, that means we can keep adding values to it based on the need.
-> List is a non-primitive datatype, so need to create a instance of it to use it.
-> It stores the values based on the indexes, which starts from 0.
-> It's possible to values based on the index position.
*/

// new keyword is used to create a instance of the class and allocate memory


List<Integer> rollnumbers = new List<Integer> {11008890, 11008100, 11007231};
System.debug(rollnumbers);

// adding additional values to existing list
rollnumbers.add(11008891);
rollnumbers.add(11008892);
rollnumbers.add(11008893);
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

