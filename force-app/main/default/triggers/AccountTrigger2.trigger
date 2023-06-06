/* trigger AccountTrigger2 on Account (before insert,after insert, before update,  after update) {

List<account> newAccounts = trigger.new;
if (Trigger.isBefore && Trigger.isInsert) {
    system.debug('trigger.new before insert : ' + trigger.new);
    system.debug('before insert number of records: ' + trigger.new.size());

    for (account eachAcc : trigger.new) {
        system.debug('before acc id ' + eachAcc.Id);
        system.debug('before acc name ' + eachAcc.Name);
    }
}

if (Trigger.isAfter && Trigger.isInsert) {
    system.debug('trigger.new after insert : ' + trigger.new);
    system.debug('after insert number of records: ' + newAccounts.size());

    for (account eachAcc : newAccounts) {
        system.debug('after acc id ' + eachAcc.Id);
        system.debug('after acc name ' + eachAcc.Name);
    }
}
}
 */
 

