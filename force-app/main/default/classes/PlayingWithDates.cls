public class PlayingWithDates {
    public void printDateOutput() {
        Date todaysDate=date.today();
        system.debug(todaysDate);//1.
        Date firstDate=date.newInstance(2789, 11, 5);
        Date secondDate=date.newInstance(1459, 3, 4);
        Integer dayInt=4;
        integer monthInt=12;
        Integer yearInt=1997;
        Date  customDate=Date.newInstance(yearInt, monthInt, dayInt);
        System.debug(customDate);

    }
}
