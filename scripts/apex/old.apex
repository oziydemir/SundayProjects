System.debug('Ozan');
System.debug('Toronto');
System.debug('Canada');
System.debug('Videographer');
System.debug('Footbal');


public  class Car {
   //this is class body. 
}


public class Car {
    public void switchOn(){
        system.debug('starting the car');
    }
}
 //switch on method name
 //ondan sonraki tüm kısımlar method body
 //public access type
 //void return type
//they should be inside of the class body.


//class name  //var name   //new creates new instance
Car         carObj1 =         new car();
carObj1.switchOn();

//objecti sadece apexte execute edebilirsin.
//objecti yaratırken class name cls dosyası ile aynı olmalı
//objecti apexte execute etmeden class sayfasını 
//deploy etmeyi unutma

public class try{
    public void start(){
        system.debug('start the car');
    }
}

try tryNew= new try()
tryNew.start()

// bu sadece örnek olsun diye farklı bir örnek

// data type ve variable örnekleri

String myFirstString='I am first string';
Integer myFirstInteger= 34;
system.debug(myFirstString); // debug will be 'I am first string'
// variable names can be updatable

myFirstString = 'after then I am second string';
system.debug(myFirstString);//affter that debug will be 'after then I am second string'

myFirstString = 'this is third update and its possible also';
system.debug(myFirstString);

String firstName='Ozan';
String lastName='Ozaydemir';
String fullName=firstName+' '+lastName;
system.debug(fullName);


//ödevdi
public class stringDemo {
    public void stringDemoMethod2() {
        String demoString='I am learning string methods in apex language.';
        Integer demoStrLength=demoString.length();
        System.debug('length of this demo string is '+demoStrLength);
        String capitalString=demoString.toUpperCase();
        System.debug(capitalString);
        Boolean containsString=demoString.contains('learning');
        System.debug('is contains learning? '+ containsString);


    }
}
//ödev bitimi

public class PrimitiveDataTypeDemo2 {
   public void printNewDate(){
       system.debug('create new date instances');
       //new date instance using YEAR, MONTH, DAY
       Date newDate1 = Date.newInstance(1999, 2, 17);
       system.debug('newDate1 --> ' + newDate1);
       Date newDate2 = Date.newInstance(2022, 3, 18);
       system.debug('newDate2 --> ' + newDate2);

       Date todayDate = date.today();
       system.debug('today\'s date' + todayDate);
   }

   public void printNewTime(){
       //new time using HOUR, MINUTE, SECOND, MILLI SECONDS
       time mytime = time.newInstance(18, 9, 30, 25);
       time mytime2 = time.newInstance(7, 9, 8, 15);
       system.debug('mytime ->' + mytime);
       system.debug('mytime2 ->' + mytime2);
   }
}

//yukarıdakinin apexten çağırımı

PrimitiveDataTypeDemo2 p2 = new PrimitiveDataTypeDemo2();
//p2.printNewDate();
p2.printNewTime();

public class PrimitiveDataType2 {
    public void printNewDate() {
        System.debug('create new date instances.');
        Date newDate=date.newInstance(1999,2,17);
        System.debug('new date1 is '+newDate);
        Date newDate2=date.newInstance(2022,3,18);
        System.debug('new date2 is '+newDate2);

        Date todayDate=date.today();
        System.debug('today is '+todayDate);
    }

    public void printNewTime(){
        Time newTime=time.newInstance(18, 9, 23, 15);
        Time newTime2=time.newInstance(7, 9, 8, 15);
        System.debug('my time is '+ newTime);
    }

    public void printNewDateTime(){
        Date todayDate=date.today();
        Time newTime2=time.newInstance(7, 9, 8, 15);
        Datetime newDateTime=Datetime.newInstance(todayDate, newTime2);
        system.debug('dt1 is '+ newDateTime);
        Datetime dt2=Datetime.newInstance(2025, 9, 11);
        System.debug('dt2 is '+dt2);
        Datetime dt3=Datetime.newInstance(2002, 11, 24, 10, 25, 24);
        System.debug('dt3 is '+dt3);
        Long longtime=1212312312312L;
        Datetime dt4=Datetime.newInstance(longtime);
        Long longtime2=0;
        Datetime dt5=Datetime.newInstance(longtime2);
        System.debug('dt4 is'+dt4);
        System.debug('dt5 is'+dt5);
        Datetime dt6=Datetime.newInstanceGmt(2022,3,4,22,34,56);
        System.debug('dt6 is'+dt6);
        Datetime dt7=Datetime.now();
        System.debug('dt7 is now and now is '+dt7);


        


        
    }
}

//date time ekleme çıkarma

