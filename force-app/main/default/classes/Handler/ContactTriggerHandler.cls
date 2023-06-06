public class ContactTriggerHandler {
    public static void ContactTriggerPhone(list<contact> conTriggerNew ,map<id,contact> triggernewmap) {
        //Bir accounta bağlı contactların bağlı oldukları accountların id lerini bir set yapıda toplayalım.
        set<id> accIds= new set<id>();
        for(contact con: conTriggerNew){
            if(con.Accountid!=null){
                accIds.add(con.Accountid);
            }
        }
        // soql ile bu accountların recordlarına ulaşalım.
        list<account> accList=[select id,phone from account where id in:accIds];
        if(!accList.isEmpty()){
            // Map<Id,account> mapAcc=new Map<Id,account>();
            // for(account ac: accList){
            //     mapAcc.put(ac.id, ac);
            //}
            for(contact cn: conTriggerNew){
                if(cn.accountid!=null){
                    cn.otherPhone=triggernewmap.get(cn.accountid).phone;
                    
                }
            }
        }
    }
}
    


            
