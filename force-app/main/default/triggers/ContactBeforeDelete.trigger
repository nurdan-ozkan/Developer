//Trow an error whenver the user try to delete the contact which is not associated to an account

trigger ContactBeforeDelete on Contact (before delete) {
    //Bulkification

    for(Contact c : Trigger.old){
        if(c.AccountId == null){
            c.addError('You can \'t delete this record!');
        }
    }
}