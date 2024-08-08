/*
************Expressions And Operators************
-> Any single line statement, that gives us a value is called an expression.

*/

// = is assignment operator and right handside statment is experssion
DateTime currentDateTime = DateTime.newInstance(2024, 8, 5, 12, 12, 0);
List<Integer> rollnumbers = new List<Integer> {11008890, 11008100, 11007231};

// assignment operator
Integer x = 5;
System.debug(x);

// addition operator
x = x + 5;
System.debug(x);
// or we can use
x += 5; 

// subtraction operator
x = x -5;
System.debug(x);
// or we can use
x -= 5;

// mulitplication operator
x = x * 5;
System.debug(x);
// or we can use
x *= 5;

// division operator
x = x/5;
System.debug(x);

// increment operator
x ++;
System.debug(x);

// descrement operator
x --;
System.debug(x);

//AND operator
Boolean first = true;
Boolean second = false;
Boolean result;

/*
-> When using AND operator, it checks the left-hand side value, if it evaluates to true then it checks second value(right-hand side).
-> If left-hand side is false, AND will not check the value of right-hand side. Instead it returns false.
-> If both right and side values evalute to true, then it will return true.
*/
result = first && second;
System.debug(result);


/*
-> OR operator checks left and right sides values, if either of them evaluates to TRUE, then it returns true.
-> If both sides evalutes to false, then it returns false
*/
result = first || second;
System.debug(result);

/*
***Equality Operator***
-> It evaluates and prints true, if both the operators are true. 
*/
result = (first == second);
System.debug('Compring boolean datatype - :'+result);

// comparing integer datatype
result = (5 ==5);
System.debug('Compring integer datatype - :'+result);

// comparing string datatype
result = ('Hello' == 'World');
System.debug('Compring String datatype - :'+result);

/*
*****Less-than operator****
*/
result = 5<6;
System.debug('Comparing integers using less than operator -'+result);

/*
*****Greater-than operator****
*/
result = 5>6;
System.debug('Comparing integers using greater than operator -'+result);

/*
*****lessthan&equal to operator****
*/
result = 5<=6;
System.debug('Comparing integers using greater than operator -'+result);

/*
*****Greaterthan&equal to operator****
*/
result = 5>=6;
System.debug('Comparing integers using greater than operator -'+result);


/*
*****NOT operator****
*/
System.debug('Before NOT operator -'+first);
first = !first;
System.debug('After NOT operator -'+first);

/*
*****Ternary operator****
*/

String greeting = '';
Integer hour = 10;
// If the hours is less than 12, then say good morning else good afternoon
greeting = (hour < 12) ? 'Good Morning' : 'Good Afternoon';

System.debug(greeting);
