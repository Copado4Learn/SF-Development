//Lists hold an ordered collection of data of the same type.

//The colors variable is declared using the List syntax.

List<String> colorsList = new List<String>();
System.debug(colorsList);

//Alternatively, the colors variable can be declared using array notation.
String[] colorsArray = new List<String>();
System.debug(colorsArray);

// Grow collections as needed by using the List.add() method to add new elements. 
colorsList.add('red');
colorsList.add('blue');
colorsList.add('green');
System.debug('After adding values to colorsList'+colorsList);
colorsArray.add('blue');
colorsArray.add('yellow');
colorsArray.add('white');
colorsArray.add('black');
System.debug('After adding values to colorsArray'+colorsArray);
