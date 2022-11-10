@istest
public class CreateAccount_Test {
    @istest
    public static void newAccTest(){
       //create mock data
       //Execute target class with mock data
        CreateAccount.newacc('My Account');
        //Use system.assert methods to check result
        Account newAcc = [Select Name FROM Account WHERE Name = 'My Account'];
        System.assertEquals('My Account', newAcc.Name, 'Account is not corrrect.');
    }
}