trigger CaseTrigger on Case (before insert,before update,after insert,after update) {
    if (trigger.isAfter && trigger.isInsert) {
        CaseTriggerHandler.createChildCase(trigger.New);
    }
}