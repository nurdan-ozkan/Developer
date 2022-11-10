public class CreateAccountContact {
    public static void createObjects(){

        Account a = new Account();
        a.Name = 'Parent Account';
        insert a; //Salesforce assigning Id (linking record to child records by using Id)

        Contact c = new Contact();
        c.LastName = 'Test1';
        c.AccountId = a.Id; //linking records
        insert c;

        Contact d = new Contact();
        d.LastName = 'Test2';
        d.AccountId = a.Id; //linking records
        insert d;

    }
}