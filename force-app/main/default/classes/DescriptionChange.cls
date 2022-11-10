public  class DescriptionChange {
    public static void accDescChange() {

        //get all Account
        List<Account> accs = [SELECT Description FROM Account];

        List<Account> newAccs = new List<Account>();
        
        //Change each account description 
        for (Account a: accs){
            a.Description = 'Change';
            newAccs.add(a);
        }


        //SAve new update list to database
        update newAccs;

    }
}
