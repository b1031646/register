package uk.ac.shu.webarch.register

class Enrollment {



  Session session
  Student student


  static constraints = {
    session(nullable:false, blank:false);
    student(nullable:false, blank:false);
  }


  static mapping = {
    student column: 'student_fk'
    session column: 'session_fk'
  }
}