public  class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        Date todayDate=Date.today();
        Date birthDay=Date.newInstance(1997, 21, 07);
        Integer ageTotal=birthDay.monthsBetween(todayDate); //aradaki ayı verir.
        System.debug(ageTotal);
        Integer ageInDaysTotal=birthDay.daysBetween(todayDate); //aradaki günü verir.
        System.debug(ageInDaysTotal);

    }
    public void printSubscriptionEndDate(){
        Date subStartdate=Date.today();
        Date endDate=subStartdate.addDays(1000);//parametre içindeki günü ekler.
        System.debug(endDate);


    }
}


    
    public void printSubscriptionEndDate(){

        Date subStartdate=Date.today();
        Date endDate=subStartdate.addDays(1000);
        Integer endYear=endDate.year();// belirli bir tarihten sadece yılı alır integer yapar.
        Integer endMonth=endDate.month();//''       ''      ''          ayı ''      ''      ''.
        System.debug('subs end date '+endDate);
        System.debug('subs end year '+endYear);
        System.debug('subs end month '+endMonth);


    }
    public void printOfferEndDateTime(){
       
        Datetime dtime1=Datetime.now();//anın tarihini ve saatini verir 
        Datetime endDTime=dtime1.addHours(51);//parametre içindeki değeri saat olarak ekler.
        Date endJustDate=endDTime.date();
        system.debug(endJustDate+' is offfer ending date');

        Datetime birthdate=Datetime.newInstance(1997, 7, 21,7,30,4);
        Long newGetTime=birthdate.getTime();
        system.debug(newGetTime);
    }



Calculator cal= new Calculator();
cal.printNewMessage('This is new age calc.');

String msg='this is going to work';
cal.printNewMessage(msg);

String msg99='this is also going to work because it\'s  not about the variable name its about datatype and its still string';
cal.printNewMessage(msg99);

Integer msg=23;
cal.printNewMessage(msg); //this is not gonna work because datatype is integer but in class method, datatype is integer.we can't
//execute this,otherwise it will give an error.

public class Calculator {
    public void printNewMessage(String msg) {
        System.debug(msg);
    }

    public string printAndReturnMessage(String msg){
        string newStr=msg+'..OK cool.';
        return newStr;

    }

    public integer add(Integer c,Integer d){
        integer sum= c+d;
        return sum;
    }
    public integer add(integer q,integer w,Integer e){
        integer conc=q+w+e;
        return conc;
    }
}
Calculator prm=new Calculator();
string result=prm.printAndReturnMessage('print this ASAP');
system.debug(result);


Calculator prm=new Calculator();
integer lastReturn=prm.add(10, 5);
system.debug(lastReturn);

Calculator prm=new Calculator();
integer t=prm.add(13, 6, 7);
System.debug(t);

//bitiş calculator first.

//date leapyear

public class DateMethodClass {
    public boolean leapYearCheck(Date dt){ //parametreye tarih gelir
        
        
        integer yr = dt.year(); //sadece yılını kontrol edeceğimiz için bütün tarihin sadece yılını alırız.
        boolean isLeap = Date.isLeapYear(yr); //kontrol ederiz.
        return isLeap;// true false return eder.
    }
}

DateMethodClass dm = new DateMethodClass();
Date someDate = date.newInstance(2005, 01, 01);

boolean leapCheck1 = dm.leapYearCheck(someDate);
system.debug('2005-01-01 falls in leap year? ' + leapCheck1);

Date someDate2 = date.newInstance(2800, 11, 01);
boolean leapCheck2 = dm.leapYearCheck(someDate2);
system.debug('2008-11-01 falls in leap year? ' + leapCheck2);
// bitiş leap year.


public class Car {
    public string carColor='';
    public string carName='';
    Integer maxKmPerHour=150;

    public void startCar(){
        System.debug('start the car.');
    }
    public void drive(){
        System.debug('driving'+carName);
    }
    public void maxSpeed(){
        string drivingDesc='driving '+carName+'at '+ maxKmPerHour;
        sytem.debug(drivingDesc);
    }

    //çağırması aşağıda
Car cObj=new car();
cObj.carColor='black';
System.debug('car is '+cObj);
cObj.startCar();
System.debug('car color is '+cObj.carColor);
//System.debug('max speed is '+cObj.maxKmPerHour);
//üsttekini execute etmeyecek hata verecek
//çünkü variable type is private.





//19 September 2022 session.


//if else class and apex instances
public class RankHandler {
    public string rankPrize(integer rank){
        string prize = '';
        //set prize as per rank. 
        //if rank is 1 => prize = gold;
        if (rank == 1) {
            prize = 'Gold';
        } else if (rank == 2) {
            prize = 'Silver';
        } else if (rank == 3) {
            prize = 'Bronze';
        } else { //it will come here if rank is NOT 1, 2, 3
            //THIS IS ONE OF THE WAY TO ACHIEVE THE REQUIREMENT. 
            //THIS IS NOT THE ONLY WAY TO DO IT.
            //WE CAN DO IT IN MANY WAYS. AND THIS IS ONE OF THEM.
            //nested if
            if (rank <= 10) {
                prize = 'Top 10, good job';
            } else {
                prize = 'Thank you for participating';
            }
        }
        return prize;
    }

