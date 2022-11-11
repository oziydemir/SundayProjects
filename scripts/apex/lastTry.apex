LeapYear callMethodLeap=new LeapYear();
Date randomDate=date.newInstance(2017, 5, 3);
boolean result=callMethodLeap.isLeapYear(randomDate);
system.debug('the result of this control is '+result);