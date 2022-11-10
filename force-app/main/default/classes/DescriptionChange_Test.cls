@istest
public class DescriptionChange_Test {
    @istest
    public static void accDescChange_Test() {
    
    // Create mock data
    List<Account> accs = new List<Account>();

    for (Integer i = 1; i < 5; i++) { // Test1, Test2, Test3, Test4
        Account a = new Account();
        a.Name = 'Test' + i;
        accs.add(a);
    }

    insert accs;

    // Call actual class
   
    DescriptionChange.accDescChange();

    // Assess the result - system.assert methods

    List<Account> newAccs = [SELECT Description FROM Account];
    
    for (Account a : newAccs) {
        System.assertEquals('Changed', a.Description); 
    
    }

    System.assertEquals(4, newAccs.size());

    }
}