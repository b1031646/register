package uk.ac.shu.webarch.register

class Enrollment {



  Session session
  Student student


  static constraints = {
  }


  static mapping = {
    student column: 'student_fk'
    session column: 'session_fk'



  }
}
