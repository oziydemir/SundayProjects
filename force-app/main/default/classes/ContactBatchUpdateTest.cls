@isTest
public class ContactBatchUpdateTest {
    @isTest
        private static void contactBatchTest(){
            List<Contact> contList=new List<Contact>();
            List<Account> accList=new List<Account>();
            
            for (Integer i = 0; i < 300; i++) {
                Account acc=new Account();
                acc.name='test '+i;
                acc.Description='TestDESC';
                accList.add(acc);
            }
            insert accList;

            for (Account eachAcc : accList) {
                 
                Contact con=new Contact();
                con.LastName='Test Contact';
                con.AccountId=eachAcc.id;
                contList.add(con);
                
            } 
            if(!contList.isEmpty()){
                insert contList;}

            test.startTest();
            ContactBatchUpdate cbu=new ContactBatchUpdate();
            Database.executeBatch(cbu, 301);
            test.stopTest();

            List<Contact> resultList=[SELECT Id,LastName,Description FROM Contact];

            System.assert(resultList[0].Description.contains('TestDESC'));
            
        }    
}


