trigger Contact3 on Contact (before insert,before update) {

    for(Contact c : Trigger.new){

        if(Trigger.isBefore && Trigger.isInsert){
            c.Description = 'Created by contact trigger'; 

        }

        if(Trigger.isBefore && Trigger.isInsert){
            c.Description = 'Change made by ' + UserInfo.getName();

        }
    }

}