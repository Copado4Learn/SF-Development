/*
-> A set is an unordered set of unique items of the same type. Similar to a list, a set is a group of items, called elements, and all elements have the same data type, 
    such as string, integer, or even Account.

-> Unlike a list, a set maintains no particular order for its elements. Because the elements are unordered, 
    a set can't have any duplicates. 
*/


//Below code has herbal value added twice to the set, but duplicate value is ignored.
public class Tea {
    public static void orderTea()
    {
        Set<String> teaTypes = new Set<String>{'Herbal','Green','White'};
        System.debug(teaTypes);
        teaTypes.add('Tea with Milk');
        teaTypes.add('Herbal');
        teaTypes.add('Black');
        System.debug(teaTypes);
    }

}