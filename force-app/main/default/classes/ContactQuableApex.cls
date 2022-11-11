public with sharing class ContactQuableApex implements Queueable{
    List<Account> listAccount;
    
    public ContactQuableApex(List<Account> accs) {
        listAccount = accs;
    }

    public void execute(QueueableContext qc){
        List<Contact> newConts=new List<Contact>();
        
        for (Account eachAcc : listAccount) {
            
            Contact cnt=new Contact();
            cnt.AccountId=eachAcc.Id;
            cnt.LastName=eachAcc.Name+' Contact';
            newConts.add(cnt);

            
        }
        insert newConts;
    }


}

