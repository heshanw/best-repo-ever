trigger LeadingCompetitor on Opportunity (before insert,before update) {
    for (Opportunity Opp : Trigger.new){
        //add all our prices in a list
        List<Decimal>competitorPrices = new List<Decimal>();
        competitorPrices.add(opp.Competitor_1_Price__c);
        competitorPrices.add(opp.Competitor_2_Price__c);
        competitorPrices.add(opp.Competitor_3_Price__c); 
            
        //add all our competitors in a list
        List<String>competitors = new List<String>();
        competitors.add(opp.Competitor_1__c);
        competitors.add(opp.Competitor_2__c);
        competitors.add(opp.Competitor_3__c);
        
        //Loop through all competetitors 
                
    }
}