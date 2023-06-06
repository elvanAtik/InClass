trigger LeadTrigger on Lead (before insert, before update,after insert,after update ) {

    if(trigger.isInsert && trigger.isBefore){
        for(lead ld: trigger.new){
            if(ld.LeadSource==null){
                ld.LeadSource='Other';
            }

        }
    }
    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        for(lead ld : trigger.new){
            if(ld.Industry==null){
                ld.addError('Industry bolomu bos birakilamaz');
            }
        }
    }
}
    










// for(lead ld: trigger.new){
//     if(String.isBlank(ld.LeadSource)){
//         ld.LeadSource='Other';    
//         // lead source alanını boş bırakırsak otomatik olarak other işaretli gelir   
//         // bu işlem en insert işleminde hemde create işleminde geçerlidir.
//     }
//     if(String.isBlank(ld.Industry) && trigger.isInsert){
//         ld.addError('the industry field cannot be blank');
//         // industry alanını boş bırakarak create etmeye çalışırsak sayfanın altında hata mesajı alırız.
//     }
// }
    
    
    
    
    // if(trigger.isBefore && trigger.isInsert){
    //     for(Lead eachLead : trigger.new){
    //         eachLead.FirstName=' elvan ' + eachLead.FirstName;
    //     }
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     for(Lead eachLead : trigger.new){
    //         eachLead.FirstName=' elvan ' + eachLead.FirstName;
    //     }
    // }
