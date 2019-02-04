@isTest
private class HelloWorldTest {
   @isTest static void updateLead() {
        Lead myLead      = new Lead(); 
        myLead.FirstName = 'Heshan';
        myLead.LastName  = 'Weerasekera';
        myLead.Company    = 'Google';
        insert myLead;
        
        myLead.Company ='Google';
        update myLead;
        
    }
}