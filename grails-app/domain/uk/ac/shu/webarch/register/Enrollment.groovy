package uk.ac.shu.webarch.register

class Enrollment {



  Course course
  Student student



  static mapping = {
    student column: 'student_fk'
    course column: 'course_fk'



  }
}
