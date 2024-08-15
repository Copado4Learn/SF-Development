/*
******Data Type Conversion*********
-> You can convert a data type in apex to another data type.
-> At times through API's or Data bases, we won't get the data type as expected, here we can leverage conversion to enrich the data.
-> valueOf() method is used for the conversion of data type, it's available for all the data types.
*/

String chemistryMarks = '76';
String physicsMarks = '87';
String mathMarks = '91';

//using valeOf() method to convert String data type into Integer data type
Integer total = Integer.valueOf(chemistryMarks) + Integer.valueOf(physicsMarks) + Integer.valueOf(mathMarks);

System.debug(total);