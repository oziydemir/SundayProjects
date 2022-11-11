@isTest
public  class ContactQueableApexTest {

@TestSetup
    static void makeData(){
        List<Account> accList=new List<Account>();
        for (Integer i = 0; i < 900; i++) {
            Account acc=new account();
            acc.Name='test account'+i;
            accList.add(acc);
        }
        insert accList;
    } 
@isTest
    static void queueableTest(){
        List<Account> accList=[SELECT Id,Name FROM Account];

        test.startTest();
        ContactQuableApex cqa=new ContactQuableApex(accList);
        System.enqueueJob(cqa);
        test.stopTest();

        List<Contact> resultList=[SELECT id,LastName FROM Contact];

        System.assert(resultList[0].LastName.contains('Contact'));

    }
}
