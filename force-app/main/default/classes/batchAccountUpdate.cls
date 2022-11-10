public class batchAccountUpdate implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT Id, Name FROM Account';
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
        List<Account> updatedAccs = new List<Account>();
        for (Account a : scope) {
            if (a.Name == 'Clarusway') {
                a.Name = a.Name + ' Updated'; // Clarusway Updated
                updatedAccs.add(a);
            }
        }
        update updatedAccs;
    }

    public void finish(Database.BatchableContext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        List<String> emails = new List<String>{'nurdanozkan2525@gmail.com'};
        mail.setSubject('Batch Apex');
        mail.setToAddresses(emails);
        mail.setPlainTextBody('Execution Completed');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}