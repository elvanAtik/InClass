trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
        SPTriggerHandler.updateDescriptionFuture(trigger.newMap.keyset());
        SPTriggerHandler.createDefaultTicket(Trigger.New);
    }
    if(trigger.isBefore && trigger.isUpdate){

    }
}