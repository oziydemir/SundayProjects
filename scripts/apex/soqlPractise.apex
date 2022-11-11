List<Contact> contactPractise=[select account.id,id,name, email from contact];
List<Account> accountPractise=[select id,name,phone from account where phone!=null Order by name];
select id,name from Contact where accountid=null;
select count() from Opportunity;