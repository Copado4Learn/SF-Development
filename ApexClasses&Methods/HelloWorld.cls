/*
-> Apex class should always have a access modifier, either public or global. It cannot be private
-> Each and every method should have a return type. Without declaring return type, you cannot save the program.
-> A void return type means it doesn't return anything. 
-> A new keyword is used to initialize a class and only after class initialization, you we can call the class properties and methods.
-> To call a method from outside of the class, we need to make the access modifier as public or gloabl.
*/

public class HelloWorld
{
    String greeting = 'Hello World';
    
    public void printGreeting()
    {
        System.debug(greeting);
    }
}