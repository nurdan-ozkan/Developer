// Populate contact description with modified user name when user updates contact 
trigger Contact2 on Contact (before update ) {
    //trigger.new, Trigger.old
    for (Contact c : Trigger.new){
        c.Description = 'Change made by ' + UserInfo.getName();
        


    }

}