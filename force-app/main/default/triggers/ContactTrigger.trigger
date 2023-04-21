trigger ContactTrigger on Contact (before update, after update) {
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            System.debug('Contact before trigger');
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            System.debug('Contact after trigger');
        }
    }
}