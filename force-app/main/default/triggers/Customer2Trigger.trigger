trigger Customer2Trigger on Customer2__c (before insert,after insert,before delete,after delete,before update,after update) {
    
    if (trigger.isBefore&&trigger.isDelete) {
        Customer2TriggerHandler.method2(trigger.New, trigger.Old);
        Customer2TriggerHandler.method3(trigger.New, trigger.Old);
    }
    if (trigger.isAfter&&trigger.isInsert) {
        Customer2TriggerHandler.method1(trigger.New, trigger.Old);
    }
}