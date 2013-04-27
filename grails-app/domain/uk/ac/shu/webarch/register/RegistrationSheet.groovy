package uk.ac.shu.webarch.register

class RegistrationSheet {



  Session session
  String sheetName
  String notes

	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // 

	String toString() {
        	return "$session / $sheetName "
    }


  Set registerEntries



  static hasMany = [registerEntries: RegisterEntry]
  
  static mappedBy = [registerEntries: "registrationsheet"]



  static constraints = {
    session(nullable:false, blank:false);
    sheetName(nullable:false, blank:false, notEqual: "Enter Sheet Name");
    notes(nullable:true, blank:true);

  }


  static mapping = {
    notes column: 'session_notes', type:'text'
     session column:'session_fk'
  }
}
