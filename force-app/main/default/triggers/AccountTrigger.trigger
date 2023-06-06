trigger AccountTrigger on Account (before insert,after insert, before update,  after update,before delete,after delete) {

    if(trigger.isBefore && trigger.isDelete){
        for(account acc: trigger.old){
            if(acc.AnnualRevenue>1000000 && acc.type=='Prospect'){
                acc.addError('You can not delete this record');
            }
        }
    }
}

    // if(trigger.isInsert &&  trigger.isBefore){
    //   for(account acc: trigger.new){
    //     if(acc.phone==null){
    //       acc.addError('Lütfen phone alanini doldurunuz.');
    //     }
    //   }
    // }
   
//     if(trigger.isBefore && trigger.isDelete){
//        // AccountTriggerHandler.validateDelete(Trigger.old);

//     }

//     if(trigger.isBefore){
//       //  AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//     }
//     if(trigger.isInsert && trigger.isAfter){
        
//     }
            
//    /*  if(trigger.isAfter && trigger.isUpdate){
//         system.debug('after update trigger of account object : '); */
//         // if(trigger.isBefore){
//         //     if(trigger.isInsert){

//         //     system.debug('trigger.isbefore insert' + trigger.new);
//         //     system.debug('trigger.isafter insert' + trigger.old);

//         //     }

//         // }
        
//       /*   for(Id eachId: trigger.newMap.keySet()){
//             system.debug('account id = ' + eachId);
//             Account newAcc=trigger.newMap.get(eachId);
//             system.debug('new account name : ' + newAcc.Name );
//             Account oldAcc=trigger.oldMap.get(eachId);
//             system.debug('old account name : ' + oldAcc.Name);
//         }
//     } */

        


















//    /*  if(trigger.isAfter && trigger.isupdate){
//         for(account oldAcc: trigger.old){
//             system.debug('old account id = ' + oldAcc.Id + ' , old account name = ' + oldAcc.Name);
//         }
//         for(account newAcc: trigger.new){
//             system.debug('new account id = ' + newAcc.Id + ' , new account name = ' + newAcc.Name);
//         }
//     }
// }  // TRİGGER.OLD BEFORE VE AFTER İNSERT TE NULL DÖNER
//    // TRİGGER.OLD BEFORE VE AFTER UPDATE TE TRİGGER.OLD ESKİ VERİYİ TRİGGER.NEW YENİ VERİYİ VERİR. */
    



// /*     if(trigger.isBefore && trigger.isInsert){
//         system.debug('trigger.old before insert = ' + trigger.old);
//     }
//     if(trigger.isAfter && trigger.isInsert){
//         system.debug('trigger.old after insert = ' + trigger.old);
//     }
//     if(trigger.isBefore && trigger.isUpdate){
//         system.debug('trigger.old before update = ' + trigger.old);
//     }
//     if(trigger.isAfter && trigger.isUpdate){
//         system.debug('trigger.old after update = ' + trigger.old);
//     }  // TRİGGER.OLD BEFORE VE AFTER İNSERT TE NULL DÖNER
//        // TRİGGER.OLD BEFORE VE AFTER DA LİSTE DÖNER FAKAT ÖNCEKİ VE SONRAKİ VERİLER AYNIDIR!!! */


























    
//     /* if(trigger.isAfter && trigger.isUpdate){
//         for(Id eachId : trigger.newMap.keySet()){
//             Account oldAcc =trigger.oldMap.get(eachId);
//             Account newAcc =trigger.newMap.get(eachId);
//             if(oldAcc.website != newAcc.website){
//                 system.debug('for account : ' + newAcc.name + ' updated website is ' + newAcc.website);             }


//         }
//     } */



//   /*   if (Trigger.isAfter && Trigger.isUpdate) {
//         system.debug('after update trigger.old : ' + trigger.old);
//         //List<account> oldAccounts = trigger.old;
//         for (Account oldAcc : trigger.old) {
//             system.debug('old acc id is ' + oldAcc.Id  + ', old acc name is ' + oldAcc.Name);
//         }
//         system.debug('--');
//         system.debug('after update, trigger.new : ' + trigger.new); 
//         for (Account newAcc : trigger.new) {
//             system.debug('new acc id is ' + newAcc.Id  + ', new acc name is ' + newAcc.Name);
//         }

// } */
// /* system.debug('---');
//     if (Trigger.isBefore && Trigger.isInsert) {
//         system.debug('before insert, trigger.old : ' + trigger.old); 
//         system.debug('before insert, trigger.new : ' + trigger.new); 
//         system.debug('before insert, trigger.oldMap : ' + trigger.oldMap); 
//         system.debug('before insert, trigger.newMap : ' + trigger.newMap); 
//     }
//     if (Trigger.isAfter && Trigger.isInsert) {
//         system.debug('after insert, trigger.old : ' + trigger.old); 
//         system.debug('after insert, trigger.new : ' + trigger.new); 
//         system.debug('after insert trigger.oldMap : ' + trigger.oldMap); 
//         system.debug('after insert, trigger.newMap : ' + trigger.newMap); 
//     }

//     if (Trigger.isBefore && Trigger.isUpdate) {
//         system.debug('before update, trigger.old : ' + trigger.old); 
//         system.debug('before update, trigger.new : ' + trigger.new); 
//         system.debug('before update trigger.oldMap : ' + trigger.oldMap); 
//         system.debug('before update, trigger.newMap : ' + trigger.newMap); 
//     }
//     if (Trigger.isAfter && Trigger.isUpdate) {
//         system.debug('after update, trigger.old : ' + trigger.old); 
//         system.debug('after update, trigger.new : ' + trigger.new); 
//         system.debug('after update trigger.oldMap : ' + trigger.oldMap);
//         system.debug('after update, trigger.newMap : ' + trigger.newMap);  
//     }
//     system.debug('----');

// } */




