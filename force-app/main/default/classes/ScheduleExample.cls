public class ScheduleExample implements Schedulable {

    public void execute(SchedulableContext SC) {
        list<opportunity> oppList=[select id,name,CloseDate,ownerId from Opportunity where Isclosed=false and CloseDate<Today];
        list<task> taskList =new list<task>();
        for(opportunity opp: oppList){
            task tsk = new task();
            tsk.subject='This opportunity needs attention';
            tsk.priority='High';
            tsk.status='Not Started';
            tsk.ownerId=opp.ownerId;
            tsk.WhatId=opp.Id;
            taskList.add(tsk);
        }
        insert taskList;
    }
}