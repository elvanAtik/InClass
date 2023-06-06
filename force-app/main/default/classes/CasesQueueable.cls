public class CasesQueueable implements Queueable {
    public Id defaultAccId;
    public List<case> cases;
    public CasesQueueable() {

    }
    public CasesQueueable(Id defaultAccId, list<case> cases){
        System.debug('inside constructor');
        this.defaultAccId=defaultAccId;
        this.cases=cases;
    }
    public void execute(QueueableContext qc){
        System.debug('inside execute of queueable');
        for (case eachCase : cases) {
            eachCase.accountId=defaultAccId;
        }
        update cases;
    }
}
            