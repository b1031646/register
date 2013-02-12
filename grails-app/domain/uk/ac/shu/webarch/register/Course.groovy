package uk.ac.shu.webarch.register

class Course {
  

  String courseName
  String courseCode
  String Description



  Set sessions
  Set enrollments



  static hasMany = [sessions: Session, enrollments: Enrollment]



  static mapping = {
    description column: 'course_desc', type:'text'



  }
}
