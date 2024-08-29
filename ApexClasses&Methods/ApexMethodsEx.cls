/*
**Method Syntax**

-> Inner containers cannot have less restrictive access modifier than outer class, so always make sure the method is not less restrictive than the main class.
-> You can have same method names but the method parameters should have different data types or number of parameters shouldn't match.
-> You can skip the return type if the method is void. But apart from it, return type is mandatory.

public(Access Modifier- optional) static(special keyword- optional) Integer(return type -required) add(method name- required)(Integer number1, Integer number2)
{
    **Method Body**
    Integer sum = number1 + number2;
    return sum;
}
*/