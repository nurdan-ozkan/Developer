@istest
public class UserTest {
    @istest
    public static void userNewTest() {

        Account a = new Account(Name = 'test');
        insert a;

        User u = [SELECT Name FROM User WHERE Name = 'Nurdan Ozkan'];
        User t = [SELECT Name FROM User WHERE Name = 'Different User'];

        System.runAs(u){
           Account acc = [SELECT Name FROM Account];
           System.assertEquals('test', acc.Name); 

        }

        System.runAs(t){
            Account acc = [SELECT Name FROM Account];
            System.assertEquals('new test', acc.Name); 
 
         }

    }
}