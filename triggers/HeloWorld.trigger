trigger HeloWorld on Lead (before update) {
    for (Lead l : Trigger.New) {
    l.FirstName = 'Hello';
    l.LastName  = 'World';
  }
}