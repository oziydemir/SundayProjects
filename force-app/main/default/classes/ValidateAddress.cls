public class ValidateAddress {
    public void validateHomeAddress() {
       
        String houseName='NXT condos';
        String streetName='Queexnsway';
        String cityName='Toronto';
        String stateName='Ontario';
        String stateIsoCode='ON';
        String countryName='Canada';
        String countryIsoCode='Can';
        String zipCode='m6s5b5';

        integer a=streetName.length();//1.
        System.debug(a);

        Boolean b=streetName.contains('nx');
        System.debug(b);

        Boolean c=streetName.contains(stateIsoCode);
        System.debug(c);

        String d=stateIsoCode.toUpperCase();
        String d2=countryIsoCode.toUpperCase();
        String d3=countryName.toUpperCase();
        System.debug(d+' '+d2+' '+d3);

        string d4=cityName.toLowerCase();
        string d5=stateName.toLowerCase();
        System.debug(d4+' '+d5);
    }
}

       
