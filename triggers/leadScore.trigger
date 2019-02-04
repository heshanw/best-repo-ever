trigger leadScore on Lead (before insert, before update ) {
   for (Lead myLead : Trigger.new){
   
   if(myLead.Lead_Score__c != null){
     
     if(myLead.Lead_Score__c ==100){
        myLead.Lead_Grade__c = 'A+';
     }
     else if (myLead.Lead_Score__c >=90){
        myLead.Lead_Grade__c = 'A';
     }
     else if (myLead.Lead_Score__c >=80){
        myLead.Lead_Grade__c = 'B';
     }
     else{
        myLead.Lead_Grade__c = 'F';
        myLead.Status         ='Closed - Not Converted';
     }
  }
  }   
}