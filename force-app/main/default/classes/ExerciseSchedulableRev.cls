public class ExerciseSchedulableRev implements Schedulable {
    public void execute(SchedulableContext sc){
        Database.executeBatch(new ExerciseTurkishRev());
    }
}
