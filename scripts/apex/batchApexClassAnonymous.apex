BatchApexClass ea1=new BatchApexClass();
Database.executeBatch(ea1,100); 
//eğer batchsize girmezsek otomatik olarak kayıtlar 200 er 200 er yapılır.
//Database.executeBatch(ea1, 100);
//eğer batcsize i girersek kayıtlar bizim belirttiğimiz miktar oranında olur.
