List<List<Integer>> twoDimList = new List<List<Integer>>();

System.debug('Before adding a row to multidim list :'+twoDimList);

List<Integer> row1 = new List<Integer> {1,2,3};

twoDimList.add(row1);

System.debug('After adding a row to multidim list :'+twoDimList);

List<Integer> row2 = new List<Integer> {4,5,6};

twoDimList.add(row2);
System.debug('After adding a row2 to multidim list :'+twoDimList);

List<Integer> row3 = new List<Integer> {7,8,9};
twoDimList.add(row3);
System.debug('After adding a value to multidim list :'+twoDimList);


Integer getNumFrmMu = twoDimList[1][2]; // get value 6 from multidim list
System.debug('Value of getNumFrmMu is :'+getNumFrmMu);
Integer getNumFrmMu3 = twoDimList[2][2]; // get value 9 from multidim list
System.debug('Value of getNumFrmMu is :'+getNumFrmMu3);

