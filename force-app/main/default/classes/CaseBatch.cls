/*3. Write a logic in Batch to Create tasks for all the cases other than the closed and on which there was no activity since last 5 days.
a. Implement the above logic in such a way that whenever required subject and Comments
field value can be changed without the code change.
Populate the task field values as follows:
Field Value
Subject Critical action needed
Due Date Today + 2 days.
Comments Complete fast.
Related To Case Id
Assigned To Case Owner Id
Status In Progress
*/
public with sharing class CaseBatch implements Database.Batchable<sObject>{
        
    //1.start method - soql to fetch records
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = Database.getQueryLocator([SELECT id, Status, OwnerId FROM Case WHERE Status != 'Closed' AND LastModifiedDate < LAST_N_DAYS:5]);
        return q1;
    }
    
    public void execute(Database.BatchableContext bc, List<Case> scope){
    System.debug(scope);
        List<Task> listTask = new List<Task>();
        for (Case eachCase : scope) {
            Task t1 = new Task();
            t1.WhatId = eachCase.id;
            t1.OwnerId = eachCase.OwnerId;
            t1.Status = 'In Progress';
            t1.ActivityDate = date.today().addDays(2);
            listTask.add(t1);
        }
        insert listTask;
    }
    
    public void finish(Database.BatchableContext bc){
        system.debug('A task is inserted for each Case');
    }
    }