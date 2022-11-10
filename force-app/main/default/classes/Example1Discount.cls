//Code will allow user to apply discount to opp record .User will provide Id of the record and discount rate manually.

public without sharing class Example1_Discount {
    public static void discountCalculator(Id oppId, Decimal rate){
        //Get Record
        Opportunity opp = [SELECT Id, Amount, Discount__c FROM Opportunity WHERE Id = :oppId LIMIT 1];
        //Do calculation
        opp.Discount__c = opp.Amount * rate;
        //DML statement
        update opp;
        system.debug(rate);
    } 
}