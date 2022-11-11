public  class CaseTriggerHandler {
    public  static void createChildCase(List<Case> triggerNew) {
        
        List<Case> creatingCase=new List<Case>();

        for (Case eachCase : triggerNew) {
            
            if (eachCase.Description.contains('password')) {
                
                Case nc=new Case();
                
                nc.Subject='Parent Case may contain secret info, do something NOW';
                nc.ParentId=eachCase.Id;                   
                nc.Priority='High';
                nc.Description='Secret info not allowed in case';
                nc.Origin='Web';
                nc.Status='New';
                creatingCase.add(nc);
                

            }
        } if (!creatingCase.isEmpty()) {
            insert creatingCase;
        }
        
        
    }
}

















/*public  class CaseTriggerHandler {
    public  static void createChildCase(List<Case> triggerNew) {
        
        List<Case> createCase=new List<Case>();
                    
            for (case eachCase : triggerNew) {
               
                if (eachCase.Description.contains('password')) {
                    Case nc=new Case();
                    nc.Subject='Parent Case may contain secret info, do something NOW';
                    nc.ParentId=eachCase.Id;                   
                    nc.Priority='High';
                    nc.Description='Secret info not allowed in case';
                    nc.Origin='Web';
                    nc.Status='New';
                    createCase.add(nc);
                }
            } 
         if (!createCase.isEmpty()) {
            insert createCase;
        }
    }
}*/
