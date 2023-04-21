public with sharing class FlowKeyRecordsClass {
    @AuraEnabled
    public string key;
        
    @AuraEnabled
    public List<sObject> records;
}