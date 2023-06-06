public  class DmlVideo2 {
    public static void createAccount() {
        Account acc= new Account();
        acc.name='Elvannnnnn';
        insert acc;

        Contact con=new contact();
        con.LastName='Daltonnnnnn';
        con.Description='mission successful';
        con.Accountid=acc.id;
        insert con;

        
        account accList=[select id,name from account where name ='Elvannnnnn' limit 1];
        contact conList=[select id,name from contact where accountid=null limit 1];
        conList.Accountid=accList.id;
        update conList;
    }
    public static void accontlst(){
        list<account> accList = new list<account>();
        account acc=new account();
        acc.name='Londra 1';
        accList.add(acc);
        account acc1=new account();
        acc1.name='Londra 2';
        accList.add(acc1);
    }
    public static void fiveAccount(){
        list<account> accList =new list<account>();
        for(integer i=1; i<=5; i++){
            account acc=new account();
            acc.name='Eltuşpa' +i;
            accList.add(acc);
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        list<contact> conList = new list<contact>();
        for (account ac: accList){
            for(integer i=1; i<=5; i++){
                contact con=new contact();
                con.LastName='Vandal ' + i;
                con.AccountId=ac.id;
                conlist.add(con);
            }
        }
        if(!conList.isEmpty()){
             insert conList;
         }
    }     
}


               

            


        
   
    
