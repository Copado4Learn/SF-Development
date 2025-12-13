String waterLevel = 'Empty';

if(waterLevel == 'Empty')
{
    System.debug('Fill the water kettle for tea');
    waterLevel = 'Full';
}else{
    System.debug('water level is already full in tea kettle');
}

// using elseif
String waterLevel = 'half';
if(waterLevel == 'empty') {
    System.debug('Fill the tea kettle');
    waterLevel = 'full';
} else if(waterLevel == 'half') {
    System.debug('Fill the tea kettle');
    waterLevel = 'full';
} else { //This statement only runs if line 3 and line 6 result in false.
    System.debug('The tea kettle is full');
}

// using logical operator
String waterLevel = 'half';
    
if(waterLevel == 'empty' || waterLevel =='half')
{
    System.debug('Fill the kettle with water');
    waterLevel = 'full';
}else{
    System.debug('Water kettle is already full!!');
}