package uk.ac.shu.webarch.register

class RegistrationSheet {



  Session session
  Date sessionDate
  String notes

	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // 

	String toString() {
        	return session 
    }


  Set registerEntries



  static hasMany = [registerEntries: RegisterEntry]
  
  static mappedBy = [registerEntries: "registrationsheet"]



  static constraints = {
    session(nullable:false, blank:false);
    sessionDate(nullable:false, blank:false);
    notes(nullable:true, blank:true);
  }


  static mapping = {
    notes column: 'session_notes', type:'text'
     session column:'session_fk'
  }
}
