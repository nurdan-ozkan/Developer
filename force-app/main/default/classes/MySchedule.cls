public class MySchedule implements Schedulable {

    public void execute (SchedulableContext SC){
        Account acc = new Account();
        acc.Name = 'ABCD Schedule';
        insert acc;
    }
}