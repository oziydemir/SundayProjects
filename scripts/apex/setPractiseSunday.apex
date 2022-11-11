Set<String>  uniqueNameSet=new Set<String>();
uniqueNameSet.add('Tom');
uniqueNameSet.add('Jerry');

integer sz=uniqueNameSet.size();
System.debug('set size is '+sz);
uniqueNameSet.add('Tweety');
uniqueNameSet.add('Silvester');

Boolean checkName=uniqueNameSet.contains('Ozan');
System.debug('My name check result is '+checkName);

Boolean checkEmpty=uniqueNameSet.isEmpty();
System.debug('Is empty?check result is '+checkEmpty);

uniqueNameSet.clear();
Boolean checkEmptyAfterClear=uniqueNameSet.isEmpty();
System.debug('After clear method, the is empty result is '+checkEmptyAfterClear);

Map<String,Integer> StudentRank=new Map<String,Integer>();
StudentRank.put('Turgay', 1);
StudentRank.put('Beyza', 2);
StudentRank.put('Tugba', 3);
StudentRank.put('Ozan', 4);

Set<String> stuSet=StudentRank.keySet();
List<Integer> stuRank=StudentRank.values();

for(String eachStu:stuSet){
    System.debug(eachStu);
}

for(string eachOpp:stuSet){
    integer eachStuRank=StudentRank.get(eachOpp);
    System.debug('student name is '+eachOpp+' and rank is '+eachStuRank);
}
