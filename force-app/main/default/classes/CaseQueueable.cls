public class CaseQueueable implements Queueable {
    public void execute(QueueableContext qc){
        case newCase = new case();
        newCase.Status = 'New';
        newCase.Origin = 'Phone';
        
        insert newCase;
    }
}
