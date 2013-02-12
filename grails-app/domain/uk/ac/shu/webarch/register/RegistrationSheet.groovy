package uk.ac.shu.webarch.register

class RegistrationSheet {



  Session session
  Date date
  String notes



  Set registerEntries



  static hasMany = [registerEntries: RegisterEntry]



  static mapping = {
    notes column: 'session_notes', type:'text'



  }
}
