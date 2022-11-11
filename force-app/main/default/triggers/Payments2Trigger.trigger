trigger Payments2Trigger on Payment2__c (before insert,after insert,before update,after update,before delete,after delete) {
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            Payments2TriggerHandler.method1(trigger.new);
        }
    }
}