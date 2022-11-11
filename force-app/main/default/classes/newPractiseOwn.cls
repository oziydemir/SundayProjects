public with sharing class newPractiseOwn {
    public static void method1(){
        
       List<Opportunity> oppList= [select id,name,amount,StageName from Opportunity WHERE StageName='Closed Lost' AND Amount<=20000];

       delete oppList;

     }
    public static void method2(){
        List<Account> accList= [select id,name, (SELECT id,lastName FROM contacts)FROM Account];
        List<Contact> cntList= new List<Contact>();

        for (Account eachAcc : accList) {
            
            if (eachAcc.Contacts==null) {
                
            }
            Contact contWithAcc = eachAcc.Contacts;
            cntList.add(contWithAcc);           
            
        }

        
    }


    }
