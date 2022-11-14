// Queueable Apex
QueueableExample myClass = new QueueableExample();
System.enqueueJob(myClass);

System.enqueueJob(new QueueableExample());

//Schedule Apex
MySchedule myClass = new MySchedule();
System.schedule('My Schedule Apex', '0 0 12 * * ?', myClass );

System.schedule('My Second Schedule Apex today','0 0 13 * * ?', new MySchedule());

// Batch Apex 
Database.executeBatch(new batchAccountUpdate());


Database.executeBatch(UpdateContactDescription());