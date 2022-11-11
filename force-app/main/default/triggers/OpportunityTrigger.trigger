trigger OpportunityTrigger on Opportunity (after update,after insert,after delete,after undelete) {

    set<id> accIdsSet = new set<id>();

    if (trigger.isAfter) {
        if (trigger.isInsert || trigger.isUndelete) {
           for (opportunity Opp : trigger.New) {
            if (Opp.AccountId!=null) {
                accIdsSet.add(Opp.AccountId);
            }
           }
        }
        if (trigger.isDelete) {
            for (Opportunity Opp : trigger.Old) {
                system.debug(Opp.AccountId);
                accIdsSet.add(Opp.AccountId);
            }
        }
        if(trigger.isUpdate){
            for (Opportunity Opp : trigger.New) {
                Opportunity OppOld = trigger.OldMap.get(Opp.Id);
                if (Opp.amount !=OppOld.Amount || Opp.AccountId !=OppOld.AccountId || Opp.StageName !=OppOld.StageName) {
                    accIdsSet.add(Opp.AccountId);
                    accIdsSet.add(OppOld.AccountId);
                }
            }
        }
        if (!accIdsSet.isEmpty()) {
            OpportunityTriggerHandler.updateOppName(accIdsSet);
            OpportunityTriggerHandler.TargetAmountUpdate(accIdsSet);
            OpportunityTriggerHandler.TotalAmountGenerated(accIdsSet);
        }
    }
}