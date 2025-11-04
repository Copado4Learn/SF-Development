//Lists hold an ordered collection of data of the same type.

//The colors variable is declared using the List syntax.

List <String> colors1 = new List<String>();
System.debug('Declared variable using list syntax :'+colors1);

//Alternatively, the colors variable can be declared using array notation.
String [] colors2 = new List<String>();
System.debug('Declared variable using array syntax :'+colors2);

/* Comparing colors1 and colors2 using assertion method System.assertEquals is a void method. 
In Apex (and most programming languages),  xsvoid means the method performs an action but does not return a value */
System.assertEquals(colors1,colors2);


/* Grow collections as needed by using the List.add() method to add new elements.
The List.add() method in Apex can only accept a single argument (one item) at a time. 
It cannot accept multiple items separated by commas in a single call. */

colors1.add('red');
colors1.add('blue');
colors1.add('green');
System.debug('After adding values to color1'+colors1);

colors2.add('blue');
colors2.add('yellow');
colors2.add('white');
colors2.add('black');
System.debug('After adding values to colors2'+colors2);

// Add a collection of items (using addAll())

List<String> colorsToAdd = new List<String>();
List<String> moreColors = new List<String> {'Blue', 'Pink', 'Yellow'};
colorsToAdd.addAll(moreColors);
System.debug('After adding more colors using addAll() :'+colorsToAdd);

/*  Using index syntax to update the existing value
You can only use the index syntax ([]) to modify or read an existing element, cannot add a new one beyond the current size. */

colorsToAdd[1] = 'red';
System.debug('After updating more colors using index :'+colorsToAdd);

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