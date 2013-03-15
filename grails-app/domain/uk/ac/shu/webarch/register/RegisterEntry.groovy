package uk.ac.shu.webarch.register



class RegisterEntry {

  

  Student student
  RegistrationSheet registrationsheet
  Date timestamp
      




  static constraints = {
    student(nullable:false, blank:false);
    registrationsheet(nullable:false, blank:false);
    timestamp(nullable:false, blank:false);
  }
 

  static mapping = {
    student column: 'student_fk'
    registrationsheet column: 'registrationsheet_fk'
    
  }
}
