DepartmentsBatch db=new DepartmentsBatch();
id jobid=Database.executeBatch(db,5);
System.debug('Job ID is ' + jobid);