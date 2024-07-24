String str = 'this is a string variable';
System.debug('This is actual string ---> '+str);

// Capitalize method -> Returns the current String with the first letter changed to title case
System.debug('This is captilaized string ---> '+str.capitalize());

// contains method -> Returns true if and only if the String that called the method contains the specified sequence of characters in substring
System.debug('Print true if the str variable contains ring -->'+str.contains('ring'));



String convertString = 'This stRing hAs upper and LoWerCase';
System.debug('Actual String: '+convertString);

// UpperCase method -> Converts all of the characters in the String to uppercase using the rules of the default (English US) locale.
System.debug('UpperCase: '+convertString.toUpperCase());

// LowerCase method -> Converts all of the characters in the String to lowercase using the rules of the default (English US) locale.
System.debug('LowerCase: '+convertString.toLowerCase());

String FirstName1 = 'Sid';
String FirstName2 = 'siD';

// equals method -> Returns true if the passed-in object is not null and represents the same binary sequence of characters as the current string. Use this method to compare a string to an object that represents a string or an ID.
System.debug('Is FirstName1 equals FirstName2: '+FirstName1.equals(FirstName2));
System.debug('FirstName1 equals FirstName2 ignoring case: '+FirstName1.toLowerCase().equals(FirstName2.toLowerCase()));

// remove method -> Removes all occurrences of the specified substring and returns the String result.
System.debug('Remove the substring ring from str variable '+str.remove('ring'));

// replace method -> Replaces each substring of a string that matches the literal target sequence target with the specified literal replacement sequence replacement.
System.debug('Replace a substring from str variable '+str.replace('ring','rong'));

// split method -> Returns a list that contains each substring of the String that is terminated by either the regular expression regExp or the end of the String.
System.debug('Split the str variable by space: '+str.split(' '));
