public class AccountTriggerHandler {
   public static void descUpdate(List<Account> triggerNew, List<Account> triggerOld, map<id,Account> triggerNewMap, map<id,Account> triggerOldMap){
    Set<Id> idsForUpdate=new Set<Id>();
    for (Account eachAcc : triggerNew) {
        if (eachAcc.Description!=triggerOldMap.get(eachAcc.Id).Description) {
            idsForUpdate.add(eachAcc.Id);
        }
    }
    oppAndContUpdate(idsForUpdate);
   }

   @future
   public static void oppAndContUpdate(Set<Id> setId){
    List<Opportunity> oppList=[SELECT id,AccountId,Description,Account.Description FROM Opportunity WHERE AccountId IN :setId];
    for (Opportunity eachOpp : oppList) {
        eachOpp.Description=eachOpp.Account.Description;
    } update oppList;

    List<Contact> cntList=[SELECT id,AccountId,Description,Account.Description FROM Contact WHERE AccountId IN :setId];
    for (Contact eachCont : cntList) {
        eachCont.Description=eachCont.Account.Description;
    }update cntList;
   }
 }

    