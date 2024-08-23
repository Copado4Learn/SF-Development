/*
***********Contine Statement*********
-> use this statement to skip the current iteration on the loop
-> Break statement works for all the loops
*/

List<String> daysInaWeek = new List<String> {'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'};

Integer listSize = daysInaWeek.size();
for(Integer i=0; i<listSize; i++)
{
    if(daysInaWeek[i] == 'Saturday' || daysInaWeek[i] == 'Thursday')
    {
        continue;
    }
    System.debug('Today is '+daysInaWeek[i]+' you can eat meat');
}
