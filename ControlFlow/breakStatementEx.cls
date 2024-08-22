/*
***********Break Statement*********
-> use this statement to come out of the loop
*/

for(Integer i =10; i>0; i--)
{
    if(i==5){
        Break;
    }
    System.debug('The value of i is:'+i);
}
// usually above loop executes 10times but we added a break condition, that made to exit loop as soon as it meets the condition