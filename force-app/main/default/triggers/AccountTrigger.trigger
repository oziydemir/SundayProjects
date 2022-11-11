trigger AccountTrigger on Account (before insert,after insert,before update,after update) {
   

    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.descUpdate(trigger.New,trigger.Old, trigger.NewMap, trigger.OldMap );
   }
}