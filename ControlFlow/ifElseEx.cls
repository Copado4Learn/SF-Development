/*
********Conditional Statement*******
-> Control the flow of the code with conditional statements.
*/

Boolean isItRaining = false;
Boolean isItSunny = true;
Boolean areYouWorking = false;

if(isItRaining == true) {
    System.debug('Please take your umbrella');
}
else {
    System.debug('Leave your umbrella');

}

// try another condition

if(!isItSunny) {
    System.debug('Don\'t go to the party');
}else if(isItRaining){
    System.debug('Don\'t go to the party');
}else if(areYouWorking){
    System.debug('Don\'t go to the party');
} else{
    System.debug('Go to the party');
}