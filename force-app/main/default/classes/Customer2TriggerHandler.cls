public class Customer2TriggerHandler {
    public static void method1(list<Customer2__c> triggerNew,list<Customer2__c> triggerOld){        
            List<Payment2__c> creatingList=new List<Payment2__c>();
            for (customer2__c eachCus  : triggerNew) {
                Payment2__c newPay=new Payment2__c();
                newPay.Amount__c=0.1;
                newPay.Mode__c='Online';
                newPay.Customer2__c=eachCus.Id;
                creatingList.add(newPay);
                Payment2__c newPay2=new Payment2__c();
                newPay2.Amount__c=1;
                newPay2.Mode__c='Crypto';
                newPay2.Customer2__c=eachCus.Id;
                creatingList.add(newPay2);
            }insert creatingList;
        
    }
    public static void method2(list<Customer2__c> triggerNew,list<Customer2__c> triggerOld){        
        Set<Id> activeCusIDs=new Set<Id>();                 
            for (Customer2__c cus : triggerOld) {
                if (cus.Active__c==true) {
                    activeCusIDs.add(cus.Id);
                }
            }
            List<Payment2__c> deletePay=[select id,Customer2__c FROM Payment2__c WHERE Customer2__c IN : activeCusIDs ];
            delete deletePay;
            
    }
    public static void method3(list<Customer2__c> triggerNew,list<Customer2__c> triggerOld){
        Set<Id> activeCusIDs=new Set<Id>();                 
            for (Customer2__c cus : triggerOld) {
                if (cus.Active__c==false) {
                    activeCusIDs.add(cus.Id);
                }
            }
            List<Payment2__c> deletePay=[select id,Customer2__c,Mode__c FROM Payment2__c WHERE Customer2__c IN : activeCusIDs and Mode__C= 'Online' ];
            delete deletePay;
    }
    

    }

    