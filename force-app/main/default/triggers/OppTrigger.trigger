trigger OppTrigger on Opportunity (before update) {

    System.debug('Trigger New:' + Trigger.new);
    System.debug('Trigger Old:' + Trigger.old);
    System.debug('Trigger newMap:' + Trigger.newMap);
    System.debug('Trigger oldMap:' + Trigger.oldMap);

    for (Opportunity o : Trigger.new) {
        o.Description = 'Updated by Trigger';
    }

}