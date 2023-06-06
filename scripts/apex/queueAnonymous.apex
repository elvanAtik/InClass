List<Account> allAcc=[select id,name from account where createdDate = Last_month];
AccountQueuableExample aq=new AccountQueuableExample(allAcc);
Id queueId=System.enqueueJob(aq);
asyncApexjob ap=[select status,jobtype,jobitemsprocessed,id,methodname,numberoferrors from asyncapexjob where id = : queueid];

List<Account> eachAcc=new List<Account>();

    account acc=new account();
for (integer i=1; i<=4000 ; i++) {
    acc.name='Elvan ' + i;
    eachAcc.add(acc);
}
insert eachAcc;    


List<Account> ness=[select id from account];
System.debug(ness.size());