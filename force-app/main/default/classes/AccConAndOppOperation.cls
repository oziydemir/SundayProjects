public class AccConAndOppOperation {
    public static List<Account> method1() {
        List<Account> accList1=[Select Id,Name,AnnualRevenue,Type,AccountSource from Account];
        return accList1;
    }
    public static List<Opportunity> method2(string stage,string source) {
        List<Opportunity> oppList1=[Select Id,name,leadSource,StageName from opportunity WHERE StageName=:stage AND leadSource=:source ];
        return oppList1;
    }
    public static void method3(string bb, String cc){
        List<Account> listaccount1 = [select name, annualrevenue, type, (select name, amount, stageName from Opportunities where stageName =:cc) from Account where type =: bb];
        
        for(Account acc :listaccount1){
            
            System.debug('all accounts of Customer - Direct ' + acc.Name);
            
            for (Opportunity opp :acc.Opportunities){
                System.debug('all Closed Won Opportunities ' + opp);
            }
            
        }
       }

    public static Account creatingAccount(string nm,decimal ar ,string tp) {
        Account newAccountTest=new Account();

        if (nm!=null) {
            newAccountTest.name=nm;
            newAccountTest.AnnualRevenue=ar;
            newAccountTest.Type=tp;
        } else {
            System.debug('Account without name cannot be created.');
        }
        return newAccountTest;
    }

    
}
