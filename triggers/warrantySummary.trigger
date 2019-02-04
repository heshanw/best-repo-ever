trigger warrantySummary on Case (before insert) {

   for(Case myCase :Trigger.new)
    {
   String purchaseDate         =myCase.Product_Purchase_Date__c.format();
   DateTime createdDate        =DateTime.now();
   Integer warrantyDays        =myCase.Product_Total_Warranty_Days__c.intValue();
   Decimal warrantyPercentage  =(100*(myCase.Product_Purchase_Date__c.daysBetween(Date.today())/myCase.Product_Total_Warranty_Days__c)).setscale(2);
   Boolean hasExtendedWarranty =myCase.Product_Has_Extended_Warranty__c; 
   
   //case summary
   
   myCase.Warranty_Summary__c = 'Product Purchased on'+purchaseDate+ ' '
                                +'and case created on'+createdDate+'.\n'
                                +'warranty is for'+warrantyDays+''
                                +'days and is'+warrantyPercentage+'%through its warranty period.\n'
                                +'Extended Warranty:' +hasExtendedWarranty+ '.\n'
                                +'Have a nice day!';
                                
   
   
  } 
  
}