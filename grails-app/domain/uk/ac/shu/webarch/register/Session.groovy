package uk.ac.shu.webarch.register

class Session {



  String sessionName
  Instructor instructor
  Course course



  Set registrationSheets



  static hasMany = [registrationSheets: RegistrationSheet]



  static mapping = {
    instructor column:'instructor_fk'
    course column:'course_fk'



  }
}
