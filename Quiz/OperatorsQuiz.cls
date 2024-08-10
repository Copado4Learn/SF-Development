Integer oneSlicePirce = 8;
Integer TwoOrThreeSlicesPrice = 7;
Integer MoreThanThreeSlicesPrice = 6;
/*
Integer RossSplit = 3*TwoOrThreeSlicesPrice;
Integer ChandlerSplit = 1*oneSlicePirce;
Integer JoeySplit = 4*MoreThanThreeSlicesPrice;
Integer TotalBill = RossSplit + ChandlerSplit + JoeySplit;

System.debug('Ross ordered 3 slices and it\'s price is :'+ RossSplit);
System.debug('Chandler ordered 1 slice and it\'s price is :'+ ChandlerSplit );
System.debug('Joey ordered 4 slices and it\'s price is :'+ JoeySplit);
System.debug('Total price is :'+ TotalBill);

*/

//solving it using ternary operator

Integer RossPizzaSlice = 3;
Integer ChandlerPizzaSlice = 1;
Integer JoeyPizzaSlice = 4;

Integer RossSplit = (RossPizzaSlice > 3) ? RossPizzaSlice * MoreThanThreeSlicesPrice : (RossPizzaSlice >=2) ? RossPizzaSlice * TwoOrThreeSlicesPrice : RossPizzaSlice * oneSlicePirce;
Integer ChandlerSplit = (ChandlerPizzaSlice > 3) ? ChandlerPizzaSlice * MoreThanThreeSlicesPrice : (ChandlerPizzaSlice >=2) ? ChandlerPizzaSlice * TwoOrThreeSlicesPrice : ChandlerPizzaSlice * oneSlicePirce;
Integer JoeySplit = (JoeyPizzaSlice > 3) ? JoeyPizzaSlice * MoreThanThreeSlicesPrice : (JoeyPizzaSlice >=2) ? JoeyPizzaSlice * TwoOrThreeSlicesPrice : JoeyPizzaSlice * oneSlicePirce;
Integer TotalBill = RossSplit + ChandlerSplit + JoeySplit;
System.debug('Total price is :'+ TotalBill);
System.debug('Ross Split from total is '+ RossSplit);
System.debug('Chandler Split from total is '+ ChandlerSplit);
System.debug('Joey Split from total is '+ JoeySplit);