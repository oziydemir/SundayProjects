public class ExerciseTurkishRev implements Database.Batchable<SObject>,Database.Stateful {
    integer oppCount=0;
    integer contCount=0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1=Database.getQueryLocator([SELECT id,name,(SELECT id,accountid from Opportunities),(SELECT id,accountid from Contacts)from Account]);
        return q1;
    }

    public void execute(Database.BatchableContext bc,List<Account> accList){
        List<Opportunity> oppList=new List<Opportunity>();
        List<Contact> contList=new List<Contact>();
        
        for(Account eachAcc : accList){
            if(eachAcc.Opportunities.size()==0 && eachAcc.Contacts.size()==0){
                
                Opportunity newOpp=new Opportunity();
                newOpp.Name=eachAcc.Name;
                newOpp.AccountId=eachAcc.Id;
                newOpp.StageName='Prospecting';
                newOpp.CloseDate=Date.today().addMonths(6);
                oppList.add(newOpp);

                Contact newCont=new Contact();
                newCont.LastName=eachAcc.Name;
                newCont.AccountId=eachAcc.Id;
                contList.add(newCont);

                oppCount++;
                contCount++;
            }

            if(eachAcc.Opportunities.size()==0){
                
                Opportunity newOpp=new Opportunity();
                newOpp.Name=eachAcc.Name;
                newOpp.AccountId=eachAcc.Id;
                oppList.add(newOpp);
                newOpp.StageName='Prospecting';
                newOpp.CloseDate=Date.today().addMonths(6);
                oppCount++;
            }

            if(eachAcc.Contacts.size()==0){
                
                Contact newCont=new Contact();
                newCont.LastName=eachAcc.Name;
                newCont.AccountId=eachAcc.Id;
                contList.add(newCont);
                contCount++;
            }
        }
        insert oppList;
        insert contList;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('New opportunity number '+oppCount+', new contact number '+contCount);
    }
}
