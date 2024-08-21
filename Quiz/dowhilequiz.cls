Integer num = 1;

do{
    if(Math.mod(num, 3) == 0)
    {
        if(Math.mod(num, 3) == 0 && Math.mod(num, 5) == 0) {
            System.debug('FizzBuzz');
            num++;
      
        }else{
            System.debug('Fizz');
            num++;

        }
    }
    if(Math.mod(num, 5) == 0)
    {
        System.debug('Buzz');
        num++;
    
    }
    
    System.debug('Current number is :'+num);
    num++;
}while(num<=100);