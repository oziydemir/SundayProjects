public  class ContactBatchUpdateSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        Database.executeBatch(new ContactBatchUpdate());
    }
}
