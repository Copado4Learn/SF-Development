/*

***SET***
-> Set is a collection of unordered elements of same datatype.
-> Set doesn't allow duplicates, it will only persist one single item of same value.
-> Set allows null value
*/


Set<Integer> rollNumbers = new Set<Integer>{11008890, 11008100, 11007231};
System.debug(rollNumbers);

rollNumbers.add(89897767);
rollNumbers.add(89897764);
rollNumbers.add(89897765);

System.debug(rollNumbers);

// adding a duplicate value
rollNumbers.add(89897767);
System.debug('After adding duplicate value '+rollNumbers);

//check if the set has give element
System.debug(rollNumbers.contains(89897767));
System.debug(rollNumbers.contains(123));

// delete an element from set, here we need to pass the value
rollNumbers.remove(89897767);
System.debug(rollNumbers);

// check size of a set
System.debug('Size of a set: '+rollNumbers.size());

//check if the set is empty
System.debug('Checking is set empty: '+ rollNumbers.isEmpty());

// to remove all elemets from a set
rollNumbers.clear();
System.debug('After clearing the rollnumber set: ' +rollNumbers);
System.debug('Checking is set empty after clearing the set: '+ rollNumbers.isEmpty());