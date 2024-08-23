
/*
***********Iteration Statement*********
-> Iterates over all elements from a list or set
*/

List<String> daysInaWeek = new List<String> {'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'};

for(String day : daysInaWeek)
{
    if(day == 'Saturday' || day == 'Thursday')
    {
        continue;
    }
    System.debug('Today is '+day+' you can eat meat');
}
