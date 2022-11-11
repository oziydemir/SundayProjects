ExerciseTurkishRev ab=new ExerciseTurkishRev();
Id batchId=database.executeBatch(ab,20);
System.debug('batch id is====> '+batchId);