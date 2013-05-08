package uk.ac.shu.webarch.register

class Enrollment {


//Enrollment consists of a student and a session //

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
