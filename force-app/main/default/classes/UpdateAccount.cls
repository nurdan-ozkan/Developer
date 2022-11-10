
public  class UpdateAccount {

    public static void UpdateTest() {

        List<Account> accList = [SELECT Id, Name, Industry, Description FROM Account WHERE Industry = 'Consulting'];

        List<Account> UpdatedList = new List<Account>();

        for(Account a : accList){
            a.Description = 'Test';
            UpdatedList.add(a);
        }
        update UpdatedList;
    }
}
