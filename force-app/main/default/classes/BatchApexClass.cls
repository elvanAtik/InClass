public class BatchApexClass implements Database.Batchable<sObject> {
    //class ismi girilmelidir.
    public Database.QueryLocator start(Database.BatchableContext BC) {
        //BC optionaldir istenilen isim verilebilir.
        return Database.getQueryLocator('select id,name from Account');
        //Querylocator un önüne get konulur.
        //Method void olmadığı için return olmalıdır.
        //Query parantez içinde ve string şekilde yazılmalıdır.
    }
    public void execute(Database.BatchableContext BC, List<Account> accList) {
        //accList ismi optional dir, accList ın içine yukarıda yapılan query konulur.
        for(Account acc: accList) {
            acc.Active__c='No';  
            //Accountun Active kısmının hepsinin No olamsını istiyoruz.
        }
        update accList;
    }
    public void finish(Database.BatchableContext BC) {
    }
}
            
        
 



