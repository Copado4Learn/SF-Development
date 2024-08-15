/*
***********Do While Loop*********
-> checks condition after loop code block
-> A do while-loop always execute atleast once
*/

Integer year = 1100;

do {
    // check if year is evenly divisible by 4
    if(Math.mod(year, 4) == 0) {
        // check if year is evenly divisible 100
        if(Math.mod(year, 100) == 0) {
            // check if year evenly divisible by 400
            if(Math.mod(year, 400) == 0){
                    System.debug(year +' is a leap year');
            }
        }else {
            System.debug(year +' is a leap year');
        }
    }
}