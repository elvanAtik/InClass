public class QueueableExample implements Queueable{
    //BatchApex te start,execute,finish olmak üzere 3 adet method varken =>
    //Queueable ve Schdule larda sadece Execute methodu vardır.
    public void execute(QueueableContext QC){
        //Execute methodunun içine parametre olarak QueueableContext i koymalıyız.
        //QC optionaldir istenilen veri girilebilir.
        List<Account> accList= new List<Account>();
        for (Integer i=1; i<=5; i++){
            Account acc=new Account();
            acc.name='Test Elvan ' + i;
            accList.add(acc);
        }  
        insert accList;
    }
}
            

      
     