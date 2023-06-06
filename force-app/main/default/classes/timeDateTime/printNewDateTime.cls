public class printNewDateTime {
    public void printNewDateTime(){

        //methodname to create new DATETIME is newInstance
        date        newDate2 = Date.newInstance(2020, 3, 20);
        Time myTime1 = time.newInstance(11, 10, 30, 50);
        //1. new DateTime using i) date and ii) time
        datetime dt1 = datetime.newInstance(newDate2, myTime1);
        system.debug('dt 1 is ' + dt1);

        //2. new DateTime using year, month, day --> time will be midnight 00000
        datetime dt2 = datetime.newInstance(2021,1,5);
            //2021-01-05 0000 for argentina
                // what will this time be for GMT
                    // 2021-01-05 0300
            //it create datetime with user's timezone midnight
        system.debug('dt2 is ' + dt2);//while printing, it prints gmt

        //3. datetime using year, month, day, hour, min, sec
        Datetime dt3 = datetime.newInstance(2021, 5, 19, 6, 15, 50);
        system.debug('dt3 is ' + dt3);
   }
   
}