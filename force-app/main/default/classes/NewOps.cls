public class NewOps {
    public integer largeN(integer a,integer b){
        integer x;

        if (a>b) {
            x=a;
            return x;
        } else if (a<b) {
            x=b;
            return x;
        } else {
            system.debug('values are equal.');
            return x;
        }
    } 


    public integer sumN(integer n){
        integer sum;
        
        if (n<=0) {
            system.debug('we are not calculate negative numbers.');
        } else {
             sum=0;
            for (integer a ; a<=0 ; a++) {
                sum+=a;
                }
        }return sum;
    }

    
}