    public string rankPrizeSwitch(integer rank){
        string prize = '';
        switch on rank {
            when 1 {
                 prize = 'Gold';
            } when 2{
                prize = 'Silver';
            }
            when 3{
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10{
                prize = 'Top 10 congratulations';
            }
            when else {
                 prize = 'practice more';
            }
        }

        return prize;
    }
}

RankHandler rh=new RankHandler();
string prize1=rh.rankPrize(1);
System.debug(prize1);
string prize2=rh.rankPrize(2);
System.debug(prize2);
string prize3=rh.rankPrize(3);
System.debug(prize3);
String prize4=rh.rankPrize(4);
System.debug(prize4);
String prize9=rh.rankPrize(9);
System.debug(prize9);
String prize10=rh.rankPrize(10);
System.debug(prize10);
String prize12=rh.rankPrize(12);
System.debug(prize12);

string prize1s=rh.rankPrizeSwitch(1);
system.debug(prize1s);

//loops with while and for

public class LoopDemo {
    public void print_int_while() {
        
        integer count=1;

        while (count<=25){
            System.debug(count);
            count++;
        }
    }


public void print_or_loop(integer n){
     for(integer i=0; i<=n; i++){
        System.debug(i);
      }
    }
}

public void print_start_end(integer startInt, integer endInteger){    // odd number printing 
    for(integer i=startInt; i<=endInteger; i++){
        Integer modI=Math.mod(i, 2);
        if (modI == 1) {
            System.debug(i);
        }
    }

    
}
}


LoopDemo lp= new LoopDemo();
lp.print_or_loop(15);
lp.print_int_while();


// finish

//20 September 2022
// static and unstatic variables and methods.

public  class Candidates {
    
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer candidateCount=0;

    public Candidates(){  // counterı buraya koyduk bu bir constructor
        System.debug('constructor automaticly called.');
        candidateCount++;
    }

    public void printCandidates() {
        System.debug('Candidate name is '+Name+'('+Gender+')');
        System.debug('Company name is '+ CompanyName);
    }
}

//above is class and method.

//belows are apex.


Candidates.CompanyName='soft innovas';

System.debug('start candidate count is '+Candidates.candidateCount);

Candidates c1=new Candidates();
c1.Name='ozan';
c1.Gender='male';
c1.printCandidates();

Candidates c2=new Candidates();
c2.Name='yaren';
c2.Gender='feemale';
c2.printCandidates();

Candidates c3=new Candidates();
c3.Name='baris';
c3.Gender='male';
c3.printCandidates();

Candidates.CompanyName='google';

Candidates c4=new Candidates();
c4.Name='can';
c4.Gender='male';
c4.printCandidates();

Candidates c5=new Candidates();
c5.Name='erdem';
c5.Gender='male';
c5.printCandidates();
System.debug('end candidate count is '+ Candidates.candidateCount);

// this is apex file end executions.


//constructor yaratma ve onu apexten çağırma.(parametreli constructors.)
public class Cat {
    
    public String name;
    public String color;

    public Cat(String n, String clr) {
        
        color=clr;
        name=n;
        sleeping();
        
    }

    public void sleeping(){
        system.debug(name+' is sleeping.');
    }
}


//üst kısım class kısmı
//alt kısım apex

//normal world
cat sf=new Cat();

//assigning variable
sf.name='viski';
sf.color='orange';
System.debug(sf);

//bu da constructor'a parametre ekleyip tek satırda yazma
Cat nc=new Cat('tekir','siyah');
System.debug(nc);
// eğer class içinde parametre tanımlanış bir constructor var ise
// standart boş paranntez ile instance yaratma olayı çalışmaz.
//


//22 September 2022-List

public class ListDemo {
    
    public static void randomIntegerList(){
        
        List<Integer> listInteger=new List<Integer>();
        
        listInteger.add(15);//0
        listInteger.add(35);//1
        listInteger.add(32);//2
        listInteger.add(21);//3
        listInteger.add(21);//4
        
        System.debug('list of integers is '+listInteger);

        Integer index3value=listInteger.get(3);      //both ways work ffor adding.
        Integer index2value=listInteger[2];
        
        System.debug('the value of list of integers third index is '+ index3value);
        System.debug('the value of list of integers second index is '+ index2value);

        }
        
    public static string candidateList(integer i) {
        
        List <String> listOfCandidates =new List<String>();
        
        listOfCandidates.add('Marc');//0
        listOfCandidates.add('Bill');//1
        listOfCandidates.add('Elon');//2
        listOfCandidates.add('Marc');//3
        System.debug('list of candidate is '+listOfCandidates);
        
        string returnStr='';        
        if (i>=0 && i<listOfCandidates.size()) {
            
            returnStr=listOfCandidates[i];
       
        } else {
            returnStr='no value found.';
        }

        return returnStr;  //in this way,we did dynamic this method.whatever we type in the parameter,it will work with this.
    }

