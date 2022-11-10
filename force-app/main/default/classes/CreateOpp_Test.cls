@istest
public  class CreateOpp_Test {
    @istest
    public static void newOpp_Test() {
        CreateOpp.newOpp();

        Opportunity o = [SELECT Id, Name, StageName FROM Opportunity WHERE Name = 'New Opportunity'];

        System.assertEquals('New Opportunity', o.Name);

        System.assertEquals('Qualification', o.StageName);
    }
}
