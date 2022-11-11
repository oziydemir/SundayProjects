public class DeleteCloseWonOppsBatch implements Database.Batchable<SObject>,Database.Stateful{

    integer recordNumber=0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1=Database.getQueryLocator([SELECT id,stageName FROM Opportunity where stageName='Closed Lost']);
        return q1;
    }  

    public void execute(Database.BatchableContext bc,List<Opportunity> oppList){
        for (Opportunity eachOpp : oppList) {
            recordNumber++;
        }
        if (!oppList.isEmpty()) {
            delete oppList;
        }
        
    }

    public void finish(Database.BatchableContext bc){
        System.debug('totak number of deleted records '+recordNumber);
    }
}
