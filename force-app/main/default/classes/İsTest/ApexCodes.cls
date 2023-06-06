public class ApexCodes {
    public static string fullName(String firstName,string lastName){
        String fullName = firstName + ' ' + lastName;
        return fullName;
    }
    public static integer addition(integer num1,integer num2){
        integer sum= num1 + num2;
        return sum;
    }public static decimal kmTomile(decimal km){
        decimal mile =km*0.625;
        return mile;
    }public static decimal mileTokm(decimal mile){
        decimal km=mile*1.6;
        return km;
    }
    public static String evenNumber(integer num){
        if(Math.mod(num, 2)==0){
            return 'even number';
        }else {
            return 'odd number';
        }
    }
    public static void createAccount(){
        Account acc=new Account();
        acc.name='Salesforce';
        insert acc;
    }
    public static void createAndUpdateAccount(){
        Account acc=new Account();
        acc.name='Softinnovas';
        insert acc;

        acc.name='Softinnovas Inc.';
        update acc;
    }
    public static void createContact(){
        account acc = [SELECT id,name FROM Account WHERE Name='Salesforce' limit 1];
       
        contact cn=new contact();
        cn.LastName='Doe';
        cn.Accountid=acc.id;
        insert cn;
    }
}