trigger CaseTrigger on Case (before insert,before update,after insert,after update) {


    system.debug('We are in the triggers');  
    
    if(trigger.isBefore){
       system.debug('We are in the before triggers');
    }
    if(trigger.isBefore && trigger.isInsert){
       system.debug('We are in the before-Insert triggers');
    }
    if(trigger.isBefore && trigger.isUpdate){
       system.debug('We are in the before-Update triggers');
    }
    if(trigger.isAfter){
       system.debug('We are in the after triggers');
    }
    if(trigger.isAfter && trigger.isInsert){
       system.debug('"We are in the after-Insert triggers');
    }
    if(trigger.isAfter && trigger.isUpdate){
      system.debug('We are in the after-Update triggers');
    }
}

















    
