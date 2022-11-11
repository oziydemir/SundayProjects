public with sharing class ContactTriggerHandler {
    
    public static void updateContactPhone(List<Contact> triggerNew){
        
        Set<Id> accIds = new Set<Id>();
        
        for(Contact eachCont : triggerNew){
            accIds.add(eachCont.AccountId);
        }
        
        List<Account> accList = new List<Account>();
        
        accList = [Select Id, Phone from Account Where Id IN : accIds];
        
        if(!accList.isEmpty()){
            
            Map<Id, Account> accMap =  new Map<Id, Account>();
            
            for(Account acc : accList){
                accMap.put(acc.Id, acc);
            }

            for(Contact eachCont : triggerNew){
                
                if(accMap.ContainsKey(eachCont.AccountId)){
                    eachCont.OtherPhone = accMap.get(eachCont.AccountId).Phone;

                }
            }       
        }
    }
}    