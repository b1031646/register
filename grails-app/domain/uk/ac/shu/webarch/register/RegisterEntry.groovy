package uk.ac.shu.webarch.register

class RegisterEntry {

  

  Student student
  RegistrationSheet registrationsheet
  Long timestamp



  static constraints = {
    timestamp(nullable:false, blank:false);
  }
 

  static mapping = {
    student column: 'student_fk'
    registrationsheet column: 'registrationsheet_fk'



  }
}
