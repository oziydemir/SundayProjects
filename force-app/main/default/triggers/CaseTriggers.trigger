trigger CaseTriggers on Case (before insert,after insert,before update,after update) {
    System.debug('we are triggers');
    if (trigger.isBefore) {
        
        System.debug('we are before triggers');
       
        if (trigger.isUpdate) {
            System.debug('We are in the before-Update trigger');
        
        } if (trigger.isInsert) {
            
            System.debug('We are in the before-Insert trigger');
            for (case eachCase : trigger.new) {
                if (eachCase.Origin=='Email') {
                    eachCase.Status='New';
                    eachCase.Priority='Medium';
                }
            }
        }

    } if (trigger.isAfter) {
       
        System.debug('we are after triggers');
        
        if (trigger.isUpdate) {

            Map<Id,Case> newCaseMap=trigger.newMap;
            Map<Id,Case> oldCaseMap=trigger.oldMap;

            for (case eachCase : trigger.new) {
                
                Id caseID=eachCase.Id;
                Case newCase=newCaseMap.get(caseID);
                Case oldCase=oldCaseMAp.get(caseID);

                if (newCase.Origin!=oldCase.Origin) {
                    System.debug('Case origin is changed for '+newCase.CaseNumber);
                }
            }
            
            System.debug('We are in the after-Update trigger');
        
        } if (trigger.isInsert) {
            
            System.debug('We are in the after-Insert trigger');
            
            List<Case> newCases=trigger.new;

            for (case eachCase : newCases) {
                Id caseID=eachCase.Id;
                String caseNum=eachCase.CaseNumber;
                Datetime crtDate=eachCase.CreatedDate;
                system.debug('case id is '+caseId+' case number is '+caseNum+' created date is '+crtDate);

            }

        }
    }
}