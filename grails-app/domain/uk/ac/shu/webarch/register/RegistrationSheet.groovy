package uk.ac.shu.webarch.register

class RegistrationSheet {



  Session session
  Date sessionDate
  String notes



  Set registerEntries



  static hasMany = [registerEntries: RegisterEntry]



  static constraints = {
    session(nullable:false, blank:false);
    sessionDate(nullable:false, blank:false);
    notes(nullable:true, blank:true);
  }


  static mapping = {
    notes column: 'session_notes', type:'text'



  }
}
