trigger AccountTrigger on Account (before update, after update) {
    
    if(Trigger.isBefore){
        for(sObject o : Trigger.new){
            AccountTriggerHandler.numberRecords++;
            System.debug(AccountTriggerHandler.numberRecords);
        }
        List<Contact> lstContact = [SELECT id FROM Contact];
        System.debug('CpuTime: ' + Limits.getCpuTime());
        System.debug('Queries: ' + Limits.getQueries());
    }
}