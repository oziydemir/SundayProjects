trigger LeadTriggers on Lead (before insert,before update,after insert, after update) {
    if (trigger.isBefore && trigger.isInsert) {
       
        List<Lead> listLead=trigger.new;

        for (lead eachLead : listLead) {
            if (eachLead.LeadSource=='Web') {
                System.debug('Rating should be Cold.');
            } else {
                System.debug('Rating should be hot.');
            }
        }
    }
}