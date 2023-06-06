trigger EmployeeTrigger on Employee__c (before insert,before update,after insert,after update) {

    if(trigger.isBefore){
        EmployeeTriggerHandler.updateJoinDate(trigger.new);
    }

}