
//using single value in when condition 
String waterLevel = 'half';

Switch on waterLevel {
    
    when 'empty'
    {
        System.debug('Fill the water kettle its empty');
    }
    when 'half'
    {
        System.debug('Fill the water kettle its half');
    }
    when 'full'
    {
        System.debug('Kettle is already full');
    }
    when else
    {
        System.debug('Error!');
    }
}

// using multiple values in condition
String waterLevel = 'full';

Switch on waterLevel {
    
    when 'empty', 'half'
    {
        System.debug('Fill the water kettle its empty or half');
    }
    when 'full'
    {
        System.debug('Kettle is already full');
    }
    when else
    {
        System.debug('Error!');
    }
}