/*
**********For Loop*******

SYNTAX -
for(variable declaration statment; condition; variable increment statement)
{
        //code block
}

-> Declaration, condition and increment statement are always above sequence.
-> Just like while loop, it checks for the condition first and then executes the block of code.
-> Scope of declared variable is within the for loop.

*/
for(Integer i =0; i<=10; i++)
{

    System.debug('The value of i is :'+i);
}