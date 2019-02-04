trigger Applewatch on Opportunity (after insert) {
    for (opportunity opp : Trigger.new) {
        Task t        = new Task();
        t.Subject     ='Apple Demo';
        t.Description = 'send them a watch';
        t.Priority    = 'High';
        t.WhatId      = opp.Id;
        insert t;
    }
}