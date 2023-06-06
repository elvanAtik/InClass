public class DepartmentsBatch implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        System.debug('inside start method');
        return Database.getqueryLocator([select id,number_of_employees__c,(select id from employees__r)from Department__c]);
    }
    public void execute(Database.BatchableContext BC, List<Department__c> scopeDep) {
        System.debug('inside execute method');
 for(Department__c eachDep : scopeDep){
       if(eachDep.Employees__r!=null){
          eachDep.number_of_employees__c=eachDep.Employees__r.size();
            }
        }
        update scopeDep;
    }
    public void finish(Database.BatchableContext BC) {
        system.debug('finished.');
    }
}




        

