package uk.ac.shu.webarch.register
import java.sql.Timestamp


class RegisterEntry {

  

  Student student
  RegistrationSheet registrationsheet
  Timestamp timestamp
      




  static constraints = {
    student(nullable:false, blank:false);
    registrationsheet(nullable:false, blank:false);
    timestamp(nullable:true, blank:false);
  }
 

  static mapping = {
    student column: 'student_fk'
    registrationsheet column: 'registrationsheet_fk'
    timestamp(type: Timestamp, sqlType: "timestamp")
    autoTimestamp true
    
  }
}
