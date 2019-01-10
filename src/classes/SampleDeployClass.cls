@isTest
public class SampleDeployClass {

    public static testmethod void t1() {
        helloMethod();

        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger

        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return 'SamplePhone#';
    }
    
    public static void helloMethod() {
        System.debug('Hello World This is a test for the demo now again for the demo for commit   based   deployment and rahul is leaving for the home are u planning to go to home yeah i am too leaving are you also coming');
       System.debug('now a 1 line is added'); 
        System.debug('now a 2 line is added'); 
    }
}
