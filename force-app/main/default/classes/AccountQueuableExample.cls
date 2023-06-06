public class AccountQueuableExample implements Queueable{
    list<account> accList;
    public AccountQueuableExample(List<Account> accList){
        this.accList=accList;
    }
    public void execute(QueueableContext qc){
        for(account eachAcc : accList){
            eachAcc.name+= '---SI';
        }
        update accList;
    }
}