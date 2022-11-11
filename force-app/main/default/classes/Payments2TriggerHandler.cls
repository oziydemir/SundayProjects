public class Payments2TriggerHandler {
    public static void method1(List<Payment2__c> triggerNew ,Map<id,Payment2__c> triggerNewMap){
        Set<Id> cusIDs=new Set<Id>();
        List<Customer2__c> updatingCustomers=new List<Customer2__c>();
        for (Payment__c eachPay : triggerNew) {
            if (eachPay.Customer2__c!=null) {
                cusIDs.add(eachPay.Customer2__c);
            }
        }
        updatingCustomers=
        
    }
}
