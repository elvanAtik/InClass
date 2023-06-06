@isTest
public class ApexCodesTest {
    @isTest
    public static void fullNameTest(){
       String a = ApexCodes.fullName('Elvan', 'Dalton');
       system.assertEquals('Elvan Dalton', a);
    }
    @isTest
    public static void additionTest(){
        integer a =ApexCodes.addition(8, 7);
        system.assertEquals(15, a);
    }
    @istest
    public static void kmTomileTest(){
        decimal a=ApexCodes.kmTomile(1000);
        system.assertEquals(625, a);
    }
    @istest
    public static void mileTokmTest(){
        decimal a=ApexCodes.mileTokm(10);
        system.assertEquals(16, a);
    }
    @istest
    public static void evenNumberTest(){
        string a= ApexCodes.evenNumber(12);
        system.assertEquals('even number', a);
    }
    @istest
    public static void oddNumberTest(){
        string a= ApexCodes.evenNumber(11);
        system.assertEquals('odd number', a);
    }
    @isTest
    public static void createAccountTest(){
        test.startTest();
        ApexCodes.createAccount();
        test.stopTest();

        list<account> accList=[SELECT id,name FROM Account WHERE Name='Salesforce'];
        system.assertEquals(1,accList.size());
        system.assertEquals('Salesforce',accList[0].name);
    }
    @isTest
    public static void createAndUpdateAccountTest(){
        test.startTest();
        ApexCodes.createAndUpdateAccount();
        test.stopTest();

        list<account> accList=[SELECT id,name FROM Account WHERE name ='Softinnovas Inc.'];
        system.assertEquals(1,accList.size());
        system.assertEquals('Softinnovas Inc.',accList[0].name);
    }
    @isTest
    public static void createContactTest(){
        Account acc=new Account();
        acc.name='Salesforce';
        insert acc;

        test.startTest();
        ApexCodes.createContact();
        test.stopTest();

        List<Contact> conList =[SELECT id,name ,LastName FROM Contact WHERE LastName='Doe'];
        system.assertEquals(1,conList.size());
        system.assertEquals('Doe',conList[0].name);
        assert.areEquals

        

    }
}


        
