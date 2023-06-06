trigger OpportunityTrigger on Opportunity (before insert,before update,after insert,after update,after delete) {

    if(trigger.isAfter){
        if(trigger.isInsert){
            OpportunityTriggerHandler.insertMetot(trigger.new);
        }
    }

}