    public static void allCats() {
            
            cat siCat = new cat('fluffykins', 'white');     // bunu sadece cat classında calıstırabiliriz çünkü orada constructor var.
            cat vk = new cat('van', 'white');
            cat s = new cat('simba', 'brown');
    
            List<cat> cats = new list<cat>();
            cats.add(siCat);
            cats.add(vk);
            cats.add(s);
            cats.add(siCat);
            cats.add(vk);
    
            system.debug('all cats ===> ' + cats);
            if (!cats.isEmpty()) { //eğer kediler listesi boş değilse
                
                cat catAt3 = cats[3]; //cat 3 indexini getir.

                system.debug('cat at 3 is ' + catAt3); //print et çünkü method return type ı void.
            }
        }
}
// apex codes
ListDemo.allCats();

string try1=ListDemo.candidateList(3);
System.debug(try1);
String try2=ListDemo.candidateList(6);
System.debug(try2);
ListDemo.randomIntegerList();


// For Each Loops//important.

public class ForEachLoops {
    public static void iterateIntegerList() {
        List <Integer> listInteger=new List<Integer>();
        
        listInteger.add(15);
        listInteger.add(20);
        listInteger.add(25);
        listInteger.add(35);
        listInteger.add(45);

    
    
    
        //datatype //var name   //liste adı
    for (integer integerValue : listInteger) {
           
         System.debug(integerValue); 
                                        //kıvırcık parantezin içerisine yazdığın her şeyi adı yazılı olan listenin her elemanı için yapacaktır.
        }                               //buradaki oluşturduğumuz variable name sıra sıra seçili olan listedeki elemanların hepsinin değerini alacak.
                                        //listedeki elemanlar bitince ise otomatik olarak duracak.yani aslında burada oluşturduğumuz variable name, köşeli parantezdeki
                                        //komut yapılana kadar bir üyeyi temsil ediyor, sonra ise değişiyor.

    }

    public static integer add(List<integer> abc ){ //method parametresi bir liste,set veya map olabilir. yani methodu çağırırken parametresine bunları seçebiliriz.
        
        integer result=0; //return type integer olduğu için bir integer oluşturduk.
        
        for (integer x : abc) { //abc listesindeki her elemanı üzerine koya koya topla dedik.
            result += x;
        }

        return result;
    }
}

ForEachLoops.iterateIntegerList();// apex code for first method.(iterateIntegerList)

List<Integer> nl=new List<integer>();
nl.add(10);
nl.add(15);
nl.add(20);
nl.add(25);
integer sum=ForEachLoops.add(nl);
System.debug(sum); /// apex code for second method.(for add method.)


//23 September 2022 

public class SetDemo {
    public static void citySet() {
        
        Set <String> firstSet=new Set<string>();
        
        firstSet.add('Istanbul');
        firstSet.add('Toronto');
        firstSet.add('Berlin');
        firstSet.add('Tokyo');
        firstSet.add('Nairobi');
        firstSet.add('Tokyo');
        firstSet.add('Nairobi');
        
        System.debug('cities are '+firstSet);
    }

    public static void integerSet(){
        
        Set<Integer> secondSet=new Set<Integer>();
        
        secondSet.add(10);
        secondSet.add(25);
        secondSet.add(35);
        
        System.debug('integers are '+secondSet);
    }

    public static Set<Integer> setfFromList(List<Integer> li){  //burada yaptığımız parametreyi bir list olarak belirliyoruz.
    
    Set<Integer> set1=new Set<Integer>();                       //methodun return type'ı ise burada set<integer> olarak belirlenmiş.
    
    set1.addAll(li);                                            //önce bir set yaratıyoruz ve parametredeki listeyi buraya koyduğumuzda
   
    return set1;                                                //parametredeki listeden bize bir set yaratıyor.
    }

