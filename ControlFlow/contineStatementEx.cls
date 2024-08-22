/*
***********Contine Statement*********
-> use this statement to skip the current iteration on the loop
-> Break statement works for all the loops
*/

List<String> daysInaWeek = new List<String> {'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'};

for(Integer i=0; i<7; i++)
{
    if(daysInaWeek[i] == 'Saturday' || daysInaWeek[i] == 'Thursday')
    {
        System.debug('Today is '+daysInaWeek[i]+' you CANNOT eat meat');
        continue;
    }
    System.debug('Today is '+daysInaWeek[i]+' you can eat meat');
}
