public class OpportunityTriggerHandler{
   @future
    public static void updateOppName(set<id> accIdSet){
       List<Account> accList=[SELECT id, Highest_Amount_Opportunity_Name__c, (SELECT name, amount FROM Opportunities WHERE Amount!=null ORDER BY Amount DESC  ) FROM Account WHERE id=:accIdSet];
       for (Account eachAccount : AccList) {
           list<Opportunity> opp= eachAccount.Opportunities;
           eachAccount.Highest_Amount_Opportunity_Name__c= Opp[0].name;
       }
       update accList;
   }

  @future
    public static void TargetAmountUpdate(set<id> accIdSet){
        
        list<Account> accList = [SELECT id,Target_Amount__c ,Target_Amount_Achieved_Opportunity_Name__c,(SELECT id, Name, Amount FROM opportunities WHERE Amount != null AND stageName = 'Closed Won' ORDER BY  Amount DESC) FROM Account WHERE id IN: accIdSet];
        
        for(Account eachAcc : accList){
            if( eachAcc.Opportunities.size()>0){
                eachAcc.Target_Amount_Achieved_Opportunity_Name__c = eachAcc.Opportunities[0].Name;
            } else {
                eachAcc.Target_Amount_Achieved_Opportunity_Name__c = null;
            }
        }  
        update accList;
      }
    
    @future
      public static void TotalAmountGenerated(set<id> accIdSet){
          list<Account> accList = [SELECT Id,Target_Amount__c ,Total_Amount_Generated__c,Target_Amount_Achieved_Opportunity_Name__c,(SELECT id, Name, Amount FROM Opportunities WHERE Amount != null AND stageName = 'Closed Won' ORDER BY  Amount DESC) FROM Account WHERE id IN: accIdSet];
         
          decimal x=0;
          
          for(Account eachAcc : accList){
             for(opportunity eachopp:eachAcc.Opportunities){
                 x+=eachopp.Amount;
             }
             eachAcc.Total_Amount_Generated__c=x;
              }
              update  accList;
      }
}












/*public class OpportunityTriggerHandler {
    public static void method1(List<Opportunity> triggerNew,List<Opportunity> triggerOld,Map<Id,Opportunity> triggerNewMap,Map<Id,Opportunity> triggerOldMap){
        Set<Id> accIds=new Set<Id>();
        for (Opportunity eachOpp : triggerNew) {
            if (eachOpp.Amount!=null&&eachOpp.AccountId!=null) {
                accIds.add(eachOpp.AccountId);
            }
        }
        futureMethod1(accIds);
}

@future
public static void futureMethod1(Set<Id> Ids){

}
}*/