    public static void capitilazeAllSet(){
       
        Set <String> firstSet=new Set<string>();
        
        firstSet.add('Istanbul');
        firstSet.add('Toronto');
        firstSet.add('Berlin');
        firstSet.add('Tokyo');
        firstSet.add('Nairobi');
        firstSet.add('Tokyo');
        firstSet.add('Nairobi');
        
        System.debug('cities are '+firstSet);

        Set<String> citiesCapital=new Set<String>();
            

        For(string ec:firstSet){
            
            string temporaryStr=ec.toUpperCase();
            
            citiesCapital.add(temporaryStr);
        }
        system.debug(citiesCapital +' is capital cities.'); 
}
}
// setlerde duplicate izin verilmez ve belirli bir şekilde saklanmaz.
//bu yüzden index kullanarak çağıramayız.

//apex sayfası aşağıda.

SetDemo.citySet();
SetDemo.integerSet();

List<Integer> li55=new List<Integer>();             //methodu çağırabilmek için önce bir liste yaratıyoruz.
li55.add(22);                                       //ardından yarattığımız listeyi methoda parametre olarak koyuyoruz.
li55.add(43);                                       //yarattığımız method bu listeden bize set oluşturuyor.
li55.add(35);                                       //listedeki duplicate edilmiş şeylerden set oluşturduğumuz için kurtuluyoruz.
li55.add(35);
li55.add(55);
li55.add(55);
set<integer> setLi=SetDemo.setfFromList(li55);
system.debug('setli is '+setLi);


SetDemo.capitilazeAllSet();

public static void capsAllSet(List<String> a){
    
    Set<String> s1=new Set<String>();
    
    s1.addAll(a);
    
    for (string x : s1) {
        
        String capsSet=x.toUpperCase();
        
        Set<String> last=new Set<String>();

        last.add(capsSet);
        system.debug(last);
        
        }   

//Map yaratma.


Map<string, string> mapCountryCurrency = new map<string, string>();      //map'ten içerik çağırmak istediğimizde .get() parantez içine key'i yazarız.
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
mapCountryCurrency.put('Canada', 'Dollar'); 
mapCountryCurrency.put('Australia', 'Dollar'); 

system.debug('map country currency ===> ' + mapCountryCurrency);

string Ind = 'India';
string IndiaCurrency = mapCountryCurrency.get(Ind); //WILL WORK.
string TurkiyeCurrency = mapCountryCurrency.get('Turkiye');
system.debug('India currency is ' + IndiaCurrency);
system.debug('Turkiye currency is ' + TurkiyeCurrency);



public static Set<String> capsAllSet(List<Integer> a){
    
    Set<String> s1=new Set<String>();
    
    
}


// 26 September 2022

//Map keyler ve value'lar.

Map<string, string> mapCountryCurrency = new map<string, string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
mapCountryCurrency.put('Canada', 'Dollar'); 
mapCountryCurrency.put('Australia', 'Dollar'); 

system.debug('map country currency ===> ' + mapCountryCurrency);

string Ind = 'India';
string IndiaCurrency = mapCountryCurrency.get(Ind); //WILL WORK.
string TurkiyeCurrency = mapCountryCurrency.get('Turkiye');
system.debug('India currency is ' + IndiaCurrency);
system.debug('Turkiye currency is ' + TurkiyeCurrency);

Set<String> countries=mapCountryCurrency.keySet();
List<String> currencies=mapCountryCurrency.values();

system.debug(countries);
system.debug(currencies);


Set<String> countriesFor=mapCountryCurrency.keySet();

for(string eachCountry:countriesFor){
    System.debug('each country is '+eachCountry);
    string eachCurrency=mapCountryCurrency.get(eachCountry);
    System.debug('each currency is '+eachCurrency);
}



// classta yapılan map methodu

public  class MapDemo {
    public static string retriveMonth(integer mo) {
        
        string month='';

        map<integer,string> monthMap=new map<integer,string>();

        monthMap.put(1, 'january');
        monthMap.put(2, 'february');
        monthMap.put(3, 'march');
        monthMap.put(4, 'april');
        monthMap.put(5, 'may');
        monthMap.put(6, 'june');
        monthMap.put(7, 'july');
        monthMap.put(8, 'august');
        monthMap.put(9, 'september');
        monthMap.put(10, 'october');
        monthMap.put(11, 'november');
        monthMap.put(12, 'december');

        Boolean keyExist=monthMap.containsKey(mo); // map için özel built in method

        if (keyExist) {
            month=monthMap.get(mo);
        } else {
            month='No such month exist.';
        }
        
        return month;

    }
}
// apexi aşağıda

string month8=MapDemo.retriveMonth(8);
System.debug('month 8 is '+month8);

string month25=MapDemo.retriveMonth(25);
System.debug('month 25 is '+month25);

//bitiş

// 27 september 2022

//soql and creating list from soql query

public class SoqlDemo {
    public static void accountSOQLOne() {
        List<Account> accountList=[select id,name,phone,active__c from Account where name like '%a%'];
        System.debug('list o account is '+accountList);
        System.debug('number of list is '+accountList.size()); //listedeki eleman sayısı.yani record sayısı.

        Account lastCreatedAcc=[select id,name,createddate from account order by createddate desc LIMIT 1];
        System.debug('acc is '+ lastCreatedAcc);
    }

    public static void accountSOQLtwo() {

        Account lastCreatedAcc2=[select id,name,createddate,AccountNumber,Phone from account order by createddate desc LIMIT 1];

        string accname=lastCreatedAcc2.name;
        string accphone=lastCreatedAcc2.Phone;
        System.debug('account name is '+accname);
        System.debug('account phonne is '+accphone);
        System.debug('account number is '+lastCreatedAcc2.AccountNumber);  
    }

    public static void accountSOQLthree() {
        List<Account> accList=[select id,name,phone,accountnumber from account ORDER BY CreatedDate DESC];
        system.debug('acc list is '+accList);

        for (Account eachMember : accList) {
            string accName=eachMember.Name;
            System.debug('acc name is '+accName);

            string accPhone=eachMember.Phone;
            System.debug('acc phonne is '+ accPhone);

            System.debug('acc number is '+eachMember.AccountNumber);
        }
    }

    public static void SOQLfilter() {
        string nameFilter='Salesforce Inc';
        List<Account> acclist=[select id,name from Account WHERE Name =:nameFilter];
        System.debug(accList);

        


    }
    public static void SOQLfilter(string nameFilter) {
        
        List<Account> acclist=[select id,name from Account WHERE Name =:nameFilter];
        System.debug(accList);
}
}

//child to parent query.

select id,name , subject__c, status__c, salesforce_project__r.name,salesforce_project__r.project_name__c,salesforce_project__r.status__c from salesforce_ticket__C // child to parent query

public class SoqlDemo {
    public static void accountSOQLOne() {
        List<Account> accountList=[select id,name,phone,active__c from Account where name like '%a%'];
        System.debug('list o account is '+accountList);
        System.debug('number of list is '+accountList.size()); //listedeki eleman sayısı.yani record sayısı.

        Account lastCreatedAcc=[select id,name,createddate from account order by createddate desc LIMIT 1];
        System.debug('acc is '+ lastCreatedAcc);
    }

    public static void accountSOQLtwo() {

        Account lastCreatedAcc2=[select id,name,createddate,AccountNumber,Phone from account order by createddate desc LIMIT 1];

        string accname=lastCreatedAcc2.name;
        string accphone=lastCreatedAcc2.Phone;
        System.debug('account name is '+accname);
        System.debug('account phonne is '+accphone);
        System.debug('account number is '+lastCreatedAcc2.AccountNumber);  
    }

    public static void accountSOQLthree() {
        List<Account> accList=[select id,name,phone,accountnumber from account ORDER BY CreatedDate DESC];
        system.debug('acc list is '+accList);

        for (Account eachMember : accList) {
            string accName=eachMember.Name;
            System.debug('acc name is '+accName);

            string accPhone=eachMember.Phone;
            System.debug('acc phonne is '+ accPhone);

            System.debug('acc number is '+eachMember.AccountNumber);
        }
    }

    public static void SOQLfilter() {
        string nameFilter='Salesforce Inc';
        List<Account> acclist=[select id,name from Account WHERE Name =:nameFilter];
        System.debug(accList);

        


    }
    public static void SOQLfilter(string nameFilter) {
        
        List<Account> acclist=[select id,name from Account WHERE Name =:nameFilter];
        System.debug(accList);
}
}

//29 september 2022 


public class SoqlDemo2 {
    public static void childToParent_soql1() {
        //list<sObject> on whichever object we are doing query.
        List<contact> listContact = [select id, name, account.name from contact 
                        where account.industry = 'Energy'];
        for (contact eachContact : listContact) {
            string accName = eachContact.account.name;
            system.debug('contact name is ' + eachContact.name + ' account name => ' + accName);
        }
    }
    public static void parentToChild_soql1() {
        list<account> listAccWithOpps  = [select id, name, annualrevenue, type, 
                            (select id, name, amount, stagename from opportunities where stageName = 'Closed Won') 
                            from account where type = 'Customer - Direct'];
        //account name, its annual revenue
            //opp name --> amount -->
         for (account eachAcc : listAccWithOpps) {
             system.debug('account name is ' + eachAcc.Name + ' and annual revenue is ' + eachAcc.AnnualRevenue);
             List<Opportunity> listOpp = eachAcc.Opportunities;
             for (opportunity eachOpp : listOpp) {
                 system.debug('opp name is ' + eachOpp.Name);
                 system.debug('oppp amount is ' + eachOpp.Amount);
             }
             system.debug('-------');
         }   
    }

    public static void parentToChild_soql2() {
        list<salesforce_project__c> listSP = [select id, name, project_name__c, 
                            (select priority__c, name from salesforce_tickets__r) 
                            from salesforce_project__c];
        for (salesforce_project__c eachSP : listSP) {
            system.debug('project name is ' + eachSP.project_name__c);
            List<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r; 
            //how to get count of the list?
            integer totalTickets = listST.size();
            system.debug('total tickets in project is ' + totalTickets);integer totalTickets = listST.size();
            system.debug('total tickets in project is ' + totalTickets);
            //# of High priority tickets in each project.
            integer eachProjectHP = 0;
            for (salesforce_ticket__c eachST : listST) {
                system.debug('eachST ==> ' + eachST);
                if (eachST.priority__c == 'High') {
                    eachProjectHP++;
                }
            }
            system.debug('# of High priority tickets ' + eachProjectHP);
        }
    }
}

SOQLDemo2.childToParentsoql_1(); //apex for up.

//parent to child for query.


//30 september 2022

public class DMLdemo {
    public static void dmlInsertDemoStndObj1 () {
        Account myNewAcc1=new Account();

        myNewAcc1.name='Burjuva Inc.';
        myNewAcc1.phone='4167328596';

        insert myNewAcc1;

    
    }

    public static void dmlInsertDemoCstmObj1() {
        
        Salesforce_Project__c newSPrec=new Salesforce_Project__c();
        
        newSPrec.Project_Name__c = 'Teach DML to batch10';
        newSPrec.Description__c = 'All are great.';
        newSPrec.Status__c = 'New';

        insert newSPrec;


    
    }

    public static void dmlUpdateDemoStdObj1() {
        Account acc1=new Account();
        acc1.Name='Softinnovas';
        
        insert acc1;
       

        acc1.name='Salesforce Inc.';
        update acc1;
        System.debug('after updating ----->'+acc1);
    
    }

    public static void dmlUpdateWithSoql() {
        Account newAccWithSoql=[select id,name from account where name='Softinnovas' LIMIT 1];
        newAccWithSoql.name='Softinnovas INC.';
        newAccWithSoql.Phone='14124124124';
        update newAccWithSoql;
    }


       public static void dmlInsertDemo2() {
        Account acc=[select id,name from account ORDER BY CreatedDate DESC LIMIT 1];

        Contact contNew=new Contact ();

        
        contNew.LastName='Biden';
        contNew.AccountId=acc.Id;
        insert contNew;
    }

    public static void dmlInsertDemoCstmObj() {
        Salesforce_Project__c sp1=[select id,name FROM Salesforce_Project__c ORDER BY CreatedDate DESC LIMIT 1];

        Salesforce_Ticket__c stNew=new Salesforce_Ticket__c();

        stNew.Subject__c='Learn Dml.';
        stNew.Priority__c='High';
        stNew.Status__c='New';
        stNew.Requested_by_date__c=date.newInstance(2022, 9, 25);
        stNew.Salesforce_Project__c=sp1.id;
        insert stNew;
    }

    public static void dmlListInsert1() {
       
        List<Account> accList=new List<Account>();

        Account acc=new Account();
        acc.Name='acc bulk1';
        accList.add(acc);

        Account acc2=new Account();
        acc2.Name='acc bulk2';
        accList.add(acc2);

        Account acc3=new Account();
        acc3.Name='acc bulk3';
        accList.add(acc3);

        insert accList;


    }

    public static void dmlInsertMultipleRight() {
       
        List<Account> accList=new List<Account>();
        
        for (Integer i = 0; i < 155; i++) {
            Account accN=new Account();
            

            accN.Name='Softİnnovas30 ct2 v'+i;
            accN.Active__c='Yes';
            accN.Phone='123123123';
            accList.add(accN);
        }
        insert accList;
    }
}

}

DMLdemo.dmlInsertDemo2();
DMLdemo.dmlInsertDemoCstmObj();
DMLdemo.dmlListInsert1();
DMLdemo.dmlInsertMultipleRight();
DMLdemo.dmlUpdateMultiple();

List<Account> deletingList=[select id,name from account order by createdDate desc limit 75];
delete deletingList;

delete [select id,name from account order by createdDate desc limit 5];



//3-4 october 2022

trigger AccountTrigger on Account (before insert, after insert) {
    if (trigger.isBefore) {
        System.debug('account before insert called');
    } if (trigger.isAfter) {
        System.debug('account after insert called');
    }

}


trigger AccountTrigger on Account (before insert, before update) {
    if (trigger.isInsert) {
        System.debug('account before insert called');
    } if (trigger.isUpdate) {
        System.debug('account before update called');
    }
}

trigger AccountTrigger on Account (before insert,before update, after insert,after update) {
    
    if (trigger.isBefore) {
        
        if (trigger.isInsert) {
            System.debug('account before insert called');
        } else if (trigger.isUpdate) {
            System.debug('account before update called');
        }
    } if (trigger.isAfter) {
        
        if (trigger.isInsert) {
            System.debug('account after insert called');
        } else if (trigger.isUpdate) {
            System.debug('account after update called');
    }


}
}

trigger AccountTrigger on Account (before insert,before update, after insert,after update) {
        if (trigger.isAfter) {
            System.debug('is after trigger for latest record '+trigger.new); //for latest created data,we are using .new method.
                                                                             //for example we can send an email to new users with this method
        }   
}

trigger AccountTrigger on Account (before insert,before update, after insert,after update) {
        List<Account> listAcc=trigger.new;
        if (trigger.isAfter) {
            System.debug('after trigger.new '+listAcc);
            system.debug('number of new accounts '+listAcc.size());
        }   
}


//6 October 2022 triggers countinue.

trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
   
