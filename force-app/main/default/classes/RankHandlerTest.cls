@isTest
public class RankHandlerTest {
@isTest
    public static void rankHandlerTest1(){
        
        RankHandler rTest=new RankHandler();
        string test=rTest.rankPrize(1);
        string test2=rTest.rankPrize(2);
        string test3=rTest.rankPrize(3);
        string test4=rTest.rankPrize(4);
        string test5=rTest.rankPrize(12);

        System.assertEquals('Gold', test);
        System.assertEquals('Silver', test2);
        System.assertEquals('Bronze', test3);
        System.assertEquals('Top 10', test4);
        System.assertEquals('Participation certificate', test5);
    }  
@isTest   
    public static void rankHandlerTest2(){
        RankHandler rTest2=new RankHandler();
        string test=rTest2.rankPrizeSwitch(1);
        string test2=rTest2.rankPrizeSwitch(2);
        string test3=rTest2.rankPrizeSwitch(3);
        string test4=rTest2.rankPrizeSwitch(6);
        string test5=rTest2.rankPrizeSwitch(15);

        System.assertEquals('Gold', test);
        System.assertEquals('Silver', test2);
        System.assertEquals('Bronze', test3);
        System.assertEquals('Top 10', test4);
        System.assertEquals('thank you for participating', test5);
    }
}
