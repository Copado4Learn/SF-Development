Public class StringListTest
{
    public static List<String> generateStringList(Integer numOfStrings)
    {
      List<String> results = new List<String>();
      for (i=0;i<numOfStrings;i++)
      {
        results.add('Test '+i);
      }
      return results;
    }
}