    system.debug('---start---');
    //trigger.new ALWAYS gives List<sObject>
    List<account> newAccounts = trigger.new;
    system.debug('number of accounts ==> ' + newAccounts.size());

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('BEFORE acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger.new ==> ' + newAccounts);
        for (Account eachAcc : newAccounts) {
            system.debug('AFTER acc id ==> ' + eachAcc.id + ', acc name ==> ' + eachacc.Name);
        }
    }
    system.debug('---end---');
 
// for .old method
//in the below
 trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
   
    System.debug('start');

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger.old ==> ' + trigger.old);
 
     }
     if (Trigger.isAfter && Trigger.isInsert) {
         system.debug('after insert trigger.old ==> ' + trigger.old);
     }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger.old ==> ' + trigger.old);
 
     }
     if (Trigger.isAfter && Trigger.isUpdate) {
         system.debug('after update trigger.old ==> ' + trigger.old);
     }
  

    System.debug('end');


    if (trigger.isAfter && trigger.isUpdate) {
        list<account> newAccounts = trigger.new;
        for (account newAcc : newAccounts) {
            system.debug('NEW acc id ==> ' + newAcc.id + ', NEW acc name ==> ' + newAcc.Name);
        }
        list<account> oldAccounts = trigger.old;
        for (account oldAcc : oldAccounts) {
            system.debug('OLD acc id ==> ' + oldAcc.id + ', NEW acc name ==> ' + oldAcc.Name);
        }
    }


    // newMap and OldMap


    
      Map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;
    
        system.debug('---start---');
        if (Trigger.isBefore && Trigger.isInsert) {
            system.debug('before insert old map => ' + oldAccMap);
            system.debug('before insert new map => ' + newAccMap);
        }
        if (Trigger.isAfter && Trigger.isInsert) {
            system.debug('after insert old map => ' + oldAccMap);
            system.debug('after insert new map => ' + newAccMap);
        }
    
        if (Trigger.isBefore && Trigger.isUpdate) {
            system.debug('before update old map => ' + oldAccMap);
            system.debug('before update new map => ' + newAccMap);
        }
        if (Trigger.isAfter && Trigger.isUpdate) {
            system.debug('after update old map => ' + oldAccMap);
            system.debug('after update new map => ' + newAccMap);
        }
        system.debug('---end---');



        Map<id, account> newAccMap = trigger.newMap;
        Map<id, account> oldAccMap = trigger.oldMap;

    system.debug('---start---');
    if (Trigger.isAfter && Trigger.isUpdate) {
       set<id> setAccIds = newAccMap.keySet();
       
       for (id eachId : setAccIds) {
           system.debug('each id which is also key of maps ==> ' + eachId);
           Account newAccount = newAccMap.get(eachId);
           system.debug('new Account name ==> ' + newAccount.Name);

           Account oldAccount = oldAccMap.get(eachId);
           system.debug('old Account name ==> ' + oldAccount.Name);
       }

    }
    system.debug('---end---');


