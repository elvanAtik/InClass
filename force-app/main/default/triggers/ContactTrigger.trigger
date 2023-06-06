trigger ContactTrigger on Contact (before insert,after insert,before update,after update) {

    if(trigger.isBefore && trigger.isUpdate){
        // ContactTriggerHandler.validateContactUpdate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        // ContactTriggerHandler.validateContactUpdate2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(trigger.isInsert && trigger.isBefore){
        ContactTriggerHandler.ContactTriggerPhone(trigger.new,trigger.newMap);
    }




}    





















// if(trigger.isBefore){
//     system.debug('before trigger called');
//     if(trigger.isInsert){
//         system.debug('before insert trigger called');
//     }
//     if(trigger.isUpdate){
//         system.debug('before update trigger called');
//     }
// }
// if(trigger.isAfter){
//     system.debug('after trigger called');
//     if(trigger.isInsert){
//         system.debug('after insert trigger called');
//     }
//     if(trigger.isUpdate){
//         system.debug('after update trigger called');
//     }
// }