@isTest
public class OperationsHelperTest {
@isTest
    public static void ohTest1(){
        OperationsHelper oh=new OperationsHelper();
        Decimal x=oh.largestOutOfTwoNumbers(5, 12);
        System.assertEquals(12, x);
        Decimal x4=oh.largestOutOfTwoNumbers(10, 2);
        System.assertEquals(10, x4);

        Decimal x2=oh.smallestOutOfThreeNumbers(3, 4, 7);
        System.assertEquals(3, x2);

        Integer x3=oh.sumOfPositiveInteger(4);
        System.assertEquals(10, x3);
    }
}
