public  class Students {
    public string name;
    public string lastName;
    public integer classYear;
    public string major;

    public String generateReport() {
        System.debug('generated report is '+name+' '+lastName+' '+classYear+'.');
        return major;
    }
}

