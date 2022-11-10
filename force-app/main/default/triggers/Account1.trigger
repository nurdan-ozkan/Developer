//Automatically create opportunity when an Account record is created.
//When a new Account is created with Account Type as 'prospect' Then Create new Task for yourself and send email alert to yourself 

trigger Account1 on Account (after insert) {

List<Opportunity> oppList = new List<Opportunity>();
List<Task> tasks = new List<Task>();


    for (Account a : Trigger.new) {
        Opportunity  o = new Opportunity();
        o.Name = 'Opp';
        o.StageName = 'Qualification';
        o.CloseDate = Date.today() + 90;
        o.AccountId =a.Id; //look up relationship field => Opp ond Account
        oppList.add(o);


        if (a.Type == 'Prospect'){
            Task t = new Task();
            t.Subject = 'New Account Test1';
            t.Status = 'In Progress' ; 
            t.WhatId = a.Id;
            t.OwnerId = UserInfo.getUserId();
            tasks.add(t);
            
            List<Messaging.Email> emails = new List<Messaging.Email>();

            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('First Email');
            msg.setPlainTextBody('This is my first email');
            List<String> emailList = new List<String>();
            emailList.add('nurdanozkan2525@gmail.com');
            msg.setToAddresses(emailList);

            emails.add(msg);
            Messaging.sendEmail(emails);

            //List<User> uList = new List<User>();
            User u = [SELECT Id, Name FROM User WHERE Name = 'Kenan Yildirim' LIMIT 1];

            Set<String> myId = new Set<String>();
            myId.add(u.Id);

            Messaging.CustomNotification notif = new Messaging.CustomNotification();
            notif.setTitle('First Notification');
            notif.setBody('Hello');
            notif.setNotificationTypeId('0ML8c000000GrQKGA0');
            notif.setTargetId(a.Id);
            notif.send(myId);
        
        }
    }
    insert tasks;
    insert oppList;
}