//7 october 2022 trigger implemention.

   trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if (trigger.isBefore) {
        
        for (account eachAcc : trigger.new) {
            
            if (trigger.isInsert&& eachAcc.active__c=='Yes') {
               
                eachAcc.Description='Account is active.Enjoy buddy';
            
        } if (trigger.isUpdate) {
               
                Id accID=eachAcc.Id;
                Account newAccount=trigger.newMap.get(accID);
                Account oldAccount=trigger.oldMap.get(accID);

                
         if (eachAcc.Active__c=='Yes'&& newAccount.Active__c!=oldAccount.Active__c) {
                   
                    eachAcc.Description='Account is active.Enjoy buddy';
                }
                
        }

        }
    }
   }


   public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, 
                                        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

        Map<id, account> newAccMap = accTriggerNewMap;
        map<id, account> oldAccMap = accTriggerOldMap;
        for (account eachAcc : accTriggerNew) {
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
            if (Trigger.isUpdate) {
                //id accId = eachacc.id;
                Account oldAccount = oldAccMap.get(eachacc.id);
                Account newAccount = newAccMap.get(eachacc.id);

                if(eachAcc.Active__c == 'Yes' && oldAccount.Active__c != newAccount.Active__c){
                    eachAcc.Description = 'Account is now active. Enjoy!';
                }
            }
        }
    }

    public static void updateVIPforAllContacts(List<account> accTriggerNew, List<account> accTriggerOld, 
        Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        //get accountsIds for which VIP is CHANGED.
        Set<Id> accountIds = new set<id>();
        for (account eachAcc : accTriggerNew) {
            if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c) {
                accountIds.add(eachAcc.Id);
            }
        }
        system.debug('vip is change acc ids ==> ' + accountIds);

        if(!accountIds.isEmpty()){
            //all contacts for all of those accounts.
            list<contact> listContact = [select id, vip__c, accountid, name from contact where accountid in :accountIds];
            system.debug('all contacts ==> ' + listContact);
            for (contact eachContact : listContact) {
                Account newAcc = accTriggerNewMap.get(eachContact.AccountId);
                boolean vipAcc = newAcc.VIP__c;
                eachContact.VIP__c = vipAcc;
            }
            update listContact;
        }
    }

    public static void contactHandler(List<account> accTriggerNew, List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
        
        List<Contact> contList=new list<Contact>();

            if (accTriggerOld==null) {
            
            for (account eachAcc : accTriggerNew) {

                Contact nc=new Contact();

                nc.LastName=eachAcc.Name;
                nc.AccountId=eachAcc.Id;
                contList.add(nc);

            }

            insert contList;
        }
    }
}