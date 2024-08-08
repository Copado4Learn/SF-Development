Integer oneSlicePirce = 8;
Integer TwoOrThreeSlicesPrice = 7;
Integer MoreThanThreeSlicesPrice = 6;

Integer RossSplit = 3*TwoOrThreeSlicesPrice;
Integer ChandlerSplit = 1*oneSlicePirce;
Integer JoeySplit = 4*MoreThanThreeSlicesPrice;
Integer TotalBill = RossSplit + ChandlerSplit + JoeySplit;

System.debug('Ross ordered 3 slices and it\'s price is :'+ RossSplit);
System.debug('Chandler ordered 1 slice and it\'s price is :'+ ChandlerSplit );
System.debug('Joey ordered 4 slices and it\'s price is :'+ JoeySplit);
System.debug('Total price is :'+ TotalBill);