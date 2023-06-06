trigger AssetTrigger on Asset (before insert,before update) {
    if(trigger.isInsert){
        AssetHandler.assetHandlerUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldmap);
    }
    if(trigger.isUpdate){
        AssetHandler.assetHandlerUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldmap);

    }
}