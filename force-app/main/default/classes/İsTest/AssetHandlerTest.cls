@isTest
public class AssetHandlerTest {
    @isTest
    private static void testAssetTrigger() {
        List<Account> listAcc = new List<Account>(); 
        Account acc1 = new account();
        acc1.name = 'Account 1';
        listAcc.add(acc1);
        
        Account acc2 = new account();
        acc2.name = 'Account 2';
        listAcc.add(acc2);
        
        Account acc3 = new account();
        acc3.name = 'Account 3';
        listAcc.add(acc3);

        insert listAcc;
        
        List<Asset> listAsset = new List<Asset>();
        for (Account eachAsst : listAcc) {
            Asset asst = new Asset(); 
            asst.Name = 'Assignment 24'; 
            asst.Status = 'Shipped'; 
            asst.Description = 'Asset is shipped' ; 
            asst.accountid = eachAsst.id;

            listAsset.add(asst);
        }
        if (!listAsset.isEmpty()) {
            insert listAsset;
        }
    }
    private static void testAssetTrigger1(){
       
            List<Account> listAcc = new List<Account>(); 
            Account acc1 = new account();
            acc1.name = 'Account 1';
            listAcc.add(acc1);
            
            Account acc2 = new account();
            acc2.name = 'Account 2';
            listAcc.add(acc2);
            
            Account acc3 = new account();
            acc3.name = 'Account 3';
            listAcc.add(acc3);
    
            insert listAcc;
            
            List<Asset> listAsset = new List<Asset>();
            for (Account eachAsst : listAcc) {
                Asset asst = new Asset(); 
                asst.Name = 'Assignment 24'; 
                asst.Status = 'Shipped'; 
                asst.Description = 'Asset is shipped' ; 
                asst.accountid = eachAsst.id;
    
                listAsset.add(asst);
            }
            if (!listAsset.isEmpty()) {
                update listAsset;
            }
       

    }

}