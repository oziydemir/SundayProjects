public  class ContactBatchUpdate implements Database.Batchable<SObject>,Database.Stateful {
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1=Database.getQueryLocator([SELECT id,LastName,Description,AccountId,Account.Description FROM Contact]);
        return q1;
    }

    public void execute(Database.BatchableContext bc,List<Contact> listCont){
        
        for (Contact eachCont : listCont) {
            eachCont.Description=eachCont.Account.Description;
        }
        update listCont;
    }

    public void finish(Database.BatchableContext bc){
        System.debug('batch update is done');
    }
}
