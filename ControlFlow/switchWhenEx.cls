/*
*******Switch-When Statment*******
-> Check one expression for multiple values and control the code flow.
-> With-in a switch block, we can only have when statements and that will have values.
-> After matching when statement, it won't go to the rest of the when statements in switch block. It will exit out of it.
*/

String today = 'Thursday';
switch on today {
    when 'Monday' {
        System.debug('Go to the office');
    }
    when 'Tuesday' {
        System.debug('Go to the office');
    }
    when 'Wednesday' {
        System.debug('Go to the office');
    }
    when 'Thursday' {
        System.debug('Go to the office');
    }
    when 'Friday' {
        System.debug('Go to the office');
    }
    when 'Saturday' {
        System.debug('Go to the Party');
    }
    when else {
        System.debug('Watch movies');
    }

}

// other way to code above switch block

switch on today {
    when 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' {
        System.debug('Go to the office');
    }
    when 'Saturday' {
        System.debug('Go to the Party');
    }
    when else {
        System.debug('Watch movies');
    }

}

