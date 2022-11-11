@isTest
public class CaseTriggerTest {
@isTest
public static void caseTriggerTest(){
 
Case nc=new Case();
 nc.Status='New';
 nc.Origin='Web';
 nc.Description='password';
 insert nc;

 List<Case> cases=[SELECT id FROM Case];

 System.assertEquals(2, cases.size());
}    
}
