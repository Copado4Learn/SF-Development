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

// Create a list and add elements to it in one step
List<String> telStarName = new List<String> {'Mahesh', 'Prabhas', 'Pawan'};
System.debug(telStarName);

//List elements can be read by specifying an index between square brackets, known as array notation.
String SuperStar = telStarName[0];
String RebelStar = telStarName[1];

System.debug(SuperStar);
System.debug(RebelStar);

//Also, you can use the get() method to read a list element

String PowerStar = telStarName.get(2);
System.debug(PowerStar);
System.assertEquals(telStarName[2], PowerStar);

// Use for loop to iterate over the list and read the elements
for(String moreColors : colorsList) {
    // Write value to the debug log
    System.debug(moreColors);
}